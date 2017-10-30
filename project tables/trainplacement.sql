
CREATE TABLE branch
(
  branch_id    NUMBER,
  branch_name  varchar2(20)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

CREATE TABLE ACCOUNT
(
  BALANCE    NUMBER(12),
  ACCOUNTNO  NUMBER(12)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE ADMINISTRATOR
(
  CCODE      VARCHAR2(10 BYTE),
  CNAME      VARCHAR2(50 BYTE),
  EMPID      VARCHAR2(10 BYTE),
  BRANCHES   VARCHAR2(30 BYTE),
  NOS        VARCHAR2(5 BYTE),
  EMAIL      VARCHAR2(30 BYTE),
  CONTACTNO  VARCHAR2(15 BYTE),
  WEB        VARCHAR2(30 BYTE),
  ADDRESS    VARCHAR2(50 BYTE),
  ESTYEAR    VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE BLOBTEST
(
  FILENAME  VARCHAR2(20 BYTE),
  B         BLOB
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE CLOBTEST
(
  FILENAME  VARCHAR2(10 BYTE),
  C         CLOB
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE CLOBTEST1
(
  FILENAME  VARCHAR2(20 BYTE),
  CLOBDATA  CLOB
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE CV
(
  OBJ           VARCHAR2(1000 BYTE),
  ACHIEVEMENTS  VARCHAR2(1500 BYTE),
  PLACE         VARCHAR2(20 BYTE),
  DATE1         VARCHAR2(20 BYTE),
  STRENGTH      VARCHAR2(1000 BYTE),
  HNO           VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EDU1
(
  EXAM  VARCHAR2(20 BYTE),
  UNI   VARCHAR2(20 BYTE),
  YEAR  VARCHAR2(50 BYTE),
  HNO   VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EDU2
(
  EXAM  VARCHAR2(20 BYTE),
  UNI   VARCHAR2(20 BYTE),
  YEAR  VARCHAR2(50 BYTE),
  HNO   VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EDU3
(
  EXAM  VARCHAR2(20 BYTE),
  UNI   VARCHAR2(20 BYTE),
  YEAR  VARCHAR2(50 BYTE),
  HNO   VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EDU4
(
  EXAM  VARCHAR2(20 BYTE),
  UNI   VARCHAR2(20 BYTE),
  YEAR  VARCHAR2(50 BYTE),
  HNO   VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EVENT
(
  SUBJECT  VARCHAR2(30 BYTE),
  EVENT    VARCHAR2(1500 BYTE),
  DATE1    DATE,
  MSGID    VARCHAR2(10 BYTE),
  IBS      NUMBER(12),
  STS      NUMBER(12)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE FILETABLE
(
  HNO       VARCHAR2(10 BYTE),
  FILAPATH  VARCHAR2(100 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE LOGIN
(
  ID    VARCHAR2(20 BYTE),
  PSWD  VARCHAR2(20 BYTE),
  TYPE  VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE MAIL
(
  MSGFROM      VARCHAR2(10 BYTE),
  MSGTO        VARCHAR2(10 BYTE),
  SUBJECT      VARCHAR2(30 BYTE),
  MSG          VARCHAR2(1500 BYTE),
  DATE1        DATE,
  MSGID        VARCHAR2(10 BYTE),
  INBOXSTATUS  NUMBER(12),
  SENTSTATUS   NUMBER(12)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE MATERIAL
(
  MATNAME  VARCHAR2(30 BYTE),
  MATPATH  VARCHAR2(30 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PERSONAL
(
  FATHNAME   VARCHAR2(30 BYTE),
  DOB        VARCHAR2(20 BYTE),
  GENDER     VARCHAR2(10 BYTE),
  MARSTATUS  VARCHAR2(10 BYTE),
  LANG       VARCHAR2(100 BYTE),
  NATION     VARCHAR2(20 BYTE),
  HOBBIES    VARCHAR2(50 BYTE),
  HNO        VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RAW1
(
  INF  LONG
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RECEIPT
(
  NEXTRECEIPT  NUMBER(12)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RECRUITER
(
  ID         VARCHAR2(20 BYTE),
  RNAME      VARCHAR2(15 BYTE),
  COMPANY    VARCHAR2(15 BYTE),
  REMAIL     VARCHAR2(20 BYTE),
  CONTACTNO  NUMBER(15),
  MOBILENO   NUMBER(15),
  ADDRESS    VARCHAR2(30 BYTE),
  WEBSITE    VARCHAR2(30 BYTE),
  NOSR       NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RESULTS
(
  HNO        VARCHAR2(10 BYTE),
  COMPANYID  VARCHAR2(15 BYTE),
  DATE1      DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RZRSM
(
  FNAME  VARCHAR2(10 BYTE),
  FDATA  VARCHAR2(200 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE STU
(
  NAME  VARCHAR2(10 BYTE),
  NO    NUMBER(2)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE STUDENT
(
  HNO         VARCHAR2(10 BYTE),
  FNAME       VARCHAR2(15 BYTE),
  LNAME       VARCHAR2(20 BYTE),
  DAY         VARCHAR2(5 BYTE),
  MONTH       VARCHAR2(5 BYTE),
  YEAR        VARCHAR2(50 BYTE),
  BYEAR       VARCHAR2(5 BYTE),
  BRANCH      VARCHAR2(10 BYTE),
  ADDRESS     VARCHAR2(50 BYTE),
  EMAIL       VARCHAR2(30 BYTE),
  CONTACTNO   VARCHAR2(15 BYTE),
  BAGGREGATE  NUMBER(2),
  TENTH       VARCHAR2(5 BYTE),
  INTER       VARCHAR2(5 BYTE),
  APPROVED    VARCHAR2(1 BYTE),
  SNO         VARCHAR2(10 BYTE),
  S           NUMBER(12),
  QUESTION    VARCHAR2(50 BYTE),
  ANSWER      VARCHAR2(20 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TAB1
(
  TAB  VARCHAR2(1500 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TECHNICAL
(
  OS       VARCHAR2(100 BYTE),
  LANG     VARCHAR2(100 BYTE),
  SCRIPT   VARCHAR2(100 BYTE),
  DBASE    VARCHAR2(100 BYTE),
  CONCEPT  VARCHAR2(300 BYTE),
  HNO      VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TESTCLOB
(
  COUNTRY      VARCHAR2(15 BYTE),
  INFORMATION  CLOB
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX C_CODE ON ADMINISTRATOR
(CCODE, CNAME)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX ID ON LOGIN
(ID)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX REC_ID ON RECRUITER
(ID)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX HNO ON STUDENT
(HNO)
LOGGING
NOPARALLEL;


ALTER TABLE ADMINISTRATOR ADD (
  CONSTRAINT C_CODE
 PRIMARY KEY
 (CCODE, CNAME));


ALTER TABLE LOGIN ADD (
  CONSTRAINT ID
 PRIMARY KEY
 (ID));


ALTER TABLE RECRUITER ADD (
  CONSTRAINT REC_ID
 PRIMARY KEY
 (ID));


ALTER TABLE STUDENT ADD (
  CONSTRAINT HNO
 PRIMARY KEY
 (HNO));




Insert into ADMINISTRATOR
   (CCODE, CNAME, EMPID, BRANCHES, NOS, 
    EMAIL, CONTACTNO, WEB, ADDRESS, ESTYEAR)
 Values
   ('1', 'KSRMCE', 'admin', 'MCA', '100', 
    'KSRM@GMAIL.COM', '93829293', 'WWW.KSRM.COM', 'KADAPA', '1999');
COMMIT;




Insert into CV
   (OBJ, ACHIEVEMENTS, PLACE, DATE1, STRENGTH, 
    HNO)
 Values
   ('This is to certify that this project entitled ?XXXXXXXXXXXX? is a bonafide work carried out by XXXXXXXX bearing ', 'ACHIEVE', 'hyd', '12-jan-2009', 'Strength', 
    '100');
Insert into CV
   (OBJ, ACHIEVEMENTS, PLACE, DATE1, STRENGTH, 
    HNO)
 Values
   ('Project work submitted in partial fulfillment 
of the requirement for the award of the degree

', 'ACHIEVE', 'hyderabad', '12-jun-09', 'Strength', 
    '101');
Insert into CV
   (OBJ, ACHIEVEMENTS, PLACE, DATE1, STRENGTH, 
    HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    '21');
Insert into CV
   (OBJ, ACHIEVEMENTS, PLACE, DATE1, STRENGTH, 
    HNO)
 Values
   ('This is to certify that this project entitled ?XXXXXXXXXXXX? is a bonafide work carried out by XXXXXXXX bearing Hall Ticket No: 02603019 ', 'ACHIEVE', 'hyd', '16-jun-2009', 'Strength', 
    '300');
Insert into CV
   (OBJ, ACHIEVEMENTS, PLACE, DATE1, STRENGTH, 
    HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    '500');
COMMIT;

Insert into EDU1
   (EXAM, UNI, YEAR, HNO)
 Values
   ('BE', 'JNTU', '67', '100');
Insert into EDU1
   (EXAM, UNI, YEAR, HNO)
 Values
   ('BE', 'JNTU', '2007', '101');
Insert into EDU1
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '21');
Insert into EDU1
   (EXAM, UNI, YEAR, HNO)
 Values
   ('BE', 'JNTU', '2007', '300');
Insert into EDU1
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '500');
COMMIT;

Insert into EDU2
   (EXAM, UNI, YEAR, HNO)
 Values
   ('Inter', 'Inter', '69', '100');
Insert into EDU2
   (EXAM, UNI, YEAR, HNO)
 Values
   ('MPC', 'InterBoard', '2001', '101');
Insert into EDU2
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '21');
Insert into EDU2
   (EXAM, UNI, YEAR, HNO)
 Values
   ('Inter', 'Inter', '2001', '300');
Insert into EDU2
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '500');
COMMIT;

Insert into EDU3
   (EXAM, UNI, YEAR, HNO)
 Values
   ('SSC', 'SSC', '67', '100');
Insert into EDU3
   (EXAM, UNI, YEAR, HNO)
 Values
   ('SSC', 'SSC', '1999', '101');
Insert into EDU3
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '21');
Insert into EDU3
   (EXAM, UNI, YEAR, HNO)
 Values
   ('SSC', 'SSC', '1999', '300');
Insert into EDU3
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '500');
COMMIT;

Insert into EDU4
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '100');
Insert into EDU4
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '101');
Insert into EDU4
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '21');
Insert into EDU4
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '300');
Insert into EDU4
   (EXAM, UNI, YEAR, HNO)
 Values
   (NULL, NULL, NULL, '500');
COMMIT;

Insert into EVENT
   (SUBJECT, EVENT, DATE1, MSGID, IBS, 
    STS)
 Values
   ('seminar', 'Seminar on NW', TO_DATE('06/12/2009 17:19:31', 'MM/DD/YYYY HH24:MI:SS'), '1', 1, 
    1);
Insert into EVENT
   (SUBJECT, EVENT, DATE1, MSGID, IBS, 
    STS)
 Values
   ('Sports', 'Add the event here... sports', TO_DATE('06/16/2009 14:16:45', 'MM/DD/YYYY HH24:MI:SS'), '2', 1, 
    1);
COMMIT;


Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('admin', 'admin', 'a');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('100', 'kumar', 's');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('kumar', 'kumar', 'r');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('101', 'raghum', 's');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('ravi', 'ravi', 'r');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('21', 'cnduuu', 's');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('300', 'sunil', 's');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('satya', 'satya', 'r');
Insert into LOGIN
   (ID, PSWD, TYPE)
 Values
   ('500', 'guest1', 's');
COMMIT;

Insert into MAIL
   (MSGFROM, MSGTO, SUBJECT, MSG, DATE1, 
    MSGID, INBOXSTATUS, SENTSTATUS)
 Values
   ('admin', 'kumar', 'hi', 'hi how are u ', TO_DATE('06/12/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    '1', 1, 1);
Insert into MAIL
   (MSGFROM, MSGTO, SUBJECT, MSG, DATE1, 
    MSGID, INBOXSTATUS, SENTSTATUS)
 Values
   ('admin', 'ravi', 'hi', 'hi how are u ', TO_DATE('06/12/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    '2', 1, 1);
COMMIT;

Insert into MATERIAL
   (MATNAME, MATPATH)
 Values
   ('Reasoning', 'Multi banking DOC.doc');
Insert into MATERIAL
   (MATNAME, MATPATH)
 Values
   ('Reasoning', 'MOBILE COMMUNICAT.doc');
COMMIT;

Insert into PERSONAL
   (FATHNAME, DOB, GENDER, MARSTATUS, LANG, 
    NATION, HOBBIES, HNO)
 Values
   ('vittalaiah', '21-jan-1984', 'M', 'no', 'english', 
    'indian', 'sports', '100');
Insert into PERSONAL
   (FATHNAME, DOB, GENDER, MARSTATUS, LANG, 
    NATION, HOBBIES, HNO)
 Values
   ('raghu', '12-jan-84', 'm', 'no', 'english', 
    'indian', 'sports', '101');
Insert into PERSONAL
   (FATHNAME, DOB, GENDER, MARSTATUS, LANG, 
    NATION, HOBBIES, HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, '21');
Insert into PERSONAL
   (FATHNAME, DOB, GENDER, MARSTATUS, LANG, 
    NATION, HOBBIES, HNO)
 Values
   ('raghu', '02/25/1984', 'Male', 'no', 'english', 
    'indian', 'sports', '300');
Insert into PERSONAL
   (FATHNAME, DOB, GENDER, MARSTATUS, LANG, 
    NATION, HOBBIES, HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, '500');
COMMIT;



Insert into RECRUITER
   (ID, RNAME, COMPANY, REMAIL, CONTACTNO, 
    MOBILENO, ADDRESS, WEBSITE, NOSR)
 Values
   ('kumar', '0', 'kumar', '0', 0, 
    0, '0', '0', 1);
Insert into RECRUITER
   (ID, RNAME, COMPANY, REMAIL, CONTACTNO, 
    MOBILENO, ADDRESS, WEBSITE, NOSR)
 Values
   ('ravi', 'ravi', 'ravi', 'ravi@gmail.com', 9985132253, 
    9985132253, 'hyderabad', 'www.mist.org', 1);
Insert into RECRUITER
   (ID, RNAME, COMPANY, REMAIL, CONTACTNO, 
    MOBILENO, ADDRESS, WEBSITE, NOSR)
 Values
   ('satya', 'satya', 'satya', 'satya@yah.com', 9985049551, 
    9985049551, '09985049551', 'www.yahoo.com', 1);
COMMIT;

Insert into RESULTS
   (HNO, COMPANYID, DATE1)
 Values
   ('100', 'kumar', TO_DATE('06/12/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into RESULTS
   (HNO, COMPANYID, DATE1)
 Values
   ('101', 'ravi', TO_DATE('06/12/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into RESULTS
   (HNO, COMPANYID, DATE1)
 Values
   ('300', 'satya', TO_DATE('06/16/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
COMMIT;



Insert into STUDENT
   (HNO, FNAME, LNAME, DAY, MONTH, 
    YEAR, BYEAR, BRANCH, ADDRESS, EMAIL, 
    CONTACTNO, BAGGREGATE, TENTH, INTER, APPROVED, 
    SNO, S, QUESTION, ANSWER)
 Values
   ('100', 'vijay', 'vijay', '22', '2', 
    '1984', 'IV', 'CSE', '0', 'vijay@yah.com', 
    '9985049551', 70, '68', '67', '1', 
    '0', 1, 'what is your pet name?', 'chinna');
Insert into STUDENT
   (HNO, FNAME, LNAME, DAY, MONTH, 
    YEAR, BYEAR, BRANCH, ADDRESS, EMAIL, 
    CONTACTNO, BAGGREGATE, TENTH, INTER, APPROVED, 
    SNO, S, QUESTION, ANSWER)
 Values
   ('101', 'raghu', 'raghu', '20', '1', 
    '1984', 'IV', 'CSE', '0', 'vijay@yahoo.com', 
    '9985049551', 69, '69', '70', '0', 
    '0', 1, 'what is your pet name?', 'chinna');
Insert into STUDENT
   (HNO, FNAME, LNAME, DAY, MONTH, 
    YEAR, BYEAR, BRANCH, ADDRESS, EMAIL, 
    CONTACTNO, BAGGREGATE, TENTH, INTER, APPROVED, 
    SNO, S, QUESTION, ANSWER)
 Values
   ('21', '0', '0', '0', '0', 
    '0', '0', '0', '0', '0', 
    '0', 0, '0', '0', '0', 
    '0', 0, 'what is your pet name?', '0');
Insert into STUDENT
   (HNO, FNAME, LNAME, DAY, MONTH, 
    YEAR, BYEAR, BRANCH, ADDRESS, EMAIL, 
    CONTACTNO, BAGGREGATE, TENTH, INTER, APPROVED, 
    SNO, S, QUESTION, ANSWER)
 Values
   ('300', 'ravi', 'ravi', '20', '7', 
    '1984', 'IV', 'CSE', '0', 'vijay@ya.com', 
    '9985049551', 70, '70', '70', '1', 
    '0', 1, 'what is your pet name?', 'chinna');
Insert into STUDENT
   (HNO, FNAME, LNAME, DAY, MONTH, 
    YEAR, BYEAR, BRANCH, ADDRESS, EMAIL, 
    CONTACTNO, BAGGREGATE, TENTH, INTER, APPROVED, 
    SNO, S, QUESTION, ANSWER)
 Values
   ('500', '0', '0', '0', '0', 
    '0', '0', '0', '0', '0', 
    '0', 0, '0', '0', '0', 
    '0', 0, 'what is your pet name?', '0');
COMMIT;


Insert into TECHNICAL
   (OS, LANG, SCRIPT, DBASE, CONCEPT, 
    HNO)
 Values
   ('os,xp', 'java', 'JS,VB', 'dbms', 'DBMS', 
    '100');
Insert into TECHNICAL
   (OS, LANG, SCRIPT, DBASE, CONCEPT, 
    HNO)
 Values
   ('xp,windows', 'java', 'JS,VB', 'Oracle', 'DBMS', 
    '101');
Insert into TECHNICAL
   (OS, LANG, SCRIPT, DBASE, CONCEPT, 
    HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    '21');
Insert into TECHNICAL
   (OS, LANG, SCRIPT, DBASE, CONCEPT, 
    HNO)
 Values
   ('OS', 'java', 'JS', 'Oracle', 'UML.SDLC', 
    '300');
Insert into TECHNICAL
   (OS, LANG, SCRIPT, DBASE, CONCEPT, 
    HNO)
 Values
   (NULL, NULL, NULL, NULL, NULL, 
    '500');
COMMIT;


