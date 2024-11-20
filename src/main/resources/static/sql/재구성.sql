# 'toast' 데이터베이스 접속
USE toast;

DROP TABLE IF EXISTS bank_account_hist;
DROP TABLE IF EXISTS bank_account;
DROP TABLE IF EXISTS bank_customer_bridge;
DROP TABLE IF EXISTS bank_customer;
DROP TABLE IF EXISTS bank_book;
DROP TABLE IF EXISTS bank;
DROP TABLE IF EXISTS customer_role;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS customer;


# 'PEOPLE' 테이블 삭제
DROP TABLE IF EXISTS PEOPLE;

# 'PEOPLE' 테이블 생성
CREATE TABLE PEOPLE(
                       p_uuid VARCHAR(36) COMMENT '국민 구분 고유값',
                       p_name VARCHAR(20) NOT NULL COMMENT '국민 이름',
                       p_english_name VARCHAR(20) NOT NULL COMMENT '국민 영문 이름',
                       p_identity CHAR(14) NOT NULL COMMENT '국민 주민등록번호',
                       p_email VARCHAR(50) NOT NULL COMMENT '국민 대표 이메일',
                       p_contact VARCHAR(14) NOT NULL COMMENT '국민 연락처',
                       p_address VARCHAR(100) NOT NULL COMMENT '국민 거주지 주소',
                       PRIMARY KEY (p_uuid),
                       UNIQUE (p_identity),
                       UNIQUE (p_email),
                       UNIQUE (p_contact)
) COMMENT = '국민 테이블';

# 'PEOPLE' 테이블 데이터 추가
INSERT INTO PEOPLE VALUES
                       ('169bdf96-a5a2-11ef-86f9-0242ac110002', '김영호', 'Young-ho, Kim', '070101-3000001', 'youngho@sdh.hs.kr', '010-0001-0001', '서울시 디지텍구 용산 1동 경리단길 10-1'),
                       ('a7ca12ce-a5a2-11ef-86f9-0242ac110002', '김지효', 'Jihyo, Kim', '070131-2000001', 'jihyo@sdh.hs.kr', '010-1002-1002', '서울시 디지텍구 용산 2동 경리단길 11-2'),
                       ('da71fce4-a5a2-11ef-86f9-0242ac110002', '박민규', 'Min-gyu, Park', '070201-3000002', 'mingyu@sdh.hs.kr', '010-2003-2003', '서울시 디지텍구 용산 3동 경리단길 12-3'),
                       ('c419cc4b-a5a4-11ef-86f9-0242ac110002', '신권호', 'Kwon-ho, Shin', '070228-3000003', 'kwonho@sdh.hs.kr', '010-3004-3004', '서울시 디지텍구 용산 4동 경리단길 13-4'),
                       ('ca4e117a-a5a4-11ef-86f9-0242ac110002', '신민석', 'Minseok, Shin', '070301-3000004', 'minseok@sdh.hs.kr', '010-4005-4005', '서울시 디지텍구 용산 5동 경리단길 14-5'),
                       ('cdd6940e-a5a4-11ef-86f9-0242ac110002', '윤지상', 'Jisang, Yoon', '070331-3000005', 'jisang@sdh.hs.kr', '010-5006-5006', '서울시 디지텍구 용산 6동 경리단길 15-6'),
                       ('d1703db1-a5a4-11ef-86f9-0242ac110002', '이석훈', 'Seokhoon, Lee', '070401-3000006', 'seokhoon@sdh.hs.kr', '010-6007-6007', '서울시 디지텍구 용산 7동 경리단길 16-7'),
                       ('d3f9197c-a5a4-11ef-86f9-0242ac110002', '이은상', 'Eunsang, Lee', '070430-3000007', 'eunsang@sdh.hs.kr', '010-7008-7008', '서울시 디지텍구 용산 8동 경리단길 17-8'),
                       ('d683ca31-a5a4-11ef-86f9-0242ac110002', '이정규', 'Jeonggyu, Lee', '070501-3000008', 'jeonggyu@sdh.hs.kr', '010-8009-8009', '서울시 디지텍구 용산 9동 경리단길 18-9'),
                       ('d9042d51-a5a4-11ef-86f9-0242ac110002', '이정우', 'Jeongwoo, Lee', '070531-3000009', 'jeongwoo@sdh.hs.kr', '010-9010-9010', '서울시 디지텍구 용산 10동 경리단길 19-10'),
                       ('dbd22cca-a5a4-11ef-86f9-0242ac110002', '이정욱', 'Jeongwook, Lee', '070601-3000010', 'jeongwook@sdh.hs.kr', '010-1011-1011', '서울시 디지텍구 용산 11동 은빛달길 20-1'),
                       ('de5599fa-a5a4-11ef-86f9-0242ac110002', '정재훈', 'Jaehoon, Jeong', '070630-3000011', 'jaehoon@sdh.hs.kr', '010-2012-2012', '서울시 디지텍구 용산 12동 은빛달길 20-2'),
                       ('e0c5af1b-a5a4-11ef-86f9-0242ac110002', '정지훈', 'Ji-hoon, Jeong', '070701-3000012', 'jihoon@sdh.hs.kr', '010-3013-3013', '서울시 디지텍구 용산 13동 은빛달길 20-3'),
                       ('e3912d4e-a5a4-11ef-86f9-0242ac110002', '진효빈', 'Hyo-bin, Jin', '070731-3000013', 'hyobin@sdh.hs.kr', '010-4014-4014', '서울시 디지텍구 용산 14동 은빛달길 20-4'),
                       ('e5c0c524-a5a4-11ef-86f9-0242ac110002', '홍의준', 'Eui-Jun, Hong', '070801-3000014', 'euijun@sdh.hs.kr', '010-5015-5015', '서울시 디지텍구 용산 15동 은빛달길 20-5'),
                       ('e88b610b-a5a4-11ef-86f9-0242ac110002', '이예찬', 'Yechan, Lee', '010105-3000000', 'yechan@sdh.hs.kr', '010-9999-9999', '서울시 디지텍구 용산 99동 용광로 99-99');

# 'BANK' 테이블 삭제
DROP TABLE IF EXISTS BANK;

# 'BANK' 테이블 생성
CREATE TABLE BANK(
                     b_uuid VARCHAR(36) COMMENT '은행 구분 고유값',
                     b_name VARCHAR(20) NOT NULL COMMENT '은행 이름',
                     b_founder VARCHAR(20) NOT NULL COMMENT '은행 설립자',
                     b_sector SMALLINT(1) NOT NULL COMMENT '은행 금융권',
                     b_code CHAR(3) NOT NULL COMMENT '은행 코드',
                     b_open_date DATETIME NOT NULL COMMENT '은행 설립일자',
                     PRIMARY KEY (b_uuid),
                     UNIQUE (b_name),
                     UNIQUE (b_code)
) COMMENT = '은행 테이블';

# 'BANK' 테이블 데이터 추가
INSERT INTO BANK VALUES
                     ('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', '한국은행', '구용서', 1, '001', '1950-06-12'),
                     ('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'KDB산업은행', '구용서', 1, '002', '1954-04-01'),
                     ('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'IBK기업은행', '대한민국 정부', 1, '003', '1961-08-01'),
                     ('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'KB국민은행', '대한민국 정부', 1, '004', '2001-11-01'),
                     ('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', '디지텍은행', '김한조', 1, '005', '1967-01-30');

# 'BANK_BOOK' 테이블 삭제
DROP TABLE IF EXISTS BANK_BOOK;

# 'BANK_BOOK' 테이블 생성
CREATE TABLE BANK_BOOK(
                          bb_uuid VARCHAR(36) COMMENT '통장 구분 고유값',
                          bb_name VARCHAR(50) NOT NULL COMMENT '통장 이름',
                          bb_deposit_type VARCHAR(10) NOT NULL COMMENT '통장 예금 종류',
                          bb_withdrawal TINYINT NOT NULL COMMENT '통장 출금 가능 여부',
                          bb_open_date DATETIME NOT NULL COMMENT '통장 가입 가능일자',
                          bb_close_date DATETIME NOT NULL COMMENT '통장 가입 마감일자',
                          bb_interest_rate DECIMAL(3, 1) NOT NULL COMMENT '통장 금리',
                          bb_other_fess INT NOT NULL COMMENT '통장 타 은행 수수료',
                          b_uuid VARCHAR(36) COMMENT '은행 구분 고유값',
                          PRIMARY KEY (bb_uuid),
                          UNIQUE (b_uuid, bb_name),
                          FOREIGN KEY (b_uuid) REFERENCES BANK(b_uuid)
) COMMENT = '은행 통장 테이블';

# 'BANK_BOOK' 테이블 데이터 추가
INSERT INTO BANK_BOOK VALUES
# 한국은행 통장 데이터
('93cdaf58-a5ae-11ef-86f9-0242ac110002', 'K-국민정기예금', '정기예금', FALSE, '2022-01-01 09:00:00', '2025-06-30 17:59:59', 5.5, 0, '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b'),
('96daf88d-a5ae-11ef-86f9-0242ac110002', 'K-국민마음편한예금', '보통예금', TRUE, '2023-08-01 09:00:00', '2024-08-31 17:59:59', 4, 750, '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b'),
('9a34d6b7-a5ae-11ef-86f9-0242ac110002', '청년-목돈마련(정기)', '정기적금', FALSE, '2024-03-15 09:00:00', '2024-09-30 12:00:00', 8, 0, '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b'),
('9cb6e639-a5ae-11ef-86f9-0242ac110002', '청년-목돈마련(자유)', '자유적금', FALSE, '2024-08-01 09:00:00', '2024-11-30 17:59:59', 6, 0, '24a6b946-a154-11ef-ae5b-d85ed3d6bf8b'),
# KDB산업은행 통장 데이터
('9f704a43-a5ae-11ef-86f9-0242ac110002', '행복 아르바이트', '보통예금', TRUE, '2024-01-31 09:00:00', '2024-12-31 17:59:59', 3.5, 500, 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b'),
('a26582ea-a5ae-11ef-86f9-0242ac110002', '배짱이 목돈마련', '정기적금', FALSE, '2023-11-18 09:00:00', '2024-04-30 17:59:59', 6.5, 0, 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b'),
('a5474075-a5ae-11ef-86f9-0242ac110002', 'Travel 매니아', '정기적금', FALSE, '2024-02-01 09:00:00', '2024-02-29 17:59:59', 7, 0, 'b1082761-a154-11ef-ae5b-d85ed3d6bf8b'),
# IBK기업은행 통장 데이터
('a7c1eaaa-a5ae-11ef-86f9-0242ac110002', '시원한 여름 휴가', '정기적금', FALSE, '2024-05-01 09:00:00', '2024-07-15 17:59:59', 7, 0, 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b'),
('aad35cc0-a5ae-11ef-86f9-0242ac110002', '직장인은 피곤해', '자유적금', FALSE, '2022-01-01 09:00:00', '2023-12-31 17:59:59', 6, 0, 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b'),
('ae535ece-a5ae-11ef-86f9-0242ac110002', '[리뉴얼] 직장인은 피곤해', '자유적금', TRUE, '2024-01-01 09:00:00', '2024-12-31 17:59:59', 6.5, 500, 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b'),
('b0f86dc3-a5ae-11ef-86f9-0242ac110002', '[소상공인] 으쌰으쌰', '자유적금', TRUE, '2023-01-01 09:00:00', '2024-12-31 17:59:59', 7, 1000, 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b'),
('b4315327-a5ae-11ef-86f9-0242ac110002', '행복패스 with 코레일', '보통예금', TRUE, '2024-03-20 09:00:00', '2024-04-20 17:59:59', 5.5, 0, 'e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b'),
# KB국민은행 통장 데이터
('b8e5e1d5-a5ae-11ef-86f9-0242ac110002', 'BTS x 트렌드 필', '보통예금', TRUE, '2023-03-20 09:00:00', '2024-02-29 17:59:59', 5, 350, '158755a9-a155-11ef-ae5b-d85ed3d6bf8b'),
('bb48316e-a5ae-11ef-86f9-0242ac110002', 'MZ 취향저격', '보통예금', TRUE, '2024-01-01 09:00:00', '2024-12-31 17:59:59', 4, 300, '158755a9-a155-11ef-ae5b-d85ed3d6bf8b'),
('be3ab7c8-a5ae-11ef-86f9-0242ac110002', '행복내집마련', '정기적금', FALSE, '2024-01-01 09:00:00', '2024-05-31 17:59:59', 7.5, 0, '158755a9-a155-11ef-ae5b-d85ed3d6bf8b'),
('c0db898b-a5ae-11ef-86f9-0242ac110002', '흥부가 기가막혀', '정기예금', FALSE, '2024-01-01 09:00:00', '2024-11-30 17:59:59', 5.8, 0, '158755a9-a155-11ef-ae5b-d85ed3d6bf8b'),
# 디지텍은행 통장 데이터
('c38752ea-a5ae-11ef-86f9-0242ac110002', '화성갈꺼니까', '정기예금', FALSE, '2023-06-01 09:00:00', '2024-06-30 17:59:59', 6.7, 0, '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b'),
('c6968396-a5ae-11ef-86f9-0242ac110002', '인생은 한방이야', '정기예금', FALSE, '2023-12-01 09:00:00', '2024-01-31 17:59:59', 6.5, 0, '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b'),
('c9ab9b2a-a5ae-11ef-86f9-0242ac110002', 'K-탕탕달달', '보통예금', TRUE, '2024-06-01 09:00:00', '2024-06-30 17:59:59', 5.5, 500, '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b'),
('cc473e69-a5ae-11ef-86f9-0242ac110002', '하이디라오 x 뉴진스', '정기적금', FALSE, '2024-05-01 09:00:00', '2024-08-31 17:59:59', 7, 0, '7be57a90-a155-11ef-ae5b-d85ed3d6bf8b');

# 'BANK_CUSTOMER` 테이블 삭제
DROP TABLE IF EXISTS BANK_CUSTOMER;

# 'BANK_CUSTOMER` 테이블 생성
CREATE TABLE BANK_CUSTOMER(
                              b_uuid VARCHAR(36) COMMENT '은행 구분 고유값',
                              p_uuid VARCHAR(36) COMMENT '국민 구분 고유값',
                              FOREIGN KEY (b_uuid) REFERENCES BANK(b_uuid),
                              FOREIGN KEY (p_uuid) REFERENCES PEOPLE(p_uuid)
) COMMENT = '은행 고객 테이블';

# 'BANK_CUSTOMER' 테이블 데이터 추가
INSERT INTO BANK_CUSTOMER VALUES
# 영호 은행 데이터(한국은행, KDB산업은행, IBK기업은행)
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
# 지효 은행 데이터(KB국민은행, 디지텍은행, 한국은행)
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
# 민규 은행 데이터(KDB산업은행, IBK기업은행, KB국민은행)
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
# 권호 은행 데이터(디지텍은행, 한국은행, KDB산업은행)
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
# 민석 은행 데이터(IBK기업은행, KB국민은행, 디지텍은행)
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
# 지상 은행 데이터(한국은행, KDB산업은행, IBK기업은행)
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
# 석훈 은행 데이터(KB국민은행, 디지텍은행, 한국은행)
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
# 은상 은행 데이터(KDB산업은행, IBK기업은행, KB국민은행)
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
# 정규 은행 데이터(디지텍은행, 한국은행, KDB산업은행)
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
# 정우 은행 데이터(IBK기업은행, KB국민은행, 디지텍은행)
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
# 정욱 은행 데이터(한국은행, KDB산업은행, IBK기업은행)
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
# 재훈 은행 데이터(KB국민은행, 디지텍은행, 한국은행)
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
# 지훈 은행 데이터(KDB산업은행, IBK기업은행, KB국민은행)
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
# 효빈 은행 데이터(디지텍은행, 한국은행, KDB산업은행)
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
# 의준 은행 데이터(IBK기업은행, KB국민은행, 디지텍은행)
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
# 예찬 선생님 은행 데이터(한국은행, KDB산업은행, IBK기업은행)
('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', 'e88b610b-a5a4-11ef-86f9-0242ac110002'),
('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', 'e88b610b-a5a4-11ef-86f9-0242ac110002'),
('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', 'e88b610b-a5a4-11ef-86f9-0242ac110002');

# 'BANK_ACCOUNT' 테이블 삭제
DROP TABLE IF EXISTS BANK_ACCOUNT;

# 'BANK_ACCOUNT' 테이블 생성
CREATE TABLE BANK_ACCOUNT(
                             ba_number VARCHAR(17) COMMENT '계좌 번호',
                             ba_amount BIGINT COMMENT '계좌 금액',
                             ba_alias VARCHAR(20) COMMENT '계좌 별칭',
                             ba_create_date DATETIME NOT NULL COMMENT '계좌 생성일자',
                             ba_maturity_date DATETIME COMMENT '계좌 만기일자',
                             ba_freeze TINYINT NOT NULL COMMENT '계좌 동결 여부',
                             bb_uuid VARCHAR(36) COMMENT '통장 구분 고유값',
                             p_uuid VARCHAR(36) COMMENT '국민 구분 고유값',
                             PRIMARY KEY (ba_number),
                             FOREIGN KEY (bb_uuid) REFERENCES BANK_BOOK(bb_uuid),
                             FOREIGN KEY (p_uuid) REFERENCES BANK_CUSTOMER(p_uuid)
) COMMENT = '은행 계좌 테이블';

# 한국은행 : XX-YYYZZZZZZ-CCC (14자리)
# KDB산업은행 : YYY-ZZZZZZZC-XXX (14자리)
# IBK기업은행 : XXX-XXXXXX-YY-XXX (13자리)
# KB국민은행 : XXXXXX-YY-ZZZZZZ (14자리)
# 디지텍은행 : XXX-CYY-ZZZZZZ (12자리)

# 'BANK_ACCOUNT' 테이블 데이터 추가
INSERT INTO BANK_ACCOUNT VALUES
# 영호 통장 데이터(한국은행 2, KDB산업은행 1)
('01-111000001-999', 300000, 'Mac PRO 목돈', '2024-08-13 15:11:39', '2025-08-12 23:59:59',  FALSE,  '9a34d6b7-a5ae-11ef-86f9-0242ac110002', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
('01-111000002-998',  38120, '일반 입출금', '2023-11-06 10:44:13', NULL, FALSE, '96daf88d-a5ae-11ef-86f9-0242ac110002', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
('501-00000011-110',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', '169bdf96-a5a2-11ef-86f9-0242ac110002'),
# 지효 은행 데이터(IBK은행 1, KB국민은행 1, KDB산업은행 1)
('951-012341-01-001',  250000, '앙상 통장', '2024-05-27 17:01:22', '2025-05-26 23:59:59', FALSE, 'a7c1eaaa-a5ae-11ef-86f9-0242ac110002', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
('900001-99-598701',  8900, '입출금 장독대', '2024-02-02 11:58:01', NULL, FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
('501-00000012-111',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'a7ca12ce-a5a2-11ef-86f9-0242ac110002'),
# 민규 통장 데이터(디지텍은행 1, 한국은행 1, KDB산업은행 1)
('001-701-123401',  220000, '람머스처럼 굴리는 통장', '2023-12-28 13:28:41', '2024-06-30 23:59:59', FALSE, 'c6968396-a5ae-11ef-86f9-0242ac110002', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
('01-111000003-997',  67710, '내 지갑은 편치않다', '2023-12-28 13:28:41', '2024-06-30 23:59:59', FALSE, '96daf88d-a5ae-11ef-86f9-0242ac110002', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
('501-00000013-112',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'da71fce4-a5a2-11ef-86f9-0242ac110002'),
# 권호 통장 데이터(IBK기업은행 2, KDB산업은행 1)
('951-012342-01-011',  250000, '직장인이에요(학생임)', '2024-11-18 20:37:55', '2025-12-31 23:59:59', FALSE, 'ae535ece-a5ae-11ef-86f9-0242ac110002', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
('951-012343-01-021',  17850, '교통비 누수 막아!', '2024-03-31 10:27:01', NULL, FALSE, 'b4315327-a5ae-11ef-86f9-0242ac110002', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
('501-00000014-113',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'c419cc4b-a5a4-11ef-86f9-0242ac110002'),
# 민석 통장 데이터(KB국민은행 1, 디지텍은행 1, KDB산업은행 1)
('900001-98-598702',  125000, '내 잔고도 기가막힘', '2024-10-20 14:42:14', '2025-10-19 23:59:59', FALSE, 'c0db898b-a5ae-11ef-86f9-0242ac110002', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
('001-702-123411',  220000, '하이라디오 가고 싶당', '2024-08-09 20:44:48', '2025-12-31 23:59:59', FALSE, 'cc473e69-a5ae-11ef-86f9-0242ac110002', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
('503-00000015-114',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'ca4e117a-a5a4-11ef-86f9-0242ac110002'),
# 지상 통장 데이터(디지텍은행 1, KB국민은행 1, KDB산업은행 1)
('001-703-123421',  13700, '달달한거 먹고 싶을 때', '2024-06-02 12:01:36', NULL, FALSE, 'c9ab9b2a-a5ae-11ef-86f9-0242ac110002', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
('900001-97-598703',  1400000, '청담동 꼭 간다', '2024-01-29 10:23:08', '2029-01-28 23:59:59', FALSE, 'be3ab7c8-a5ae-11ef-86f9-0242ac110002', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
('503-00000016-115',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'cdd6940e-a5a4-11ef-86f9-0242ac110002'),
# 석훈 통장 데이터(한국은행 2, KDB산업은행 1)
('01-111000003-996', 300000, '제주도 여행', '2024-09-27 13:15:10', '2026-09-26 23:59:59',  FALSE,  '9cb6e639-a5ae-11ef-86f9-0242ac110002', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
('01-111000004-995',  21000, '일반 입출금', '2023-11-06 10:44:13', NULL, FALSE, '96daf88d-a5ae-11ef-86f9-0242ac110002', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
('503-00000017-116',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'd1703db1-a5a4-11ef-86f9-0242ac110002'),
# 은상 통장 데이터(IBK은행 1, KB국민은행 1, KDB산업은행 1)
('951-012344-01-031',  250000, '미니카페', '2024-04-17 18:55:08', '2026-04-16 23:59:59', FALSE, 'b0f86dc3-a5ae-11ef-86f9-0242ac110002', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
('900001-96-598704',  18150, 'BTS 팬 호소인', '2023-11-01 15:27:14', NULL, FALSE, 'b8e5e1d5-a5ae-11ef-86f9-0242ac110002', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
('503-00000018-117',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'd3f9197c-a5a4-11ef-86f9-0242ac110002'),
# 정규 통장 데이터(디지텍은행 1, 한국은행 1, KDB산업은행 1)
('001-704-123431',  220000, '베인처럼 구르는 통장', '2023-12-16 10:30:09', '2024-06-30 23:59:59', FALSE, 'c6968396-a5ae-11ef-86f9-0242ac110002', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
('01-111000005-994',  450000, '제발 금리 인상좀', '2024-02-04 14:06:10', '2026-02-03 23:59:59', FALSE, '96daf88d-a5ae-11ef-86f9-0242ac110002', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
('503-00000019-118',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'd683ca31-a5a4-11ef-86f9-0242ac110002'),
# 정우 통장 데이터(IBK기업은행 2, KDB산업은행 1)
('951-012345-01-041',  0, '직장인 호소인', '2024-11-19 12:58:01', '2025-12-31 23:59:59', FALSE, 'ae535ece-a5ae-11ef-86f9-0242ac110002', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
('951-012346-01-051',  5620, '이럴거면 차를 사지', '2024-04-07 17:17:47', NULL, FALSE, 'b4315327-a5ae-11ef-86f9-0242ac110002', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
('503-00000020-119',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'd9042d51-a5a4-11ef-86f9-0242ac110002'),
# 정욱 통장 데이터(KB국민은행 1, 디지텍은행 1, KDB산업은행 1)
('900001-95-598705',  44070, 'BTS 떡상가자', '2023-07-19 21:03:59', NULL, FALSE, 'b8e5e1d5-a5ae-11ef-86f9-0242ac110002', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
('001-705-123441',  340000, '트위터가 아니라 X입니다.', '2023-10-29 13:15:30', '2024-10-28 23:59:59', FALSE, 'c38752ea-a5ae-11ef-86f9-0242ac110002', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
('503-00000021-120',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'dbd22cca-a5a4-11ef-86f9-0242ac110002'),
# 재훈 통장 데이터(디지텍은행 1, KB국민은행 1, KDB산업은행 1)
('001-706-123451',  450000, '인생은 인터넷 생활이다...', '2024-01-25 14:14:01', '2024-01-24 23:59:59', FALSE, 'c6968396-a5ae-11ef-86f9-0242ac110002', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
('900001-94-598706',  10900, '쓸만한 돈통', '2024-04-16 19:06:11', NULL, FALSE, 'bb48316e-a5ae-11ef-86f9-0242ac110002', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
('503-00000022-121',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'de5599fa-a5a4-11ef-86f9-0242ac110002'),
# 지훈 통장 데이터(한국은행 2, KDB산업은행 1)
('01-111000006-993', 48810, '마음 편한거 맞음?', '2023-11-01 13:28:44', NULL,  FALSE,  '96daf88d-a5ae-11ef-86f9-0242ac110002', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
('01-111000007-992',  200000, '목돈 저축용', '2024-09-07 15:21:49', '2029-09-06 23:59:59', FALSE, '9a34d6b7-a5ae-11ef-86f9-0242ac110002', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
('503-00000023-122',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'e0c5af1b-a5a4-11ef-86f9-0242ac110002'),
# 효빈 통장 데이터(IBK은행 1, KB국민은행 1, KDB산업은행 1)
('951-012347-01-061',  0, '벌써부터 피곤해', '2024-11-18 20:22:34', '2025-12-31 23:59:59', FALSE, 'ae535ece-a5ae-11ef-86f9-0242ac110002', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
('900001-93-598707',  2700000, '집갑 대비용', '2024-02-17 16:00:49', '2031-02-16 23:59:59', FALSE, 'be3ab7c8-a5ae-11ef-86f9-0242ac110002', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
('503-00000024-123',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'e3912d4e-a5a4-11ef-86f9-0242ac110002'),
# 의준 통장 데이터(디지텍은행 1, 한국은행 1, KDB산업은행 1)
('001-707-123461',  89500, '내 인생은 쓰다', '2024-06-01 15:03:51', NULL, FALSE, 'c9ab9b2a-a5ae-11ef-86f9-0242ac110002', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
('01-111000008-991',  500000, '모아서 비트코인 사야지', '2024-10-02 18:40:18', '2029-10-01 23:59:59', FALSE, '9cb6e639-a5ae-11ef-86f9-0242ac110002', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
('503-00000025-124',  0, 'OJT 월급용', '2023-11-18 09:00:00', '2024-12-12 23:59:59', FALSE, '9f704a43-a5ae-11ef-86f9-0242ac110002', 'e5c0c524-a5a4-11ef-86f9-0242ac110002'),
# 예찬 선생님 통장 데이터(IBK은행 1, KDB산업은행 2)
('951-999999-01-099',  9840, '대중교통 호환용', '2024-03-21 14:50:19', NULL, FALSE, 'b4315327-a5ae-11ef-86f9-0242ac110002', 'e88b610b-a5a4-11ef-86f9-0242ac110002'),
('503-00000098-998',  5128000, '퇴직금 모으기', '2024-01-06 12:29:00', '2029-01-05 23:59:59', FALSE, 'a26582ea-a5ae-11ef-86f9-0242ac110002', 'e88b610b-a5a4-11ef-86f9-0242ac110002'),
('503-00000099-999',  4500000, '네달란드 여행 모으기', '2024-02-10 22:12:59', '2025-02-09 23:59:59', FALSE, 'a5474075-a5ae-11ef-86f9-0242ac110002', 'e88b610b-a5a4-11ef-86f9-0242ac110002');

# 'BANK_ACCOUNT_HISTORY' 테이블 생성
CREATE TABLE BANK_ACCOUNT_HISTORY(
                                     bah_amount INT NOT NULL COMMENT '거래 금액',
                                     bah_bef_amount INT NOT NULL COMMENT '거래 전 금액',
                                     bah_memo VARCHAR(10) NULL COMMENT '거래 메모',
                                     bah_type BOOLEAN NOT NULL COMMENT '거래 타입',
                                     bah_trans_date DATETIME NOT NULL COMMENT '거래일자',
                                     ba_number VARCHAR(17) NOT NULL UNIQUE COMMENT '계좌번호',
                                     ba_tar_number VARCHAR(17) NOT NULL UNIQUE COMMENT '대상 계좌번호',
                                     PRIMARY KEY (bah_trans_date, ba_number),
                                     FOREIGN KEY (ba_number) REFERENCES BANK_ACCOUNT(ba_number),
                                     FOREIGN KEY (ba_tar_number) REFERENCES BANK_ACCOUNT(ba_number)
) COMMENT = '은행 계좌 이력 테이블';

CREATE TABLE CUSTOMER (
    c_id VARCHAR(24) COMMENT '사용자 아이디',
    c_password VARCHAR(50) NOT NULL COMMENT '사용자 비밀번호',
    c_alias VARCHAR(20) COMMENT '사용자 별칭',
    p_uuid VARCHAR(36) COMMENT '국민 구분 고유값',
    PRIMARY KEY (c_id),
    FOREIGN KEY (p_uuid) REFERENCES PEOPLE(p_uuid)
) COMMENT = '사용자 테이블';

INSERT INTO customer VALUES ('minseok', '1234', '유저', 'ca4e117a-a5a4-11ef-86f9-0242ac110002');

SELECT * FROM people WHERE p_uuid = 'ca4e117a-a5a4-11ef-86f9-0242ac110002';



show tables;