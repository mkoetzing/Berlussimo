-- 
-- Tabellenstruktur für Tabelle `GEWERKE`
-- 

CREATE TABLE `GEWERKE` (
                           `G_DAT` int(7) NOT NULL auto_increment,
                           `G_ID` int(7) NOT NULL default '0',
                           `BEZEICHNUNG` varchar(50) collate latin1_german2_ci NOT NULL default '',
                           `AKTUELL` enum('0','1') collate latin1_german2_ci NOT NULL default '0',
                           PRIMARY KEY  (`G_DAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=1 ;

-- 
-- Daten für Tabelle `GEWERKE`
--
