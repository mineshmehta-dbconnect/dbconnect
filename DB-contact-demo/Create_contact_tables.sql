CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created` timestamp NOT NULL,
  `modified` timestamp NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1

CREATE TABLE `contactAddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `created` timestamp NOT NULL,
  `modified` timestamp NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `modifyBy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_fk_idx` (`contactId`),
  CONSTRAINT `contact_fk` FOREIGN KEY (`contactId`) REFERENCES `contact` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `contactCommunication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  `preferred` tinyint(4) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL,
  `modified` timestamp NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `modifyBy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_fk1_idx` (`contactId`),
  CONSTRAINT `contact_comm_fk` FOREIGN KEY (`contactId`) REFERENCES `contact` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1