-- MySQL Script generated by MySQL Workbench
-- Mon Oct 19 14:25:30 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Table `tbl_board_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_board_type` (
  `bod_name` VARCHAR(45) NOT NULL,
  `bod_type` VARCHAR(45) NOT NULL,
  `bod_sun` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`bod_name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tbl_board`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `bno` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `writer` VARCHAR(50) NOT NULL,
  `regdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `view_count` INT(11) NULL DEFAULT '0',
  `reply_count` INT(11) NULL DEFAULT '0',
  `bod_type` VARCHAR(45) NOT NULL,
  `bod_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`bno`),
  INDEX `fk_tbl_board_tbl_board_type1_idx` (`bod_name` ASC) ,
  CONSTRAINT `fk_tbl_board_tbl_board_type1`
    FOREIGN KEY (`bod_name`)
    REFERENCES `tbl_board_type` (`bod_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 238
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tbl_attach`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_attach` (
  `full_name` VARCHAR(150) NOT NULL,
  `bno` INT(11) NOT NULL,
  `regdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`full_name`),
  INDEX `fk_board_attach` (`bno` ASC) ,
  CONSTRAINT `fk_board_attach`
    FOREIGN KEY (`bno`)
    REFERENCES `tbl_board` (`bno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tbl_member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `user_id` VARCHAR(50) NOT NULL,
  `user_pw` VARCHAR(255) NOT NULL,
  `user_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `point` INT(11) NOT NULL DEFAULT '0',
  `enabled` TINYINT(1) NOT NULL DEFAULT '0',
  `levels` VARCHAR(50) NOT NULL DEFAULT 'ROLE_USER',
  `reg_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tbl_recommend`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_recommend` (
  `bno` INT(11) NOT NULL,
  `user_id` VARCHAR(50) NOT NULL,
  INDEX `fk_tbl_recommend_tbl_board1_idx` (`bno` ASC) ,
  INDEX `fk_tbl_recommend_tbl_member1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_tbl_recommend_tbl_board1`
    FOREIGN KEY (`bno`)
    REFERENCES `tbl_board` (`bno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_recommend_tbl_member1`
    FOREIGN KEY (`user_id`)
    REFERENCES `tbl_member` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tbl_reply`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbl_reply` (
  `rno` INT(11) NOT NULL AUTO_INCREMENT,
  `bno` INT(11) NOT NULL DEFAULT '0',
  `replytext` VARCHAR(1000) NOT NULL,
  `replyer` VARCHAR(50) NOT NULL,
  `regdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`),
  INDEX `fk_board` (`bno` ASC) ,
  CONSTRAINT `fk_board`
    FOREIGN KEY (`bno`)
    REFERENCES `tbl_board` (`bno`))
ENGINE = InnoDB
AUTO_INCREMENT = 35
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
