-- Create Table Queries

CREATE TABLE product (
    product_id varchar(8),
    product_name text,
    product_description text,
    price decimal,
    stock_qty integer,
    PRIMARY KEY (product_id)
);

CREATE TABLE review (
    product_id varchar(8) REFERENCES product,
    customer_id integer REFERENCES customer,
    review text,
    verified_purchase boolean,
    PRIMARY KEY (product_id, customer_id)
);

CREATE TABLE customer (
    customer_id integer,
    first_name text,
    lase_name text,
    user_address text,
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
    product_id varchar(8) REFERENCES product,
    PRIMARY KEY (order_id)
);

CREATE TABLE payment (
    payment_id integer,
    order_id integer REFERENCES order,
    payment_status varchar(1),
    PRIMARY KEY (payment_id, order_id)
);