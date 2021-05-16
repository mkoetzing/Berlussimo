CREATE TABLE `KAUTIONS_BUCHUNGEN` (
                                      `KAUTIONS_BUCHUNGEN_DAT` int(7) NOT NULL auto_increment,
                                      `KOSTENTRAEGER_TYP` varchar(50) collate latin1_german2_ci NOT NULL default '',
                                      `KOSTENTRAEGER_ID` int(7) NOT NULL default '0',
                                      `DATUM` date NOT NULL default '0000-00-00',
                                      `BETRAG` decimal(10,2) NOT NULL default '0.00',
                                      `VERWENDUNGSZWECK` mediumtext collate latin1_german2_ci,
                                      `GELDKONTO_ID` int(7) NOT NULL default '0',
                                      PRIMARY KEY  (`KAUTIONS_BUCHUNGEN_DAT`),
                                      KEY `KONTENRAHMEN_KONTO` (`KONTENRAHMEN_KONTO`),
                                      KEY `KOSTENTRAEGER_TYP` (`KOSTENTRAEGER_TYP`),
                                      KEY `KOSTENTRAEGER_ID` (`KOSTENTRAEGER_ID`),
                                      KEY `DATUM` (`DATUM`),
                                      KEY `GELDKONTO_ID` (`GELDKONTO_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=4;
