CREATE SEQUENCE  "SQ_PLAYER"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;

CREATE TABLE "TB_PLAYER" 
   (	"PLAYER_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50), 
	"SEX" CHAR(1), 
	"BIRTH_DATE" DATE
   );
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (1,'WILL','M',to_timestamp('25/10/97 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (2,'MARY','F',to_timestamp('06/01/99 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (3,'WILLIAM','M',to_timestamp('01/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (22,'GRACE','F',to_timestamp('17/12/99 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (23,'MARY','F',to_timestamp('02/06/89 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (27,'JOHN','M',to_timestamp('29/01/94 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into TB_PLAYER (PLAYER_ID,NAME,SEX,BIRTH_DATE) values (42,'MAX','F',to_timestamp('13/07/98 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
                                                                                        
ALTER TABLE "TB_PLAYER" ADD CONSTRAINT "CK_SEX" CHECK (Sex in ('M','F')) ENABLE; 
ALTER TABLE "TB_PLAYER" ADD CONSTRAINT "PK_PLAYER" PRIMARY KEY ("PLAYER_ID") ENABLE;
ALTER TABLE "TB_PLAYER" MODIFY ("PLAYER_ID" NOT NULL ENABLE);
ALTER TABLE "TB_PLAYER" MODIFY ("NAME" NOT NULL ENABLE);
ALTER TABLE "TB_PLAYER" MODIFY ("SEX" NOT NULL ENABLE);
ALTER TABLE "TB_PLAYER" MODIFY ("BIRTH_DATE" NOT NULL ENABLE);                                                                                        


SELECT * FROM TB_PLAYER;
