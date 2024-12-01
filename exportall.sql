--------------------------------------------------------
--  File created - «·√—»⁄«¡-ÌÊ·ÌÊ-08-2020   
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Table ALII
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ALII" 
   (	"NO" NUMBER(3,0), 
	"NAME" VARCHAR2(20), 
	"JOPP" VARCHAR2(10), 
	"POEN" NUMBER(9,0) NOT NULL ENABLE, 
	"SLA" NUMBER(2,0), 
	"SS" NUMBER(3,0), 
	 PRIMARY KEY ("NAME") ENABLE, 
	 CONSTRAINT "ALI_JOPP_UK" UNIQUE ("JOPP") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table ALWARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ALWARD" 
   (	"NO_A" NUMBER(3,0), 
	"NEME_A" VARCHAR2(2), 
	"NAME" VARCHAR2(20), 
	 FOREIGN KEY ("NAME")
	  REFERENCES "SCOTT"."ALII" ("NAME") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table BARCH
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BARCH" 
   (	"BNO" NUMBER(5,0) NOT NULL ENABLE, 
	"BNAME" VARCHAR2(30), 
	"BADD" VARCHAR2(40), 
	"BDATA" DATE, 
	 CONSTRAINT "BARCH_PK" PRIMARY KEY ("BNO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table BONUS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BONUS" 
   (	"ENAME" VARCHAR2(10), 
	"JOB" VARCHAR2(9), 
	"SAL" NUMBER, 
	"COMM" NUMBER
   ) ;
 
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "SCOTT"."CAR" 
   (	"CAR_NO" NUMBER(9,0) NOT NULL ENABLE, 
	"CAR_MAKE" VARCHAR2(20), 
	"CAR_MODE" NUMBER(4,0), 
	"BANZEN" VARCHAR2(6), 
	"LOO_NO" VARCHAR2(9), 
	"IMG" LONG RAW, 
	"NOTE" VARCHAR2(30), 
	"COLER" VARCHAR2(4000), 
	"FDATE" DATE, 
	"LDATE" DATE, 
	"FKILO" NUMBER(9,0), 
	"LKILO" NUMBER(9,0), 
	"OIL" VARCHAR2(7), 
	 CONSTRAINT "CAR_PK" PRIMARY KEY ("CAR_NO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."DEPT" 
   (	"DEPTNO" NUMBER(2,0), 
	"DNAME" VARCHAR2(14), 
	"LOC" VARCHAR2(13), 
	 CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "SCOTT"."EMP" 
   (	"EMPNO" NUMBER(4,0), 
	"ENAME" VARCHAR2(10), 
	"JOB" VARCHAR2(9), 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0), 
	 CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO") ENABLE, 
	 CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO")
	  REFERENCES "SCOTT"."DEPT" ("DEPTNO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table KINTTING
--------------------------------------------------------

  CREATE TABLE "SCOTT"."KINTTING" 
   (	"KINTTING_NO" NUMBER(6,0) NOT NULL ENABLE, 
	"KINTTING_DATA_FARST" DATE, 
	"CAR_NO" NUMBER(9,0), 
	"EMPNO" NUMBER(4,0), 
	"KITTING_PRIC_TA" NUMBER(6,0), 
	"NAME_T" VARCHAR2(30), 
	"NUM_T" NUMBER(30,0), 
	"TAYP_T" VARCHAR2(9), 
	"P_NO" NUMBER(10,0), 
	"KINTTING_DATE_LAST" DATE, 
	"PRICE" NUMBER(9,0), 
	"S_NUM" NUMBER(6,0), 
	"NO_YAS" VARCHAR2(40), 
	"UASER_NAME" VARCHAR2(20), 
	 CONSTRAINT "KINTTING_PK" PRIMARY KEY ("KINTTING_NO") ENABLE, 
	 CONSTRAINT "KINTTING_CAR_FK1" FOREIGN KEY ("CAR_NO")
	  REFERENCES "SCOTT"."CAR" ("CAR_NO") ENABLE, 
	 CONSTRAINT "KINTTING_MODLET_FK1" FOREIGN KEY ("EMPNO")
	  REFERENCES "SCOTT"."MODLET" ("EMPNO") ENABLE, 
	 CONSTRAINT "KINTTING_PATRON_FK1" FOREIGN KEY ("P_NO")
	  REFERENCES "SCOTT"."PATRON" ("PA_NO") ENABLE, 
	 CONSTRAINT "KINTTING_UASERS_FK1" FOREIGN KEY ("UASER_NAME")
	  REFERENCES "SCOTT"."UASERS" ("UASER_NAME") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table LESSEE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."LESSEE" 
   (	"LESSEE_NO" NUMBER(20,0) NOT NULL ENABLE, 
	"LESSEE_NAME" VARCHAR2(20), 
	"LESSEE_PHON" NUMBER(9,0), 
	"GANDER" VARCHAR2(4), 
	"FROM" VARCHAR2(10)
   ) ;
 
--------------------------------------------------------
--  DDL for Table MODLET
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MODLET" 
   (	"EMPNO" NUMBER(4,0) NOT NULL ENABLE, 
	"NAME1" VARCHAR2(30), 
	"EMPADD" VARCHAR2(40), 
	"EMPAGE" NUMBER(2,0), 
	"EMPSAL" NUMBER(5,0), 
	"BNO" NUMBER(5,0), 
	"JOP" VARCHAR2(30), 
	"HERDATA" DATE, 
	"EMPCOMM" NUMBER(5,0), 
	"PASSWORD" VARCHAR2(20), 
	 CONSTRAINT "MODLET_PK" PRIMARY KEY ("EMPNO") ENABLE, 
	 CONSTRAINT "MODLET_BARCH_FK1" FOREIGN KEY ("BNO")
	  REFERENCES "SCOTT"."BARCH" ("BNO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table PATRON
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PATRON" 
   (	"PA_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"PA_NAME_F" VARCHAR2(10), 
	"PA_NAME_S" VARCHAR2(30), 
	"P_PHON" NUMBER(9,0), 
	"PASEX" VARCHAR2(7), 
	"PAYAMEN" VARCHAR2(15), 
	"NUM_CARD" NUMBER(30,0), 
	"DRIV" VARCHAR2(2), 
	"ADDRESING" VARCHAR2(40), 
	"SOECE_CARD" VARCHAR2(30), 
	 CONSTRAINT "PATRON_PK" PRIMARY KEY ("PA_NO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table SALGRADE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SALGRADE" 
   (	"GRADE" NUMBER, 
	"LOSAL" NUMBER, 
	"HISAL" NUMBER
   ) ;
 
--------------------------------------------------------
--  DDL for Table SAND
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SAND" 
   (	"S_NUM" NUMBER(6,0) NOT NULL ENABLE, 
	"PRICE_NUM" NUMBER(9,0), 
	"PRICE_WRIET" VARCHAR2(40), 
	"S_SHEK" VARCHAR2(8), 
	"BANK" VARCHAR2(20), 
	"S_DATE" DATE, 
	"KINTTING_NO" NUMBER(6,0), 
	 CONSTRAINT "SAND_PK" PRIMARY KEY ("S_NUM") ENABLE, 
	 CONSTRAINT "SAND_KINTTING_FK1" FOREIGN KEY ("KINTTING_NO")
	  REFERENCES "SCOTT"."KINTTING" ("KINTTING_NO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table SBJ
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SBJ" 
   (	"DB" VARCHAR2(6), 
	"OOP" VARCHAR2(8), 
	"WEB" VARCHAR2(9), 
	"S_NAME" VARCHAR2(22), 
	 CONSTRAINT "SB_SN_FK" FOREIGN KEY ("S_NAME")
	  REFERENCES "SCOTT"."SUT" ("S_NAME") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table STING
--------------------------------------------------------

  CREATE TABLE "SCOTT"."STING" 
   (	"NO" NUMBER(5,0) NOT NULL ENABLE, 
	"TAYP_STING" VARCHAR2(20), 
	"NAME_WORKSHOP" VARCHAR2(25), 
	"PRIC" NUMBER(7,0), 
	"CAR_NO" NUMBER(9,0), 
	 CONSTRAINT "STING_PK" PRIMARY KEY ("NO") ENABLE, 
	 CONSTRAINT "STING_CAR_FK1" FOREIGN KEY ("CAR_NO")
	  REFERENCES "SCOTT"."CAR" ("CAR_NO") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table SUT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SUT" 
   (	"S_NO" NUMBER(6,0), 
	"S_NAME" VARCHAR2(22), 
	"S_Q" VARCHAR2(2), 
	 CONSTRAINT "SUT_SNA_PK" PRIMARY KEY ("S_NAME") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table THEMAN
--------------------------------------------------------

  CREATE TABLE "SCOTT"."THEMAN" 
   (	"NO_T" NUMBER(10,0) NOT NULL ENABLE, 
	"NAME_T" VARCHAR2(40), 
	"TAYB_T" VARCHAR2(10), 
	"NUM_T" NUMBER(30,0), 
	 CONSTRAINT "THEMAN_PK" PRIMARY KEY ("NO_T") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table UASERS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."UASERS" 
   (	"UASER_NAME" VARCHAR2(20) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(20), 
	 CONSTRAINT "UASERS_PK" PRIMARY KEY ("UASER_NAME") ENABLE
   ) ;
 
---------------------------------------------------
--   DATA FOR TABLE ALII
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ALII
Insert into ALII (NO,NAME,JOPP,POEN,SLA,SS) values (2,'ali','mm',767,10,null);

---------------------------------------------------
--   END DATA FOR TABLE ALII
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ALWARD
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ALWARD
Insert into ALWARD (NO_A,NEME_A,NAME) values (222,'ab','ali');

---------------------------------------------------
--   END DATA FOR TABLE ALWARD
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE BARCH
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BARCH
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (111,'›—⁄ «·„ﬂ·«','«·‘Õ—',to_date('11-APR-14','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (978,'”ﬁÿ—Ï','«—Œ»Ì·',to_date('10-JAN-08','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (4533,'›—⁄ «·Ã—«›','ÕÌ «·‰Â÷… ÃÊ«— «·„·⁄»',to_date('28-JUN-20','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (777,'›—⁄ „√—»','«·„œÌ‰Ì…',to_date('11-APR-17','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (100,'›—⁄-’‰⁄«¡','’‰⁄«¡-Õœ…',to_date('05-FEB-20','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (101,'›—⁄ –„«—','«·Œÿ «·⁄«„',to_date('09-FEB-20','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (445,'»‰Ì «·Õ«—À','«·Õ «—‘_ÃÊ«— «·”Êﬁ',null);
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (102,'›—⁄ «·„ÕÊÌ ','À·«¡',to_date('10-FEB-19','DD-MON-RR'));
Insert into BARCH (BNO,BNAME,BADD,BDATA) values (4532,'«·„Ì“«‰','’‰⁄«¡ _«·œ«∆—Ì ”Êﬁ «·„Ì“«‰',null);

---------------------------------------------------
--   END DATA FOR TABLE BARCH
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE BONUS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BONUS

---------------------------------------------------
--   END DATA FOR TABLE BONUS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE CAR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CAR
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (33,'»Ê—‘',2020,'10_· —','2092_2','[B@7baddd','‰ŸÌ›… Ãœ«','«»Ì÷',to_date('31-MAY-20','DD-MON-RR'),to_date('04-MAY-30','DD-MON-RR'),500958,364392,'ÃÌœ');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20103,'TOYOTE',2000,'20_· —','2345_2','[B@1d3c6fd','«·”Ì«—… ‰ŸÌ›…','«»Ì÷',to_date('09-MAR-20','DD-MON-RR'),to_date('09-MAR-21','DD-MON-RR'),112030,129837,'„ Ê”ÿ');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20104,'HONDEY',2005,'15_· —','2345_12',null,'«·ﬂ‘«›… „ﬂ”Ê—…','«’›—',to_date('09-FEB-20','DD-MON-RR'),to_date('09-MAY-21','DD-MON-RR'),20339,555,'ÃÌœ');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20105,'TOYOTE',2003,'5_· —','—”79',null,'ÌÊÃœ ›ÌÂ« –Õ·','«Õ„—',to_date('09-APR-20','DD-MON-RR'),to_date('09-MAY-21','DD-MON-RR'),83838,999,'„„ «“');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20115,'KIA',2017,'30_· —','7645','[B@ad33f6','ÌÊÃœ ›ÌÂ« ’œ„…','«Œ÷—',to_date('09-MAY-20','DD-MON-RR'),to_date('09-MAR-21','DD-MON-RR'),52442,666,'„ Ê”ÿ');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20100,'HONDEY',2015,'30_· —','543243_5','[B@12e60f3','›Ì «·Ê—‘…','«”Êœ',to_date('29-JUN-20','DD-MON-RR'),to_date('09-MAR-22','DD-MON-RR'),27277,333333,'ÃÌœ');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20108,'NUSAAN',2010,'40_· —','76543_1',null,' „ »Ì⁄Â«','—„«œÌ',to_date('09-AUG-20','DD-MON-RR'),to_date('09-AUG-21','DD-MON-RR'),11145,5555,'”Ï');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (2,'ﬂÌ«',2003,'50_· —','46585_7',null,'”·Ì„…','»‰›”ÃÌ',to_date('08-FEB-18','DD-MON-RR'),to_date('10-JUN-19','DD-MON-RR'),483632,367473,'„„ «“');
Insert into CAR (CAR_NO,CAR_MAKE,CAR_MODE,BANZEN,LOO_NO,IMG,NOTE,COLER,FDATE,LDATE,FKILO,LKILO,OIL) values (20116,'”Ê“ÊﬂÌ',1999,'40-· —','30495\2','[B@1df2b92','»«’ ﬂ«—Ì ‰ŸÌ› Ãœ«','«»Ì÷',to_date('25-JUN-20','DD-MON-RR'),to_date('04-JUL-20','DD-MON-RR'),256989,257000,'„‰ ÂÌ');

---------------------------------------------------
--   END DATA FOR TABLE CAR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DEPT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPT
Insert into DEPT (DEPTNO,DNAME,LOC) values (25,'DDDDDDDDD','GGGGGGGG');
Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

---------------------------------------------------
--   END DATA FOR TABLE DEPT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE EMP
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMP
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (121,'aliiii','ks',null,null,null,null,40);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (667,'ls','djjd',null,null,null,null,25);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (999,'ueueue',null,null,null,null,null,25);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902,to_date('17-DEC-80','DD-MON-RR'),800,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698,to_date('20-FEB-81','DD-MON-RR'),1600,300,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698,to_date('22-FEB-81','DD-MON-RR'),1250,500,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839,to_date('02-APR-81','DD-MON-RR'),2975,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698,to_date('28-SEP-81','DD-MON-RR'),1250,1400,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839,to_date('01-MAY-81','DD-MON-RR'),2850,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839,to_date('09-JUN-81','DD-MON-RR'),2450,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,'SCOTT','ANALYST',7566,to_date('19-APR-87','DD-MON-RR'),3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null,to_date('17-NOV-81','DD-MON-RR'),5000,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698,to_date('08-SEP-81','DD-MON-RR'),1500,0,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,'ADAMS','CLERK',7788,to_date('23-MAY-87','DD-MON-RR'),1100,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698,to_date('03-DEC-81','DD-MON-RR'),950,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,'FORD','ANALYST',7566,to_date('03-DEC-81','DD-MON-RR'),3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782,to_date('23-JAN-82','DD-MON-RR'),1300,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (33,'ali alward',null,null,null,null,null,null);

---------------------------------------------------
--   END DATA FOR TABLE EMP
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE KINTTING
--   FILTER = none used
---------------------------------------------------
REM INSERTING into KINTTING
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (100,to_date('01-JUN-20','DD-MON-RR'),20104,22,5000,'„Õ„œ ··‰ﬁ·',28732623,'»‰ﬂÌ…',1010,to_date('10-MAR-21','DD-MON-RR'),8000,3040,'·«','⁄·Ì «·Ê—œ');
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (1010,to_date('22-JUL-20','DD-MON-RR'),20115,null,800,'«·Ê«œ⁄Ì ·· Ã«—…',936873491,' Ã«—Ì…',44,to_date('19-AUG-20','DD-MON-RR'),5500,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20194,to_date('10-JUN-20','DD-MON-RR'),20103,null,120,'»ﬁ«·… «·‰ÃÊ„ «·Ì„‰Ì…',1828376,' Ã«—Ì…',10101,to_date('08-JUN-20','DD-MON-RR'),7000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20195,to_date('04-OCT-20','DD-MON-RR'),33,null,600,'Ê—‘… «·—Ì«‘Ì ··”„ﬂ—…',9808988,'»‰ﬂÌ…',44,to_date('10-MAY-22','DD-MON-RR'),9000,null,'·«',null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20199,to_date('17-JUN-20','DD-MON-RR'),20115,null,80,'„Õ„œ ··„ﬁ«Ê·« ',31247011,' Ã«—Ì…',1010,to_date('09-JUN-20','DD-MON-RR'),9000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (99,to_date('10-JUN-20','DD-MON-RR'),20115,null,600,'„Õ·«  ⁄»œ «·œ«Ì„',5667788,' Ã«—Ì…',8878,to_date('24-JUL-20','DD-MON-RR'),8000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20197,to_date('15-JUN-20','DD-MON-RR'),20103,null,500,'„Õ·«  «·„Ã«Âœ',39287520,' Ã«—Ì…',1010,to_date('05-AUG-20','DD-MON-RR'),4000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20200,to_date('16-JUN-20','DD-MON-RR'),20115,null,44,'«Õ„œ „Õ„œ',656543,' Ã«—Ì…',1010,to_date('02-JUN-20','DD-MON-RR'),9080,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20201,to_date('15-JUN-20','DD-MON-RR'),33,null,809,'—Ã· «·«⁄„«· ⁄»œ«··Â «·Ê—œ',2837346,'»‰ﬂÌ…',10101,to_date('02-JUN-20','DD-MON-RR'),8000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20204,to_date('06-JUL-20','DD-MON-RR'),20103,null,1300,'«·‰Ã„ ··’—«›…',2107129864,'»‰ﬂÌ…',20100,to_date('15-JUL-20','DD-MON-RR'),7000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20205,to_date('06-AUG-20','DD-MON-RR'),20100,null,100,'„«·ﬂ «·ÿÊﬁÌ',2982092,' Ã«—Ì…',54325,to_date('07-JUL-20','DD-MON-RR'),2500,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20206,to_date('08-JUL-20','DD-MON-RR'),20103,null,200,'Ã«„⁄… «·⁄·Ê„',969867904,'»‰ﬂÌ…',54326,to_date('16-JUL-20','DD-MON-RR'),7000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20207,to_date('08-JUL-20','DD-MON-RR'),20103,null,800,'„Õ·«  „Õ„œ',null,null,1010,to_date('08-JUL-20','DD-MON-RR'),8000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20198,to_date('12-JUN-20','DD-MON-RR'),20104,null,2222,'”‘ÌÌ',322523,'»‰ﬂÌ…',1010,to_date('12-JUN-20','DD-MON-RR'),44332,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (10105,to_date('06-DEC-20','DD-MON-RR'),20100,25,300,'„Õ··«  ⁄·Ì',8585,'»‰ﬂÌ…',1010,to_date('13-MAR-24','DD-MON-RR'),4000,60600,'‰⁄„',null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (10104,to_date('28-JUN-19','DD-MON-RR'),20100,23,200,'‘—ﬂ… Ê«Ì',1092873,' Ã«—Ì…',10300,to_date('07-APR-17','DD-MON-RR'),64547,40400,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (10103,to_date('03-FEB-20','DD-MON-RR'),33,22,8000,'‘—ﬂ… —«Õ…',2733653,'»‰ﬂÌ…',10100,to_date('07-DEC-23','DD-MON-RR'),9494,50500,'·«',null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (10102,to_date('06-APR-20','DD-MON-RR'),20103,26,6600,'‘—ﬂ… «·«Âœ·',230296722,' Ã«—Ì…',10200,to_date('11-MAY-23','DD-MON-RR'),10000,60600,'·«',null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (10101,to_date('02-FEB-20','DD-MON-RR'),20104,22,3000,'‘—ﬂ… «·‰Ã„ ··’—«›…',93283674,'»‰ﬂÌ…',10500,to_date('11-JUN-20','DD-MON-RR'),20000,70700,'‰⁄„',null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20193,to_date('06-OCT-20','DD-MON-RR'),20104,24,2000,'‘—ﬂ… „› «Õ',847653200001,' Ã«—Ì…',20100,to_date('11-APR-21','DD-MON-RR'),3000,20100,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20203,to_date('30-JUN-20','DD-MON-RR'),20115,null,700,'«·ÂÌÀ„ ··»’—Ì« ',986864,' Ã«—Ì…',1010,to_date('18-JUL-20','DD-MON-RR'),9000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (22,to_date('02-DEC-19','DD-MON-RR'),20100,25,300,'⁄»œ… ·· Ã«—…',3049485,' Ã«—Ì…',54322,to_date('02-DEC-19','DD-MON-RR'),5000,20200,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (66,to_date('11-APR-18','DD-MON-RR'),20100,24,2200,'‘—ﬂ…  Â«„…',45646363,'»‰ﬂÌ…',1010,to_date('02-JUN-20','DD-MON-RR'),40040,20300,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (88,to_date('10-JUN-20','DD-MON-RR'),20105,25,2300,'‘—ﬂ… ”»√ ›Ê‰',76775778,' Ã«—Ì…',10300,to_date('11-MAR-22','DD-MON-RR'),8888,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (77,to_date('10-JUN-20','DD-MON-RR'),20115,null,333,'⁄»œ—»… ·· Ã«—…',84759403,' Ã«—Ì…',905,to_date('21-APR-20','DD-MON-RR'),6666,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20196,to_date('11-JUN-20','DD-MON-RR'),2,null,400,'«·»Ì  «·Ì„‰Ì',948475,' Ã«—Ì…',54323,to_date('12-JUN-20','DD-MON-RR'),7000,null,null,null);
Insert into KINTTING (KINTTING_NO,KINTTING_DATA_FARST,CAR_NO,EMPNO,KITTING_PRIC_TA,NAME_T,NUM_T,TAYP_T,P_NO,KINTTING_DATE_LAST,PRICE,S_NUM,NO_YAS,UASER_NAME) values (20202,to_date('15-JUN-20','DD-MON-RR'),20103,null,8000,'«·«Ê·«œ · Ã«—…',765454,' Ã«—Ì…',1010,to_date('04-JUL-14','DD-MON-RR'),9900,null,null,null);

---------------------------------------------------
--   END DATA FOR TABLE KINTTING
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE LESSEE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into LESSEE
Insert into LESSEE (LESSEE_NO,LESSEE_NAME,LESSEE_PHON,GANDER,FROM) values (2278399,'„Õ„œ «·ÀÊ»«‰Ì',774530202,'–ﬂ—','Ì„‰Ì');
Insert into LESSEE (LESSEE_NO,LESSEE_NAME,LESSEE_PHON,GANDER,FROM) values (1010913245,'„Õ„œ «·Ê—œ',711123456,'–ﬂ—','”⁄ÊœÌ');
Insert into LESSEE (LESSEE_NO,LESSEE_NAME,LESSEE_PHON,GANDER,FROM) values (130120120,'⁄·Ì «·⁄‰”Ì',777778965,'–ﬂ—','Ì„‰Ì');
Insert into LESSEE (LESSEE_NO,LESSEE_NAME,LESSEE_PHON,GANDER,FROM) values (130120101,'«Õ„œ «·„—‘ÕÌ',777345213,'–ﬂ—','Ì„‰Ì');
Insert into LESSEE (LESSEE_NO,LESSEE_NAME,LESSEE_PHON,GANDER,FROM) values (130120100,'„Õ„œ „”⁄œ',774764933,'«‰ÀÏ','”⁄ÊœÌ');

---------------------------------------------------
--   END DATA FOR TABLE LESSEE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE MODLET
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MODLET
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (22,'⁄·Ì ⁄»œ«··Â «·Ê—œ','’‰⁄«¡-ÃÊ·Â «ÌÂ -’—›',20,7777,777,'„œÌ— ⁄«„',to_date('11-MAR-20','DD-MON-RR'),1000,'123');
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (23,'„Õ„œ «Õ„œ','„‰ÿﬁ… «·’Ì«Õ',21,3500,101,'ﬂ«‘Ì—',to_date('09-MAR-20','DD-MON-RR'),900,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (24,'Õ„“… ﬁ«Ìœ','Õœ…',22,5000,978,'›—«‘',to_date('11-MAR-12','DD-MON-RR'),500,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (25,'«»—ÂÌ„','‘„Ì·…',26,2000,102,'„‰Ÿ›',to_date('10-APR-09','DD-MON-RR'),200,'55');
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (26,'«Õ„œ «·⁄—«”Ì','Õœ… «·ÃÊ·…',23,1000,100,'„Œ ’',to_date('11-APR-18','DD-MON-RR'),700,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (12,'«Õ„œ ﬁ‰«›','«·”œ',44,9900,777,'„œÌ— „Œ«“‰',to_date('11-APR-17','DD-MON-RR'),100,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (30,'„Õ„œ «Õ„œ','’—› ÃÊ«— «·”Êﬁ',33,5000,111,'ﬂ«‘Ì—',to_date('11-MAR-20','DD-MON-RR'),500,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (44,'⁄»œ… ﬁ«∆œ','«·›—“… „Êﬁ› «·»«’« ',44,4000,978,'«” ﬁ»«·',to_date('11-FEB-21','DD-MON-RR'),400,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (66,'«Õ„œ «·”·«„Ì','«· Õ—Ì—',55,3900,111,'„Œ ’',to_date('11-MAR-20','DD-MON-RR'),330,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (27,'⁄»œ… ﬁ«Ìœ','’—›',50,500,978,'„ﬁÂÊÌ',to_date('05-SEP-11','DD-MON-RR'),100,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (400,'„Õ„œ «·„Õ„œÌ','‘«—⁄ “«Ìœ',30,5000,102,'„—«”·',to_date('07-NOV-15','DD-MON-RR'),150,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (100,'„Õ„œ «Õ„œ «·„⁄«›«',null,null,60000,null,null,null,600,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (101,'„Õ„œ ⁄»œ«··Â ⁄·Ì','’‰⁄«¡_«·’Ì«Õ',24,70000,445,'«·„œÌ— «·⁄«„',to_date('09-NOV-20','DD-MON-RR'),379,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (593,'ÊœÌ⁄ ⁄»œ… «·ﬁ»«ÿÌ','«·Õ’»… _”Êﬁ «·ﬁ« ',33,93466,4532,'„œÌ— «·‘»ﬂ« ',to_date('13-FEB-18','DD-MON-RR'),700,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (849,'„Õ„œ «·„Õ„œÌ','Êœ«Ì ŸÂ—',37,80000,4532,'Œœ„« ',to_date('28-JUN-20','DD-MON-RR'),600,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (979,'Ê—œ ’«·Õ ⁄·Ì','»∆— Ã«—›',29,70000,4533,'„»—„Ã',to_date('08-AUG-23','DD-MON-RR'),200,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (980,'„’·Õ ⁄·Ì Ã«— «··Â','‘„Ì·…_”Êﬁ «·ﬁ« ',34,50000,4533,'„ÊŸ› „»Ì⁄« ',to_date('28-JUN-20','DD-MON-RR'),300,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (8081,'»«”„ «·Ê’«»Ì','’‰⁄«¡ ‘„Ì·…',22,7000,101,'„Â‰œ”',to_date('06-JUL-20','DD-MON-RR'),200,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (8082,'À«„— „Õ„œ À«„—','«·Õ’»… ÃÊ«— «·—«⁄»Ì',66,600,100,'›—«‘',to_date('07-JUL-20','DD-MON-RR'),20,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (231,'⁄·Ì „Õ„œ','ÃÊ·… «·„ﬁÊ« ',22,58940,777,'„œÌ— „«·Ì',to_date('07-SEP-15','DD-MON-RR'),220,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (443,'„Õ„œ «Õ„œ','«·„‰Ê«·',66,4400,978,'„œÌ— «œ«—Ì',to_date('09-JAN-18','DD-MON-RR'),110,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (8080,'„Õ„œ «·Ê·ÌœÌ','‰»',77,8900,777,'„»—„Ã',null,89,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (50,'„Õ„œ «·„ÕÊÌ Ì','«·”Êﬁ',33,6000,111,'⁄«„·',to_date('09-JAN-17','DD-MON-RR'),400,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (70,'ﬁ«”„','«·ÃÊ·…',44,99999,777,'„Œ ’',to_date('08-FEB-17','DD-MON-RR'),200,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (55,'⁄·Ì „Õ„Êœ','«·›—“…',33,4000,101,'«” ﬁ»«·',to_date('09-MAR-21','DD-MON-RR'),100,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (39,'ﬁ‰«› „Õ„œ','«·‘«—⁄ «·⁄«„',55,3000,101,'„Œ ’  ”ÊÌﬁ',to_date('09-MAR-21','DD-MON-RR'),200,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (978,'„Õ„œ «Õ„œ ⁄·Ì «·Ê—œ','œ«—” ÕÌ «·›Ê«—”',38,90000,445,'„œÌ— «· ”ÊÌﬁ',to_date('28-JUN-20','DD-MON-RR'),400,null);
Insert into MODLET (EMPNO,NAME1,EMPADD,EMPAGE,EMPSAL,BNO,JOP,HERDATA,EMPCOMM,PASSWORD) values (773,'⁄„— ⁄»œ«··Â «·Ê—œ','‘„Ì·…_Õ«—… «·’ﬁÊ—',20,80000,445,'„Â‰œ”',to_date('18-JUN-20','DD-MON-RR'),600,null);

---------------------------------------------------
--   END DATA FOR TABLE MODLET
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PATRON
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PATRON
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (1010,'„Õ„œ','„”⁄œ ⁄·Ì',774087409,'–ﬂ—','’‰⁄«¡',1010914235,'„','’—›','«·«„«‰…_‘⁄Ê»');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (10101,'⁄·Ì','⁄»œ«··Â «·Ê—œ',774087409,'–ﬂ—','«·Ì„‰',1010888728,'„','’—› €Ê· «·‘ÌŒ','«—Õ»_»Ì  «·Ê—œ');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (20100,'«»—ÂÌ„','„Õ„œ «Õ„œ',775554695,'–ﬂ—','«·Ì„‰',238339,'„','‘«—⁄ «·” Ì‰','’‰⁄«¡');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (44,'”«·„','„Õ„œ «Õ„œ',74098760,null,'«·Ì„‰',83732928,null,'«·ﬂÊ·…','«·»Ì÷«¡');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (10300,'Õ„“…','⁄»œ… «·⁄—«”Ì',777453889,'–ﬂ—','ÕÃ…',27346548,'Ã','«·‘«—⁄ «·⁄«„','ÕÃ…');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (10100,'⁄„—','«Õ„œ «·”·«„Ì',774466773,'–ﬂ—','«·„ÕÊÌ ',38227848,'÷','ÃÊ·… ⁄„—«‰','À·«¡');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (10200,'„Õ„œ','—«ÃÕ ﬁ«Ìœ',733900768,'–ﬂ—','⁄„—«‰',39374944,'„','‘«—⁄ ’‰⁄«¡','«·›‘·…');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (10500,'⁄„—«‰','ﬁ«»Ê” «·”·Ì„«‰Ì',776612345,'–ﬂ—',' ⁄“',123347,'Ã','‘«—⁄ «·ﬂÊ·…','‘—⁄»');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (8878,'⁄»œ…','ﬁ«”„ «·„œ«—',774089609,null,'—Ì„…',282635,null,'Ã»‰','«·Œœ„… «·„œ‰Ì…');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (54325,'›Ê«“','⁄·Ì «·»Õ—Ì',77409849,null,'«·Ì„‰',29382010,null,'’‰⁄«¡ »Ì  »Ê”','»‰Ì „ÿ—');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (54326,'«Õ„œ','›Ê«œ',774894988,null,'«·Ì„‰',93847484,null,'„–»Õ','’‰⁄«¡');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (54322,'⁄„«—','„Õ„œ ⁄»œ…',700123456,'–ﬂ—','⁄œ‰',49475654,'Ã','«· Ê«ÂÌ','«·«„«‰… _„⁄Ì‰');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (54324,'‘',null,null,null,null,null,null,null,null);
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (905,'„ﬁ»·','«·Õ«Ã',71160123,null,'«·Ì„‰',9283839,null,'»Ì  »Ê”','Õœ… «·„œÌ‰…');
Insert into PATRON (PA_NO,PA_NAME_F,PA_NAME_S,P_PHON,PASEX,PAYAMEN,NUM_CARD,DRIV,ADDRESING,SOECE_CARD) values (54323,'„Õ„œ','⁄»œ… «·⁄„Ì”Ì',777444999,null,'«·Ì„‰',39820873,null,'«—Õ»','»Ì  «·⁄–—Ì');

---------------------------------------------------
--   END DATA FOR TABLE PATRON
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SALGRADE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SALGRADE
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (1,700,1200);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (2,1201,1400);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (3,1401,2000);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (4,2001,3000);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (5,3001,9999);

---------------------------------------------------
--   END DATA FOR TABLE SALGRADE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SAND
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SAND
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (3040,20000,'⁄‘—Ê‰ «·› —Ì«·','‰ﬁœ«','»‰ﬂ «· ”·Ì› «·“—«⁄Ì',to_date('30-MAR-20','DD-MON-RR'),100);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (40400,40000,'«—»⁄Ê‰ «·› —Ì«·','‘Ìﬂ','»‰ﬂ «·Ì„‰ «·œÊ·Ì',to_date('30-JUN-20','DD-MON-RR'),22);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (70700,60000,'” Ê‰ «·› —Ì«·','‘Ìﬂ','»‰ﬂ ”»√ «·«”·«„Ì',to_date('11-APR-20','DD-MON-RR'),100);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (60600,68000,'À„‰Ì… Ê” Ê‰ «·›','‰ﬁœ«','»‰ﬂ «· ”·Ì› «·“—«⁄Ì',to_date('11-MAR-20','DD-MON-RR'),66);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (1111,7000,'”»⁄Â «·› —Ì«·','‰ﬁœ«','»‰ﬂ «·Ì„‰ «·œÊ·Ì',null,1010);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (545,7000,'”»⁄… «·›','‰ﬁœ«','»‰ﬂ «· ÷«„‰ «·«”·«„Ì',to_date('10-JUN-20','DD-MON-RR'),20194);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (908,9000,' ”⁄… «·› —Ì«·','‘Ìﬂ','»‰ﬂ «· ”·Ì› «·“—«⁄Ì',to_date('10-JUN-20','DD-MON-RR'),20195);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (22,8000,'À„‰Ì… «·› —Ì«·','‰ﬁœ«','»‰ﬂ ”»√ «·«”·«„Ì',to_date('10-JUN-20','DD-MON-RR'),99);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (20100,33000,'À·«À… ÊÀ·«ÀÊ‰ «·›','‘Ìﬂ','»‰ﬂ ”»√ «·«”·«„Ì',to_date('10-JUN-20','DD-MON-RR'),88);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (20200,50000,'Œ„”Ê‰ «·›','‰ﬁœ«','»‰ﬂ «·Ì„‰ «·œÊ·Ì',to_date('07-OCT-20','DD-MON-RR'),10101);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (20300,66000,'” … Ê” Ê‰ «·› —Ì«·','‘Ìﬂ','»‰ﬂ «· ”·Ì› «·“—«⁄Ì',to_date('09-MAR-20','DD-MON-RR'),10102);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (20400,30000,'À·«ÀÊ‰ «·› —Ì«·','‰ﬁœ«','»‰ﬂ «·Ì„‰ «·œÊ·Ì',to_date('09-JUL-20','DD-MON-RR'),10103);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (3333,8000,'À„«‰Ì… «·› —Ì«·','‘Ìﬂ','»‰ﬂ ”»√ «·«”·«„Ì',null,20201);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (70701,2500,'«·›«‰ ÊŒ„”„«∆… —Ì«·','‘Ìﬂ','»‰ﬂ «· ÷«„‰ «·«”·«„Ì',to_date('06-JUL-20','DD-MON-RR'),20205);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (70702,7000,'”»⁄… «·›','‰ﬁœ«','LIST22',to_date('08-JUL-20','DD-MON-RR'),20206);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (50500,50000,'Œ„”Ê‰ «·› —Ì«·','‘Ìﬂ','»‰ﬂ ”»√ «·«”·«„Ì',to_date('08-NOV-20','DD-MON-RR'),10105);
Insert into SAND (S_NUM,PRICE_NUM,PRICE_WRIET,S_SHEK,BANK,S_DATE,KINTTING_NO) values (9090,5500,'Œ„”… «·› ÊŒ„”„«∆…','‰ﬁœ«','»‰ﬂ «·Ì„‰ «·œÊ·Ì',to_date('10-JUN-20','DD-MON-RR'),1010);

---------------------------------------------------
--   END DATA FOR TABLE SAND
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SBJ
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SBJ
Insert into SBJ (DB,OOP,WEB,S_NAME) values ('we','as','dsa',null);
Insert into SBJ (DB,OOP,WEB,S_NAME) values ('as','st','ew',null);
Insert into SBJ (DB,OOP,WEB,S_NAME) values ('ks','md','md',null);
Insert into SBJ (DB,OOP,WEB,S_NAME) values ('dk','md','md',null);

---------------------------------------------------
--   END DATA FOR TABLE SBJ
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STING
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STING
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (7368,' ÊŸÌ» „ﬂÌ‰Ì…','Êﬂ«·Â ”«»Õ…',2500,20103);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (938,'”„ﬂ—…','«·‰’— ··”„ﬂ—…',1000,20104);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (7373,' €ÌÌ— ›—Ì„','«·’ﬁ— ··’Ì«‰…',600,20105);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (6323,' €ÌÌ— «·»·«ﬂ« ','«·‰”— «·⁄—»Ì',500,20115);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (50,' ’·ÌÕ »‰ﬂ…','«·‰’— «·⁄—»Ì',2000,33);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45651,'«·ﬂ›—«  «·Œ·›Ì…','«·Œ«„—Ì ··«ÿ«—« ',50000,2);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45646,' ’·ÌÕ „—«Ì«','«»Ê ”»⁄…',6464,20103);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45647,'«·ﬂ„«‰«   €ÌÌ—','«»Ê‰’— «·—Ì«‘Ì',6000,33);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45648,'«·“Ã«Ã «·Œ·›Ì','«·÷»Ì»Ì ··“Ã«Ã',40000,20116);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45649,'«·„— “Ì','Êﬂ«·… ”«»Õ…',80000,20116);
Insert into STING (NO,TAYP_STING,NAME_WORKSHOP,PRIC,CAR_NO) values (45650,'«·ﬂ„«‰« ','«·„Õ··Ì',83730,20116);

---------------------------------------------------
--   END DATA FOR TABLE STING
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SUT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SUT
Insert into SUT (S_NO,S_NAME,S_Q) values (11,'ali','s');
Insert into SUT (S_NO,S_NAME,S_Q) values (12,'ahmad','E');
Insert into SUT (S_NO,S_NAME,S_Q) values (13,'moh','e');
Insert into SUT (S_NO,S_NAME,S_Q) values (14,'ddd','d');

---------------------------------------------------
--   END DATA FOR TABLE SUT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE THEMAN
--   FILTER = none used
---------------------------------------------------
REM INSERTING into THEMAN
Insert into THEMAN (NO_T,NAME_T,TAYB_T,NUM_T) values (100500,'„Õ·«  «·›ﬁÌ… ',' Ã«—Ì…',2878732);
Insert into THEMAN (NO_T,NAME_T,TAYB_T,NUM_T) values (100400,'‘—ﬂ… «·«„· ··„ﬁ«Ê·« ',' Ã«—Ì…',982398);
Insert into THEMAN (NO_T,NAME_T,TAYB_T,NUM_T) values (100300,'„Õ·«  ‘«ÂÌ‰',' Ã«—Ì…',983209);
Insert into THEMAN (NO_T,NAME_T,TAYB_T,NUM_T) values (100200,'«·»‰ﬂ «· Ã«—Ì','»‰ﬂÌ…',8320238);

---------------------------------------------------
--   END DATA FOR TABLE THEMAN
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE UASERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into UASERS
Insert into UASERS (UASER_NAME,PASSWORD) values ('ali','ali');
Insert into UASERS (UASER_NAME,PASSWORD) values ('⁄·Ì «·Ê—œ','123');
Insert into UASERS (UASER_NAME,PASSWORD) values ('⁄·Ì ⁄»œ«··Â «·Ê—œ','0000');

---------------------------------------------------
--   END DATA FOR TABLE UASERS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table UASERS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."UASERS" MODIFY ("UASER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."UASERS" ADD CONSTRAINT "UASERS_PK" PRIMARY KEY ("UASER_NAME") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table SUT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SUT" ADD CONSTRAINT "SUT_SNA_PK" PRIMARY KEY ("S_NAME") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table ALII
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ALII" ADD CONSTRAINT "ALI_JOPP_UK" UNIQUE ("JOPP") ENABLE;
 
  ALTER TABLE "SCOTT"."ALII" MODIFY ("POEN" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."ALII" ADD PRIMARY KEY ("NAME") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table MODLET
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MODLET" ADD CONSTRAINT "MODLET_PK" PRIMARY KEY ("EMPNO") ENABLE;
 
  ALTER TABLE "SCOTT"."MODLET" MODIFY ("EMPNO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table BARCH
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BARCH" ADD CONSTRAINT "BARCH_PK" PRIMARY KEY ("BNO") ENABLE;
 
  ALTER TABLE "SCOTT"."BARCH" MODIFY ("BNO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table KINTTING
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KINTTING" ADD CONSTRAINT "KINTTING_PK" PRIMARY KEY ("KINTTING_NO") ENABLE;
 
  ALTER TABLE "SCOTT"."KINTTING" MODIFY ("KINTTING_NO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "SCOTT"."CAR" ADD CONSTRAINT "CAR_PK" PRIMARY KEY ("CAR_NO") ENABLE;
 
  ALTER TABLE "SCOTT"."CAR" MODIFY ("CAR_NO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table LESSEE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."LESSEE" MODIFY ("LESSEE_NO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table SAND
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SAND" ADD CONSTRAINT "SAND_PK" PRIMARY KEY ("S_NUM") ENABLE;
 
  ALTER TABLE "SCOTT"."SAND" MODIFY ("S_NUM" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table THEMAN
--------------------------------------------------------

  ALTER TABLE "SCOTT"."THEMAN" MODIFY ("NO_T" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."THEMAN" ADD CONSTRAINT "THEMAN_PK" PRIMARY KEY ("NO_T") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table STING
--------------------------------------------------------

  ALTER TABLE "SCOTT"."STING" ADD CONSTRAINT "STING_PK" PRIMARY KEY ("NO") ENABLE;
 
  ALTER TABLE "SCOTT"."STING" MODIFY ("NO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table PATRON
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PATRON" ADD CONSTRAINT "PATRON_PK" PRIMARY KEY ("PA_NO") ENABLE;
 
  ALTER TABLE "SCOTT"."PATRON" MODIFY ("PA_NO" NOT NULL ENABLE);
 
--------------------------------------------------------
--  DDL for Index SYS_C005722
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C005722" ON "SCOTT"."ALII" ("NAME") 
  ;
 
--------------------------------------------------------
--  DDL for Index MODLET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MODLET_PK" ON "SCOTT"."MODLET" ("EMPNO") 
  ;
 
--------------------------------------------------------
--  DDL for Index STING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."STING_PK" ON "SCOTT"."STING" ("NO") 
  ;
 
--------------------------------------------------------
--  DDL for Index SUT_SNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SUT_SNA_PK" ON "SCOTT"."SUT" ("S_NAME") 
  ;
 
--------------------------------------------------------
--  DDL for Index ALI_JOPP_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."ALI_JOPP_UK" ON "SCOTT"."ALII" ("JOPP") 
  ;
 
--------------------------------------------------------
--  DDL for Index BARCH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."BARCH_PK" ON "SCOTT"."BARCH" ("BNO") 
  ;
 
--------------------------------------------------------
--  DDL for Index PK_DEPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."PK_DEPT" ON "SCOTT"."DEPT" ("DEPTNO") 
  ;
 
--------------------------------------------------------
--  DDL for Index PK_EMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."PK_EMP" ON "SCOTT"."EMP" ("EMPNO") 
  ;
 
--------------------------------------------------------
--  DDL for Index KINTTING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."KINTTING_PK" ON "SCOTT"."KINTTING" ("KINTTING_NO") 
  ;
 
--------------------------------------------------------
--  DDL for Index CAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."CAR_PK" ON "SCOTT"."CAR" ("CAR_NO") 
  ;
 
--------------------------------------------------------
--  DDL for Index THEMAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."THEMAN_PK" ON "SCOTT"."THEMAN" ("NO_T") 
  ;
 
--------------------------------------------------------
--  DDL for Index PATRON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."PATRON_PK" ON "SCOTT"."PATRON" ("PA_NO") 
  ;
 
--------------------------------------------------------
--  DDL for Index SAND_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SAND_PK" ON "SCOTT"."SAND" ("S_NUM") 
  ;
 
--------------------------------------------------------
--  DDL for Index UASERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."UASERS_PK" ON "SCOTT"."UASERS" ("UASER_NAME") 
  ;
 
--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EMP" ADD CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO")
	  REFERENCES "SCOTT"."DEPT" ("DEPTNO") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table SBJ
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SBJ" ADD CONSTRAINT "SB_SN_FK" FOREIGN KEY ("S_NAME")
	  REFERENCES "SCOTT"."SUT" ("S_NAME") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table ALWARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ALWARD" ADD FOREIGN KEY ("NAME")
	  REFERENCES "SCOTT"."ALII" ("NAME") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table MODLET
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MODLET" ADD CONSTRAINT "MODLET_BARCH_FK1" FOREIGN KEY ("BNO")
	  REFERENCES "SCOTT"."BARCH" ("BNO") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table KINTTING
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KINTTING" ADD CONSTRAINT "KINTTING_CAR_FK1" FOREIGN KEY ("CAR_NO")
	  REFERENCES "SCOTT"."CAR" ("CAR_NO") ENABLE;
 
  ALTER TABLE "SCOTT"."KINTTING" ADD CONSTRAINT "KINTTING_MODLET_FK1" FOREIGN KEY ("EMPNO")
	  REFERENCES "SCOTT"."MODLET" ("EMPNO") ENABLE;
 
  ALTER TABLE "SCOTT"."KINTTING" ADD CONSTRAINT "KINTTING_PATRON_FK1" FOREIGN KEY ("P_NO")
	  REFERENCES "SCOTT"."PATRON" ("PA_NO") ENABLE;
 
  ALTER TABLE "SCOTT"."KINTTING" ADD CONSTRAINT "KINTTING_UASERS_FK1" FOREIGN KEY ("UASER_NAME")
	  REFERENCES "SCOTT"."UASERS" ("UASER_NAME") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table SAND
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SAND" ADD CONSTRAINT "SAND_KINTTING_FK1" FOREIGN KEY ("KINTTING_NO")
	  REFERENCES "SCOTT"."KINTTING" ("KINTTING_NO") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table STING
--------------------------------------------------------

  ALTER TABLE "SCOTT"."STING" ADD CONSTRAINT "STING_CAR_FK1" FOREIGN KEY ("CAR_NO")
	  REFERENCES "SCOTT"."CAR" ("CAR_NO") ENABLE;
 