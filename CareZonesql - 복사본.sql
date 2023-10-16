/*회원 테이블*/
drop table mmember;
DROP TABLE fmember;
CREATE SEQUENCE mno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE fid_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;
create table mmember(
    mno INT DEFAULT mno_autoseq.NEXTVAL PRIMARY KEY,
    mid varchar2(15) NOT NULL UNIQUE,
    mpwd varchar2(20) not null,
    mname varchar2(50) not null,
    mbirth1 char(6) not null,
    mbirth2 INT not null,
    memail1 varchar2(40) not null unique,
    memail2 varchar2(40) not null,
    mphone char(11) not null unique,
    maddr varchar2(300) not null
);
select mphone from mmember;
select decode(count(*),1,'true', 0, 'false')
		 		from mmember
		 		where mphone = 01012345678;
/*관리자 테이블*/
DROP SEQUENCE adno_autoseq;
DROP TABLE adtable;
CREATE SEQUENCE adno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;
create table adtable(
    adno INT DEFAULT adno_autoseq.NEXTVAL PRIMARY KEY,
    adid varchar2(15) NOT NULL UNIQUE,
    adpwd VARCHAR2(20) NOT NULL,
    adname VARCHAR2(50) NOT NULL,
    adbirth VARCHAR2(6) NOT NULL
);
insert into adtable(adid, adpwd, adname, adbirth) values('admin09','Admin0807!','송수련','970807');
insert into adtable(adid, adpwd, adname, adbirth) values('admin23','Admin0703!','김주희','990703');
commit;

select * from adtable order by adno;

select decode(count(*),1, 'true', 0, 'false')
		 		from mmember
		 		where mid = 'day666';
/*가족 테이블*/
create table fmember(
    fid INT DEFAULT fid_autoseq.NEXTVAL PRIMARY KEY,
    fno INT,
    fname varchar2(50) not null,
    fbirth1 char(6) not null,
    fphone char(11) unique,
    faddr varchar2(300),
    FOREIGN KEY(fno) REFERENCES mmember(mno)
);

select * from mmember order by mno;
select * from fmember;
select * from fmember where fno=1 order by fid;

/*게시판 테이블*/
DROP SEQUENCE barno_seq;
drop table board;
select * from board order by barticleNo desc;
select * from board;
CREATE SEQUENCE barno_seq START WITH 1 INCREMENT BY 1 NOCACHE;
truncate table board;
CREATE TABLE board(
    barticleNo INT DEFAULT barno_seq.NEXTVAL PRIMARY KEY,
    bid varchar2(15) not null,
    btitle varchar2(500) not null,
    bcontent varchar2(4000) not null,
    bimgFile varchar2(400),
    bwriteDate date default sysdate not null,
    FOREIGN key (bid) REFERENCES mmember(mid)
);
select * from board;
select * from board where barticleNo=4;
select count(barticleNo) from board;
select * from board where rownum<=10 order by BARTICLENO desc;
select * from board where rownum between(1-1)*100+(1-1)*10+1 and (1-1)*100+1*10 order by BARTICLENO desc;
select * from board where rownum between(2-1)*100+(2-1)*10+1 and (2-1)*100+2*10 order by BARTICLENO desc;
select rownum as rn from board where rownum between 2 and 20;
select * from (SELECT *, rownum as rn FROM board);
--rownum between 1 and 10;
SELECT *
FROM (
  SELECT *, ROWNUM AS rn
  FROM (
    SELECT *
    FROM board
    ORDER BY barticleNo DESC
  )
)WHERE rn BETWEEN (1-1)*100 + (2-1)*10 + 1 AND (1-1)*100 + 2*10;
update board set btitle='안녕하세요', bcontent='hello' where barticleNo=1;
delete from board where barticleNo=3;
commit;

/*게시판 댓글 테이블*/
drop table breply;
drop sequence brarno_seq;
CREATE SEQUENCE brarno_seq START WITH 1 INCREMENT BY 1 NOCACHE;
create table breply(
    brarticleNo INT DEFAULT brarno_seq.NEXTVAL PRIMARY KEY,
    brparentNo INT,
    brid varchar2(15) not null,
    brcontent varchar2(4000) not null,
    brwriteDate date default sysdate,
    FOREIGN KEY (brparentNo) REFERENCES board(barticleNo),
    FOREIGN KEY (brid) REFERENCES mmember(mid)
);
select * from breply order by BRARTICLENO;
select * from breply where brparentNo=2 order by brarticleNo desc;
delete from breply where brarticleNo=8;
commit;

/*백신 테이블*/
drop table vcc;
CREATE SEQUENCE vno_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE TABLE vcc(
    vno INT DEFAULT vno_seq.NEXTVAL PRIMARY KEY,
    vage VARCHAR2(50) NOT NULL,
    결핵 CHAR(1) NOT NULL,
    B형간염 CHAR(1) NOT NULL,
    디프테리아 CHAR(1) NOT NULL,
    파상풍 CHAR(1) NOT NULL,
    백일해 CHAR(1) NOT NULL,
    폴리오 CHAR(1) NOT NULL,
    B형헤모필루스인플루엔자 CHAR(1) NOT NULL,
    폐렴구균 CHAR(1) NOT NULL,
    홍역 CHAR(1) NOT NULL,
    유행성이하선염 CHAR(1) NOT NULL,
    풍진 CHAR(1) NOT NULL,
    수두 CHAR(1) NOT NULL,
    A형간염 CHAR(1) NOT NULL,
    일본뇌염 CHAR(1) NOT NULL,
    사람유두종바이러스 CHAR(1) NOT NULL,
    인플루엔자 CHAR(1) NOT NULL,
    장티푸스 CHAR(1) NOT NULL,
    신증후군출혈열 CHAR(1) NOT NULL,
    로타바이러스 CHAR(1) NOT NULL,
    수막구균 CHAR(1) NOT NULL,
    대상포진 CHAR(1) NOT NULL,
    엠폭스 CHAR(1) NOT NULL
);

select * from vcc;
/*컬럼명조회*/
select column_name from user_tab_columns where table_name = upper('vcc');

/*예약 테이블*/
DROP TABLE reservation;
drop SEQUENCE rno_autoseq;
CREATE SEQUENCE rno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;
create table reservation(
    rno INT DEFAULT rno_autoseq.NEXTVAL PRIMARY KEY,
    rid varchar2(15) not null,
    rname varchar2(50) not null,
    rbirth1 char(6) not null,
    rbirth2 INT not null,
    rphone char(11) not null,
    rhospital varchar2(50) not null,
    rvcc varchar2(50) not null,
    rdate Date not null,
    rwritedate Date default sysdate,
    rsubname varchar2(50),
    rsubbirth1 char(6),
    rsubbirth2 INT,
    FOREIGN KEY(rid) REFERENCES mmember(mid)
);
select * from reservation;


/*qna 테이블*/
DROP TABLE qna;
drop SEQUENCE qarticleno_autoseq;

CREATE SEQUENCE qarticleno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;

create table qna(
qarticleno int DEFAULT qarticleno_autoseq.NEXTVAL PRIMARY KEY,
qparentno int default 0,
qid varchar2(15) not null,
qpwd int,
qtitle varchar2(500) not null,
qcontent varchar2(4000) not null,
qimgfile varchar2(400),
qwritedate Date default sysdate,
FOREIGN KEY(qid) REFERENCES mmember(mid)
);

select * from qna;
/*--------------------------QNa db--------------------------*/

DROP TABLE replyqna;
drop SEQUENCE qreplyno_autoseq;

CREATE SEQUENCE qreplyno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;

create table replyqna(
qreplyno int DEFAULT qreplyno_autoseq.NEXTVAL PRIMARY KEY,
qrearticleno int not null,
qreid varchar2(15) not null,
qrecontent varchar2(4000) not null,
qrewritedate Date default sysdate,
FOREIGN KEY(qrearticleno) REFERENCES qna(qarticleno)
);

select * from replyqna;

/*---------------병원 테이블 ------------------*/
DROP TABLE hospital;
drop SEQUENCE hosno_autoseq;

CREATE SEQUENCE hosno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;

create table hospital(
    hosno int DEFAULT hosno_autoseq.NEXTVAL PRIMARY KEY,
    hosname varchar2(150) not null,
    hoscall varchar2(12) not null,
    hosaddr varchar2(500) not null,
    vccname varchar2(100) not null,
    vccquantity int default 10 not null
);
select hosname from hospital where hosno=4;

/*병원 장바구니 테이블*/
drop table hoscart;
DROP SEQUENCE hcno_autoseq;
create sequence hcno_autoseq start with 1 increment by 1 nocache;
CREATE TABLE hoscart(
    hcno int default hcno_autoseq.NEXTVAL PRIMARY KEY,
    hcid varchar2(15) not null,
    hchosno int not null,
    hchosname varchar2(150) not null,
    hcvccname varchar2(100) not null,
    hcdate date default sysdate,
    FOREIGN key(hcid) references mmember(mid),
    foreign key(hchosno) references hospital(hosno)
);
select * from hoscart;
select * from hoscart where hcid='day666';
/*예약 테이블*/
DROP TABLE reservation;
drop SEQUENCE rno_autoseq;

CREATE SEQUENCE rno_autoseq START WITH 1 INCREMENT BY 1 NOCACHE;

create table reservation(
    rno INT DEFAULT rno_autoseq.NEXTVAL PRIMARY KEY,
    rid varchar2(15) not null,
    rname varchar2(50) not null,
    rbirth1 char(6) not null,
    rbirth2 INT not null,
    rphone char(11) not null,
    rhospital varchar2(50) not null,
    rvcc varchar2(50) not null,
    rdate Date not null,
    rwritedate Date default sysdate,
    rsubname varchar2(50),
    rsubbirth1 char(6),
    rsubbirth2 INT,
    FOREIGN KEY(rid) REFERENCES mmember(mid)
);

select * from reservation;


