create or replace TABLE USAGEDATAFEED_TEMP 
(   CONTACTID VARCHAR(16777216),   FULLVISITOR_COUNT NUMBER(38,0),   ARTICLEHITS NUMBER(38,0),   VISITDATE DATE,   SOURCE VARCHAR(16777216),   ROWCREATEDDATE DATE,   ROWUPDATEDDATE DATE,   
 constraint pk_TDL_USAGEDATAFEED_TEMP primary key (CONTACTID, SOURCE)  );