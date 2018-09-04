-- Taucherbuddy-Zuordnung fehlt
-- Dive > Ttauchgangsbestätigung Buddy
-- Jeder Buddy wird in Diver gespeichert (Abfrage, ob das abgestimmt war => DSGVO)
-- Hash-Werte für einzelne Datensätze
-- E-Mail bei Erstellung eines Tauchers
-- 
-- 
-- 
-- 
-- 



-- --------------------------------------------------------
--
-- Datenbank: `edivelog`
--
DROP DATABASE IF EXISTS `edivelog`;
CREATE DATABASE IF NOT EXISTS `edivelog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci;
USE `edivelog`;

-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `Accessories`
--

DROP TABLE IF EXISTS `Accessories`;
CREATE TABLE `Accessories` (
  `AccessoriesID` int(11) NOT NULL,
  `Accessories` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchzubehör';



-- --------------------------------------------------------
--
-- Tabellenstruktur für Tabelle `Activity`
--
--

DROP TABLE IF EXISTS `Activity`;
CREATE TABLE `Activity` (
  `ActivityID` int(11) NOT NULL,
  `Activity` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Aktivität',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Aktivitäten des Tauchgangs';



-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Association`
--
--

DROP TABLE IF EXISTS `Association`;
CREATE TABLE `Association` (
  `AssociationID` int(11) NOT NULL,
  `Association` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Organization',
  `ShortAssociation` varchar(5) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Abkürzung der ORGANIZATION',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Verbände der Sporttaucher';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Country`
--
--

DROP TABLE IF EXISTS `Country`;
CREATE TABLE `Country` (
  `CountryCode` int(11) NOT NULL COMMENT 'CountryCode Windows',
  `Country` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Land',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Länder und die LänderCodes (Windows-orientiert)';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Dive`
--
--

DROP TABLE IF EXISTS `Dive`;
CREATE TABLE `Dive` (
  `DiveID` int(11) NOT NULL,
  `Diver` int(11) NOT NULL COMMENT 'Taucher',
  `LogBookID` int(11) NOT NULL COMMENT 'Taucherlogbuchnummer',
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
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Erstelltimestamp des Datensatzes',
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updatetimestamp des Datensatzes',
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Benutzer, welcher den Datensatz bearbeitet hat',
  `UpdateCount` int(11) NOT NULL COMMENT 'Zähler, wie oft Datensatz bearbeitet wurde'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchgang eines Tauchers';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `DiveSite`
--
--

DROP TABLE IF EXISTS `DiveSite`;
CREATE TABLE `DiveSite` (
  `DiveSiteID` int(11) NOT NULL,
  `Province` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Tauchplatzname Deutsch',
  `OriginalName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Tauchplatzname Original',
  `maxDepth` decimal(4,2) DEFAULT NULL COMMENT 'Maximale Tiefe des Tauchplatzes',
  `Entrace` enum('Boot','Ufer','Sonstiges') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Eingangstyp',
  `WaterType` enum('Salzwasser','Süßwasser') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Wassertyp',
  `Ground` enum('Sand','Felsen','Koralle','Schlamm','Sonstiges') COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Grund',
  `Remarks` text COLLATE utf8_general_mysql500_ci,
  `FileLocation` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Tauchplatzbild (Karte)',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchplätze';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Diver`
--
--

DROP TABLE IF EXISTS `Diver`;
CREATE TABLE `Diver` (
  `DiverID` int(11) NOT NULL COMMENT 'TaucherID',
  `Lastname` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Nachname',
  `Firstname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Vorname',
  `Birth` date DEFAULT NULL COMMENT 'Geburtsdatum',
  `Street` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Straße',
  `Housenumber` char(8) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Hausnummer',
  `Postcode` char(10) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Postleitzahl (PLZ)',
  `Location` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Ort',
  `Country` int(11) NOT NULL COMMENT 'FK: Land',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT 'Beschreibung',
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Taucherinformationen';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `DiverQualification`
--
--

DROP TABLE IF EXISTS `DiverQualification`;
CREATE TABLE `DiverQualification` (
  `DiverQualificationID` int(11) NOT NULL,
  `Diver` int(11) NOT NULL,
  `Qualification` int(11) NOT NULL,
  `IssueDate` date NOT NULL COMMENT 'Austelldatum der Qualifikation',
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Qualifikationen eines Tauchers';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Footlets`
--
--

DROP TABLE IF EXISTS `Footlets`;
CREATE TABLE `Footlets` (
  `FootletID` int(11) NOT NULL,
  `Zipper` tinyint(1) DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Zubehör: Füßlinge';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Gloves`
--
--

DROP TABLE IF EXISTS `Gloves`;
CREATE TABLE `Gloves` (
  `GlovesID` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Zubehör: Handschuhe';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Jacket`
--
--

DROP TABLE IF EXISTS `Jacket`;
CREATE TABLE `Jacket` (
  `JacketID` int(11) NOT NULL,
  `Jacket` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tarierjackets';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `MedicalCertificate`
--
--

DROP TABLE IF EXISTS `MedicalCertificate`;
CREATE TABLE `MedicalCertificate` (
  `CertificatID` int(11) NOT NULL,
  `DiverID` int(11) NOT NULL,
  `Limitations` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `IssueDate` date NOT NULL COMMENT 'Ausstelldatum der Urkunde',
  `NextExamination` int(11) NOT NULL COMMENT 'Angabe der Jahre',
  `Doctor` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchtauglichkeitsuntersuchung';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Province`
--
--

DROP TABLE IF EXISTS `Province`;
CREATE TABLE `Province` (
  `ProvinceID` int(11) NOT NULL,
  `CountryCode` int(11) NOT NULL,
  `Province` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `OriginalProvinceName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Bundesländer/Provinzen der einzelnen Countries';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Qualification`
--
--

DROP TABLE IF EXISTS `Qualification`;
CREATE TABLE `Qualification` (
  `QualificationID` int(11) NOT NULL,
  `Qualification` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Association` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Qualifikationsübersicht';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Suite`
--
--

DROP TABLE IF EXISTS `Suite`;
CREATE TABLE `Suite` (
  `SuiteID` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchanzüge';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `TankType`
--
--

DROP TABLE IF EXISTS `TankType`;
CREATE TABLE `TankType` (
  `TankTypeID` int(11) NOT NULL,
  `TankType` varchar(80) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Material, aus dem die Tauchflasche besteht';


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Tanks`
--
--

DROP TABLE IF EXISTS `Tanks`;
CREATE TABLE `Tanks` (
  `TanksID` int(11) NOT NULL,
  `Pressure` float(5,2) NOT NULL,
  `Size` float(4,1) NOT NULL,
  `TankType` int(11) NOT NULL,
  `Description` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Remark` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isCheckedOut` BOOLEAN DEFAULT false,
  `Action` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `isInvalid` BOOLEAN Default false,
  `TimeCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedUser` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `UpdateCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci COMMENT='Tauchflaschen';


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Accessories`
--
ALTER TABLE `Accessories`
  ADD PRIMARY KEY (`AccessoriesID`);

--
-- Indizes für die Tabelle `Activity`
--
ALTER TABLE `Activity`
  ADD PRIMARY KEY (`ActivityID`);

--
-- Indizes für die Tabelle `Association`
--
ALTER TABLE `Association`
  ADD PRIMARY KEY (`AssociationID`);

--
-- Indizes für die Tabelle `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`CountryCode`);

--
-- Indizes für die Tabelle `Dive`
--
ALTER TABLE `Dive`
  ADD PRIMARY KEY (`DiveID`),
  ADD KEY `Diver` (`Diver`,`LogBookID`ID`),
  ADD KEY `Footlets` (`Footlets`,`Glove`,`Jacket`,`Suite`,`Tank`),
  ADD KEY `Glove` (`Glove`),
  ADD KEY `Jacket` (`Jacket`),
  ADD KEY `Suite` (`Suite`),
  ADD KEY `Tank` (`Tank`),
  ADD KEY `DiveSite` (`DiveSite`);

--
-- Indizes für die Tabelle `DiveActivity`
--
ALTER TABLE `DiveActivity`
  ADD PRIMARY KEY (`DiveActivity`),
  ADD UNIQUE KEY `Dive` (`Dive`,`Activity`),
  ADD KEY `Activity` (`Activity`);

--
-- Indizes für die Tabelle `DiveSite`
--
ALTER TABLE `DiveSite`
  ADD PRIMARY KEY (`DiveSiteID`),
  ADD KEY `Country` (`Province`),
  ADD KEY `Entrace` (`Entrace`,`WaterType`,`Ground`);

--
-- Indizes für die Tabelle `Diver`
--
ALTER TABLE `Diver`
  ADD PRIMARY KEY (`DiverID`),
  ADD KEY `Country` (`Country`);

--
-- Indizes für die Tabelle `DiverQualification`
--
ALTER TABLE `DiverQualification`
  ADD PRIMARY KEY (`DiverQualificationID`),
  ADD UNIQUE KEY `Diver` (`Diver`,`Qualification`);

--
-- Indizes für die Tabelle `Footlets`
--
ALTER TABLE `Footlets`
  ADD PRIMARY KEY (`FootletID`),
  ADD UNIQUE KEY `Remark` (`Remark`);

--
-- Indizes für die Tabelle `Gloves`
--
ALTER TABLE `Gloves`
  ADD PRIMARY KEY (`GlovesID`),
  ADD UNIQUE KEY `Remark` (`Remark`);

--
-- Indizes für die Tabelle `Jacket`
--
ALTER TABLE `Jacket`
  ADD PRIMARY KEY (`JacketID`);

--
-- Indizes für die Tabelle `MedicalCertificate`
--
ALTER TABLE `MedicalCertificate`
  ADD PRIMARY KEY (`CertificatID`),
  ADD KEY `DiverID` (`DiverID`);

--
-- Indizes für die Tabelle `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`ProvinceID`),
  ADD KEY `CountryID` (`CountryCode`);

--
-- Indizes für die Tabelle `Qualification`
--
ALTER TABLE `Qualification`
  ADD PRIMARY KEY (`QualificationID`),
  ADD KEY `Association` (`Association`);

--
-- Indizes für die Tabelle `Suite`
--
ALTER TABLE `Suite`
  ADD PRIMARY KEY (`SuiteID`),
  ADD UNIQUE KEY `Remark` (`Remark`);

--
-- Indizes für die Tabelle `TankType`
--
ALTER TABLE `TankType`
  ADD PRIMARY KEY (`TankTypeID`);

--
-- Indizes für die Tabelle `Tanks`
--
ALTER TABLE `Tanks`
  ADD PRIMARY KEY (`TanksID`),
  ADD UNIQUE KEY `Remark` (`Remark`,`Size`,`TankType`),
  ADD KEY `TankType` (`TankType`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Accessories`
--
ALTER TABLE `Accessories`
  MODIFY `AccessoriesID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Activity`
--
ALTER TABLE `Activity`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Association`
--
ALTER TABLE `Association`
  MODIFY `AssociationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Dive`
--
ALTER TABLE `Dive`
  MODIFY `DiveID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `DiveActivity`
--
ALTER TABLE `DiveActivity`
  MODIFY `DiveActivity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `DiveSite`
--
ALTER TABLE `DiveSite`
  MODIFY `DiveSiteID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Diver`
--
ALTER TABLE `Diver`
  MODIFY `DiverID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `DiverQualification`
--
ALTER TABLE `DiverQualification`
  MODIFY `DiverQualificationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Footlets`
--
ALTER TABLE `Footlets`
  MODIFY `FootletID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Gloves`
--
ALTER TABLE `Gloves`
  MODIFY `GlovesID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Jacket`
--
ALTER TABLE `Jacket`
  MODIFY `JacketID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `MedicalCertificate`
--
ALTER TABLE `MedicalCertificate`
  MODIFY `CertificatID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Province`
--
ALTER TABLE `Province`
  MODIFY `ProvinceID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Qualification`
--
ALTER TABLE `Qualification`
  MODIFY `QualificationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Suite`
--
ALTER TABLE `Suite`
  MODIFY `SuiteID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `TankType`
--
ALTER TABLE `TankType`
  MODIFY `TankTypeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Tanks`
--
ALTER TABLE `Tanks`
  MODIFY `TanksID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints der exportierten Tabellen
--

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
-- Constraints der Tabelle `DiveActivity`
--
ALTER TABLE `DiveActivity`
  ADD CONSTRAINT `DiveActivity_ibfk_1` FOREIGN KEY (`Dive`) REFERENCES `Dive` (`DiveID`),
  ADD CONSTRAINT `DiveActivity_ibfk_2` FOREIGN KEY (`Activity`) REFERENCES `Activity` (`ActivityID`);

--
-- Constraints der Tabelle `DiveSite`
--
ALTER TABLE `DiveSite`
  ADD CONSTRAINT `DiveSite_ibfk_1` FOREIGN KEY (`Province`) REFERENCES `Province` (`ProvinceID`);

--
-- Constraints der Tabelle `Diver`
--
ALTER TABLE `Diver`
  ADD CONSTRAINT `Diver_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `Country` (`CountryCode`);

--
-- Constraints der Tabelle `MedicalCertificate`
--
ALTER TABLE `MedicalCertificate`
  ADD CONSTRAINT `MedicalCertificate_ibfk_1` FOREIGN KEY (`DiverID`) REFERENCES `Diver` (`DiverID`);

--
-- Constraints der Tabelle `Province`
--
ALTER TABLE `Province`
  ADD CONSTRAINT `Province_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `Country` (`CountryCode`);

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
