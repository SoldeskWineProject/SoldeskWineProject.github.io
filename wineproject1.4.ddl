CREATE TABLE admin (
    admin_id  VARCHAR2(20) NOT NULL,
    admin_pw  VARCHAR2(20),
    order_number number(10));
ALTER TABLE admin ADD CONSTRAINT admin_pk PRIMARY KEY ( admin_id );
ALTER TABLE admin ADD CONSTRAINT admin_fk FOREIGN KEY ( order_number ) REFERENCES product_order ( order_number );

CREATE TABLE wine_user (
    user_id         varchar2(20) not null,
    user_pw         VARCHAR2(20),
    user_number     number(10) NOT NULL,
    user_tel        VARCHAR2(20),
    user_address    VARCHAR2(40),
    user_email      VARCHAR2(20),
    user_gender     VARCHAR2(10),
    user_logindate  DATE,
    user_signdate   DATE);
ALTER TABLE wine_user ADD CONSTRAINT user_pk_number PRIMARY KEY ( user_number, user_id );

CREATE TABLE sommelier (
    sommelier_number     number(10) NOT NULL,
    sommelier_id         VARCHAR2(20),
    sommelier_pw         VARCHAR2(20),
    sommelier_tel        VARCHAR2(20),
    sommelier_email      VARCHAR2(20),
    sommelier_gender     VARCHAR2(10),
    sommelier_logindate  DATE,
    sommelier_sifndate   DATE);
ALTER TABLE sommelier ADD CONSTRAINT sommelier_pk PRIMARY KEY ( sommelier_number );

CREATE TABLE subscribe (
    subscribe_number          number(10) NOT NULL,
    subscribe_grade           VARCHAR2(50),
    subscribe_sommliernumber  number(10) NOT NULL,
    subscribe_admin  VARCHAR2(20),
    subscribe_date            DATE,
    subscribe_enddate         DATE,
    user_id               varchar(20) NOT NULL,
    user_number number(10));
ALTER TABLE subscribe ADD CONSTRAINT subscribe_pk PRIMARY KEY ( subscribe_number );
ALTER TABLE subscribe ADD CONSTRAINT subscribe_sommelier_fk1 FOREIGN KEY ( subscribe_sommliernumber ) REFERENCES sommelier ( sommelier_number );
ALTER TABLE subscribe ADD CONSTRAINT subscribe_sommelier_fk2 FOREIGN KEY ( subscribe_admin ) REFERENCES admin ( admin_id );
ALTER TABLE subscribe ADD CONSTRAINT subscribe_user_fk FOREIGN KEY ( user_id,user_number ) REFERENCES wine_user ( user_id,user_number );

CREATE TABLE subscribe_review (
    subscribe_number  number(10) NOT NULL,
    user_num           number(10) NOT NULL,
    sweet_like         VARCHAR2(50),
    acidity_like       VARCHAR2(50),
    tannin_like        VARCHAR2(50),
    body_like          VARCHAR2(50));
   
ALTER TABLE subscribe_review ADD CONSTRAINT subscribe_review_fk FOREIGN KEY ( subscribe_number ) REFERENCES subscribe ( subscribe_number );

CREATE TABLE user_info (
    user_grade                 VARCHAR2(20) NOT NULL,
    user_number                number(10) NOT NULL,
    user_id                     varchar(20),
    user_subscribe             VARCHAR2(10),
    user_taste                 VARCHAR2(50),
    user_info_number           number(10),
    subscribe_wine_review_num  number(10) NOT NULL);
ALTER TABLE user_info ADD CONSTRAINT user_grade_pk PRIMARY KEY ( user_grade );
--  ERROR: FK name length exceeds maximum allowed length(30) 
--ALTER TABLE user_info ADD CONSTRAINT user_info_subscribe_wine_review_fk FOREIGN KEY ( subscribe_wine_review_num ) REFERENCES subscribe_wine_review ( subscribe_wine_review );
ALTER TABLE user_info ADD CONSTRAINT user_info_user_fk FOREIGN KEY (user_id, user_number ) REFERENCES wine_user (user_id, user_number );

CREATE TABLE board (
    board_number     number(10) NOT NULL,
    board_pw         VARCHAR2(20),
    board_title      VARCHAR2(40),
    board_content    VARCHAR2(500),
    board_readcount  NUMBER(20),
    board_writer     number(10),
    user_id     varchar2(20) NOT NULL,
    user_number number(10));
ALTER TABLE board ADD CONSTRAINT board_pk PRIMARY KEY ( board_number );
ALTER TABLE board ADD CONSTRAINT board_user_fk FOREIGN KEY ( user_id , user_number ) REFERENCES wine_user ( user_id , user_number );

CREATE TABLE notice (
    notice_number   number(10) NOT NULL,
    notice_title    VARCHAR2(50),
    notice_content  VARCHAR2(1000),
    notice_date     DATE,
    admin_id        VARCHAR2(20) NOT NULL);
ALTER TABLE notice ADD CONSTRAINT notice_pk PRIMARY KEY ( notice_number );
ALTER TABLE notice ADD CONSTRAINT notice_admin_fk FOREIGN KEY ( admin_id ) REFERENCES admin ( admin_id );

CREATE TABLE product (
    product_number     number(10) NOT NULL,
    product_name       VARCHAR2(50),
    product_category   VARCHAR2 (50),
    product_stock      number(10),
    product_buycnt     NUMBER(10),
    product_date       DATE,
    product_update     DATE,
    product_code       number(10),
    product_status     VARCHAR2(50),
    product_avaliable  VARCHAR2(50),
    wine_number        number(10) NOT NULL,
    user_number        number(10) NOT NULL,
    user_id varchar2(20));
ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( product_number );
ALTER TABLE product ADD CONSTRAINT product_user_fk FOREIGN KEY ( user_id, user_number ) REFERENCES wine_user ( user_id,user_number );
ALTER TABLE product ADD CONSTRAINT product_wine_product_fk FOREIGN KEY ( wine_number ) REFERENCES wine_product ( wine_number );

CREATE TABLE wine_product (
    wine_number  number(10) NOT NULL,
    wine_name    VARCHAR2(50),
    wine_stock   number(10),
    wine_type    VARCHAR2(50),
    wine_price   number(10),
    wine_nation  VARCHAR2(50),
    wine_year    number(10),
    wine_ml      number(10));
ALTER TABLE wine_product ADD CONSTRAINT wine_product_pk PRIMARY KEY ( wine_number );

CREATE TABLE cart (
    cart_number     number(10) NOT NULL,
    product_number  number(10) NOT NULL,
    cart_date       DATE,
    cart_amount     number(10));
alter table cart add constraint cart_pk primary key (cart_number);
ALTER TABLE cart ADD CONSTRAINT cart_product_fk FOREIGN KEY ( product_number ) REFERENCES product ( product_number );

CREATE TABLE product_order (
    order_number          number(10) NOT NULL,
    order_id              number(10),
    order_date            DATE,
    order_name            VARCHAR2(20),
    order_address         VARCHAR2(40),
    order_tel             VARCHAR2(20),
    order_price           VARCHAR2(50),
    order_payhow          VARCHAR2(50),
    order_payname         VARCHAR2(20),
    order_bankaccount     VARCHAR2(20),
    order_deliverynumber  number(10) NOT NULL,
    product_number        NUMBER NOT NULL,
    cart_number           number(10) NOT NULL,
    order_status          VARCHAR2(10) NOT NULL);
ALTER TABLE product_order ADD CONSTRAINT order_pk PRIMARY KEY ( order_number );
ALTER TABLE product_order ADD CONSTRAINT order_cart_fk FOREIGN KEY ( cart_number ) REFERENCES cart ( cart_number );

CREATE TABLE review (
    review_number       number(10) NOT NULL,
    review_title        VARCHAR2(50),
    review_content      VARCHAR2(1000),
    review_date         DATE,
    review_id           VARCHAR2(20),
    review_pw           VARCHAR2(20),
    user_number         number(10) NOT NULL,
    order_status        VARCHAR2(10),
    order_order_number  number(10) NOT NULL);
ALTER TABLE review ADD CONSTRAINT review_pk PRIMARY KEY ( review_number );
ALTER TABLE review ADD CONSTRAINT review_order_fk FOREIGN KEY ( order_order_number ) REFERENCES product_order ( order_number );

CREATE TABLE point (
    point_number   number(10) NOT NULL,
    user_grade    varchar2(20) NOT NULL,
    point_money    NUMBER(10),
    point_date     DATE,
    point_enddate  DATE);
ALTER TABLE point ADD CONSTRAINT point_pk PRIMARY KEY ( point_number );
ALTER TABLE point ADD CONSTRAINT point_user_fk FOREIGN KEY ( user_grade ) REFERENCES user_info ( user_grade );  

------------------------------------------------------------------------------------일단 필요없는것----------------------------------------------------------------------------------------------
/*
CREATE TABLE first_select_wine (
    survey_num         number(10) NOT NULL,
    wine_number        number(10) NOT NULL,
    first_wine_number  number(10) NOT NULL
);
ALTER TABLE first_select_wine ADD CONSTRAINT first_select_wine_pk PRIMARY KEY ( first_wine_number );

CREATE TABLE auto_select_wine (
    wine_number              number(10) NOT NULL,
    user_grade               VARCHAR2(20) NOT NULL,
    auto_select_wine_number  number(10) NOT NULL
);
ALTER TABLE auto_select_wine ADD CONSTRAINT auto_select_wine_pk PRIMARY KEY ( auto_select_wine_number );

CREATE TABLE first_survey (
    survey_num    number(10) NOT NULL,
    sweet_like    VARCHAR2(50),
    acidity_like  VARCHAR2(50),
    tannin_like   VARCHAR2(50),
    body_like     VARCHAR2(50),
    user_num      number(10) NOT NULL
);
ALTER TABLE first_survey ADD CONSTRAINT first_survey_pk PRIMARY KEY ( survey_num );

CREATE TABLE subscribe_wine_review (
    subscribe_wine_review    number(10) NOT NULL,
    sweet_review             VARCHAR2(50),
    acidity_review           VARCHAR2(50),
    body_review              VARCHAR2(50),
    tannin_review            VARCHAR2(50),
    request_again            CHAR(1),
    review_month             DATE,
    auto_select_wine_number  number(10) NOT NULL
);
ALTER TABLE subscribe_wine_review ADD CONSTRAINT subscribe_wine_review_pk PRIMARY KEY ( subscribe_wine_review );

CREATE TABLE wine (
    wine_id         number(10),
    wine_name       VARCHAR2(500),
    wine_number     number(10) NOT NULL,
    wine_producer   VARCHAR2(100),
    wine_nation     VARCHAR2(50),
    wine_local      VARCHAR2(50),
    wine_type       VARCHAR2(50),
    wine_use        VARCHAR2(50),
    wine_abv        VARCHAR2(50),
    wine_degree     VARCHAR2(50),
    wine_sweet      VARCHAR2(50),
    wine_acidity    VARCHAR2(50),
    wine_body       VARCHAR2(50),
    wine_tannin     VARCHAR2(50),
    wine_price      number(10),
    wine_year       number(10),
    wine_ml         number(10),
    wine_variaties  VARCHAR2(40)
);
ALTER TABLE wine ADD CONSTRAINT wine_pk PRIMARY KEY ( wine_number );

ALTER TABLE auto_select_wine
    ADD CONSTRAINT auto_select_wine_user_info_fk FOREIGN KEY ( user_grade )
        REFERENCES user_info ( user_grade );

ALTER TABLE auto_select_wine
    ADD CONSTRAINT auto_select_wine_wine_fk FOREIGN KEY ( wine_number )
        REFERENCES wine ( wine_number );
        
        --  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE first_select_wine
    ADD CONSTRAINT first_select_wine_first_survey_fk FOREIGN KEY ( survey_num )
        REFERENCES first_survey ( survey_num );

ALTER TABLE first_select_wine
    ADD CONSTRAINT first_select_wine_wine_fk FOREIGN KEY ( wine_number )
        REFERENCES wine ( wine_number );

ALTER TABLE first_survey
    ADD CONSTRAINT first_survey_user_fk FOREIGN KEY ( user_num )
        REFERENCES user ( user_number );
        
--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE subscribe_wine_review
    ADD CONSTRAINT subscribe_wine_review_auto_select_wine_fk FOREIGN KEY ( auto_select_wine_number )
        REFERENCES auto_select_wine ( auto_select_wine_number ); 
*/