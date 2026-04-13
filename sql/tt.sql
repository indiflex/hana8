# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 157
#251210 10:10:14 server id 1  end_log_pos 126 CRC32 0xda364d12 	Start: binlog v 4, server v 8.0.34 created 251210 10:10:14 at startup
# Warning: this binlog is either in use or was not closed properly.
ROLLBACK/*!*/;
BINLOG '
dsg4aQ8BAAAAegAAAH4AAAABAAQAOC4wLjM0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAB2yDhpEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAARJNNto=
'/*!*/;
# at 221530
#251210 14:55:38 server id 1  end_log_pos 221588 CRC32 0x2138ae5c 	Table_map: `tdb`.`dept` mapped to number 278
# at 221588
#251210 14:55:38 server id 1  end_log_pos 221662 CRC32 0x3b0475d9 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
Wgs5aRMBAAAAOgAAAJRhAwAAABYBAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgXK44
IQ==
Wgs5aR8BAAAASgAAAN5hAwAAABYBAAAAAAEAAgAF//8ICgcM66qo67CU7J287JWxAAAICgcO66qo
67CU7J287JWxeHgAANl1BDs=
'/*!*/;
### UPDATE `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
### SET
###   @1=10
###   @2=7
###   @3='모바일앱xx'
###   @4=NULL
###   @5=0
# at 221662
#251210 14:55:38 server id 1  end_log_pos 221693 CRC32 0xd95361c4 	Xid = 5422
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
