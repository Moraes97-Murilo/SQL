--------------------------------------------------------
--  DDL for Table PASSENGERS
--------------------------------------------------------

  CREATE TABLE "MURILO"."PASSENGERS" 
   (	"PAX_ID" VARCHAR2(26 BYTE), 
	"PAX_NAME" VARCHAR2(26 BYTE), 
	"SEX" VARCHAR2(26 BYTE), 
	"AGE" NUMBER(38,0), 
	"CREDIT_CARD" VARCHAR2(26 BYTE), 
	"SURVEY_AVG" NUMBER(38,1)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PAXID
--------------------------------------------------------

  CREATE UNIQUE INDEX "MURILO"."PK_PAXID" ON "MURILO"."PASSENGERS" ("PAX_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PASSENGERS
--------------------------------------------------------

  ALTER TABLE "MURILO"."PASSENGERS" ADD CONSTRAINT "PK_PAXID" PRIMARY KEY ("PAX_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;