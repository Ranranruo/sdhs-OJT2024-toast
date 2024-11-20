CREATE TABLE bank_account_history(
    ba_number VARCHAR(17) NOT NULL UNIQUE COMMENT '계좌번호',
    ba_target_number VARCHAR(17) NOT NULL UNIQUE COMMENT '대상 계좌번호',
    bah_trans_date DATETIME NOT NULL COMMENT '거래 이력',
    bah_memo VARCHAR(10) NULL COMMENT '거래 메모',
    bah_amount INT NOT NULL COMMENT '거래 금액',
    bah_bef_amount INT NOT NULL COMMENT '거래 전 금액',
    bah_type BOOLEAN NOT NULL COMMENT '거래 타입',
    PRIMARY KEY (ba_number, bah_trans_date)
);