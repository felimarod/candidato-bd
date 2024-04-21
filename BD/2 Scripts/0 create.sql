alter table CANDIDATO
   drop constraint FK_CANDIDAT_A_TIPODOC;

drop index A_FK;

drop table CANDIDATO cascade constraints;

drop table TIPODOC cascade constraints;

/*==============================================================*/
/* Table: CANDIDATO                                             */
/*==============================================================*/
create table CANDIDATO (
   PK_CANDIDATO         VARCHAR2(30)          not null,
   IDTIPODOC            VARCHAR2(3)           not null,
   NOMBRE               VARCHAR2(30)          not null,
   APELLIDO             VARCHAR2(30)          not null,
   FECHANAC             DATE                  not null,
   NDOC                 NUMBER(15)            not null,
   constraint PK_CANDIDATO primary key (PK_CANDIDATO)
);

/*==============================================================*/
/* Index: A_FK                                                  */
/*==============================================================*/
create index A_FK on CANDIDATO (
   IDTIPODOC ASC
);

/*==============================================================*/
/* Table: TIPODOC                                               */
/*==============================================================*/
create table TIPODOC (
   IDTIPODOC            VARCHAR2(3)           not null,
   DESCTIPODOC          VARCHAR2(23)          not null,
   constraint PK_TIPODOC primary key (IDTIPODOC)
);

alter table CANDIDATO
   add constraint FK_CANDIDAT_A_TIPODOC foreign key (IDTIPODOC)
      references TIPODOC (IDTIPODOC);

