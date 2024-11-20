CREATE TABLE bank_customer (
                               bc_uuid VARCHAR(36) PRIMARY KEY,
                               bc_name VARCHAR(20) NOT NULL COMMENT '고객 이름',
                               bc_identity VARCHAR(14) NOT NULL UNIQUE COMMENT '고객 주민등록 번호',
                               bc_email VARCHAR(100) NOT NULL UNIQUE COMMENT '고객 이메일',
                               bc_contact VARCHAR(14) NOT NULL UNIQUE COMMENT '고객 연락처',
                               bc_address VARCHAR(100) NOT NULL COMMENT '고객 주소'
);

INSERT INTO bank_customer VALUES(UUID(), '김영호','000007-3000001','kyh@sdh.hs.kr','010-0000-0001','서울시');
INSERT INTO bank_customer VALUES(UUID(), '김지효','000007-2000001','kjh@sdh.hs.kr','010-0000-0002','서울시');
INSERT INTO bank_customer VALUES(UUID(), '박민규','000007-3000002','pmg@sdh.hs.kr','010-0000-0003','서울시');
INSERT INTO bank_customer VALUES(UUID(), '신권호','000007-3000003','skh@sdh.hs.kr','010-0000-0004','서울시');
INSERT INTO bank_customer VALUES(UUID(), '신민석','000007-3000004','sms@sdh.hs.kr','010-0000-0005','서울시');
INSERT INTO bank_customer VALUES(UUID(), '윤지상','000007-3000005','yjs@sdh.hs.kr','010-0000-0006','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이석훈','000007-3000006','lsh@sdh.hs.kr','010-0000-0007','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이은상','000007-3000007','les@sdh.hs.kr','010-0000-0008','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이정규','000007-3000008','ljk@sdh.hs.kr','010-0000-0009','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이정우','000007-3000009','ljw1@sdh.hs.kr','010-0000-0010','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이정욱','000007-3000010','ljw2@sdh.hs.kr','010-0000-0011','서울시');
INSERT INTO bank_customer VALUES(UUID(), '정재훈','000007-3000011','jjh1@sdh.hs.kr','010-0000-0012','서울시');
INSERT INTO bank_customer VALUES(UUID(), '정지훈','000007-3000012','jjh2@sdh.hs.kr','010-0000-0013','서울시');
INSERT INTO bank_customer VALUES(UUID(), '진효빈','000007-3000013','jhb@sdh.hs.kr','010-0000-0014','서울시');
INSERT INTO bank_customer VALUES(UUID(), '홍의준','000007-3000014','hej@sdh.hs.kr','010-0000-0015','서울시');
INSERT INTO bank_customer VALUES(UUID(), '이예찬','000005-3999999','yclee@sdh.hs.kr','010-9999-9999','서울시');
