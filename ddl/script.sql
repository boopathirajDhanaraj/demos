-- Checking
-- Table structure for table `db_table_source1` (Source 1)
--
DROP TABLE  `db_table_source1`;
commit;
CREATE TABLE `db_table_source1` (
  `PurchaseID` bigint(20) NOT NULL,
  `CustomerID` bigint(20) NOT NULL,
  `ProductID` int(20) NOT NULL,
  `DOP` datetime DEFAULT NULL,
  `Amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

commit;
--
-- Table structure for table `db_table_source2` (Source 2)
--
DROP TABLE `db_table_source2`;
commit;
CREATE TABLE `db_table_source2` (
  `CustomerID` bigint(20) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `isactive` char(1) DEFAULT NULL
);
commit;
--
-- Table structure for table `db_table_source3` (Source 3)
--
DROP TABLE  `db_table_source3`;
commit;
CREATE TABLE `db_table_source3` (
  `ProductID` bigint(20) NOT NULL,
  `ProductName` varchar(80) NOT NULL,
  `expiredate` datetime NOT NULL
);
commit;

--
-- Table structure for table `Thiru_Test` (Target)
--
DROP TABLE  `Thiru_Test`;
commit;
CREATE TABLE `Thiru_Test` (
  `PurchaseID` bigint(20) NOT NULL,
  `DOP` datetime DEFAULT NULL,
  `CustomerName` varchar(80) NOT NULL,
  `salesAmount` double DEFAULT NULL,
  `MinAmount` float DEFAULT NULL,
  `maxamount` float DEFAULT NULL,
  `avgamount` double DEFAULT NULL
);
commit;


-- Insert for table `db_table_source1`
INSERT INTO `db_table_source1` VALUES (1,1,1,'2018-08-06 15:03:44',20),(1,1,2,'2018-08-06 15:03:44',30),(2,1,1,'2018-08-06 15:03:44',10),(2,1,2,'2018-08-06 15:03:44',10),(3,1,1,'2018-08-06 15:03:44',30),(1,2,1,'2018-08-06 15:03:44',50),(2,2,1,'2018-08-06 15:03:44',20),(2,2,2,'2018-08-06 15:03:44',10),(2,2,3,'2018-08-06 15:03:44',25),(3,2,1,'2018-08-06 15:03:44',35),(3,1,1,'2018-08-06 15:03:44',30),(3,2,1,'2018-08-06 15:03:44',35);
commit;
-- Insert for table `db_table_source2`
INSERT INTO `db_table_source2` VALUES (1,'Thiru','N'),(1,'Thiru PS','Y'),(2,'Jagan','Y');
commit;

-- Insert for table `db_table_source3`
INSERT INTO `db_table_source3` VALUES (1,'Product A','2018-08-06 15:03:44'),(2,'Product B','2018-08-06 15:03:44'),(3,'Product C','2018-08-06 15:03:44');
commit;
