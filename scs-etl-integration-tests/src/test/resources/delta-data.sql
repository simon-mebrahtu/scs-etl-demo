-- operational events
-- remove item2 (pen) from order1 for customer1
DELETE FROM ORDER_ITEM
WHERE CUSTOMER_ORDER_ID = 'order1' AND ITEM_ID = 'item2';

INSERT INTO DB_EVENTS(SRC_KEY, SRC_GROUP, ACTION_CODE, STATUS_CODE, EVENT_TS)
VALUES('order1', 'customerOrder', 'U', '0', CURRENT_TIMESTAMP);

-- delete entire order2 for customer1
DELETE FROM ORDER_ITEM
WHERE CUSTOMER_ORDER_ID = 'order2';

INSERT INTO DB_EVENTS(SRC_KEY, SRC_GROUP, ACTION_CODE, STATUS_CODE, EVENT_TS)
VALUES('order2', 'customerOrder', 'U', '0', CURRENT_TIMESTAMP);

INSERT INTO DB_EVENTS(SRC_KEY, SRC_GROUP, ACTION_CODE, STATUS_CODE, EVENT_TS)
VALUES('order2', 'customerOrder', 'U', '0', CURRENT_TIMESTAMP);

INSERT INTO DB_EVENTS(SRC_KEY, SRC_GROUP, ACTION_CODE, STATUS_CODE, EVENT_TS)
VALUES('order2', 'customerOrder', 'U', '0', CURRENT_TIMESTAMP);

DELETE FROM CUSTOMER_ORDER
WHERE ID = 'order2';

INSERT INTO DB_EVENTS(SRC_KEY, SRC_GROUP, ACTION_CODE, STATUS_CODE, EVENT_TS)
VALUES('order2', 'customerOrder', 'D', '0', CURRENT_TIMESTAMP);