CREATE TABLE bank (
                      b_uuid VARCHAR(36) PRIMARY KEY COMMENT '은행 고유번호',
                      b_name VARCHAR(50) NOT NULL UNIQUE COMMENT '은행 이름',
                      b_rep VARCHAR(20) NOT NULL COMMENT '은행 설립자 이름',
                      b_sector INT NOT NULL COMMENT '은행 금융권',
                      b_code VARCHAR(36) NOT NULL UNIQUE COMMENT '은행 고유코드',
                      b_establish_date DATETIME NOT NULL COMMENT '은행 설립일자'
);

INSERT INTO bank VALUES('24a6b946-a154-11ef-ae5b-d85ed3d6bf8b', '한국은행', '구용서', 1, '001', '1950-06-12');
INSERT INTO bank VALUES('b1082761-a154-11ef-ae5b-d85ed3d6bf8b', '산업은행', '구용서', 1, '002', '1954-04-01');
INSERT INTO bank VALUES('e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b', '기업은행', '대한민국 정부', 1, '003', '1961-08-01');
INSERT INTO bank VALUES('158755a9-a155-11ef-ae5b-d85ed3d6bf8b', '국민은행', '대한민국 정부', 1, '004', '2001-11-01');
INSERT INTO bank VALUES('7be57a90-a155-11ef-ae5b-d85ed3d6bf8b', '외한은행', '김한조', 1, '005', '1967-01-30');