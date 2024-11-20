CREATE TABLE bank_customer_bridge (
                                      b_uuid VARCHAR(36) NOT NULL COMMENT '은행 고유번호',
                                      bc_uuid VARCHAR(36) NOT NULL COMMENT '고객 고유번호',
                                      FOREIGN KEY (b_uuid) REFERENCES bank(b_uuid),
                                      FOREIGN KEY (bc_uuid) REFERENCES bank_customer(bc_uuid)
);
INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'c9d284bb-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'cb0502eb-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'cc60c8d5-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'ca5e1d26-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'cbd3144d-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'ce0c9250-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_customer_bridge (b_uuid, bc_uuid)
VALUES ('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'caa513f3-a307-11ef-afb7-d85ed3d6ba14');
