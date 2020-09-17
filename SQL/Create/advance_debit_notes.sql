CREATE TABLE `advance_debit_notes` (
  `advance_debit_notes_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_code` int(10) DEFAULT NULL,
  `fiscal_year` int(5) DEFAULT NULL,
  `gl_id` varchar(45) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `doc_date` date DEFAULT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `header_text` varchar(45) DEFAULT NULL,
  `doc_type` varchar(45) DEFAULT NULL,
  `doc_no` varchar(45) DEFAULT NULL,
  `doc_item_no` int(10) DEFAULT NULL,
  `ven_code` varchar(45) DEFAULT NULL,
  `recon_gl` varchar(45) DEFAULT NULL,
  `base_date` date DEFAULT NULL,
  `profit_center` varchar(45) DEFAULT NULL,
  `amt_transaction` double DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `special_gl` varchar(45) DEFAULT NULL,
  `business_place` varchar(45) DEFAULT NULL,
  `item_text` varchar(45) DEFAULT NULL,
  `assignment` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `inv_reference` varchar(45) DEFAULT NULL,
  `inv_ref_fy` varchar(45) DEFAULT NULL,
  `clear_doc_no` varchar(45) DEFAULT NULL,
  `clear_fy` varchar(45) DEFAULT NULL,
  `clear_date` date DEFAULT NULL,
  `audit_log_id` int(10) unsigned NOT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`advance_debit_notes_id`),
  KEY `fk_adv_debit_audit_log_idx` (`audit_log_id`),
  CONSTRAINT `fk_adv_debit_audit_log` FOREIGN KEY (`audit_log_id`) REFERENCES `audit_log_payment` (`AuditLogID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1