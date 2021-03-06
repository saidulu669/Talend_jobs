
create or replace TABLE TDL."FCX_Movement_Fact_DML_TRANS" (
	SUBMOVEMENTFACTKEY NUMBER(38,0),
	SUBSCRIPTIONDIMKEY NUMBER(38,0),
	PARTYDIMKEY NUMBER(38,0),
	CONTACTID VARCHAR(18),
	MOVEMENTSTARTDATE DATE,
	MOVEMENTENDDATE DATE,
	MOVEMENTGROUP VARCHAR(100),
	MOVEMENTCATEGORY VARCHAR(100),
	MOVEMENTREASON VARCHAR(100),
	NUMBEROFDAYSSINCEPRVLAPSE VARCHAR(21),
	FACTROWUPDATEDDATE TIMESTAMP_NTZ(9),
	FCXMOVEMENTGROUP VARCHAR(100),
	FCXMOVEMENTCATEGORY VARCHAR(100),
	FCXMOVEMENTREASON VARCHAR(100),
	FCXMOVEMENTGROUPDIMKEY NUMBER(38,0),
	FCXMOVEMENTCATEGORYDIMKEY NUMBER(38,0),
	FCXMOVEMENTREASONDIMKEY NUMBER(38,0),
	ROWUPDATEDDATE TIMESTAMP_NTZ(9),
	ROWINSERTEDDATE TIMESTAMP_NTZ(9)
);
