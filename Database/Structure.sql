-- Change:
-- - Delete Columns TimeCreate and TimeUpdate from all tables
-- - Insert Column Hash into all tables

-- --------------------------------------------------------
--
-- Datenbank: `edivelog`
--
DROP DATABASE IF EXISTS `edivelog_de`;
CREATE DATABASE IF NOT EXISTS `edivelog_de` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci;
USE `edivelog_de`;

-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `Accessories`
--

DROP TABLE IF EXISTS `Accessories`;
CREATE TABLE `Accessories` (
  `AccessoriesID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Accessories` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname des Bildes',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchzubehör';

-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `AccessoriesDive`
--
--
DROP TABLE IF EXISTS `AccessoriesDive`;
CREATE TABLE `AccessoriesDive` (
  `AccessoriesDive` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Accessories` int(11) NOT NULL,
  `Dive` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchzubehör Tauchgang';

-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `Activity`
--
--

DROP TABLE IF EXISTS `Activity`;
CREATE TABLE `Activity` (
  `ActivityID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Activity` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Aktivität',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Aktivitäten des Tauchgangs';


-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `ActivityDive`
--
--
DROP TABLE IF EXISTS `ActivityDive`;
CREATE TABLE `ActivityDive` (
  `ActivityDive` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Activity` int(11) NOT NULL,
  `Dive` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Aktivitäten Tauchgang';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Association`
--
--
DROP TABLE IF EXISTS `Association`;
CREATE TABLE `Association` (
  `AssociationID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Association` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Organization',
  `ShortAssociation` varchar(5) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Abkürzung der ORGANIZATION',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname des Bildes',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Verbände der Sporttaucher';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Country`
--
--
DROP TABLE IF EXISTS `Country`;
CREATE TABLE `Country` (
  `CountryCode` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'CountryCode',
  `Country` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Land',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Flaggenname des Landes',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Länder und LänderCodes';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Dive`
--
--
DROP TABLE IF EXISTS `Dive`;
CREATE TABLE `Dive` (
  `DiveID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Diver` int(11) NOT NULL COMMENT 'Taucher',
  `LogBookID` int(11) NOT NULL COMMENT 'Tauchgangsnummer',
  `DiveDate` date NOT NULL COMMENT 'Tauchdatum',
  `DiveStart` time DEFAULT NULL COMMENT 'Tauchzeit Beginn',
  `DiveEnd` time DEFAULT NULL COMMENT 'Tauchdaum Ende',
  `DiveSite` int(11) NOT NULL COMMENT 'Tauchplatz',
  `MaxDepth` decimal(5,2) NOT NULL COMMENT 'Maximale Tiefe des Tauchgangs',
  `DiveTime` int(11) NOT NULL COMMENT 'Tauchzeit',
  `LeadWeight` decimal(3,1) DEFAULT NULL COMMENT 'Gewicht Blei',
  `Suite` int(11) DEFAULT NULL COMMENT 'Tauchanzug',
  `Footlets` int(11) DEFAULT NULL COMMENT 'Füßlinge',
  `Glove` int(11) DEFAULT NULL COMMENT 'Handschuhe',
  `Jacket` int(11) DEFAULT NULL COMMENT 'Tarierjackets',
  `Tank` int(11) DEFAULT NULL COMMENT 'Flasche',
  `InitialPressure` int(11) DEFAULT NULL COMMENT 'Anfangsdruck der Flasche',
  `DischargePressure` int(11) DEFAULT NULL COMMENT 'Druck der Flasche bei Beendigung des Tauchgangs',
  `Decompression` tinyint(1) DEFAULT NULL COMMENT 'Dekompression (TRUE = Deko Stop)',
  `DecompressionRemark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dekompressionsbemerkung',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false COMMENT 'Datensatz in Bearbeitung',
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Was wurde zuletzt mit dem Datensatz gemacht',
  `isInvalid` BOOLEAN Default false COMMENT 'Ist der Datensatz ungültig',
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Benutzer, welcher den Datensatz bearbeitet hat',
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL   COMMENT 'Zähler, wie oft Datensatz bearbeitet wurde'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchgang eines Tauchers';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `DiveSite`
--
--
DROP TABLE IF EXISTS `DiveSite`;
CREATE TABLE `DiveSite` (
  `DiveSiteID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Country` int(11) NOT NULL COMMENT 'FK: Land',
  `Name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Tauchplatzname',
  `maxDepth` decimal(4,2) DEFAULT NULL COMMENT 'Maximale Tiefe des Tauchplatzes',
  `Entrace` enum('Boot','Ufer','Sonstiges') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Eingangstyp',
  `WaterType` enum('Salzwasser','Süßwasser') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Wassertyp',
  `Ground` enum('Sand','Felsen','Koralle','Schlamm','Sonstiges') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Grund',
  `DiveType` enum('Freiwasser','Steilwand (Drop-Off)','Sonstiges') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Art des Tauchgangs',
  `Remarks` text COLLATE utf8_general_mysql500_ci,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname der Tauchkarte',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchplätze';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Diver`
--
--
DROP TABLE IF EXISTS `Diver`;
CREATE TABLE `Diver` (
  `DiverID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'TaucherID',
  `Lastname` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Nachname',
  `Firstname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Vorname',
  `Username` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Benutzername',
  `Password` varbinary(255) NULL DEFAULT NULL COMMENT 'Password for the User',
  `Birth` date DEFAULT NULL COMMENT 'Geburtsdatum',
  `Street` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Straße',
  `Housenumber` char(8) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Hausnummer',
  `Postcode` char(10) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Postleitzahl (PLZ)',
  `Location` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Ort',
  `Country` int(11) NOT NULL COMMENT 'FK: Land',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `AcceptTermOfUse` BOOLEAN DEFAULT FALSE NOT NULL COMMENT 'Nutzungsbedingung',
  `AcceptTermOfUseDate` timestamp NULL DEFAULT NULL COMMENT 'Nutzungsbedingung akzeptiert',
  `AcceptPrivacy` BOOLEAN DEFAULT FALSE NOT NULL COMMENT 'Datenschutzerklärung',
  `AcceptPrivacyDate` timestamp NULL DEFAULT NULL COMMENT 'Datenschutzerklärung akzeptiert',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname des Profilbildes',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `isRegistred` BOOLEAN DEFAULT FALSE COMMENT 'Account bestätigt',
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Taucherinformationen';

-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `DiverDive`
--
--
DROP TABLE IF EXISTS `DiverDive`;
CREATE TABLE `DiverDive` (
  `DiverDive` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Diver` int(11) NOT NULL,
  `Dive` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isApproved` BOOLEAN DEFAULT FALSE COMMENT 'Tauchgang bestätigt (TRUE = Bestätigt)',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Aktivitäten Tauchgang';



-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `DiverQualification`
--
--
DROP TABLE IF EXISTS `DiverQualification`;
CREATE TABLE `DiverQualification` (
  `DiverQualificationID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Diver` int(11) NOT NULL,
  `Qualification` int(11) NOT NULL,
  `IssueDate` date NOT NULL COMMENT 'Austelldatum der Qualifikation',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname vom Bild der Qualifikation',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Qualifikationen eines Tauchers';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Footlets`
--
--
DROP TABLE IF EXISTS `Footlets`;
CREATE TABLE `Footlets` (
  `FootletID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Zipper` tinyint(1) DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname des Bildes fuer Fuesslinge',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Zubehör: Füßlinge';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Gloves`
--
--
DROP TABLE IF EXISTS `Gloves`;
CREATE TABLE `Gloves` (
  `GlovesID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname des Bildes fuer Handschuhe',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Zubehör: Handschuhe';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Jacket`
--
--
DROP TABLE IF EXISTS `Jacket`;
CREATE TABLE `Jacket` (
  `JacketID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Jacket` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Bildname des Jackets',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tarierjacket';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `MedicalCertificate`
--
--
DROP TABLE IF EXISTS `MedicalCertificate`;
CREATE TABLE `MedicalCertificate` (
  `CertificatID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `DiverID` int(11) NOT NULL,
  `Limitations` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `IssueDate` date NOT NULL COMMENT 'Ausstelldatum der Urkunde',
  `NextExamination` int(11) NOT NULL COMMENT 'Angabe der Jahre',
  `Doctor` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Dateiname der Bescheinigung',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchtauglichkeitsuntersuchung';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Qualification`
--
--
DROP TABLE IF EXISTS `Qualification`;
CREATE TABLE `Qualification` (
  `QualificationID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Qualification` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Association` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Qualifikationsübersicht';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Suite`
--
--
DROP TABLE IF EXISTS `Suite`;
CREATE TABLE `Suite` (
  `SuiteID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Bild vom Tauchanzug',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchanzüge';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `TankType`
--
--
DROP TABLE IF EXISTS `TankType`;
CREATE TABLE `TankType` (
  `TankTypeID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `TankType` varchar(80) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Material, aus dem die Tauchflasche besteht';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Tanks`
--
--
DROP TABLE IF EXISTS `Tanks`;
CREATE TABLE `Tanks` (
  `TanksID` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Pressure` float(5,2) NOT NULL,
  `Size` float(4,1) NOT NULL,
  `TankType` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `FileName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'moegliches Bild der Flasche',
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Hash` VARCHAR(255) DEFAULT NULL COMMENT 'Hashwert',
  `UpdateCount` int(11) DEFAULT 1 NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchflaschen';


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Accessories`
--
ALTER TABLE `Accessories`
  ADD UNIQUE KEY `Accessories` (`Accessories`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `AccessoriesDive`
--
ALTER TABLE `AccessoriesDive`
  ADD UNIQUE KEY `AccessoriesDive` (`Accessories`,`Dive`);

--
-- Indizes für die Tabelle `AccessoriesDive`
--
ALTER TABLE `ActivityDive`
  ADD UNIQUE KEY `ActivityDive` (`Activity`,`Dive`);
  
--
-- Indizes für die Tabelle `Activity`
--
ALTER TABLE `Activity`
  ADD KEY `Activity` (`Activity`);

--
-- Indizes für die Tabelle `Association`
--
ALTER TABLE `Association`
  ADD UNIQUE KEY `FileName` (`FileName`),
  ADD UNIQUE KEY `Association` (`Association`, `ShortAssociation`);
  
--
-- Indizes für die Tabelle `Country`
--
ALTER TABLE `Country`
  ADD UNIQUE KEY `FileName` (`FileName`),
  ADD UNIQUE KEY `CountryName` (`Country`);
    
--
-- Indizes für die Tabelle `DiveSite`
--
ALTER TABLE `DiveSite`
  ADD KEY `Country` (`Country`),
  ADD KEY `Entrace` (`Entrace`,`WaterType`,`Ground`,`DiveType`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Diver`
--
ALTER TABLE `Diver`
  ADD KEY `Country` (`Country`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `FileName` (`FileName`);

  
--
-- Indizes für die Tabelle `DiverDive`
--
ALTER TABLE `DiverDive`
  ADD UNIQUE KEY `DiverDive` (`Diver`,`Dive`);

--
-- Indizes für die Tabelle `DiverQualification`
--
ALTER TABLE `DiverQualification`
  ADD UNIQUE KEY `Diver` (`Diver`,`Qualification`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Footlets`
--
ALTER TABLE `Footlets`
  ADD UNIQUE KEY `Remark` (`Remark`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Gloves`
--
ALTER TABLE `Gloves`
  ADD UNIQUE KEY `Remark` (`Remark`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Jacket`
--
ALTER TABLE `Jacket`
  ADD UNIQUE KEY `Jacket` (`Jacket`),
  ADD UNIQUE KEY `FileName` (`FileName`);  
  
--
-- Indizes für die Tabelle `MedicalCertificate`
--
ALTER TABLE `MedicalCertificate`
  ADD KEY `DiverID` (`DiverID`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Qualification`
--
ALTER TABLE `Qualification`
  ADD KEY `Association` (`Association`),
  ADD UNIQUE KEY `AssociationQualification` (`QualificationID`, `Association`);

--
-- Indizes für die Tabelle `Suite`
--
ALTER TABLE `Suite`
  ADD UNIQUE KEY `Remark` (`Remark`),
  ADD UNIQUE KEY `FileName` (`FileName`);

--
-- Indizes für die Tabelle `Tanks`
--
ALTER TABLE `Tanks`
  ADD UNIQUE KEY `Remark` (`Remark`,`Size`,`TankType`),
  ADD UNIQUE KEY `FileName` (`FileName`),
  ADD KEY `TankType` (`TankType`);


--
-- ADD FOREIGN KEYS for Dive
--
ALTER TABLE `Dive`
  ADD KEY `Diver` (`Diver`,`LogBookID`),
  ADD KEY `Footlets` (`Footlets`),
  ADD KEY `Glove` (`Glove`),
  ADD KEY `Jacket` (`Jacket`),
  ADD KEY `Suite` (`Suite`),
  ADD KEY `Tank` (`Tank`),
  ADD KEY `DiveSite` (`DiveSite`);

--
-- Constraints der Tabelle `AccessoriesDive`
--
ALTER TABLE `AccessoriesDive`
  ADD CONSTRAINT `AccessoriesDive_ibfk_1` FOREIGN KEY (`Dive`) REFERENCES `Dive` (`DiveID`),
  ADD CONSTRAINT `AccessoriesDive_ibfk_2` FOREIGN KEY (`Accessories`) REFERENCES `Accessories` (`AccessoriesID`);  
  
--
-- Constraints der Tabelle `ActivityDive`
--
ALTER TABLE `ActivityDive`
  ADD CONSTRAINT `ActivityDive_ibfk_1` FOREIGN KEY (`Dive`) REFERENCES `Dive` (`DiveID`),
  ADD CONSTRAINT `ActivityDive_ibfk_2` FOREIGN KEY (`Activity`) REFERENCES `Activity` (`ActivityID`);  
   
  
--
-- Constraints der Tabelle `Dive`
--
ALTER TABLE `Dive`
  ADD CONSTRAINT `Dive_ibfk_1` FOREIGN KEY (`Diver`) REFERENCES `Diver` (`DiverID`),
  ADD CONSTRAINT `Dive_ibfk_2` FOREIGN KEY (`Footlets`) REFERENCES `Footlets` (`FootletID`),
  ADD CONSTRAINT `Dive_ibfk_3` FOREIGN KEY (`Glove`) REFERENCES `Gloves` (`GlovesID`),
  ADD CONSTRAINT `Dive_ibfk_4` FOREIGN KEY (`Jacket`) REFERENCES `Jacket` (`JacketID`),
  ADD CONSTRAINT `Dive_ibfk_5` FOREIGN KEY (`Suite`) REFERENCES `Suite` (`SuiteID`),
  ADD CONSTRAINT `Dive_ibfk_6` FOREIGN KEY (`Tank`) REFERENCES `Tanks` (`TanksID`),
  ADD CONSTRAINT `Dive_ibfk_7` FOREIGN KEY (`DiveSite`) REFERENCES `DiveSite` (`DiveSiteID`);

--
-- Constraints der Tabelle `DiveSite`
--
ALTER TABLE `DiveSite`
  ADD CONSTRAINT `DiveSite_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `Country` (`CountryCode`);

--
-- Constraints der Tabelle `DiverQualification`
--
ALTER TABLE `DiverQualification`
  ADD CONSTRAINT `DiverQualification_ibfk_1` FOREIGN KEY (`Diver`) REFERENCES `Diver` (`DiverID`),
  ADD CONSTRAINT `DiverQualification_ibfk_2` FOREIGN KEY (`Qualification`) REFERENCES `Qualification` (`QualificationID`);
  
--
-- Constraints der Tabelle `Diver`
--
ALTER TABLE `Diver`
  ADD CONSTRAINT `Diver_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `Country` (`CountryCode`);

--
-- Constraints der Tabelle `DiverDive`
--
ALTER TABLE `DiverDive`
  ADD CONSTRAINT `DiverDive_ibfk_1` FOREIGN KEY (`Dive`) REFERENCES `Dive` (`DiveID`),
  ADD CONSTRAINT `DiverDive_ibfk_2` FOREIGN KEY (`Diver`) REFERENCES `Diver` (`DiverID`);  
  
  
--
-- Constraints der Tabelle `MedicalCertificate`
--
ALTER TABLE `MedicalCertificate`
  ADD CONSTRAINT `MedicalCertificate_ibfk_1` FOREIGN KEY (`DiverID`) REFERENCES `Diver` (`DiverID`);

--
-- Constraints der Tabelle `Qualification`
--
ALTER TABLE `Qualification`
  ADD CONSTRAINT `Qualification_ibfk_1` FOREIGN KEY (`Association`) REFERENCES `Association` (`AssociationID`);

--
-- Constraints der Tabelle `Tanks`
--
ALTER TABLE `Tanks`
  ADD CONSTRAINT `Tanks_ibfk_1` FOREIGN KEY (`TankType`) REFERENCES `TankType` (`TankTypeID`);
