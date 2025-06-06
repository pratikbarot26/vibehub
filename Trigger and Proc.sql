GO
--Updating Inventory for transaction
DROP PROCEDURE IF EXISTS p_update_item_qty;
GO

CREATE PROCEDURE p_update_item_qty @store_id INT, @item_id INT, @txn_status VARCHAR(20)
AS 
BEGIN

BEGIN TRY
    BEGIN TRANSACTION

        IF UPPER(@txn_status) = 'ISSUED'
        BEGIN
            UPDATE store_inventory
            SET available_quantity = available_quantity - 1
            WHERE inventory_item_id = @item_id
            AND inventory_store_id = @store_id;
            IF @@ROWCOUNT <> 1 THROW 50001, 'p_update_item_qty :  Error', 1
        END

        ELSE IF UPPER(@txn_status) = 'RETURNED' OR UPPER(@txn_status) = 'RETURNED PAST DUE'
        BEGIN
            UPDATE store_inventory
            SET available_quantity = available_quantity + 1
            WHERE inventory_item_id = @item_id
            AND inventory_store_id = @store_id;
            IF @@ROWCOUNT <> 1 THROW 50001, 'p_update_item_qty :  Error', 1
        END
    COMMIT
END TRY
BEGIN CATCH
    ROLLBACK;
    THROW
END CATCH

END;

GO
--Updating Customer Rental and Late Count
DROP PROCEDURE IF EXISTS p_update_cust_rentals;
GO

CREATE PROCEDURE p_update_cust_rentals @cust_id INT, @txn_status varchar(20)
AS 
BEGIN

BEGIN TRY
    BEGIN TRANSACTION
     
        IF UPPER(@txn_status) = 'ISSUED'
        BEGIN
            UPDATE customers
            SET customer_rental_count = ISNULL((SELECT count(*) FROM transactions WHERE transaction_customer_id = @cust_id GROUP BY transaction_customer_id),0)
            WHERE customer_id = @cust_id;
            IF @@ROWCOUNT <> 1 THROW 50001, 'p_update_cust_rentals :  Error', 1
        END

        ELSE IF UPPER(@txn_status) = 'RETURNED PAST DUE'
        BEGIN
            UPDATE customers
            SET customer_late_count = ISNULL((SELECT count(*) FROM transactions WHERE transaction_customer_id = @cust_id AND (UPPER(transaction_status) = 'RETURNED PAST DUE' 
            OR UPPER(transaction_status) = 'DUE')  GROUP BY transaction_customer_id),0)
            WHERE customer_id = @cust_id;
            IF @@ROWCOUNT <> 1 THROW 50001, 'p_update_cust_rentals :  Error', 1
        END
    COMMIT
END TRY
BEGIN CATCH
    ROLLBACK;
    THROW
END CATCH

END;


GO
DROP TRIGGER IF EXISTS tr_txn_updates
GO

CREATE TRIGGER tr_txn_updates
ON transactions
AFTER INSERT,UPDATE
AS BEGIN

    DECLARE @txn_id INT,@cust_id INT, @store_id INT, @item_id INT, @txn_status VARCHAR(20);
    SELECT @txn_id = transaction_id, @cust_id = transaction_customer_id, @store_id = transaction_store_id, @item_id = transaction_item_id, @txn_status = transaction_status FROM inserted;

    exec p_update_cust_rentals @cust_id, @txn_status;
    exec p_update_item_qty @store_id, @item_id, @txn_status
END

GO
DROP VIEW IF EXISTS v_category_revenue
GO
create view v_category_revenue as
select item_category as Category, sum(transaction_amount) as Revenue
FROM transactions t join items i on t.transaction_item_id = i.item_id
GROUP BY item_category