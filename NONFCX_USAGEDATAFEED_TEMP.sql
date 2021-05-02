create or replace TABLE TDL.NONFCX_USAGEDATAFEED_TEMP (
	JRC VARCHAR(16777216),
	UID VARCHAR(16777216),
	FULLVISITOR_COUNT NUMBER(18,0),
	ARTICLEHITS NUMBER(18,0),
	VISITDATE DATE,
	SOURCE VARCHAR(10),
	ROWCREATEDDATE DATE,
	ROWUPDATEDDATE DATE,
	NOOFAUDIOLISTENS NUMBER(25,0),
	CLICKEDTHECANCELLATIONOPTIONS NUMBER(25,0)
);