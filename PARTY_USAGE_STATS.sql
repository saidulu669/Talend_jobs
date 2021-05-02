create or replace TABLE PARTY_USAGE_STATS (
	CONTACTID VARCHAR(18),
	DRUPALID VARCHAR(100),
	SUBSCRIPTIONPRICINGTERMCODE VARCHAR(60),
	VOLUME_OF_TERMS NUMBER(38,0),
	PAYMENT_TYPE VARCHAR(100),
	PRODUCT_GROUP VARCHAR(58),
	SUBSCRIPTION_EXPIRY_DATE DATE,
	SUBSCRIPTION_STATUS VARCHAR(100),
	ARTICLEREADPRIORWEEKECOM NUMBER(30,0),
	ARTICLEREADPRIORWEEKCLASSIC NUMBER(30,0),
	ARTICLEREADPRIORWEEKLAMARR NUMBER(30,0),
	ARTICLEREADCURRENTWEEKECOM NUMBER(30,0),
	ARTICLEREADCURRENTWEEKCLASSIC NUMBER(30,0),
	ARTICLEREADCURRENTWEEKLAMARR NUMBER(30,0),
	USAGEDAYSPRIORWEEKECOM NUMBER(30,0),
	USAGEDAYSPRIORWEEKCLASSIC NUMBER(30,0),
	USAGEDAYSPRIORWEEKLAMARR NUMBER(30,0),
	USAGEDAYSCURRENTWEEKECOM NUMBER(30,0),
	USAGEDAYSCURRENTWEEKCLASSIC NUMBER(30,0),
	USAGEDAYSCURRENTWEEKLAMARR NUMBER(30,0),
	TOTALARTICLESREADINECOM NUMBER(30,0),
	TOTALARTICLESREADINCLASSIC NUMBER(30,0),
	TOTALARTICLESREADINLAMARR NUMBER(30,0),
	ECOMARTICLESREAD12WEEKS NUMBER(30,0),
	CLASSICARTICLESREAD12WEEKS NUMBER(30,0),
	LAMARRARTICLESREAD12WEEKS NUMBER(30,0),
	TOTALDAYSACTIVEINECOM NUMBER(30,0),
	TOTALDAYSACTIVEINCLASSIC NUMBER(30,0),
	TOTALDAYSACTIVEINLAMARR NUMBER(30,0)
);