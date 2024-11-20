CREATE TABLE bank_book (
                           bk_uuid VARCHAR(36) PRIMARY KEY COMMENT '통장 고유번호',
                           bk_name VARCHAR(50) NOT NULL COMMENT '통장 이름',
                           bk_int_rate DECIMAL(3, 2) NOT NULL COMMENT '통장 금리',
                           bk_withdrawal bool NOT NULL COMMENT '통장 출금가능 여부',
                           bk_reg_st_date DATETIME NOT NULL COMMENT '통장 가입 가능일자',
                           bk_reg_ed_date DATETIME NOT NULL COMMENT '통장 가입 종료일자',
                           b_uuid VARCHAR(36) NOT NULL COMMENT '은행 고유번호',
                           FOREIGN KEY (b_uuid) REFERENCES bank(b_uuid)
);

-- 한국은행
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '안심 저축통장', 2.0, true, '2024-11-01', '2025-11-01', '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '미래 설계 통장', 2.5, true, '2024-11-01', '2025-11-01', '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '희망의 씨앗 통장', 3.0, true, '2024-11-01', '2025-11-01', '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '드림 통장', 2.2, true, '2024-11-01', '2025-11-01', '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '안전한 미래 통장', 3.5, true, '2024-11-01', '2025-11-01', '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b');

SELECT * FROM bank_book WHERE bk_name LIKE '%I-ONE%';
-- 산업은행
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '창업 꿈 통장', 2.1, true, '2024-11-01', '2025-11-01', 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '젊은이의 저축 통장', 2.6, true, '2024-11-01', '2025-11-01', 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '안정적 자산 통장', 2.9, true, '2024-11-01', '2025-11-01', 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '목표 달성 통장', 3.3, false, '2024-11-01', '2025-11-01', 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '어마무시한 저축 통장', 3.4, true, '2024-11-01', '2025-11-01', 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b');
SELECT * FROM bank_book;
-- 기업은행
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), 'i-ONE U 통장', 5, true, '2024-11-01', '2024-11-30', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '안정적 재테크 통장', 3.5, false, '2024-11-01', '2025-11-01', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '스마트 저축 통장', 1.6, true, '2024-11-01', '2025-11-01', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '희망 정기 통장', 3.7, false, '2024-11-01', '2025-11-01', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '자유롭게 저축하는 통장', 3.4, true, '2024-11-01', '2025-11-01', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '희망의 정기적금 통장', 3.8, false, '2024-11-01', '2025-11-01', 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b');

-- 국민은행
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '내일을 위한 정기 통장', 3.3, false, '2024-11-01', '2025-11-01', '158755a9-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '꿈꾸는 저축 통장', 1.7, true, '2024-11-01', '2025-11-01', '158755a9-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '비상금 마련 통장', 3.9, false, '2024-11-01', '2025-11-01', '158755a9-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '자유로운 저축 통장', 3.1, true, '2024-11-01', '2025-11-01', '158755a9-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '정기적금 꿈의 통장', 4.0, false, '2024-11-01', '2025-11-01', '158755a9-a155-11ef-ae5b-d85ed3d6bf8b');

-- 외환은행
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '해외여행 준비 통장', 3.1, true, '2024-11-01', '2025-11-01', '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '안정적 외화 통장', 2.8, true, '2024-11-01', '2025-11-01', '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '스마트 외환 통장', 3.4, true, '2024-11-01', '2025-11-01', '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '해외 투자 통장', 3.0, true, '2024-11-01', '2025-11-01', '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');
INSERT INTO bank_book(bk_uuid, bk_name, bk_int_rate, bk_withdrawal, bk_reg_st_date, bk_reg_ed_date, b_uuid)
VALUES (UUID(), '외환 저축 통장', 3.5, true, '2024-11-01', '2025-11-01', '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');
