CREATE TABLE contact (
  contact_id         INT(10) UNSIGNED                  NOT NULL AUTO_INCREMENT,
  contact_uid        INT(10)                           NOT NULL,
  contact_cid        INT(10)                           NOT NULL,
  contact_create     INT(10)                           NOT NULL,
  contact_subject    VARCHAR(255)                      NOT NULL,
  contact_name       VARCHAR(255)                      NOT NULL,
  contact_mail       VARCHAR(255)                      NOT NULL,
  contact_url        VARCHAR(255)                      NOT NULL,
  contact_icq        VARCHAR(255)                      NOT NULL,
  contact_skype      VARCHAR(255)                      NOT NULL,
  contact_company    VARCHAR(255)                      NOT NULL,
  contact_location   VARCHAR(255)                      NOT NULL,
  contact_department VARCHAR(60)                       NOT NULL,
  contact_ip         VARCHAR(20)                       NOT NULL,
  contact_phone      VARCHAR(20)                       NOT NULL,
  contact_message    TEXT                              NOT NULL,
  contact_address    TEXT                              NOT NULL,
  contact_reply      TINYINT(1)                        NOT NULL,
  contact_platform   ENUM ('Android', 'Ios', 'Web')    NOT NULL DEFAULT 'Web',
  contact_type       ENUM ('Contact', 'Phone', 'Mail') NOT NULL DEFAULT 'Contact',
  PRIMARY KEY (contact_id),
  KEY (contact_uid),
  KEY (contact_cid),
  KEY (contact_create),
  KEY (contact_mail),
  KEY (contact_phone),
  KEY (contact_platform),
  KEY (contact_type)
)
  ENGINE = MyISAM;
