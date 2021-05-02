create or replace TABLE TDL.EDW_ACTIVE_MOVEMENTS (
    ID BIGINT IDENTITY(1,1),
	SUBMOVEMENTFACTKEY NUMBER(38,0),
	MASTER_CAL_KEY NUMBER(38,0),
	ORDER_ID VARCHAR(150),
	KPI_CATEGORY VARCHAR(100),
	COUNTRY_NAME VARCHAR(150),
	REGIONDIMKEY NUMBER(38,0),
	REGION_CODE VARCHAR(55),
	GLOBAL_REGION_NAME VARCHAR(80),
	BUSINESS_FUNCTION VARCHAR(305),
	GLOBAL_MARKETING_CHANNEL NVARCHAR,
	MARKETING_CHANNEL_DESC VARCHAR(100),
	PURCHASE_TYPE_DESC VARCHAR(100),
	PRODUCT_GROUP VARCHAR(58),
	PRODUCTNAME VARCHAR(100),
	ORIGINAL_REASON VARCHAR(110),
	SUBSCRIBER_TYPE VARCHAR(100),
	SUBSCRIPTIONDIMKEY NUMBER(38,0),
	SUB_NUM VARCHAR(53),
	SUB_TERM VARCHAR(60),
	SUB_TERM_BAND VARCHAR(16777216),
	ORDER_ROUTE VARCHAR(100),
	PAY_TYPE VARCHAR(100),
	RATE VARCHAR(80),
	PROM_CODE VARCHAR(70),
	RENEWAL_CATEGORY VARCHAR(100),
	MOVEMENT_CATEGORY VARCHAR(100),
	MOVEMENT_GROUP VARCHAR(100),
	MOVEMENT_REASON VARCHAR(100),
	SUBSCRIBER_REF VARCHAR(100),
	SUBSCRIPTION_ROUTE VARCHAR(100),
	SUBSCRIPTION_STATUS VARCHAR(100),
	MOVEMENTVOLUME NUMBER(38,0),
	VALUE_GBP FLOAT,
	VALUE_USD FLOAT,
	EXPIRY_DATE NUMBER(38,0),
	ORDER_DATE NUMBER(38,0),
	CAMPAIGN_TYPE VARCHAR(100),
    ROWCREATEDDATE TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);