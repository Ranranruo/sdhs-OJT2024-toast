CREATE TABLE bank_account (
                              ba_name VARCHAR(30) NOT NULL COMMENT '계좌 이름',
                              ba_number VARCHAR(20) NOT NULL COMMENT '계좌번호',
                              ba_open_date DATETIME NOT NULL COMMENT '계좌 개설일자',
                              ba_amount BIGINT NOT NULL COMMENT '계좌 금액',
                              ba_locked BOOL NOT NULL COMMENT '계좌 잠금여부',
                              bk_uuid VARCHAR(36) NOT NULL COMMENT '통장 고유번호',
                              bc_uuid VARCHAR(36) NOT NULL COMMENT '고객 고유번호',
                              FOREIGN KEY (bk_uuid) REFERENCES bank_book(bk_uuid),
                              FOREIGN KEY (bc_uuid) REFERENCES bank_customer(bc_uuid)
);

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('김영호의 저축계좌', '1234-5678-9012', '2024-11-01', 1000000, false, '72769ddb-a30e-11ef-afb7-d85ed3d6ba14', 'c9d284bb-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('박민규의 정기계좌', '058-016933-01-116', '2024-11-01', 5000000, false, '7d2b3ddf-a30e-11ef-afb7-d85ed3d6ba14', 'ca5e1d26-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('신권호의 외환계좌', '611-978236-345', '2024-11-01', 2000000, true, '87d96904-a30e-11ef-afb7-d85ed3d6ba14', 'caa513f3-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('신민석의 어마무시한 저축계좌', '912-389453-876', '2024-11-01', 7000000, true, '14cc2701-a310-11ef-afb7-d85ed3d6ba14', 'cb0502eb-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('이정우의 스마트 계좌', '013-63820071-993', '2024-11-01', 3000000, false, '7c7f7861-a30e-11ef-afb7-d85ed3d6ba14', 'cc60c8d5-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('이은상의 i-ONE U 계좌', '058-593712-02-948', '2024-11-01', 4000000, true, 'd3a02fce-a307-11ef-afb7-d85ed3d6ba14', 'cbd3144d-a307-11ef-afb7-d85ed3d6ba14');

INSERT INTO bank_account (ba_name, ba_number, ba_open_date, ba_amount, ba_locked, bk_uuid, bc_uuid)
VALUES ('정지훈의 저축 계좌', '107101-92-005152', '2024-11-01', 1500000, false, '83f78984-a30e-11ef-afb7-d85ed3d6ba14', 'ce0c9250-a307-11ef-afb7-d85ed3d6ba14');