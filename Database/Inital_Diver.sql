-- INSERT TEST DATA

INSERT INTO 
`Diver` (`Lastname`, `Firstname`, `Username`, `Birth`, `Street`, `Housenumber`, `Postcode`, `Location`,
           `Country`, `AcceptTermOfUse`, `AcceptTermOfUseDate`, `AcceptPrivacy`,`AcceptPrivacyDate`)
VALUES
('Mustermann', 'Max', 'max.mustermann@mustermann.de', '2000-01-01', 'Musterstraße', '1', '12345', 'Musterstadt', 9, TRUE,  NOW(), TRUE,  NOW());
