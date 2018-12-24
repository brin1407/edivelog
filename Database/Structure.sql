-- --------------------------------------------------------
--
-- Datenbank: `edivelog`
--
drop database if exists `edivelog_de`;
create database if not exists `edivelog_de` default character set utf8 collate utf8_general_mysql500_ci;
use `edivelog_de`;

create table `accessories` 
(
	`accessoriesid` int,
	`accessories` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (accessoriesid)
);

create table `accessoriesdive` 
(
	`accessoriesdive` int,
	`accessories` int,
	`dive` int,
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (accessoriesdive)
);

create table `activity` 
(
	`activityid` int,
	`activity` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (activityid)
);

create table `activitydive` 
(
	`activitydive` int,
	`activity` int,
	`dive` int,
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (activitydive)
);

create table `association` 
(
	`associationid` int,
	`association` varchar(255),
	`shortassociation` varchar(10),
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (associationid)
);

create table `country` 
(
	`countrycode` int,
	`country` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (countrycode)
);

create table `dive` 
(
	`diveid` int,
	`diver` int,
	`logbookid` int,
	`divedate` date,
	`divestart` time,
	`diveend` time,
	`divesite` int,
	`maxdepth` decimal,
	`divetime` int,
	`leadweight` decimal,
	`suite` int,
	`footlets` int,
	`glove` int,
	`jacket` int,
	`tank` int,
	`initialpressure` int,
	`dischargepressure` int,
	`decompression` tinyint(1) default 0,
	`decompressionremark` mediumtext default null,
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (diveid)
);

create table `divesite` 
(
	`divesiteid` int,
	`country` int,
	`name` varchar(255),
	`maxdepth` decimal,
	`entrace` int,
	`watertype` int,
	`ground` int,
	`remarks` mediumtext default null,
	`filename` varchar(255),
	`description` text default null,
	`remark` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (divesiteid)
);

create table `entrace` 
(
	`entraceid` int,
	`name` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (entraceid)
);

create table `diver` 
(
	`diverid` int,
	`lastname` varchar(255),
	`firstname` varchar(255),
	`username` varchar(255),
	`mail` varchar(255),
	`password` varbinary(150),
	`birth` date,
	`country` int,
	`description` varchar(255),
	`acceptterm` tinyint(1) default 0,
	`accepttermdate` timestamp,
	`acceptprivacy` tinyint(1) default 0,
	`acceptprivacydate` timestamp,
	`remark` varchar(255),
	`filename` varchar(255),
	`isregistred` tinyint(1) default 0,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (diverid)
);

create table `diverrole` 
(
	`diverid` int,
	`roleid` int,
	`hash` varchar(255),
	`created_at` timestamp,
	`updated_at` timestamp,
	`valid` tinyint(1) default 1,
	primary key (diverid, roleid)
);

create table `role` 
(
	`roleid` int,
	`rolename` varchar(255),
	`displayname` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp,
	`updated_at` timestamp,
	`valid` tinyint(1) default 1,
	primary key (roleid)
); 

create table `rolepermission` 
(
	`roleid` int,
	`permissionid` int,
	`hash` varchar(255),
	`created_at` timestamp,
	`updated_at` timestamp,
	`valid` tinyint(1) default 1,
	primary key (roleid, permissionid)
);

create table `permission` 
(
	`permissionid` int,
	`permission` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp,
	`updated_at` timestamp,
	`valid` tinyint(1) default 1,
	primary key (permissionid)
);

create table `diverdive` 
(
	`diverdive` int,
	`diver` int,
	`dive` int,
	`description` text default null,
	`isapproved` tinyint(1) default 0,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (diverdive)
);

create table `diverqualification` 
(
	`diverqualificationid` int,
	`diver` int,
	`qualification` int,
	`issuedate` date,
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (diverqualificationid)
);

create table `footlets` 
(
	`footletid` int,
	`zipper` tinyint,
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`ischeckedout` tinyint(1) default 0,
	`action` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (footletid)
);

create table `gloves` 
(
	`glovesid` int,
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (glovesid)
);

create table `jacket` 
(
	`jacketid` int,
	`jacket` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (jacketid)
);

create table `medicalcertificate` 
(
	`certificatid` int,
	`diverid` int,
	`limitations` text default null,
	`issuedate` date,
	`nextexamination` int,
	`filename` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (certificatid)
);

create table `qualification` 
(
	`qualificationid` int,
	`qualification` varchar(255),
	`association` int,
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (qualificationid)
);

create table `suite` 
(
	`suiteid` int,
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (suiteid)
);

create table `tanktype` 
(
	`tanktypeid` int,
	`tanktype` varchar(255),
	`description` text default null,
	`remark` mediumtext default null,
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (tanktypeid)
);

create table `tank` 
(
	`tankid` int,
	`pressure` float,
	`size` float,
	`tanktype` int,
	`description` text default null,
	`remark` mediumtext default null,
	`filename` varchar(255),
	`updateduser` varchar(255),
	`hash` varchar(255),
	`created_at` timestamp default current_timestamp,
	`updated_at` timestamp on update current_timestamp,
	`valid` tinyint(1) default 1,
	primary key (tankid)
);

alter table `accessoriesdive` add foreign key (`accessories`) references `accessories` (`accessoriesid`);

alter table `accessoriesdive` add foreign key (`dive`) references `dive` (`diveid`);

alter table `activitydive` add foreign key (`activity`) references `activity` (`activityid`);

alter table `activitydive` add foreign key (`dive`) references `dive` (`diveid`);

alter table `divesite` add foreign key (`country`) references `country` (`countrycode`);

alter table `dive` add foreign key (`divesite`) references `divesite` (`divesiteid`);

alter table `diverdive` add foreign key (`dive`) references `dive` (`diveid`);

alter table `diverdive` add foreign key (`diver`) references `diver` (`diverid`);

alter table `diverqualification` add foreign key (`diver`) references `diver` (`diverid`);

alter table `dive` add foreign key (`footlets`) references `footlets` (`footletid`);

alter table `tank` add foreign key (`tanktype`) references `tanktype` (`tanktypeid`);

alter table `diverqualification` add foreign key (`qualification`) references `qualification` (`qualificationid`);

alter table `medicalcertificate` add foreign key (`diverid`) references `diver` (`diverid`);

alter table `dive` add foreign key (`glove`) references `gloves` (`glovesid`);

alter table `dive` add foreign key (`jacket`) references `jacket` (`jacketid`);

alter table `dive` add foreign key (`suite`) references `suite` (`suiteid`);

alter table `dive` add foreign key (`tank`) references `tank` (`tankid`);

alter table `role` add foreign key (`roleid`) references `rolepermission` (`roleid`);

alter table `rolepermission` add foreign key (`permissionid`) references `permission` (`permissionid`);

alter table `qualification` add foreign key (`association`) references `association` (`associationid`);

alter table `diverrole` add foreign key (`roleid`) references `role` (`roleid`);

alter table `diverrole` add foreign key (`diverid`) references `diver` (`diverid`);

alter table `accessories`
  add unique key `filename` (`filename`);

alter table `accessoriesdive`
  add unique key `accessoriesdive` (`accessories`,`dive`);

alter table `activitydive`
  add unique key `activitydive` (`activity`,`dive`);

alter table `association`
  add unique key `filename` (`filename`),
  add unique key `association` (`association`, `shortassociation`);
  
alter table `country`
  add unique key `filename` (`filename`),
  add unique key `countryname` (`country`);
  
alter table `divesite`
  add unique key `filename` (`filename`);

alter table `diver`
  add unique key `username` (`username`),
  add unique key `mail` (`mail`),
  add unique key `filename` (`filename`);

alter table `diverdive`
  add unique key `diverdive` (`diver`,`dive`);

alter table `diverqualification`
  add unique key `diver` (`diver`,`qualification`),
  add unique key `filename` (`filename`);

alter table `footlets`
  add unique key `filename` (`filename`);

alter table `gloves`
  add unique key `filename` (`filename`);

alter table `jacket`
  add unique key `filename` (`filename`);  

alter table `medicalcertificate`
  add key `diverid` (`diverid`),
  add unique key `filename` (`filename`);

alter table `qualification`
  add key `association` (`association`),
  add unique key `associationqualification` (`qualificationid`, `association`);

alter table `suite`
  add unique key `filename` (`filename`);

alter table `tank`
  add unique key `filename` (`filename`),
  add key `tanktype` (`tanktype`);

alter table `dive`
  add key `diver` (`diver`,`logbookid`),
  add key `footlets` (`footlets`),
  add key `glove` (`glove`),
  add key `jacket` (`jacket`),
  add key `suite` (`suite`),
  add key `tank` (`tank`),
  add key `divesite` (`divesite`);
