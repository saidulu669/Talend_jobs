create or replace TABLE tdl.RPT_ECOM_MASTER_WEEKLY (
	DT DATE,
	ACCOUNT_TYPE NUMBER(1,0),
	REFERRER VARCHAR(19),
	REFERRER_DETAIL VARCHAR(16777216),
	DEVICE_TYPE VARCHAR(16777216),
	LANDING_PAGE_TYPE VARCHAR(16777216),
	REGION VARCHAR(16777216),
	BOUNCE NUMBER(13,0),
	WEB_ARTICLE_PAGE_VIEWS NUMBER(13,0),
	WEB_PAGE_VIEWS NUMBER(13,0),
	WEB_VISITS NUMBER(18,0),
	WEB_VISITORS NUMBER(18,0),
	AUDIO_PLAYS NUMBER(13,0),
	WEB_ARTICLE_VISITS NUMBER(18,0),
	WEB_NEW_VISITS NUMBER(18,0),
	WEB_RETURNING_VISITS NUMBER(18,0),
	WEB_ARTICLE_SUBSCRIPTIONS NUMBER(18,0),
	WEB_SUBSCRIPTIONS NUMBER(18,0),
	WEB_REN_SUBSCRIPTIONS NUMBER(18,0),
	WEB_REGISTRATIONS NUMBER(18,0),
	WEB_NL_SIGNUP NUMBER(18,0)
);