create or replace TABLE TDL.FCX_VW_SUBSCRIBERRETENTION_FACT (
    ID BIGINT IDENTITY(1,1), 
	CONTACTID VARCHAR(18),
	PARTYDIMKEY NUMBER(38,0),
	SUBSCRIPTIONDIMKEY NUMBER(38,0),
	ORIGINALSUBSCRIPTIONDIMKEY NUMBER(38,0),
	PRODUCT_DIM_KEY NUMBER(38,0),
	PRODUCT_NAME VARCHAR(100),
	REGION VARCHAR(200),
	SUBTERMBAND VARCHAR(16777216),
	DAYDIMKEY NUMBER(38,0),
	CALENDARDATE DATE,
	START_DATE DATE,
	MOSTRECENTSTARTDATE DATE,
	DAYSFROMORIGINALSTART NUMBER(9,0),
	DAYSFROMMOSTRECENTSTART NUMBER(9,0),
	VOLUME NUMBER(38,0),
	BLENDEDRETENTIONACTUALFLAG NUMBER(1,0),
	DATAFLAG VARCHAR(3),
    ROWINSERTEDDATE TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    ROWUPDATEDDATE TIMESTAMP_NTZ
);

INSERT INTO TDL.FCX_VW_SUBSCRIBERRETENTION_FACT
(	
    CONTACTID,PARTYDIMKEY,SUBSCRIPTIONDIMKEY,ORIGINALSUBSCRIPTIONDIMKEY,PRODUCT_DIM_KEY,PRODUCT_NAME,REGION,
	SUBTERMBAND,DAYDIMKEY,CALENDARDATE,START_DATE,MOSTRECENTSTARTDATE,DAYSFROMORIGINALSTART,DAYSFROMMOSTRECENTSTART,
	VOLUME,BLENDEDRETENTIONACTUALFLAG,DATAFLAG
)

select DISTINCT CONTACTID,PARTYDIMKEY,SUBSCRIPTIONDIMKEY,ORIGINALSUBSCRIPTIONDIMKEY,PRODUCT_DIM_KEY,PRODUCT_NAME,REGION,
       SUBTERMBAND,DAYDIMKEY,CALENDARDATE,START_DATE,MOSTRECENTSTARTDATE,DAYSFROMORIGINALSTART,DAYSFROMMOSTRECENTSTART,
       VOLUME,BLENDEDRETENTIONACTUALFLAG,DATAFLAG
from TDL.FCX_EDW_ACTIVES_NEW

union all

select DISTINCT CONTACTID,PARTYDIMKEY,SUBSCRIPTIONDIMKEY,ORIGINALSUBSCRIPTIONDIMKEY,PRODUCT_DIM_KEY,PRODUCT_NAME,REGION,
       SUBTERMBAND,DAYDIMKEY,CALENDARDATE,START_DATE,MOSTRECENTSTARTDATE,DAYSFROMORIGINALSTART,DAYSFROMMOSTRECENTSTART,
       VOLUME,BLENDEDRETENTIONACTUALFLAG,DATAFLAG
from TDL.FCX_vw_FCX_ACTIVES_NEW   

union all

select DISTINCT CONTACTID,PARTYDIMKEY,SUBSCRIPTIONDIMKEY,ORIGINALSUBSCRIPTIONDIMKEY,PRODUCT_DIM_KEY,PRODUCT_NAME,REGION,
	   SUBTERMBAND,DD.DATEDIMKEY as DAYDIMKEY,DD.CALENDARDATE as CALENDARDATE,START_DATE,MOSTRECENTSTARTDATE,DAYSFROMORIGINALSTART,DAYSFROMMOSTRECENTSTART,
	   VOLUME,BLENDEDRETENTIONACTUALFLAG,DATAFLAG
from TDL.FCX_EDW_ACTIVES_NEW ACT 
inner join "PDL"."DATEDIM" DD on DD.CALENDARDATE <= DATEADD(D,7,ACT.CALENDARDATE) and DD.CALENDARDATE >= DATEADD(D,1,ACT.CALENDARDATE)
where ACT.CALENDARDATE IN ('2018-12-22','2019-12-21','2020-12-19');