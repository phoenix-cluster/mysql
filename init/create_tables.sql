USE phoenix_enhancer;

CREATE TABLE IF NOT EXISTS `T_ANALYSIS_RECORD` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL,
  `ispublic` tinyint(1) DEFAULT '0',
  `email_add` varchar(255) DEFAULT NULL,
  `is_email_sent` tinyint(1) DEFAULT '0',
  `accession` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `T_PROJECT_ANALYSIS_RESULT` (
  `project_id` varchar(255) NOT NULL,
  `cluster_size_threshold` int(11) DEFAULT NULL,
  `cluster_ratio_threshold` float DEFAULT NULL,
  `conf_sc_threshold` float DEFAULT NULL,
  `spectrast_fval_threshold` float DEFAULT NULL,
  `prePSM_no` int(11) DEFAULT NULL,
  `prePSM_not_matched_no` int(11) DEFAULT NULL,
  `prePSM_high_conf_no` int(11) DEFAULT NULL,
  `prePSM_low_conf_no` int(11) DEFAULT NULL,
  `better_PSM_no` int(11) DEFAULT NULL,
  `new_PSM_no` int(11) DEFAULT NULL,
  `matched_spec_no` int(11) DEFAULT NULL,
  `matched_id_spec_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `T_TAXIDS_IN_PROJECT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(100) NOT NULL,
  `score_type` varchar(100) NOT NULL,
  `taxid` varchar(100) NOT NULL,
  `psm_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `T_TAXONOMY` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
