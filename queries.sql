-- Create Table Queries

CREATE TABLE review (
    product_id varchar(8),
    customer_id integer REFERENCES customer,
    review text,
    verified_purchase boolean,
    PRIMARY KEY (product_id, customer_id)
);

CREATE TABLE customer (
    customer_id integer,
    first_name varchar(20),
    lase_name varchar(20),
    user_address vaarchar(20),
    PRIMARY KEY (customer_id)
);

CREATE TABLE order (
    order_id integer,
    customer_id integer REFERENCES customer,
    order_status varchar(1),
    total decimal,
    PRIMARY KEY (order_id)
);

CREATE TABLE order_item (
    order_id integer REFERENCES order,
    product_id varchar(8),
    PRIMARY KEY (order_id)
);

CREATE TABLE payment (
    payment_id integer,
    order_id integer REFERENCES order,
    payment_status varchar(1),
    PRIMARY KEY (payment_id, order_id)
);