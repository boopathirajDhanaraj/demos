SET NAMES 'utf8';
drop table  IF EXISTS `db_table_source1`;
commit;
CREATE TABLE `db_table_source1` (
  `PurchaseID` bigint(20) NOT NULL,
  `CustomerID` bigint(20) NOT NULL,
  `ProductID` int(20) NOT NULL,
  `DOP` datetime DEFAULT NULL,
  `Amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
commit;


