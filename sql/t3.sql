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
# at 49755
#251210 14:09:37 server id 1  end_log_pos 49834 CRC32 0xd996d426 	Anonymous_GTID	last_committed=63	sequence_number=64	rbr_only=yes	original_committed_timestamp=1765343377392775	immediate_commit_timestamp=1765343377392775	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343377392775 (2025-12-10 14:09:37.392775 KST)
# immediate_commit_timestamp=1765343377392775 (2025-12-10 14:09:37.392775 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343377392775*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 49834
#251210 14:09:37 server id 1  end_log_pos 49919 CRC32 0x8ba8b10f 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765343377/*!*/;
SET @@session.pseudo_thread_id=8/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=224/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 49919
#251210 14:09:37 server id 1  end_log_pos 49977 CRC32 0x835b1a76 	Table_map: `tdb`.`dept` mapped to number 173
# has_generated_invisible_primary_key=0
# at 49977
#251210 14:09:37 server id 1  end_log_pos 50049 CRC32 0x582d5479 	Update_rows: table id 173 flags: STMT_END_F

BINLOG '
kQA5aRMBAAAAOgAAADnDAAAAAK0AAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgdhpb
gw==
kQA5aR8BAAAASAAAAIHDAAAAAK0AAAAAAAEAAgAF//8ICgcM66qo67CU7J287IWAAAAICgcM66qo
67CU7J287JWxAAB5VC1Y
'/*!*/;
### UPDATE `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일셀'
###   @4=NULL
###   @5=0
### SET
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
# at 50049
#251210 14:09:37 server id 1  end_log_pos 50080 CRC32 0xa90a8db1 	Xid = 3867
COMMIT/*!*/;
# at 50080
#251210 14:10:13 server id 1  end_log_pos 50159 CRC32 0xb33852a5 	Anonymous_GTID	last_committed=64	sequence_number=65	rbr_only=yes	original_committed_timestamp=1765343413189659	immediate_commit_timestamp=1765343413189659	transaction_length=347
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343413189659 (2025-12-10 14:10:13.189659 KST)
# immediate_commit_timestamp=1765343413189659 (2025-12-10 14:10:13.189659 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343413189659*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 50159
#251210 14:10:13 server id 1  end_log_pos 50235 CRC32 0xa59aa55d 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765343413/*!*/;
BEGIN
/*!*/;
# at 50235
#251210 14:10:13 server id 1  end_log_pos 50293 CRC32 0xc0344d12 	Table_map: `tdb`.`dept` mapped to number 173
# has_generated_invisible_primary_key=0
# at 50293
#251210 14:10:13 server id 1  end_log_pos 50396 CRC32 0xbc165452 	Delete_rows: table id 173 flags: STMT_END_F

BINLOG '
tQA5aRMBAAAAOgAAAHXEAAAAAK0AAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgEk00
wA==
tQA5aSABAAAAZwAAANzEAAAAAK0AAAAAAAEAAgAF/wgIBgzsnbjtlITrnbzshYAAAAgJBgVEQuyF
gAAACAoHDOuqqOuwlOydvOyVsQAACAsDD+yYgeyXhe2KueqzteuMgAAAUlQWvA==
'/*!*/;
### DELETE FROM `tdb`.`dept`
### WHERE
###   @1=8
###   @2=6
###   @3='인프라셀'
###   @4=NULL
###   @5=0
### DELETE FROM `tdb`.`dept`
### WHERE
###   @1=9
###   @2=6
###   @3='DB셀'
###   @4=NULL
###   @5=0
### DELETE FROM `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
### DELETE FROM `tdb`.`dept`
### WHERE
###   @1=11
###   @2=3
###   @3='영업특공대'
###   @4=NULL
###   @5=0
# at 50396
#251210 14:10:13 server id 1  end_log_pos 50427 CRC32 0x7f2a00da 	Xid = 3878
COMMIT/*!*/;
# at 50427
#251210 14:19:23 server id 1  end_log_pos 50504 CRC32 0xd7d5a26d 	Anonymous_GTID	last_committed=65	sequence_number=66	rbr_only=no	original_committed_timestamp=1765343963085761	immediate_commit_timestamp=1765343963085761	transaction_length=220
# original_commit_timestamp=1765343963085761 (2025-12-10 14:19:23.085761 KST)
# immediate_commit_timestamp=1765343963085761 (2025-12-10 14:19:23.085761 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963085761*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 50504
# at 50647
#251210 14:19:23 server id 1  end_log_pos 50726 CRC32 0x24d4f627 	Anonymous_GTID	last_committed=66	sequence_number=67	rbr_only=no	original_committed_timestamp=1765343963103169	immediate_commit_timestamp=1765343963103169	transaction_length=755
# original_commit_timestamp=1765343963103169 (2025-12-10 14:19:23.103169 KST)
# immediate_commit_timestamp=1765343963103169 (2025-12-10 14:19:23.103169 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963103169*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 50726
# at 51402
#251210 14:19:23 server id 1  end_log_pos 51479 CRC32 0xb0bcaf34 	Anonymous_GTID	last_committed=67	sequence_number=68	rbr_only=no	original_committed_timestamp=1765343963110004	immediate_commit_timestamp=1765343963110004	transaction_length=212
# original_commit_timestamp=1765343963110004 (2025-12-10 14:19:23.110004 KST)
# immediate_commit_timestamp=1765343963110004 (2025-12-10 14:19:23.110004 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963110004*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 51479
# at 51614
#251210 14:19:23 server id 1  end_log_pos 51693 CRC32 0x88e04486 	Anonymous_GTID	last_committed=68	sequence_number=69	rbr_only=yes	original_committed_timestamp=1765343963121652	immediate_commit_timestamp=1765343963121652	transaction_length=494
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963121652 (2025-12-10 14:19:23.121652 KST)
# immediate_commit_timestamp=1765343963121652 (2025-12-10 14:19:23.121652 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963121652*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 51693
#251210 14:19:23 server id 1  end_log_pos 51772 CRC32 0x37514862 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
SET @@session.foreign_key_checks=0, @@session.unique_checks=0/*!*/;
SET @@session.sql_mode=524288/*!*/;
BEGIN
/*!*/;
# at 51772
# at 51833
# at 52077
#251210 14:19:23 server id 1  end_log_pos 52108 CRC32 0x8a396e9d 	Xid = 3922
COMMIT/*!*/;
# at 52108
#251210 14:19:23 server id 1  end_log_pos 52185 CRC32 0x8d3a1555 	Anonymous_GTID	last_committed=69	sequence_number=70	rbr_only=no	original_committed_timestamp=1765343963123089	immediate_commit_timestamp=1765343963123089	transaction_length=211
# original_commit_timestamp=1765343963123089 (2025-12-10 14:19:23.123089 KST)
# immediate_commit_timestamp=1765343963123089 (2025-12-10 14:19:23.123089 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963123089*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 52185
# at 52319
#251210 14:19:23 server id 1  end_log_pos 52396 CRC32 0x5dc72a35 	Anonymous_GTID	last_committed=70	sequence_number=71	rbr_only=no	original_committed_timestamp=1765343963131154	immediate_commit_timestamp=1765343963131154	transaction_length=215
# original_commit_timestamp=1765343963131154 (2025-12-10 14:19:23.131154 KST)
# immediate_commit_timestamp=1765343963131154 (2025-12-10 14:19:23.131154 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963131154*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 52396
# at 52534
#251210 14:19:23 server id 1  end_log_pos 52613 CRC32 0xbe4b4818 	Anonymous_GTID	last_committed=71	sequence_number=72	rbr_only=no	original_committed_timestamp=1765343963137864	immediate_commit_timestamp=1765343963137864	transaction_length=591
# original_commit_timestamp=1765343963137864 (2025-12-10 14:19:23.137864 KST)
# immediate_commit_timestamp=1765343963137864 (2025-12-10 14:19:23.137864 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963137864*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 52613
# at 53125
#251210 14:19:23 server id 1  end_log_pos 53202 CRC32 0x08309f7d 	Anonymous_GTID	last_committed=72	sequence_number=73	rbr_only=no	original_committed_timestamp=1765343963143012	immediate_commit_timestamp=1765343963143012	transaction_length=207
# original_commit_timestamp=1765343963143012 (2025-12-10 14:19:23.143012 KST)
# immediate_commit_timestamp=1765343963143012 (2025-12-10 14:19:23.143012 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963143012*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 53202
# at 53332
#251210 14:19:23 server id 1  end_log_pos 53411 CRC32 0x60dc929d 	Anonymous_GTID	last_committed=73	sequence_number=74	rbr_only=yes	original_committed_timestamp=1765343963144506	immediate_commit_timestamp=1765343963144506	transaction_length=431
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963144506 (2025-12-10 14:19:23.144506 KST)
# immediate_commit_timestamp=1765343963144506 (2025-12-10 14:19:23.144506 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963144506*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 53411
#251210 14:19:23 server id 1  end_log_pos 53488 CRC32 0x9c55c4e8 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
BEGIN
/*!*/;
# at 53488
# at 53556
# at 53685
#251210 14:19:23 server id 1  end_log_pos 53763 CRC32 0x0ddf51c9 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
COMMIT
/*!*/;
# at 53763
#251210 14:19:23 server id 1  end_log_pos 53840 CRC32 0xbde7e6f0 	Anonymous_GTID	last_committed=74	sequence_number=75	rbr_only=no	original_committed_timestamp=1765343963151542	immediate_commit_timestamp=1765343963151542	transaction_length=206
# original_commit_timestamp=1765343963151542 (2025-12-10 14:19:23.151542 KST)
# immediate_commit_timestamp=1765343963151542 (2025-12-10 14:19:23.151542 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963151542*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 53840
# at 53969
#251210 14:19:23 server id 1  end_log_pos 54046 CRC32 0x1becca9e 	Anonymous_GTID	last_committed=75	sequence_number=76	rbr_only=no	original_committed_timestamp=1765343963160457	immediate_commit_timestamp=1765343963160457	transaction_length=219
# original_commit_timestamp=1765343963160457 (2025-12-10 14:19:23.160457 KST)
# immediate_commit_timestamp=1765343963160457 (2025-12-10 14:19:23.160457 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963160457*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 54046
# at 54188
#251210 14:19:23 server id 1  end_log_pos 54267 CRC32 0x832d49ec 	Anonymous_GTID	last_committed=76	sequence_number=77	rbr_only=no	original_committed_timestamp=1765343963176859	immediate_commit_timestamp=1765343963176859	transaction_length=834
# original_commit_timestamp=1765343963176859 (2025-12-10 14:19:23.176859 KST)
# immediate_commit_timestamp=1765343963176859 (2025-12-10 14:19:23.176859 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963176859*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 54267
# at 55022
#251210 14:19:23 server id 1  end_log_pos 55099 CRC32 0x6aebd8f8 	Anonymous_GTID	last_committed=77	sequence_number=78	rbr_only=no	original_committed_timestamp=1765343963182836	immediate_commit_timestamp=1765343963182836	transaction_length=211
# original_commit_timestamp=1765343963182836 (2025-12-10 14:19:23.182836 KST)
# immediate_commit_timestamp=1765343963182836 (2025-12-10 14:19:23.182836 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963182836*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 55099
# at 55233
#251210 14:19:23 server id 1  end_log_pos 55312 CRC32 0x7daa58f2 	Anonymous_GTID	last_committed=78	sequence_number=79	rbr_only=yes	original_committed_timestamp=1765343963187882	immediate_commit_timestamp=1765343963187882	transaction_length=6047
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963187882 (2025-12-10 14:19:23.187882 KST)
# immediate_commit_timestamp=1765343963187882 (2025-12-10 14:19:23.187882 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963187882*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 55312
#251210 14:19:23 server id 1  end_log_pos 55391 CRC32 0x5722e419 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
BEGIN
/*!*/;
# at 55391
# at 55456
# at 61249
#251210 14:19:23 server id 1  end_log_pos 61280 CRC32 0x25d3dc4e 	Xid = 3954
COMMIT/*!*/;
# at 61280
#251210 14:19:23 server id 1  end_log_pos 61357 CRC32 0xcbbd24f7 	Anonymous_GTID	last_committed=79	sequence_number=80	rbr_only=no	original_committed_timestamp=1765343963189386	immediate_commit_timestamp=1765343963189386	transaction_length=210
# original_commit_timestamp=1765343963189386 (2025-12-10 14:19:23.189386 KST)
# immediate_commit_timestamp=1765343963189386 (2025-12-10 14:19:23.189386 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963189386*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 61357
# at 61490
#251210 14:19:23 server id 1  end_log_pos 61569 CRC32 0xb0098bcf 	Anonymous_GTID	last_committed=80	sequence_number=81	rbr_only=no	original_committed_timestamp=1765343963195298	immediate_commit_timestamp=1765343963195298	transaction_length=323
# original_commit_timestamp=1765343963195298 (2025-12-10 14:19:23.195298 KST)
# immediate_commit_timestamp=1765343963195298 (2025-12-10 14:19:23.195298 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963195298*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 61569
# at 61813
#251210 14:19:23 server id 1  end_log_pos 61892 CRC32 0xa06a7a33 	Anonymous_GTID	last_committed=81	sequence_number=82	rbr_only=no	original_committed_timestamp=1765343963204768	immediate_commit_timestamp=1765343963204768	transaction_length=428
# original_commit_timestamp=1765343963204768 (2025-12-10 14:19:23.204768 KST)
# immediate_commit_timestamp=1765343963204768 (2025-12-10 14:19:23.204768 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963204768*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 61892
# at 62241
#251210 14:19:23 server id 1  end_log_pos 62320 CRC32 0xe7ad689c 	Anonymous_GTID	last_committed=82	sequence_number=83	rbr_only=no	original_committed_timestamp=1765343963212079	immediate_commit_timestamp=1765343963212079	transaction_length=323
# original_commit_timestamp=1765343963212079 (2025-12-10 14:19:23.212079 KST)
# immediate_commit_timestamp=1765343963212079 (2025-12-10 14:19:23.212079 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963212079*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 62320
# at 62564
#251210 14:19:23 server id 1  end_log_pos 62641 CRC32 0x26a410e6 	Anonymous_GTID	last_committed=83	sequence_number=84	rbr_only=no	original_committed_timestamp=1765343963222923	immediate_commit_timestamp=1765343963222923	transaction_length=222
# original_commit_timestamp=1765343963222923 (2025-12-10 14:19:23.222923 KST)
# immediate_commit_timestamp=1765343963222923 (2025-12-10 14:19:23.222923 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963222923*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 62641
# at 62786
#251210 14:19:23 server id 1  end_log_pos 62865 CRC32 0x8354f04d 	Anonymous_GTID	last_committed=84	sequence_number=85	rbr_only=no	original_committed_timestamp=1765343963294814	immediate_commit_timestamp=1765343963294814	transaction_length=936
# original_commit_timestamp=1765343963294814 (2025-12-10 14:19:23.294814 KST)
# immediate_commit_timestamp=1765343963294814 (2025-12-10 14:19:23.294814 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963294814*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 62865
# at 63722
#251210 14:19:23 server id 1  end_log_pos 63799 CRC32 0x94fd8ace 	Anonymous_GTID	last_committed=85	sequence_number=86	rbr_only=no	original_committed_timestamp=1765343963299658	immediate_commit_timestamp=1765343963299658	transaction_length=214
# original_commit_timestamp=1765343963299658 (2025-12-10 14:19:23.299658 KST)
# immediate_commit_timestamp=1765343963299658 (2025-12-10 14:19:23.299658 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963299658*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 63799
# at 63936
#251210 14:19:23 server id 1  end_log_pos 64015 CRC32 0x745ca365 	Anonymous_GTID	last_committed=86	sequence_number=87	rbr_only=yes	original_committed_timestamp=1765343963301401	immediate_commit_timestamp=1765343963301401	transaction_length=955
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963301401 (2025-12-10 14:19:23.301401 KST)
# immediate_commit_timestamp=1765343963301401 (2025-12-10 14:19:23.301401 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963301401*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 64015
#251210 14:19:23 server id 1  end_log_pos 64100 CRC32 0x94e1986a 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
SET @@session.time_zone='+00:00'/*!*/;
BEGIN
/*!*/;
# at 64100
# at 64167
# at 64860
#251210 14:19:23 server id 1  end_log_pos 64891 CRC32 0x8375a214 	Xid = 4009
COMMIT/*!*/;
# at 64891
#251210 14:19:23 server id 1  end_log_pos 64968 CRC32 0xfcd3e31c 	Anonymous_GTID	last_committed=87	sequence_number=88	rbr_only=no	original_committed_timestamp=1765343963302929	immediate_commit_timestamp=1765343963302929	transaction_length=213
# original_commit_timestamp=1765343963302929 (2025-12-10 14:19:23.302929 KST)
# immediate_commit_timestamp=1765343963302929 (2025-12-10 14:19:23.302929 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963302929*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 64968
# at 65104
#251210 14:19:23 server id 1  end_log_pos 65181 CRC32 0x4a271c82 	Anonymous_GTID	last_committed=88	sequence_number=89	rbr_only=no	original_committed_timestamp=1765343963307493	immediate_commit_timestamp=1765343963307493	transaction_length=224
# original_commit_timestamp=1765343963307493 (2025-12-10 14:19:23.307493 KST)
# immediate_commit_timestamp=1765343963307493 (2025-12-10 14:19:23.307493 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963307493*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 65181
# at 65328
#251210 14:19:23 server id 1  end_log_pos 65407 CRC32 0x8d4ac698 	Anonymous_GTID	last_committed=89	sequence_number=90	rbr_only=no	original_committed_timestamp=1765343963319784	immediate_commit_timestamp=1765343963319784	transaction_length=321
# original_commit_timestamp=1765343963319784 (2025-12-10 14:19:23.319784 KST)
# immediate_commit_timestamp=1765343963319784 (2025-12-10 14:19:23.319784 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963319784*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 65407
# at 65649
#251210 14:19:23 server id 1  end_log_pos 65726 CRC32 0x27129257 	Anonymous_GTID	last_committed=90	sequence_number=91	rbr_only=no	original_committed_timestamp=1765343963331716	immediate_commit_timestamp=1765343963331716	transaction_length=216
# original_commit_timestamp=1765343963331716 (2025-12-10 14:19:23.331716 KST)
# immediate_commit_timestamp=1765343963331716 (2025-12-10 14:19:23.331716 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963331716*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 65726
# at 65865
#251210 14:19:23 server id 1  end_log_pos 65944 CRC32 0xfc19b167 	Anonymous_GTID	last_committed=91	sequence_number=92	rbr_only=yes	original_committed_timestamp=1765343963338715	immediate_commit_timestamp=1765343963338715	transaction_length=6100
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963338715 (2025-12-10 14:19:23.338715 KST)
# immediate_commit_timestamp=1765343963338715 (2025-12-10 14:19:23.338715 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963338715*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 65944
#251210 14:19:23 server id 1  end_log_pos 66021 CRC32 0x90f9e368 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
BEGIN
/*!*/;
# at 66021
# at 66079
# at 71934
#251210 14:19:23 server id 1  end_log_pos 71965 CRC32 0x7e548e10 	Xid = 4025
COMMIT/*!*/;
# at 71965
#251210 14:19:23 server id 1  end_log_pos 72042 CRC32 0x7c50b045 	Anonymous_GTID	last_committed=92	sequence_number=93	rbr_only=no	original_committed_timestamp=1765343963339782	immediate_commit_timestamp=1765343963339782	transaction_length=215
# original_commit_timestamp=1765343963339782 (2025-12-10 14:19:23.339782 KST)
# immediate_commit_timestamp=1765343963339782 (2025-12-10 14:19:23.339782 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963339782*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 72042
# at 72180
#251210 14:19:23 server id 1  end_log_pos 72257 CRC32 0xce35f363 	Anonymous_GTID	last_committed=93	sequence_number=94	rbr_only=no	original_committed_timestamp=1765343963346871	immediate_commit_timestamp=1765343963346871	transaction_length=217
# original_commit_timestamp=1765343963346871 (2025-12-10 14:19:23.346871 KST)
# immediate_commit_timestamp=1765343963346871 (2025-12-10 14:19:23.346871 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963346871*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 72257
# at 72397
#251210 14:19:23 server id 1  end_log_pos 72476 CRC32 0x20c19419 	Anonymous_GTID	last_committed=94	sequence_number=95	rbr_only=no	original_committed_timestamp=1765343963359466	immediate_commit_timestamp=1765343963359466	transaction_length=494
# original_commit_timestamp=1765343963359466 (2025-12-10 14:19:23.359466 KST)
# immediate_commit_timestamp=1765343963359466 (2025-12-10 14:19:23.359466 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963359466*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 72476
# at 72891
#251210 14:19:23 server id 1  end_log_pos 72968 CRC32 0x279c8d2b 	Anonymous_GTID	last_committed=95	sequence_number=96	rbr_only=no	original_committed_timestamp=1765343963364235	immediate_commit_timestamp=1765343963364235	transaction_length=209
# original_commit_timestamp=1765343963364235 (2025-12-10 14:19:23.364235 KST)
# immediate_commit_timestamp=1765343963364235 (2025-12-10 14:19:23.364235 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963364235*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 72968
# at 73100
#251210 14:19:23 server id 1  end_log_pos 73179 CRC32 0x2d7b4db1 	Anonymous_GTID	last_committed=96	sequence_number=97	rbr_only=yes	original_committed_timestamp=1765343963366436	immediate_commit_timestamp=1765343963366436	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963366436 (2025-12-10 14:19:23.366436 KST)
# immediate_commit_timestamp=1765343963366436 (2025-12-10 14:19:23.366436 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963366436*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 73179
#251210 14:19:23 server id 1  end_log_pos 73256 CRC32 0x895c8d99 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
BEGIN
/*!*/;
# at 73256
# at 73314
# at 73394
#251210 14:19:23 server id 1  end_log_pos 73425 CRC32 0x474890e6 	Xid = 4041
COMMIT/*!*/;
# at 73425
#251210 14:19:23 server id 1  end_log_pos 73502 CRC32 0x49d58b76 	Anonymous_GTID	last_committed=97	sequence_number=98	rbr_only=no	original_committed_timestamp=1765343963367506	immediate_commit_timestamp=1765343963367506	transaction_length=208
# original_commit_timestamp=1765343963367506 (2025-12-10 14:19:23.367506 KST)
# immediate_commit_timestamp=1765343963367506 (2025-12-10 14:19:23.367506 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963367506*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 73502
# at 73633
#251210 14:19:23 server id 1  end_log_pos 73710 CRC32 0xb27d76f2 	Anonymous_GTID	last_committed=98	sequence_number=99	rbr_only=no	original_committed_timestamp=1765343963376695	immediate_commit_timestamp=1765343963376695	transaction_length=223
# original_commit_timestamp=1765343963376695 (2025-12-10 14:19:23.376695 KST)
# immediate_commit_timestamp=1765343963376695 (2025-12-10 14:19:23.376695 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963376695*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 73710
# at 73856
#251210 14:19:23 server id 1  end_log_pos 73935 CRC32 0x87a1b941 	Anonymous_GTID	last_committed=99	sequence_number=100	rbr_only=no	original_committed_timestamp=1765343963409300	immediate_commit_timestamp=1765343963409300	transaction_length=968
# original_commit_timestamp=1765343963409300 (2025-12-10 14:19:23.409300 KST)
# immediate_commit_timestamp=1765343963409300 (2025-12-10 14:19:23.409300 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963409300*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 73935
# at 74824
#251210 14:19:23 server id 1  end_log_pos 74901 CRC32 0xbc006ab3 	Anonymous_GTID	last_committed=100	sequence_number=101	rbr_only=no	original_committed_timestamp=1765343963414424	immediate_commit_timestamp=1765343963414424	transaction_length=215
# original_commit_timestamp=1765343963414424 (2025-12-10 14:19:23.414424 KST)
# immediate_commit_timestamp=1765343963414424 (2025-12-10 14:19:23.414424 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963414424*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 74901
# at 75039
#251210 14:19:23 server id 1  end_log_pos 75118 CRC32 0x236f8c79 	Anonymous_GTID	last_committed=101	sequence_number=102	rbr_only=yes	original_committed_timestamp=1765343963417971	immediate_commit_timestamp=1765343963417971	transaction_length=4049
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343963417971 (2025-12-10 14:19:23.417971 KST)
# immediate_commit_timestamp=1765343963417971 (2025-12-10 14:19:23.417971 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963417971*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 75118
#251210 14:19:23 server id 1  end_log_pos 75195 CRC32 0xeeada44c 	Query	thread_id=33	exec_time=0	error_code=0
SET TIMESTAMP=1765343963/*!*/;
BEGIN
/*!*/;
# at 75195
# at 75264
# at 77847
# at 77906
# at 79057
#251210 14:19:23 server id 1  end_log_pos 79088 CRC32 0xe2b915b0 	Xid = 4057
COMMIT/*!*/;
# at 79088
#251210 14:19:23 server id 1  end_log_pos 79165 CRC32 0x4de7a343 	Anonymous_GTID	last_committed=102	sequence_number=103	rbr_only=no	original_committed_timestamp=1765343963419345	immediate_commit_timestamp=1765343963419345	transaction_length=214
# original_commit_timestamp=1765343963419345 (2025-12-10 14:19:23.419345 KST)
# immediate_commit_timestamp=1765343963419345 (2025-12-10 14:19:23.419345 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963419345*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 79165
# at 79302
#251210 14:19:23 server id 1  end_log_pos 79379 CRC32 0x908e1d03 	Anonymous_GTID	last_committed=103	sequence_number=104	rbr_only=no	original_committed_timestamp=1765343963422668	immediate_commit_timestamp=1765343963422668	transaction_length=213
# original_commit_timestamp=1765343963422668 (2025-12-10 14:19:23.422668 KST)
# immediate_commit_timestamp=1765343963422668 (2025-12-10 14:19:23.422668 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963422668*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 79379
# at 79515
#251210 14:19:23 server id 1  end_log_pos 79592 CRC32 0x50d02eca 	Anonymous_GTID	last_committed=104	sequence_number=105	rbr_only=no	original_committed_timestamp=1765343963425363	immediate_commit_timestamp=1765343963425363	transaction_length=206
# original_commit_timestamp=1765343963425363 (2025-12-10 14:19:23.425363 KST)
# immediate_commit_timestamp=1765343963425363 (2025-12-10 14:19:23.425363 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963425363*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 79592
# at 79721
#251210 14:19:23 server id 1  end_log_pos 79800 CRC32 0xff7dd03a 	Anonymous_GTID	last_committed=105	sequence_number=106	rbr_only=no	original_committed_timestamp=1765343963430680	immediate_commit_timestamp=1765343963430680	transaction_length=339
# original_commit_timestamp=1765343963430680 (2025-12-10 14:19:23.430680 KST)
# immediate_commit_timestamp=1765343963430680 (2025-12-10 14:19:23.430680 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963430680*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 79800
# at 80060
#251210 14:19:23 server id 1  end_log_pos 80137 CRC32 0x4a5944b2 	Anonymous_GTID	last_committed=106	sequence_number=107	rbr_only=no	original_committed_timestamp=1765343963441224	immediate_commit_timestamp=1765343963441224	transaction_length=214
# original_commit_timestamp=1765343963441224 (2025-12-10 14:19:23.441224 KST)
# immediate_commit_timestamp=1765343963441224 (2025-12-10 14:19:23.441224 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963441224*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 80137
# at 80274
#251210 14:19:23 server id 1  end_log_pos 80353 CRC32 0x8f9742bb 	Anonymous_GTID	last_committed=107	sequence_number=108	rbr_only=no	original_committed_timestamp=1765343963448354	immediate_commit_timestamp=1765343963448354	transaction_length=538
# original_commit_timestamp=1765343963448354 (2025-12-10 14:19:23.448354 KST)
# immediate_commit_timestamp=1765343963448354 (2025-12-10 14:19:23.448354 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963448354*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 80353
# at 80812
#251210 14:19:23 server id 1  end_log_pos 80889 CRC32 0x34ebeec8 	Anonymous_GTID	last_committed=108	sequence_number=109	rbr_only=no	original_committed_timestamp=1765343963457558	immediate_commit_timestamp=1765343963457558	transaction_length=224
# original_commit_timestamp=1765343963457558 (2025-12-10 14:19:23.457558 KST)
# immediate_commit_timestamp=1765343963457558 (2025-12-10 14:19:23.457558 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963457558*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 80889
# at 81036
#251210 14:19:23 server id 1  end_log_pos 81115 CRC32 0x325f16af 	Anonymous_GTID	last_committed=109	sequence_number=110	rbr_only=no	original_committed_timestamp=1765343963464134	immediate_commit_timestamp=1765343963464134	transaction_length=1811
# original_commit_timestamp=1765343963464134 (2025-12-10 14:19:23.464134 KST)
# immediate_commit_timestamp=1765343963464134 (2025-12-10 14:19:23.464134 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963464134*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 81115
# at 82847
#251210 14:19:23 server id 1  end_log_pos 82924 CRC32 0x6ce3cd5f 	Anonymous_GTID	last_committed=110	sequence_number=111	rbr_only=no	original_committed_timestamp=1765343963469619	immediate_commit_timestamp=1765343963469619	transaction_length=223
# original_commit_timestamp=1765343963469619 (2025-12-10 14:19:23.469619 KST)
# immediate_commit_timestamp=1765343963469619 (2025-12-10 14:19:23.469619 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963469619*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 82924
# at 83070
#251210 14:19:23 server id 1  end_log_pos 83149 CRC32 0x2976bb1b 	Anonymous_GTID	last_committed=111	sequence_number=112	rbr_only=no	original_committed_timestamp=1765343963475160	immediate_commit_timestamp=1765343963475160	transaction_length=565
# original_commit_timestamp=1765343963475160 (2025-12-10 14:19:23.475160 KST)
# immediate_commit_timestamp=1765343963475160 (2025-12-10 14:19:23.475160 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963475160*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 83149
# at 83635
#251210 14:19:23 server id 1  end_log_pos 83712 CRC32 0xbf9920f1 	Anonymous_GTID	last_committed=112	sequence_number=113	rbr_only=no	original_committed_timestamp=1765343963480448	immediate_commit_timestamp=1765343963480448	transaction_length=206
# original_commit_timestamp=1765343963480448 (2025-12-10 14:19:23.480448 KST)
# immediate_commit_timestamp=1765343963480448 (2025-12-10 14:19:23.480448 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963480448*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 83712
# at 83841
#251210 14:19:23 server id 1  end_log_pos 83920 CRC32 0xe7babe68 	Anonymous_GTID	last_committed=113	sequence_number=114	rbr_only=no	original_committed_timestamp=1765343963486651	immediate_commit_timestamp=1765343963486651	transaction_length=437
# original_commit_timestamp=1765343963486651 (2025-12-10 14:19:23.486651 KST)
# immediate_commit_timestamp=1765343963486651 (2025-12-10 14:19:23.486651 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343963486651*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 83920
# at 84278
#251210 14:20:47 server id 1  end_log_pos 84355 CRC32 0xec68d961 	Anonymous_GTID	last_committed=114	sequence_number=115	rbr_only=no	original_committed_timestamp=1765344047351472	immediate_commit_timestamp=1765344047351472	transaction_length=220
# original_commit_timestamp=1765344047351472 (2025-12-10 14:20:47.351472 KST)
# immediate_commit_timestamp=1765344047351472 (2025-12-10 14:20:47.351472 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047351472*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 84355
# at 84498
#251210 14:20:47 server id 1  end_log_pos 84577 CRC32 0xc7ac5715 	Anonymous_GTID	last_committed=115	sequence_number=116	rbr_only=no	original_committed_timestamp=1765344047373025	immediate_commit_timestamp=1765344047373025	transaction_length=755
# original_commit_timestamp=1765344047373025 (2025-12-10 14:20:47.373025 KST)
# immediate_commit_timestamp=1765344047373025 (2025-12-10 14:20:47.373025 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047373025*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 84577
# at 85253
#251210 14:20:47 server id 1  end_log_pos 85330 CRC32 0x8322bdfd 	Anonymous_GTID	last_committed=116	sequence_number=117	rbr_only=no	original_committed_timestamp=1765344047377255	immediate_commit_timestamp=1765344047377255	transaction_length=212
# original_commit_timestamp=1765344047377255 (2025-12-10 14:20:47.377255 KST)
# immediate_commit_timestamp=1765344047377255 (2025-12-10 14:20:47.377255 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047377255*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 85330
# at 85465
#251210 14:20:47 server id 1  end_log_pos 85544 CRC32 0x8f190549 	Anonymous_GTID	last_committed=117	sequence_number=118	rbr_only=yes	original_committed_timestamp=1765344047379388	immediate_commit_timestamp=1765344047379388	transaction_length=494
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047379388 (2025-12-10 14:20:47.379388 KST)
# immediate_commit_timestamp=1765344047379388 (2025-12-10 14:20:47.379388 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047379388*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 85544
#251210 14:20:47 server id 1  end_log_pos 85623 CRC32 0x425a490b 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 85623
# at 85684
# at 85928
#251210 14:20:47 server id 1  end_log_pos 85959 CRC32 0xb78bdb9c 	Xid = 4198
COMMIT/*!*/;
# at 85959
#251210 14:20:47 server id 1  end_log_pos 86036 CRC32 0x460efa15 	Anonymous_GTID	last_committed=118	sequence_number=119	rbr_only=no	original_committed_timestamp=1765344047381046	immediate_commit_timestamp=1765344047381046	transaction_length=211
# original_commit_timestamp=1765344047381046 (2025-12-10 14:20:47.381046 KST)
# immediate_commit_timestamp=1765344047381046 (2025-12-10 14:20:47.381046 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047381046*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 86036
# at 86170
#251210 14:20:47 server id 1  end_log_pos 86247 CRC32 0xd8b9ea98 	Anonymous_GTID	last_committed=119	sequence_number=120	rbr_only=no	original_committed_timestamp=1765344047386399	immediate_commit_timestamp=1765344047386399	transaction_length=215
# original_commit_timestamp=1765344047386399 (2025-12-10 14:20:47.386399 KST)
# immediate_commit_timestamp=1765344047386399 (2025-12-10 14:20:47.386399 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047386399*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 86247
# at 86385
#251210 14:20:47 server id 1  end_log_pos 86464 CRC32 0x975e0a89 	Anonymous_GTID	last_committed=120	sequence_number=121	rbr_only=no	original_committed_timestamp=1765344047394754	immediate_commit_timestamp=1765344047394754	transaction_length=591
# original_commit_timestamp=1765344047394754 (2025-12-10 14:20:47.394754 KST)
# immediate_commit_timestamp=1765344047394754 (2025-12-10 14:20:47.394754 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047394754*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 86464
# at 86976
#251210 14:20:47 server id 1  end_log_pos 87053 CRC32 0xa02fb04e 	Anonymous_GTID	last_committed=121	sequence_number=122	rbr_only=no	original_committed_timestamp=1765344047404215	immediate_commit_timestamp=1765344047404215	transaction_length=207
# original_commit_timestamp=1765344047404215 (2025-12-10 14:20:47.404215 KST)
# immediate_commit_timestamp=1765344047404215 (2025-12-10 14:20:47.404215 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047404215*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 87053
# at 87183
#251210 14:20:47 server id 1  end_log_pos 87262 CRC32 0x43d5c164 	Anonymous_GTID	last_committed=122	sequence_number=123	rbr_only=yes	original_committed_timestamp=1765344047405828	immediate_commit_timestamp=1765344047405828	transaction_length=431
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047405828 (2025-12-10 14:20:47.405828 KST)
# immediate_commit_timestamp=1765344047405828 (2025-12-10 14:20:47.405828 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047405828*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 87262
#251210 14:20:47 server id 1  end_log_pos 87339 CRC32 0xfe2e8124 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 87339
# at 87407
# at 87536
#251210 14:20:47 server id 1  end_log_pos 87614 CRC32 0x1a337486 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
COMMIT
/*!*/;
# at 87614
#251210 14:20:47 server id 1  end_log_pos 87691 CRC32 0x0b1e1072 	Anonymous_GTID	last_committed=123	sequence_number=124	rbr_only=no	original_committed_timestamp=1765344047408846	immediate_commit_timestamp=1765344047408846	transaction_length=206
# original_commit_timestamp=1765344047408846 (2025-12-10 14:20:47.408846 KST)
# immediate_commit_timestamp=1765344047408846 (2025-12-10 14:20:47.408846 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047408846*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 87691
# at 87820
#251210 14:20:47 server id 1  end_log_pos 87897 CRC32 0xd0161dce 	Anonymous_GTID	last_committed=124	sequence_number=125	rbr_only=no	original_committed_timestamp=1765344047417302	immediate_commit_timestamp=1765344047417302	transaction_length=219
# original_commit_timestamp=1765344047417302 (2025-12-10 14:20:47.417302 KST)
# immediate_commit_timestamp=1765344047417302 (2025-12-10 14:20:47.417302 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047417302*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 87897
# at 88039
#251210 14:20:47 server id 1  end_log_pos 88118 CRC32 0xd34558d4 	Anonymous_GTID	last_committed=125	sequence_number=126	rbr_only=no	original_committed_timestamp=1765344047433359	immediate_commit_timestamp=1765344047433359	transaction_length=834
# original_commit_timestamp=1765344047433359 (2025-12-10 14:20:47.433359 KST)
# immediate_commit_timestamp=1765344047433359 (2025-12-10 14:20:47.433359 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047433359*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 88118
# at 88873
#251210 14:20:47 server id 1  end_log_pos 88950 CRC32 0xd6fb8ed4 	Anonymous_GTID	last_committed=126	sequence_number=127	rbr_only=no	original_committed_timestamp=1765344047439285	immediate_commit_timestamp=1765344047439285	transaction_length=211
# original_commit_timestamp=1765344047439285 (2025-12-10 14:20:47.439285 KST)
# immediate_commit_timestamp=1765344047439285 (2025-12-10 14:20:47.439285 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047439285*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 88950
# at 89084
#251210 14:20:47 server id 1  end_log_pos 89163 CRC32 0x0dbce795 	Anonymous_GTID	last_committed=127	sequence_number=128	rbr_only=yes	original_committed_timestamp=1765344047444384	immediate_commit_timestamp=1765344047444384	transaction_length=6047
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047444384 (2025-12-10 14:20:47.444384 KST)
# immediate_commit_timestamp=1765344047444384 (2025-12-10 14:20:47.444384 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047444384*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 89163
#251210 14:20:47 server id 1  end_log_pos 89242 CRC32 0x43459d2a 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 89242
# at 89307
# at 95100
#251210 14:20:47 server id 1  end_log_pos 95131 CRC32 0xa466f099 	Xid = 4230
COMMIT/*!*/;
# at 95131
#251210 14:20:47 server id 1  end_log_pos 95208 CRC32 0x630a2e9a 	Anonymous_GTID	last_committed=128	sequence_number=129	rbr_only=no	original_committed_timestamp=1765344047445585	immediate_commit_timestamp=1765344047445585	transaction_length=210
# original_commit_timestamp=1765344047445585 (2025-12-10 14:20:47.445585 KST)
# immediate_commit_timestamp=1765344047445585 (2025-12-10 14:20:47.445585 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047445585*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 95208
# at 95341
#251210 14:20:47 server id 1  end_log_pos 95420 CRC32 0x7056dc6e 	Anonymous_GTID	last_committed=129	sequence_number=130	rbr_only=no	original_committed_timestamp=1765344047451376	immediate_commit_timestamp=1765344047451376	transaction_length=323
# original_commit_timestamp=1765344047451376 (2025-12-10 14:20:47.451376 KST)
# immediate_commit_timestamp=1765344047451376 (2025-12-10 14:20:47.451376 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047451376*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 95420
# at 95664
#251210 14:20:47 server id 1  end_log_pos 95743 CRC32 0xe7ef8f8f 	Anonymous_GTID	last_committed=130	sequence_number=131	rbr_only=no	original_committed_timestamp=1765344047460831	immediate_commit_timestamp=1765344047460831	transaction_length=428
# original_commit_timestamp=1765344047460831 (2025-12-10 14:20:47.460831 KST)
# immediate_commit_timestamp=1765344047460831 (2025-12-10 14:20:47.460831 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047460831*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 95743
# at 96092
#251210 14:20:47 server id 1  end_log_pos 96171 CRC32 0x7e75c5b4 	Anonymous_GTID	last_committed=131	sequence_number=132	rbr_only=no	original_committed_timestamp=1765344047468893	immediate_commit_timestamp=1765344047468893	transaction_length=323
# original_commit_timestamp=1765344047468893 (2025-12-10 14:20:47.468893 KST)
# immediate_commit_timestamp=1765344047468893 (2025-12-10 14:20:47.468893 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047468893*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 96171
# at 96415
#251210 14:20:47 server id 1  end_log_pos 96492 CRC32 0x9df03ed8 	Anonymous_GTID	last_committed=132	sequence_number=133	rbr_only=no	original_committed_timestamp=1765344047479815	immediate_commit_timestamp=1765344047479815	transaction_length=222
# original_commit_timestamp=1765344047479815 (2025-12-10 14:20:47.479815 KST)
# immediate_commit_timestamp=1765344047479815 (2025-12-10 14:20:47.479815 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047479815*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 96492
# at 96637
#251210 14:20:47 server id 1  end_log_pos 96716 CRC32 0x5d6403e4 	Anonymous_GTID	last_committed=133	sequence_number=134	rbr_only=no	original_committed_timestamp=1765344047542929	immediate_commit_timestamp=1765344047542929	transaction_length=936
# original_commit_timestamp=1765344047542929 (2025-12-10 14:20:47.542929 KST)
# immediate_commit_timestamp=1765344047542929 (2025-12-10 14:20:47.542929 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047542929*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 96716
# at 97573
#251210 14:20:47 server id 1  end_log_pos 97650 CRC32 0x0cc45ef5 	Anonymous_GTID	last_committed=134	sequence_number=135	rbr_only=no	original_committed_timestamp=1765344047547657	immediate_commit_timestamp=1765344047547657	transaction_length=214
# original_commit_timestamp=1765344047547657 (2025-12-10 14:20:47.547657 KST)
# immediate_commit_timestamp=1765344047547657 (2025-12-10 14:20:47.547657 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047547657*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 97650
# at 97787
#251210 14:20:47 server id 1  end_log_pos 97866 CRC32 0xe49ed6d8 	Anonymous_GTID	last_committed=135	sequence_number=136	rbr_only=yes	original_committed_timestamp=1765344047549365	immediate_commit_timestamp=1765344047549365	transaction_length=955
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047549365 (2025-12-10 14:20:47.549365 KST)
# immediate_commit_timestamp=1765344047549365 (2025-12-10 14:20:47.549365 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047549365*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 97866
#251210 14:20:47 server id 1  end_log_pos 97951 CRC32 0xb1259130 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 97951
# at 98018
# at 98711
#251210 14:20:47 server id 1  end_log_pos 98742 CRC32 0x7c9d5be9 	Xid = 4285
COMMIT/*!*/;
# at 98742
#251210 14:20:47 server id 1  end_log_pos 98819 CRC32 0x9a3ef9ed 	Anonymous_GTID	last_committed=136	sequence_number=137	rbr_only=no	original_committed_timestamp=1765344047551569	immediate_commit_timestamp=1765344047551569	transaction_length=213
# original_commit_timestamp=1765344047551569 (2025-12-10 14:20:47.551569 KST)
# immediate_commit_timestamp=1765344047551569 (2025-12-10 14:20:47.551569 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047551569*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 98819
# at 98955
#251210 14:20:47 server id 1  end_log_pos 99032 CRC32 0x2d0f9d8d 	Anonymous_GTID	last_committed=137	sequence_number=138	rbr_only=no	original_committed_timestamp=1765344047561152	immediate_commit_timestamp=1765344047561152	transaction_length=224
# original_commit_timestamp=1765344047561152 (2025-12-10 14:20:47.561152 KST)
# immediate_commit_timestamp=1765344047561152 (2025-12-10 14:20:47.561152 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047561152*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 99032
# at 99179
#251210 14:20:47 server id 1  end_log_pos 99258 CRC32 0xfbb2474a 	Anonymous_GTID	last_committed=138	sequence_number=139	rbr_only=no	original_committed_timestamp=1765344047569939	immediate_commit_timestamp=1765344047569939	transaction_length=321
# original_commit_timestamp=1765344047569939 (2025-12-10 14:20:47.569939 KST)
# immediate_commit_timestamp=1765344047569939 (2025-12-10 14:20:47.569939 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047569939*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 99258
# at 99500
#251210 14:20:47 server id 1  end_log_pos 99577 CRC32 0xdc7f64b2 	Anonymous_GTID	last_committed=139	sequence_number=140	rbr_only=no	original_committed_timestamp=1765344047576967	immediate_commit_timestamp=1765344047576967	transaction_length=216
# original_commit_timestamp=1765344047576967 (2025-12-10 14:20:47.576967 KST)
# immediate_commit_timestamp=1765344047576967 (2025-12-10 14:20:47.576967 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047576967*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 99577
# at 99716
#251210 14:20:47 server id 1  end_log_pos 99795 CRC32 0x88d8856e 	Anonymous_GTID	last_committed=140	sequence_number=141	rbr_only=yes	original_committed_timestamp=1765344047582915	immediate_commit_timestamp=1765344047582915	transaction_length=6100
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047582915 (2025-12-10 14:20:47.582915 KST)
# immediate_commit_timestamp=1765344047582915 (2025-12-10 14:20:47.582915 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047582915*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 99795
#251210 14:20:47 server id 1  end_log_pos 99872 CRC32 0x42ad3432 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 99872
# at 99930
# at 105785
#251210 14:20:47 server id 1  end_log_pos 105816 CRC32 0x3a45e013 	Xid = 4301
COMMIT/*!*/;
# at 105816
#251210 14:20:47 server id 1  end_log_pos 105893 CRC32 0x5678406e 	Anonymous_GTID	last_committed=141	sequence_number=142	rbr_only=no	original_committed_timestamp=1765344047584337	immediate_commit_timestamp=1765344047584337	transaction_length=215
# original_commit_timestamp=1765344047584337 (2025-12-10 14:20:47.584337 KST)
# immediate_commit_timestamp=1765344047584337 (2025-12-10 14:20:47.584337 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047584337*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 105893
# at 106031
#251210 14:20:47 server id 1  end_log_pos 106108 CRC32 0xc05c6b67 	Anonymous_GTID	last_committed=142	sequence_number=143	rbr_only=no	original_committed_timestamp=1765344047588835	immediate_commit_timestamp=1765344047588835	transaction_length=217
# original_commit_timestamp=1765344047588835 (2025-12-10 14:20:47.588835 KST)
# immediate_commit_timestamp=1765344047588835 (2025-12-10 14:20:47.588835 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047588835*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 106108
# at 106248
#251210 14:20:47 server id 1  end_log_pos 106327 CRC32 0x3b00083b 	Anonymous_GTID	last_committed=143	sequence_number=144	rbr_only=no	original_committed_timestamp=1765344047598193	immediate_commit_timestamp=1765344047598193	transaction_length=494
# original_commit_timestamp=1765344047598193 (2025-12-10 14:20:47.598193 KST)
# immediate_commit_timestamp=1765344047598193 (2025-12-10 14:20:47.598193 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047598193*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 106327
# at 106742
#251210 14:20:47 server id 1  end_log_pos 106819 CRC32 0x6edfd079 	Anonymous_GTID	last_committed=144	sequence_number=145	rbr_only=no	original_committed_timestamp=1765344047602427	immediate_commit_timestamp=1765344047602427	transaction_length=209
# original_commit_timestamp=1765344047602427 (2025-12-10 14:20:47.602427 KST)
# immediate_commit_timestamp=1765344047602427 (2025-12-10 14:20:47.602427 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047602427*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 106819
# at 106951
#251210 14:20:47 server id 1  end_log_pos 107030 CRC32 0x62a6cbbb 	Anonymous_GTID	last_committed=145	sequence_number=146	rbr_only=yes	original_committed_timestamp=1765344047604429	immediate_commit_timestamp=1765344047604429	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047604429 (2025-12-10 14:20:47.604429 KST)
# immediate_commit_timestamp=1765344047604429 (2025-12-10 14:20:47.604429 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047604429*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 107030
#251210 14:20:47 server id 1  end_log_pos 107107 CRC32 0x908c7021 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 107107
# at 107165
# at 107245
#251210 14:20:47 server id 1  end_log_pos 107276 CRC32 0x85c67421 	Xid = 4317
COMMIT/*!*/;
# at 107276
#251210 14:20:47 server id 1  end_log_pos 107353 CRC32 0xdfb5d7a2 	Anonymous_GTID	last_committed=146	sequence_number=147	rbr_only=no	original_committed_timestamp=1765344047605538	immediate_commit_timestamp=1765344047605538	transaction_length=208
# original_commit_timestamp=1765344047605538 (2025-12-10 14:20:47.605538 KST)
# immediate_commit_timestamp=1765344047605538 (2025-12-10 14:20:47.605538 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047605538*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 107353
# at 107484
#251210 14:20:47 server id 1  end_log_pos 107561 CRC32 0xabf34e01 	Anonymous_GTID	last_committed=147	sequence_number=148	rbr_only=no	original_committed_timestamp=1765344047612717	immediate_commit_timestamp=1765344047612717	transaction_length=223
# original_commit_timestamp=1765344047612717 (2025-12-10 14:20:47.612717 KST)
# immediate_commit_timestamp=1765344047612717 (2025-12-10 14:20:47.612717 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047612717*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 107561
# at 107707
#251210 14:20:47 server id 1  end_log_pos 107786 CRC32 0xdf937f6c 	Anonymous_GTID	last_committed=148	sequence_number=149	rbr_only=no	original_committed_timestamp=1765344047642646	immediate_commit_timestamp=1765344047642646	transaction_length=968
# original_commit_timestamp=1765344047642646 (2025-12-10 14:20:47.642646 KST)
# immediate_commit_timestamp=1765344047642646 (2025-12-10 14:20:47.642646 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047642646*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 107786
# at 108675
#251210 14:20:47 server id 1  end_log_pos 108752 CRC32 0x6f6fcf94 	Anonymous_GTID	last_committed=149	sequence_number=150	rbr_only=no	original_committed_timestamp=1765344047647900	immediate_commit_timestamp=1765344047647900	transaction_length=215
# original_commit_timestamp=1765344047647900 (2025-12-10 14:20:47.647900 KST)
# immediate_commit_timestamp=1765344047647900 (2025-12-10 14:20:47.647900 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047647900*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 108752
# at 108890
#251210 14:20:47 server id 1  end_log_pos 108969 CRC32 0x08beb4ad 	Anonymous_GTID	last_committed=150	sequence_number=151	rbr_only=yes	original_committed_timestamp=1765344047651333	immediate_commit_timestamp=1765344047651333	transaction_length=4049
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344047651333 (2025-12-10 14:20:47.651333 KST)
# immediate_commit_timestamp=1765344047651333 (2025-12-10 14:20:47.651333 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047651333*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 108969
#251210 14:20:47 server id 1  end_log_pos 109046 CRC32 0x4298b4ea 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1765344047/*!*/;
BEGIN
/*!*/;
# at 109046
# at 109115
# at 111698
# at 111757
# at 112908
#251210 14:20:47 server id 1  end_log_pos 112939 CRC32 0x26fa35b8 	Xid = 4333
COMMIT/*!*/;
# at 112939
#251210 14:20:47 server id 1  end_log_pos 113016 CRC32 0xb4a0e039 	Anonymous_GTID	last_committed=151	sequence_number=152	rbr_only=no	original_committed_timestamp=1765344047652547	immediate_commit_timestamp=1765344047652547	transaction_length=214
# original_commit_timestamp=1765344047652547 (2025-12-10 14:20:47.652547 KST)
# immediate_commit_timestamp=1765344047652547 (2025-12-10 14:20:47.652547 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047652547*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 113016
# at 113153
#251210 14:20:47 server id 1  end_log_pos 113230 CRC32 0x5b53cb61 	Anonymous_GTID	last_committed=152	sequence_number=153	rbr_only=no	original_committed_timestamp=1765344047654975	immediate_commit_timestamp=1765344047654975	transaction_length=213
# original_commit_timestamp=1765344047654975 (2025-12-10 14:20:47.654975 KST)
# immediate_commit_timestamp=1765344047654975 (2025-12-10 14:20:47.654975 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047654975*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 113230
# at 113366
#251210 14:20:47 server id 1  end_log_pos 113443 CRC32 0xaa52a0f5 	Anonymous_GTID	last_committed=153	sequence_number=154	rbr_only=no	original_committed_timestamp=1765344047656527	immediate_commit_timestamp=1765344047656527	transaction_length=206
# original_commit_timestamp=1765344047656527 (2025-12-10 14:20:47.656527 KST)
# immediate_commit_timestamp=1765344047656527 (2025-12-10 14:20:47.656527 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047656527*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 113443
# at 113572
#251210 14:20:47 server id 1  end_log_pos 113651 CRC32 0x164767ec 	Anonymous_GTID	last_committed=154	sequence_number=155	rbr_only=no	original_committed_timestamp=1765344047659538	immediate_commit_timestamp=1765344047659538	transaction_length=339
# original_commit_timestamp=1765344047659538 (2025-12-10 14:20:47.659538 KST)
# immediate_commit_timestamp=1765344047659538 (2025-12-10 14:20:47.659538 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047659538*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 113651
# at 113911
#251210 14:20:47 server id 1  end_log_pos 113988 CRC32 0xd558d738 	Anonymous_GTID	last_committed=155	sequence_number=156	rbr_only=no	original_committed_timestamp=1765344047665403	immediate_commit_timestamp=1765344047665403	transaction_length=214
# original_commit_timestamp=1765344047665403 (2025-12-10 14:20:47.665403 KST)
# immediate_commit_timestamp=1765344047665403 (2025-12-10 14:20:47.665403 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047665403*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 113988
# at 114125
#251210 14:20:47 server id 1  end_log_pos 114204 CRC32 0xb0d8cd3b 	Anonymous_GTID	last_committed=156	sequence_number=157	rbr_only=no	original_committed_timestamp=1765344047669930	immediate_commit_timestamp=1765344047669930	transaction_length=538
# original_commit_timestamp=1765344047669930 (2025-12-10 14:20:47.669930 KST)
# immediate_commit_timestamp=1765344047669930 (2025-12-10 14:20:47.669930 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047669930*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 114204
# at 114663
#251210 14:20:47 server id 1  end_log_pos 114740 CRC32 0x5a6dfeef 	Anonymous_GTID	last_committed=157	sequence_number=158	rbr_only=no	original_committed_timestamp=1765344047674464	immediate_commit_timestamp=1765344047674464	transaction_length=224
# original_commit_timestamp=1765344047674464 (2025-12-10 14:20:47.674464 KST)
# immediate_commit_timestamp=1765344047674464 (2025-12-10 14:20:47.674464 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047674464*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 114740
# at 114887
#251210 14:20:47 server id 1  end_log_pos 114966 CRC32 0x4ce002de 	Anonymous_GTID	last_committed=158	sequence_number=159	rbr_only=no	original_committed_timestamp=1765344047679228	immediate_commit_timestamp=1765344047679228	transaction_length=1811
# original_commit_timestamp=1765344047679228 (2025-12-10 14:20:47.679228 KST)
# immediate_commit_timestamp=1765344047679228 (2025-12-10 14:20:47.679228 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047679228*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 114966
# at 116698
#251210 14:20:47 server id 1  end_log_pos 116775 CRC32 0x9b0aad25 	Anonymous_GTID	last_committed=159	sequence_number=160	rbr_only=no	original_committed_timestamp=1765344047683147	immediate_commit_timestamp=1765344047683147	transaction_length=223
# original_commit_timestamp=1765344047683147 (2025-12-10 14:20:47.683147 KST)
# immediate_commit_timestamp=1765344047683147 (2025-12-10 14:20:47.683147 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047683147*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 116775
# at 116921
#251210 14:20:47 server id 1  end_log_pos 117000 CRC32 0x9141c5a2 	Anonymous_GTID	last_committed=160	sequence_number=161	rbr_only=no	original_committed_timestamp=1765344047687859	immediate_commit_timestamp=1765344047687859	transaction_length=565
# original_commit_timestamp=1765344047687859 (2025-12-10 14:20:47.687859 KST)
# immediate_commit_timestamp=1765344047687859 (2025-12-10 14:20:47.687859 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047687859*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 117000
# at 117486
#251210 14:20:47 server id 1  end_log_pos 117563 CRC32 0x710f177a 	Anonymous_GTID	last_committed=161	sequence_number=162	rbr_only=no	original_committed_timestamp=1765344047693445	immediate_commit_timestamp=1765344047693445	transaction_length=206
# original_commit_timestamp=1765344047693445 (2025-12-10 14:20:47.693445 KST)
# immediate_commit_timestamp=1765344047693445 (2025-12-10 14:20:47.693445 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047693445*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 117563
# at 117692
#251210 14:20:47 server id 1  end_log_pos 117771 CRC32 0x43ed0f4f 	Anonymous_GTID	last_committed=162	sequence_number=163	rbr_only=no	original_committed_timestamp=1765344047698067	immediate_commit_timestamp=1765344047698067	transaction_length=437
# original_commit_timestamp=1765344047698067 (2025-12-10 14:20:47.698067 KST)
# immediate_commit_timestamp=1765344047698067 (2025-12-10 14:20:47.698067 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344047698067*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 117771
# at 118129
#251210 14:22:22 server id 1  end_log_pos 118206 CRC32 0x30b6d444 	Anonymous_GTID	last_committed=163	sequence_number=164	rbr_only=no	original_committed_timestamp=1765344142542816	immediate_commit_timestamp=1765344142542816	transaction_length=220
# original_commit_timestamp=1765344142542816 (2025-12-10 14:22:22.542816 KST)
# immediate_commit_timestamp=1765344142542816 (2025-12-10 14:22:22.542816 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142542816*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 118206
# at 118349
#251210 14:22:22 server id 1  end_log_pos 118428 CRC32 0x92f02cd8 	Anonymous_GTID	last_committed=164	sequence_number=165	rbr_only=no	original_committed_timestamp=1765344142558292	immediate_commit_timestamp=1765344142558292	transaction_length=755
# original_commit_timestamp=1765344142558292 (2025-12-10 14:22:22.558292 KST)
# immediate_commit_timestamp=1765344142558292 (2025-12-10 14:22:22.558292 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142558292*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 118428
# at 119104
#251210 14:22:22 server id 1  end_log_pos 119181 CRC32 0x5693ca37 	Anonymous_GTID	last_committed=165	sequence_number=166	rbr_only=no	original_committed_timestamp=1765344142563303	immediate_commit_timestamp=1765344142563303	transaction_length=212
# original_commit_timestamp=1765344142563303 (2025-12-10 14:22:22.563303 KST)
# immediate_commit_timestamp=1765344142563303 (2025-12-10 14:22:22.563303 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142563303*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 119181
# at 119316
#251210 14:22:22 server id 1  end_log_pos 119395 CRC32 0x9460b53a 	Anonymous_GTID	last_committed=166	sequence_number=167	rbr_only=yes	original_committed_timestamp=1765344142564717	immediate_commit_timestamp=1765344142564717	transaction_length=494
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142564717 (2025-12-10 14:22:22.564717 KST)
# immediate_commit_timestamp=1765344142564717 (2025-12-10 14:22:22.564717 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142564717*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 119395
#251210 14:22:22 server id 1  end_log_pos 119474 CRC32 0x757675d8 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 119474
# at 119535
# at 119779
#251210 14:22:22 server id 1  end_log_pos 119810 CRC32 0x9e1cbf8a 	Xid = 4465
COMMIT/*!*/;
# at 119810
#251210 14:22:22 server id 1  end_log_pos 119887 CRC32 0x120c9680 	Anonymous_GTID	last_committed=167	sequence_number=168	rbr_only=no	original_committed_timestamp=1765344142566229	immediate_commit_timestamp=1765344142566229	transaction_length=211
# original_commit_timestamp=1765344142566229 (2025-12-10 14:22:22.566229 KST)
# immediate_commit_timestamp=1765344142566229 (2025-12-10 14:22:22.566229 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142566229*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 119887
# at 120021
#251210 14:22:22 server id 1  end_log_pos 120098 CRC32 0x5dfb1793 	Anonymous_GTID	last_committed=168	sequence_number=169	rbr_only=no	original_committed_timestamp=1765344142571901	immediate_commit_timestamp=1765344142571901	transaction_length=215
# original_commit_timestamp=1765344142571901 (2025-12-10 14:22:22.571901 KST)
# immediate_commit_timestamp=1765344142571901 (2025-12-10 14:22:22.571901 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142571901*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 120098
# at 120236
#251210 14:22:22 server id 1  end_log_pos 120315 CRC32 0x5ba86a6c 	Anonymous_GTID	last_committed=169	sequence_number=170	rbr_only=no	original_committed_timestamp=1765344142578738	immediate_commit_timestamp=1765344142578738	transaction_length=591
# original_commit_timestamp=1765344142578738 (2025-12-10 14:22:22.578738 KST)
# immediate_commit_timestamp=1765344142578738 (2025-12-10 14:22:22.578738 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142578738*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 120315
# at 120827
#251210 14:22:22 server id 1  end_log_pos 120904 CRC32 0x1844c455 	Anonymous_GTID	last_committed=170	sequence_number=171	rbr_only=no	original_committed_timestamp=1765344142585440	immediate_commit_timestamp=1765344142585440	transaction_length=207
# original_commit_timestamp=1765344142585440 (2025-12-10 14:22:22.585440 KST)
# immediate_commit_timestamp=1765344142585440 (2025-12-10 14:22:22.585440 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142585440*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 120904
# at 121034
#251210 14:22:22 server id 1  end_log_pos 121113 CRC32 0xf10ac4b7 	Anonymous_GTID	last_committed=171	sequence_number=172	rbr_only=yes	original_committed_timestamp=1765344142587252	immediate_commit_timestamp=1765344142587252	transaction_length=431
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142587252 (2025-12-10 14:22:22.587252 KST)
# immediate_commit_timestamp=1765344142587252 (2025-12-10 14:22:22.587252 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142587252*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 121113
#251210 14:22:22 server id 1  end_log_pos 121190 CRC32 0x36fa9182 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 121190
# at 121258
# at 121387
#251210 14:22:22 server id 1  end_log_pos 121465 CRC32 0x865c594f 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
COMMIT
/*!*/;
# at 121465
#251210 14:22:22 server id 1  end_log_pos 121542 CRC32 0xd73922c1 	Anonymous_GTID	last_committed=172	sequence_number=173	rbr_only=no	original_committed_timestamp=1765344142591828	immediate_commit_timestamp=1765344142591828	transaction_length=206
# original_commit_timestamp=1765344142591828 (2025-12-10 14:22:22.591828 KST)
# immediate_commit_timestamp=1765344142591828 (2025-12-10 14:22:22.591828 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142591828*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 121542
# at 121671
#251210 14:22:22 server id 1  end_log_pos 121748 CRC32 0xf97c35f9 	Anonymous_GTID	last_committed=173	sequence_number=174	rbr_only=no	original_committed_timestamp=1765344142599680	immediate_commit_timestamp=1765344142599680	transaction_length=219
# original_commit_timestamp=1765344142599680 (2025-12-10 14:22:22.599680 KST)
# immediate_commit_timestamp=1765344142599680 (2025-12-10 14:22:22.599680 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142599680*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 121748
# at 121890
#251210 14:22:22 server id 1  end_log_pos 121969 CRC32 0x6adde710 	Anonymous_GTID	last_committed=174	sequence_number=175	rbr_only=no	original_committed_timestamp=1765344142616601	immediate_commit_timestamp=1765344142616601	transaction_length=834
# original_commit_timestamp=1765344142616601 (2025-12-10 14:22:22.616601 KST)
# immediate_commit_timestamp=1765344142616601 (2025-12-10 14:22:22.616601 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142616601*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 121969
# at 122724
#251210 14:22:22 server id 1  end_log_pos 122801 CRC32 0xa32f7f5c 	Anonymous_GTID	last_committed=175	sequence_number=176	rbr_only=no	original_committed_timestamp=1765344142622594	immediate_commit_timestamp=1765344142622594	transaction_length=211
# original_commit_timestamp=1765344142622594 (2025-12-10 14:22:22.622594 KST)
# immediate_commit_timestamp=1765344142622594 (2025-12-10 14:22:22.622594 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142622594*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 122801
# at 122935
#251210 14:22:22 server id 1  end_log_pos 123014 CRC32 0x0989a2ae 	Anonymous_GTID	last_committed=176	sequence_number=177	rbr_only=yes	original_committed_timestamp=1765344142626144	immediate_commit_timestamp=1765344142626144	transaction_length=6047
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142626144 (2025-12-10 14:22:22.626144 KST)
# immediate_commit_timestamp=1765344142626144 (2025-12-10 14:22:22.626144 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142626144*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 123014
#251210 14:22:22 server id 1  end_log_pos 123093 CRC32 0x19a9c109 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 123093
# at 123158
# at 128951
#251210 14:22:22 server id 1  end_log_pos 128982 CRC32 0xaeac16b4 	Xid = 4497
COMMIT/*!*/;
# at 128982
#251210 14:22:22 server id 1  end_log_pos 129059 CRC32 0xb2586487 	Anonymous_GTID	last_committed=177	sequence_number=178	rbr_only=no	original_committed_timestamp=1765344142627331	immediate_commit_timestamp=1765344142627331	transaction_length=210
# original_commit_timestamp=1765344142627331 (2025-12-10 14:22:22.627331 KST)
# immediate_commit_timestamp=1765344142627331 (2025-12-10 14:22:22.627331 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142627331*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 129059
# at 129192
#251210 14:22:22 server id 1  end_log_pos 129271 CRC32 0x0fce9a6e 	Anonymous_GTID	last_committed=178	sequence_number=179	rbr_only=no	original_committed_timestamp=1765344142633293	immediate_commit_timestamp=1765344142633293	transaction_length=323
# original_commit_timestamp=1765344142633293 (2025-12-10 14:22:22.633293 KST)
# immediate_commit_timestamp=1765344142633293 (2025-12-10 14:22:22.633293 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142633293*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 129271
# at 129515
#251210 14:22:22 server id 1  end_log_pos 129594 CRC32 0x8aa3e906 	Anonymous_GTID	last_committed=179	sequence_number=180	rbr_only=no	original_committed_timestamp=1765344142648088	immediate_commit_timestamp=1765344142648088	transaction_length=428
# original_commit_timestamp=1765344142648088 (2025-12-10 14:22:22.648088 KST)
# immediate_commit_timestamp=1765344142648088 (2025-12-10 14:22:22.648088 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142648088*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 129594
# at 129943
#251210 14:22:22 server id 1  end_log_pos 130022 CRC32 0xfddff4d3 	Anonymous_GTID	last_committed=180	sequence_number=181	rbr_only=no	original_committed_timestamp=1765344142656638	immediate_commit_timestamp=1765344142656638	transaction_length=323
# original_commit_timestamp=1765344142656638 (2025-12-10 14:22:22.656638 KST)
# immediate_commit_timestamp=1765344142656638 (2025-12-10 14:22:22.656638 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142656638*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 130022
# at 130266
#251210 14:22:22 server id 1  end_log_pos 130343 CRC32 0x0bd4a155 	Anonymous_GTID	last_committed=181	sequence_number=182	rbr_only=no	original_committed_timestamp=1765344142667020	immediate_commit_timestamp=1765344142667020	transaction_length=222
# original_commit_timestamp=1765344142667020 (2025-12-10 14:22:22.667020 KST)
# immediate_commit_timestamp=1765344142667020 (2025-12-10 14:22:22.667020 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142667020*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 130343
# at 130488
#251210 14:22:22 server id 1  end_log_pos 130567 CRC32 0x9f100a43 	Anonymous_GTID	last_committed=182	sequence_number=183	rbr_only=no	original_committed_timestamp=1765344142730698	immediate_commit_timestamp=1765344142730698	transaction_length=936
# original_commit_timestamp=1765344142730698 (2025-12-10 14:22:22.730698 KST)
# immediate_commit_timestamp=1765344142730698 (2025-12-10 14:22:22.730698 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142730698*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 130567
# at 131424
#251210 14:22:22 server id 1  end_log_pos 131501 CRC32 0x3cc0ded0 	Anonymous_GTID	last_committed=183	sequence_number=184	rbr_only=no	original_committed_timestamp=1765344142736004	immediate_commit_timestamp=1765344142736004	transaction_length=214
# original_commit_timestamp=1765344142736004 (2025-12-10 14:22:22.736004 KST)
# immediate_commit_timestamp=1765344142736004 (2025-12-10 14:22:22.736004 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142736004*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 131501
# at 131638
#251210 14:22:22 server id 1  end_log_pos 131717 CRC32 0x3ced5e19 	Anonymous_GTID	last_committed=184	sequence_number=185	rbr_only=yes	original_committed_timestamp=1765344142737769	immediate_commit_timestamp=1765344142737769	transaction_length=955
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142737769 (2025-12-10 14:22:22.737769 KST)
# immediate_commit_timestamp=1765344142737769 (2025-12-10 14:22:22.737769 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142737769*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 131717
#251210 14:22:22 server id 1  end_log_pos 131802 CRC32 0xff61672b 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 131802
# at 131869
# at 132562
#251210 14:22:22 server id 1  end_log_pos 132593 CRC32 0x41301269 	Xid = 4552
COMMIT/*!*/;
# at 132593
#251210 14:22:22 server id 1  end_log_pos 132670 CRC32 0x85bb172c 	Anonymous_GTID	last_committed=185	sequence_number=186	rbr_only=no	original_committed_timestamp=1765344142739040	immediate_commit_timestamp=1765344142739040	transaction_length=213
# original_commit_timestamp=1765344142739040 (2025-12-10 14:22:22.739040 KST)
# immediate_commit_timestamp=1765344142739040 (2025-12-10 14:22:22.739040 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142739040*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 132670
# at 132806
#251210 14:22:22 server id 1  end_log_pos 132883 CRC32 0x22b86bcd 	Anonymous_GTID	last_committed=186	sequence_number=187	rbr_only=no	original_committed_timestamp=1765344142743304	immediate_commit_timestamp=1765344142743304	transaction_length=224
# original_commit_timestamp=1765344142743304 (2025-12-10 14:22:22.743304 KST)
# immediate_commit_timestamp=1765344142743304 (2025-12-10 14:22:22.743304 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142743304*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 132883
# at 133030
#251210 14:22:22 server id 1  end_log_pos 133109 CRC32 0xd9c9a8f3 	Anonymous_GTID	last_committed=187	sequence_number=188	rbr_only=no	original_committed_timestamp=1765344142752365	immediate_commit_timestamp=1765344142752365	transaction_length=321
# original_commit_timestamp=1765344142752365 (2025-12-10 14:22:22.752365 KST)
# immediate_commit_timestamp=1765344142752365 (2025-12-10 14:22:22.752365 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142752365*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 133109
# at 133351
#251210 14:22:22 server id 1  end_log_pos 133428 CRC32 0xfbf61c0f 	Anonymous_GTID	last_committed=188	sequence_number=189	rbr_only=no	original_committed_timestamp=1765344142755776	immediate_commit_timestamp=1765344142755776	transaction_length=216
# original_commit_timestamp=1765344142755776 (2025-12-10 14:22:22.755776 KST)
# immediate_commit_timestamp=1765344142755776 (2025-12-10 14:22:22.755776 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142755776*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 133428
# at 133567
#251210 14:22:22 server id 1  end_log_pos 133646 CRC32 0x13350366 	Anonymous_GTID	last_committed=189	sequence_number=190	rbr_only=yes	original_committed_timestamp=1765344142760699	immediate_commit_timestamp=1765344142760699	transaction_length=6100
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142760699 (2025-12-10 14:22:22.760699 KST)
# immediate_commit_timestamp=1765344142760699 (2025-12-10 14:22:22.760699 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142760699*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 133646
#251210 14:22:22 server id 1  end_log_pos 133723 CRC32 0xab2e698d 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 133723
# at 133781
# at 139636
#251210 14:22:22 server id 1  end_log_pos 139667 CRC32 0x23ff49a5 	Xid = 4568
COMMIT/*!*/;
# at 139667
#251210 14:22:22 server id 1  end_log_pos 139744 CRC32 0xcd34b074 	Anonymous_GTID	last_committed=190	sequence_number=191	rbr_only=no	original_committed_timestamp=1765344142764246	immediate_commit_timestamp=1765344142764246	transaction_length=215
# original_commit_timestamp=1765344142764246 (2025-12-10 14:22:22.764246 KST)
# immediate_commit_timestamp=1765344142764246 (2025-12-10 14:22:22.764246 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142764246*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 139744
# at 139882
#251210 14:22:22 server id 1  end_log_pos 139959 CRC32 0xcc55f380 	Anonymous_GTID	last_committed=191	sequence_number=192	rbr_only=no	original_committed_timestamp=1765344142768341	immediate_commit_timestamp=1765344142768341	transaction_length=217
# original_commit_timestamp=1765344142768341 (2025-12-10 14:22:22.768341 KST)
# immediate_commit_timestamp=1765344142768341 (2025-12-10 14:22:22.768341 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142768341*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 139959
# at 140099
#251210 14:22:22 server id 1  end_log_pos 140178 CRC32 0x8a80233a 	Anonymous_GTID	last_committed=192	sequence_number=193	rbr_only=no	original_committed_timestamp=1765344142781979	immediate_commit_timestamp=1765344142781979	transaction_length=494
# original_commit_timestamp=1765344142781979 (2025-12-10 14:22:22.781979 KST)
# immediate_commit_timestamp=1765344142781979 (2025-12-10 14:22:22.781979 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142781979*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 140178
# at 140593
#251210 14:22:22 server id 1  end_log_pos 140670 CRC32 0x8b5d48fa 	Anonymous_GTID	last_committed=193	sequence_number=194	rbr_only=no	original_committed_timestamp=1765344142788582	immediate_commit_timestamp=1765344142788582	transaction_length=209
# original_commit_timestamp=1765344142788582 (2025-12-10 14:22:22.788582 KST)
# immediate_commit_timestamp=1765344142788582 (2025-12-10 14:22:22.788582 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142788582*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 140670
# at 140802
#251210 14:22:22 server id 1  end_log_pos 140881 CRC32 0xcd16741c 	Anonymous_GTID	last_committed=194	sequence_number=195	rbr_only=yes	original_committed_timestamp=1765344142791775	immediate_commit_timestamp=1765344142791775	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142791775 (2025-12-10 14:22:22.791775 KST)
# immediate_commit_timestamp=1765344142791775 (2025-12-10 14:22:22.791775 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142791775*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 140881
#251210 14:22:22 server id 1  end_log_pos 140958 CRC32 0x8fe9a2ad 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 140958
# at 141016
# at 141096
#251210 14:22:22 server id 1  end_log_pos 141127 CRC32 0xbb036e61 	Xid = 4584
COMMIT/*!*/;
# at 141127
#251210 14:22:22 server id 1  end_log_pos 141204 CRC32 0xd5766a16 	Anonymous_GTID	last_committed=195	sequence_number=196	rbr_only=no	original_committed_timestamp=1765344142802438	immediate_commit_timestamp=1765344142802438	transaction_length=208
# original_commit_timestamp=1765344142802438 (2025-12-10 14:22:22.802438 KST)
# immediate_commit_timestamp=1765344142802438 (2025-12-10 14:22:22.802438 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142802438*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 141204
# at 141335
#251210 14:22:22 server id 1  end_log_pos 141412 CRC32 0x82d2ace7 	Anonymous_GTID	last_committed=196	sequence_number=197	rbr_only=no	original_committed_timestamp=1765344142842413	immediate_commit_timestamp=1765344142842413	transaction_length=223
# original_commit_timestamp=1765344142842413 (2025-12-10 14:22:22.842413 KST)
# immediate_commit_timestamp=1765344142842413 (2025-12-10 14:22:22.842413 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142842413*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 141412
# at 141558
#251210 14:22:22 server id 1  end_log_pos 141637 CRC32 0x2de49245 	Anonymous_GTID	last_committed=197	sequence_number=198	rbr_only=no	original_committed_timestamp=1765344142898063	immediate_commit_timestamp=1765344142898063	transaction_length=968
# original_commit_timestamp=1765344142898063 (2025-12-10 14:22:22.898063 KST)
# immediate_commit_timestamp=1765344142898063 (2025-12-10 14:22:22.898063 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142898063*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 141637
# at 142526
#251210 14:22:22 server id 1  end_log_pos 142603 CRC32 0xb8e84a8a 	Anonymous_GTID	last_committed=198	sequence_number=199	rbr_only=no	original_committed_timestamp=1765344142906171	immediate_commit_timestamp=1765344142906171	transaction_length=215
# original_commit_timestamp=1765344142906171 (2025-12-10 14:22:22.906171 KST)
# immediate_commit_timestamp=1765344142906171 (2025-12-10 14:22:22.906171 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142906171*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 142603
# at 142741
#251210 14:22:22 server id 1  end_log_pos 142820 CRC32 0x02be74dc 	Anonymous_GTID	last_committed=199	sequence_number=200	rbr_only=yes	original_committed_timestamp=1765344142909970	immediate_commit_timestamp=1765344142909970	transaction_length=4049
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344142909970 (2025-12-10 14:22:22.909970 KST)
# immediate_commit_timestamp=1765344142909970 (2025-12-10 14:22:22.909970 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142909970*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 142820
#251210 14:22:22 server id 1  end_log_pos 142897 CRC32 0x65b2685a 	Query	thread_id=35	exec_time=0	error_code=0
SET TIMESTAMP=1765344142/*!*/;
BEGIN
/*!*/;
# at 142897
# at 142966
# at 145549
# at 145608
# at 146759
#251210 14:22:22 server id 1  end_log_pos 146790 CRC32 0x198b0618 	Xid = 4600
COMMIT/*!*/;
# at 146790
#251210 14:22:22 server id 1  end_log_pos 146867 CRC32 0xb50ce698 	Anonymous_GTID	last_committed=200	sequence_number=201	rbr_only=no	original_committed_timestamp=1765344142911421	immediate_commit_timestamp=1765344142911421	transaction_length=214
# original_commit_timestamp=1765344142911421 (2025-12-10 14:22:22.911421 KST)
# immediate_commit_timestamp=1765344142911421 (2025-12-10 14:22:22.911421 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142911421*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 146867
# at 147004
#251210 14:22:22 server id 1  end_log_pos 147081 CRC32 0x85a73204 	Anonymous_GTID	last_committed=201	sequence_number=202	rbr_only=no	original_committed_timestamp=1765344142914791	immediate_commit_timestamp=1765344142914791	transaction_length=213
# original_commit_timestamp=1765344142914791 (2025-12-10 14:22:22.914791 KST)
# immediate_commit_timestamp=1765344142914791 (2025-12-10 14:22:22.914791 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142914791*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 147081
# at 147217
#251210 14:22:22 server id 1  end_log_pos 147294 CRC32 0x8966450d 	Anonymous_GTID	last_committed=202	sequence_number=203	rbr_only=no	original_committed_timestamp=1765344142917033	immediate_commit_timestamp=1765344142917033	transaction_length=206
# original_commit_timestamp=1765344142917033 (2025-12-10 14:22:22.917033 KST)
# immediate_commit_timestamp=1765344142917033 (2025-12-10 14:22:22.917033 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142917033*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 147294
# at 147423
#251210 14:22:22 server id 1  end_log_pos 147502 CRC32 0x64d644c2 	Anonymous_GTID	last_committed=203	sequence_number=204	rbr_only=no	original_committed_timestamp=1765344142923056	immediate_commit_timestamp=1765344142923056	transaction_length=339
# original_commit_timestamp=1765344142923056 (2025-12-10 14:22:22.923056 KST)
# immediate_commit_timestamp=1765344142923056 (2025-12-10 14:22:22.923056 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142923056*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 147502
# at 147762
#251210 14:22:22 server id 1  end_log_pos 147839 CRC32 0xde5c1a92 	Anonymous_GTID	last_committed=204	sequence_number=205	rbr_only=no	original_committed_timestamp=1765344142930913	immediate_commit_timestamp=1765344142930913	transaction_length=214
# original_commit_timestamp=1765344142930913 (2025-12-10 14:22:22.930913 KST)
# immediate_commit_timestamp=1765344142930913 (2025-12-10 14:22:22.930913 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142930913*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 147839
# at 147976
#251210 14:22:22 server id 1  end_log_pos 148055 CRC32 0xf04b70f1 	Anonymous_GTID	last_committed=205	sequence_number=206	rbr_only=no	original_committed_timestamp=1765344142937331	immediate_commit_timestamp=1765344142937331	transaction_length=538
# original_commit_timestamp=1765344142937331 (2025-12-10 14:22:22.937331 KST)
# immediate_commit_timestamp=1765344142937331 (2025-12-10 14:22:22.937331 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142937331*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 148055
# at 148514
#251210 14:22:22 server id 1  end_log_pos 148591 CRC32 0x33294e88 	Anonymous_GTID	last_committed=206	sequence_number=207	rbr_only=no	original_committed_timestamp=1765344142941791	immediate_commit_timestamp=1765344142941791	transaction_length=224
# original_commit_timestamp=1765344142941791 (2025-12-10 14:22:22.941791 KST)
# immediate_commit_timestamp=1765344142941791 (2025-12-10 14:22:22.941791 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142941791*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 148591
# at 148738
#251210 14:22:22 server id 1  end_log_pos 148817 CRC32 0x42fd7e56 	Anonymous_GTID	last_committed=207	sequence_number=208	rbr_only=no	original_committed_timestamp=1765344142948989	immediate_commit_timestamp=1765344142948989	transaction_length=1811
# original_commit_timestamp=1765344142948989 (2025-12-10 14:22:22.948989 KST)
# immediate_commit_timestamp=1765344142948989 (2025-12-10 14:22:22.948989 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142948989*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 148817
# at 150549
#251210 14:22:22 server id 1  end_log_pos 150626 CRC32 0xe1bff13b 	Anonymous_GTID	last_committed=208	sequence_number=209	rbr_only=no	original_committed_timestamp=1765344142955944	immediate_commit_timestamp=1765344142955944	transaction_length=223
# original_commit_timestamp=1765344142955944 (2025-12-10 14:22:22.955944 KST)
# immediate_commit_timestamp=1765344142955944 (2025-12-10 14:22:22.955944 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142955944*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 150626
# at 150772
#251210 14:22:22 server id 1  end_log_pos 150851 CRC32 0xb69a09e7 	Anonymous_GTID	last_committed=209	sequence_number=210	rbr_only=no	original_committed_timestamp=1765344142961625	immediate_commit_timestamp=1765344142961625	transaction_length=565
# original_commit_timestamp=1765344142961625 (2025-12-10 14:22:22.961625 KST)
# immediate_commit_timestamp=1765344142961625 (2025-12-10 14:22:22.961625 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142961625*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 150851
# at 151337
#251210 14:22:22 server id 1  end_log_pos 151414 CRC32 0x68d64780 	Anonymous_GTID	last_committed=210	sequence_number=211	rbr_only=no	original_committed_timestamp=1765344142967459	immediate_commit_timestamp=1765344142967459	transaction_length=206
# original_commit_timestamp=1765344142967459 (2025-12-10 14:22:22.967459 KST)
# immediate_commit_timestamp=1765344142967459 (2025-12-10 14:22:22.967459 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142967459*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 151414
# at 151543
#251210 14:22:22 server id 1  end_log_pos 151622 CRC32 0x14049676 	Anonymous_GTID	last_committed=211	sequence_number=212	rbr_only=no	original_committed_timestamp=1765344142973882	immediate_commit_timestamp=1765344142973882	transaction_length=437
# original_commit_timestamp=1765344142973882 (2025-12-10 14:22:22.973882 KST)
# immediate_commit_timestamp=1765344142973882 (2025-12-10 14:22:22.973882 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344142973882*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 151622
# at 151980
#251210 14:27:18 server id 1  end_log_pos 152057 CRC32 0x213a7895 	Anonymous_GTID	last_committed=212	sequence_number=213	rbr_only=no	original_committed_timestamp=1765344438045669	immediate_commit_timestamp=1765344438045669	transaction_length=215
# original_commit_timestamp=1765344438045669 (2025-12-10 14:27:18.045669 KST)
# immediate_commit_timestamp=1765344438045669 (2025-12-10 14:27:18.045669 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344438045669*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 152057
# at 152195
#251210 14:27:18 server id 1  end_log_pos 152272 CRC32 0x91dfdf91 	Anonymous_GTID	last_committed=213	sequence_number=214	rbr_only=no	original_committed_timestamp=1765344438066914	immediate_commit_timestamp=1765344438066914	transaction_length=187
# original_commit_timestamp=1765344438066914 (2025-12-10 14:27:18.066914 KST)
# immediate_commit_timestamp=1765344438066914 (2025-12-10 14:27:18.066914 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344438066914*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 152272
# at 152382
#251210 14:27:40 server id 1  end_log_pos 152459 CRC32 0x0351047b 	Anonymous_GTID	last_committed=214	sequence_number=215	rbr_only=no	original_committed_timestamp=1765344460184386	immediate_commit_timestamp=1765344460184386	transaction_length=191
# original_commit_timestamp=1765344460184386 (2025-12-10 14:27:40.184386 KST)
# immediate_commit_timestamp=1765344460184386 (2025-12-10 14:27:40.184386 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344460184386*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 152459
# at 152573
#251210 14:27:46 server id 1  end_log_pos 152650 CRC32 0x3c8352c5 	Anonymous_GTID	last_committed=215	sequence_number=216	rbr_only=no	original_committed_timestamp=1765344466164915	immediate_commit_timestamp=1765344466164915	transaction_length=211
# original_commit_timestamp=1765344466164915 (2025-12-10 14:27:46.164915 KST)
# immediate_commit_timestamp=1765344466164915 (2025-12-10 14:27:46.164915 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344466164915*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 152650
# at 152784
#251210 14:27:46 server id 1  end_log_pos 152863 CRC32 0x0d7d2b7c 	Anonymous_GTID	last_committed=216	sequence_number=217	rbr_only=no	original_committed_timestamp=1765344466175565	immediate_commit_timestamp=1765344466175565	transaction_length=755
# original_commit_timestamp=1765344466175565 (2025-12-10 14:27:46.175565 KST)
# immediate_commit_timestamp=1765344466175565 (2025-12-10 14:27:46.175565 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344466175565*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 152863
# at 153539
#251210 14:28:33 server id 1  end_log_pos 153616 CRC32 0xc28bcb14 	Anonymous_GTID	last_committed=217	sequence_number=218	rbr_only=no	original_committed_timestamp=1765344513764693	immediate_commit_timestamp=1765344513764693	transaction_length=220
# original_commit_timestamp=1765344513764693 (2025-12-10 14:28:33.764693 KST)
# immediate_commit_timestamp=1765344513764693 (2025-12-10 14:28:33.764693 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513764693*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 153616
# at 153759
#251210 14:28:33 server id 1  end_log_pos 153838 CRC32 0x80092706 	Anonymous_GTID	last_committed=218	sequence_number=219	rbr_only=no	original_committed_timestamp=1765344513776528	immediate_commit_timestamp=1765344513776528	transaction_length=755
# original_commit_timestamp=1765344513776528 (2025-12-10 14:28:33.776528 KST)
# immediate_commit_timestamp=1765344513776528 (2025-12-10 14:28:33.776528 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513776528*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 153838
# at 154514
#251210 14:28:33 server id 1  end_log_pos 154591 CRC32 0x526c57ae 	Anonymous_GTID	last_committed=219	sequence_number=220	rbr_only=no	original_committed_timestamp=1765344513780111	immediate_commit_timestamp=1765344513780111	transaction_length=212
# original_commit_timestamp=1765344513780111 (2025-12-10 14:28:33.780111 KST)
# immediate_commit_timestamp=1765344513780111 (2025-12-10 14:28:33.780111 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513780111*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 154591
# at 154726
#251210 14:28:33 server id 1  end_log_pos 154805 CRC32 0xd0b54ae6 	Anonymous_GTID	last_committed=220	sequence_number=221	rbr_only=yes	original_committed_timestamp=1765344513781547	immediate_commit_timestamp=1765344513781547	transaction_length=492
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513781547 (2025-12-10 14:28:33.781547 KST)
# immediate_commit_timestamp=1765344513781547 (2025-12-10 14:28:33.781547 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513781547*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 154805
#251210 14:28:33 server id 1  end_log_pos 154882 CRC32 0xe3f266bc 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 154882
# at 154943
# at 155187
#251210 14:28:33 server id 1  end_log_pos 155218 CRC32 0x90d393fc 	Xid = 4771
COMMIT/*!*/;
# at 155218
#251210 14:28:33 server id 1  end_log_pos 155295 CRC32 0x80464cbb 	Anonymous_GTID	last_committed=221	sequence_number=222	rbr_only=no	original_committed_timestamp=1765344513782666	immediate_commit_timestamp=1765344513782666	transaction_length=211
# original_commit_timestamp=1765344513782666 (2025-12-10 14:28:33.782666 KST)
# immediate_commit_timestamp=1765344513782666 (2025-12-10 14:28:33.782666 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513782666*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 155295
# at 155429
#251210 14:28:33 server id 1  end_log_pos 155506 CRC32 0x4826bd0e 	Anonymous_GTID	last_committed=222	sequence_number=223	rbr_only=no	original_committed_timestamp=1765344513786215	immediate_commit_timestamp=1765344513786215	transaction_length=215
# original_commit_timestamp=1765344513786215 (2025-12-10 14:28:33.786215 KST)
# immediate_commit_timestamp=1765344513786215 (2025-12-10 14:28:33.786215 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513786215*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 155506
# at 155644
#251210 14:28:33 server id 1  end_log_pos 155723 CRC32 0xebad16ab 	Anonymous_GTID	last_committed=223	sequence_number=224	rbr_only=no	original_committed_timestamp=1765344513793602	immediate_commit_timestamp=1765344513793602	transaction_length=591
# original_commit_timestamp=1765344513793602 (2025-12-10 14:28:33.793602 KST)
# immediate_commit_timestamp=1765344513793602 (2025-12-10 14:28:33.793602 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513793602*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 155723
# at 156235
#251210 14:28:33 server id 1  end_log_pos 156312 CRC32 0x712beac3 	Anonymous_GTID	last_committed=224	sequence_number=225	rbr_only=no	original_committed_timestamp=1765344513799343	immediate_commit_timestamp=1765344513799343	transaction_length=207
# original_commit_timestamp=1765344513799343 (2025-12-10 14:28:33.799343 KST)
# immediate_commit_timestamp=1765344513799343 (2025-12-10 14:28:33.799343 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513799343*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 156312
# at 156442
#251210 14:28:33 server id 1  end_log_pos 156521 CRC32 0x0af1322a 	Anonymous_GTID	last_committed=225	sequence_number=226	rbr_only=yes	original_committed_timestamp=1765344513800968	immediate_commit_timestamp=1765344513800968	transaction_length=431
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513800968 (2025-12-10 14:28:33.800968 KST)
# immediate_commit_timestamp=1765344513800968 (2025-12-10 14:28:33.800968 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513800968*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 156521
#251210 14:28:33 server id 1  end_log_pos 156598 CRC32 0xbce05805 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 156598
# at 156666
# at 156795
#251210 14:28:33 server id 1  end_log_pos 156873 CRC32 0x7826d101 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
COMMIT
/*!*/;
# at 156873
#251210 14:28:33 server id 1  end_log_pos 156950 CRC32 0x93750589 	Anonymous_GTID	last_committed=226	sequence_number=227	rbr_only=no	original_committed_timestamp=1765344513804497	immediate_commit_timestamp=1765344513804497	transaction_length=206
# original_commit_timestamp=1765344513804497 (2025-12-10 14:28:33.804497 KST)
# immediate_commit_timestamp=1765344513804497 (2025-12-10 14:28:33.804497 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513804497*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 156950
# at 157079
#251210 14:28:33 server id 1  end_log_pos 157156 CRC32 0x71fc316a 	Anonymous_GTID	last_committed=227	sequence_number=228	rbr_only=no	original_committed_timestamp=1765344513807841	immediate_commit_timestamp=1765344513807841	transaction_length=210
# original_commit_timestamp=1765344513807841 (2025-12-10 14:28:33.807841 KST)
# immediate_commit_timestamp=1765344513807841 (2025-12-10 14:28:33.807841 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513807841*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 157156
# at 157289
#251210 14:28:33 server id 1  end_log_pos 157368 CRC32 0xc66c6726 	Anonymous_GTID	last_committed=228	sequence_number=229	rbr_only=no	original_committed_timestamp=1765344513819877	immediate_commit_timestamp=1765344513819877	transaction_length=834
# original_commit_timestamp=1765344513819877 (2025-12-10 14:28:33.819877 KST)
# immediate_commit_timestamp=1765344513819877 (2025-12-10 14:28:33.819877 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513819877*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 157368
# at 158123
#251210 14:28:33 server id 1  end_log_pos 158200 CRC32 0x858664c7 	Anonymous_GTID	last_committed=229	sequence_number=230	rbr_only=no	original_committed_timestamp=1765344513824707	immediate_commit_timestamp=1765344513824707	transaction_length=211
# original_commit_timestamp=1765344513824707 (2025-12-10 14:28:33.824707 KST)
# immediate_commit_timestamp=1765344513824707 (2025-12-10 14:28:33.824707 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513824707*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 158200
# at 158334
#251210 14:28:33 server id 1  end_log_pos 158413 CRC32 0x40e416f1 	Anonymous_GTID	last_committed=230	sequence_number=231	rbr_only=yes	original_committed_timestamp=1765344513829386	immediate_commit_timestamp=1765344513829386	transaction_length=6047
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513829386 (2025-12-10 14:28:33.829386 KST)
# immediate_commit_timestamp=1765344513829386 (2025-12-10 14:28:33.829386 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513829386*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 158413
#251210 14:28:33 server id 1  end_log_pos 158492 CRC32 0x46acfd11 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 158492
# at 158557
# at 164350
#251210 14:28:33 server id 1  end_log_pos 164381 CRC32 0x644fdbdd 	Xid = 4803
COMMIT/*!*/;
# at 164381
#251210 14:28:33 server id 1  end_log_pos 164458 CRC32 0x24d1eb50 	Anonymous_GTID	last_committed=231	sequence_number=232	rbr_only=no	original_committed_timestamp=1765344513830793	immediate_commit_timestamp=1765344513830793	transaction_length=210
# original_commit_timestamp=1765344513830793 (2025-12-10 14:28:33.830793 KST)
# immediate_commit_timestamp=1765344513830793 (2025-12-10 14:28:33.830793 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513830793*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 164458
# at 164591
#251210 14:28:33 server id 1  end_log_pos 164670 CRC32 0x27601d58 	Anonymous_GTID	last_committed=232	sequence_number=233	rbr_only=no	original_committed_timestamp=1765344513836189	immediate_commit_timestamp=1765344513836189	transaction_length=323
# original_commit_timestamp=1765344513836189 (2025-12-10 14:28:33.836189 KST)
# immediate_commit_timestamp=1765344513836189 (2025-12-10 14:28:33.836189 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513836189*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 164670
# at 164914
#251210 14:28:33 server id 1  end_log_pos 164993 CRC32 0x667d37f3 	Anonymous_GTID	last_committed=233	sequence_number=234	rbr_only=no	original_committed_timestamp=1765344513844786	immediate_commit_timestamp=1765344513844786	transaction_length=428
# original_commit_timestamp=1765344513844786 (2025-12-10 14:28:33.844786 KST)
# immediate_commit_timestamp=1765344513844786 (2025-12-10 14:28:33.844786 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513844786*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 164993
# at 165342
#251210 14:28:33 server id 1  end_log_pos 165421 CRC32 0xdb04f677 	Anonymous_GTID	last_committed=234	sequence_number=235	rbr_only=no	original_committed_timestamp=1765344513852066	immediate_commit_timestamp=1765344513852066	transaction_length=323
# original_commit_timestamp=1765344513852066 (2025-12-10 14:28:33.852066 KST)
# immediate_commit_timestamp=1765344513852066 (2025-12-10 14:28:33.852066 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513852066*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 165421
# at 165665
#251210 14:28:33 server id 1  end_log_pos 165742 CRC32 0x3b97bec2 	Anonymous_GTID	last_committed=235	sequence_number=236	rbr_only=no	original_committed_timestamp=1765344513855914	immediate_commit_timestamp=1765344513855914	transaction_length=213
# original_commit_timestamp=1765344513855914 (2025-12-10 14:28:33.855914 KST)
# immediate_commit_timestamp=1765344513855914 (2025-12-10 14:28:33.855914 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513855914*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 165742
# at 165878
#251210 14:28:33 server id 1  end_log_pos 165957 CRC32 0x24a323a3 	Anonymous_GTID	last_committed=236	sequence_number=237	rbr_only=no	original_committed_timestamp=1765344513905962	immediate_commit_timestamp=1765344513905962	transaction_length=936
# original_commit_timestamp=1765344513905962 (2025-12-10 14:28:33.905962 KST)
# immediate_commit_timestamp=1765344513905962 (2025-12-10 14:28:33.905962 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513905962*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 165957
# at 166814
#251210 14:28:33 server id 1  end_log_pos 166891 CRC32 0xfcaa0e93 	Anonymous_GTID	last_committed=237	sequence_number=238	rbr_only=no	original_committed_timestamp=1765344513910603	immediate_commit_timestamp=1765344513910603	transaction_length=214
# original_commit_timestamp=1765344513910603 (2025-12-10 14:28:33.910603 KST)
# immediate_commit_timestamp=1765344513910603 (2025-12-10 14:28:33.910603 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513910603*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 166891
# at 167028
#251210 14:28:33 server id 1  end_log_pos 167107 CRC32 0xccd2b88f 	Anonymous_GTID	last_committed=238	sequence_number=239	rbr_only=yes	original_committed_timestamp=1765344513912391	immediate_commit_timestamp=1765344513912391	transaction_length=955
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513912391 (2025-12-10 14:28:33.912391 KST)
# immediate_commit_timestamp=1765344513912391 (2025-12-10 14:28:33.912391 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513912391*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 167107
#251210 14:28:33 server id 1  end_log_pos 167192 CRC32 0x96ed2293 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 167192
# at 167259
# at 167952
#251210 14:28:33 server id 1  end_log_pos 167983 CRC32 0x602e0003 	Xid = 4858
COMMIT/*!*/;
# at 167983
#251210 14:28:33 server id 1  end_log_pos 168060 CRC32 0x8cb4b568 	Anonymous_GTID	last_committed=239	sequence_number=240	rbr_only=no	original_committed_timestamp=1765344513913264	immediate_commit_timestamp=1765344513913264	transaction_length=213
# original_commit_timestamp=1765344513913264 (2025-12-10 14:28:33.913264 KST)
# immediate_commit_timestamp=1765344513913264 (2025-12-10 14:28:33.913264 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513913264*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 168060
# at 168196
#251210 14:28:33 server id 1  end_log_pos 168273 CRC32 0x668fd672 	Anonymous_GTID	last_committed=240	sequence_number=241	rbr_only=no	original_committed_timestamp=1765344513915353	immediate_commit_timestamp=1765344513915353	transaction_length=215
# original_commit_timestamp=1765344513915353 (2025-12-10 14:28:33.915353 KST)
# immediate_commit_timestamp=1765344513915353 (2025-12-10 14:28:33.915353 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513915353*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 168273
# at 168411
#251210 14:28:33 server id 1  end_log_pos 168490 CRC32 0xd7769755 	Anonymous_GTID	last_committed=241	sequence_number=242	rbr_only=no	original_committed_timestamp=1765344513922895	immediate_commit_timestamp=1765344513922895	transaction_length=321
# original_commit_timestamp=1765344513922895 (2025-12-10 14:28:33.922895 KST)
# immediate_commit_timestamp=1765344513922895 (2025-12-10 14:28:33.922895 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513922895*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 168490
# at 168732
#251210 14:28:33 server id 1  end_log_pos 168809 CRC32 0x0fdaa167 	Anonymous_GTID	last_committed=242	sequence_number=243	rbr_only=no	original_committed_timestamp=1765344513926784	immediate_commit_timestamp=1765344513926784	transaction_length=216
# original_commit_timestamp=1765344513926784 (2025-12-10 14:28:33.926784 KST)
# immediate_commit_timestamp=1765344513926784 (2025-12-10 14:28:33.926784 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513926784*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 168809
# at 168948
#251210 14:28:33 server id 1  end_log_pos 169027 CRC32 0x6b37fe02 	Anonymous_GTID	last_committed=243	sequence_number=244	rbr_only=yes	original_committed_timestamp=1765344513934369	immediate_commit_timestamp=1765344513934369	transaction_length=6100
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513934369 (2025-12-10 14:28:33.934369 KST)
# immediate_commit_timestamp=1765344513934369 (2025-12-10 14:28:33.934369 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513934369*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 169027
#251210 14:28:33 server id 1  end_log_pos 169104 CRC32 0xbbd90f46 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 169104
# at 169162
# at 175017
#251210 14:28:33 server id 1  end_log_pos 175048 CRC32 0xb3e1877a 	Xid = 4874
COMMIT/*!*/;
# at 175048
#251210 14:28:33 server id 1  end_log_pos 175125 CRC32 0x185f63cf 	Anonymous_GTID	last_committed=244	sequence_number=245	rbr_only=no	original_committed_timestamp=1765344513940129	immediate_commit_timestamp=1765344513940129	transaction_length=215
# original_commit_timestamp=1765344513940129 (2025-12-10 14:28:33.940129 KST)
# immediate_commit_timestamp=1765344513940129 (2025-12-10 14:28:33.940129 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513940129*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 175125
# at 175263
#251210 14:28:33 server id 1  end_log_pos 175340 CRC32 0xa19818bf 	Anonymous_GTID	last_committed=245	sequence_number=246	rbr_only=no	original_committed_timestamp=1765344513943427	immediate_commit_timestamp=1765344513943427	transaction_length=208
# original_commit_timestamp=1765344513943427 (2025-12-10 14:28:33.943427 KST)
# immediate_commit_timestamp=1765344513943427 (2025-12-10 14:28:33.943427 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513943427*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 175340
# at 175471
#251210 14:28:33 server id 1  end_log_pos 175550 CRC32 0x10a5ed4f 	Anonymous_GTID	last_committed=246	sequence_number=247	rbr_only=no	original_committed_timestamp=1765344513950280	immediate_commit_timestamp=1765344513950280	transaction_length=494
# original_commit_timestamp=1765344513950280 (2025-12-10 14:28:33.950280 KST)
# immediate_commit_timestamp=1765344513950280 (2025-12-10 14:28:33.950280 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513950280*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 175550
# at 175965
#251210 14:28:33 server id 1  end_log_pos 176042 CRC32 0xc5b89b4c 	Anonymous_GTID	last_committed=247	sequence_number=248	rbr_only=no	original_committed_timestamp=1765344513954371	immediate_commit_timestamp=1765344513954371	transaction_length=209
# original_commit_timestamp=1765344513954371 (2025-12-10 14:28:33.954371 KST)
# immediate_commit_timestamp=1765344513954371 (2025-12-10 14:28:33.954371 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513954371*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 176042
# at 176174
#251210 14:28:33 server id 1  end_log_pos 176253 CRC32 0x8f7fc922 	Anonymous_GTID	last_committed=248	sequence_number=249	rbr_only=yes	original_committed_timestamp=1765344513956217	immediate_commit_timestamp=1765344513956217	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513956217 (2025-12-10 14:28:33.956217 KST)
# immediate_commit_timestamp=1765344513956217 (2025-12-10 14:28:33.956217 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513956217*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 176253
#251210 14:28:33 server id 1  end_log_pos 176330 CRC32 0x58217edc 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 176330
# at 176388
# at 176468
#251210 14:28:33 server id 1  end_log_pos 176499 CRC32 0x269fe616 	Xid = 4890
COMMIT/*!*/;
# at 176499
#251210 14:28:33 server id 1  end_log_pos 176576 CRC32 0x299ef945 	Anonymous_GTID	last_committed=249	sequence_number=250	rbr_only=no	original_committed_timestamp=1765344513957372	immediate_commit_timestamp=1765344513957372	transaction_length=208
# original_commit_timestamp=1765344513957372 (2025-12-10 14:28:33.957372 KST)
# immediate_commit_timestamp=1765344513957372 (2025-12-10 14:28:33.957372 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513957372*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 176576
# at 176707
#251210 14:28:33 server id 1  end_log_pos 176784 CRC32 0xa71dd238 	Anonymous_GTID	last_committed=250	sequence_number=251	rbr_only=no	original_committed_timestamp=1765344513959804	immediate_commit_timestamp=1765344513959804	transaction_length=214
# original_commit_timestamp=1765344513959804 (2025-12-10 14:28:33.959804 KST)
# immediate_commit_timestamp=1765344513959804 (2025-12-10 14:28:33.959804 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513959804*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 176784
# at 176921
#251210 14:28:33 server id 1  end_log_pos 177000 CRC32 0xdd921780 	Anonymous_GTID	last_committed=251	sequence_number=252	rbr_only=no	original_committed_timestamp=1765344513983264	immediate_commit_timestamp=1765344513983264	transaction_length=968
# original_commit_timestamp=1765344513983264 (2025-12-10 14:28:33.983264 KST)
# immediate_commit_timestamp=1765344513983264 (2025-12-10 14:28:33.983264 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513983264*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 177000
# at 177889
#251210 14:28:33 server id 1  end_log_pos 177966 CRC32 0xf8218f96 	Anonymous_GTID	last_committed=252	sequence_number=253	rbr_only=no	original_committed_timestamp=1765344513987152	immediate_commit_timestamp=1765344513987152	transaction_length=215
# original_commit_timestamp=1765344513987152 (2025-12-10 14:28:33.987152 KST)
# immediate_commit_timestamp=1765344513987152 (2025-12-10 14:28:33.987152 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513987152*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 177966
# at 178104
#251210 14:28:33 server id 1  end_log_pos 178183 CRC32 0xdc82207d 	Anonymous_GTID	last_committed=253	sequence_number=254	rbr_only=yes	original_committed_timestamp=1765344513991089	immediate_commit_timestamp=1765344513991089	transaction_length=4049
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344513991089 (2025-12-10 14:28:33.991089 KST)
# immediate_commit_timestamp=1765344513991089 (2025-12-10 14:28:33.991089 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513991089*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 178183
#251210 14:28:33 server id 1  end_log_pos 178260 CRC32 0x55cd4ae9 	Query	thread_id=38	exec_time=0	error_code=0
SET TIMESTAMP=1765344513/*!*/;
BEGIN
/*!*/;
# at 178260
# at 178329
# at 180912
# at 180971
# at 182122
#251210 14:28:33 server id 1  end_log_pos 182153 CRC32 0x0268900e 	Xid = 4906
COMMIT/*!*/;
# at 182153
#251210 14:28:33 server id 1  end_log_pos 182230 CRC32 0x33d40e7a 	Anonymous_GTID	last_committed=254	sequence_number=255	rbr_only=no	original_committed_timestamp=1765344513992359	immediate_commit_timestamp=1765344513992359	transaction_length=214
# original_commit_timestamp=1765344513992359 (2025-12-10 14:28:33.992359 KST)
# immediate_commit_timestamp=1765344513992359 (2025-12-10 14:28:33.992359 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513992359*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 182230
# at 182367
#251210 14:28:33 server id 1  end_log_pos 182444 CRC32 0x55cdbd40 	Anonymous_GTID	last_committed=255	sequence_number=256	rbr_only=no	original_committed_timestamp=1765344513995192	immediate_commit_timestamp=1765344513995192	transaction_length=213
# original_commit_timestamp=1765344513995192 (2025-12-10 14:28:33.995192 KST)
# immediate_commit_timestamp=1765344513995192 (2025-12-10 14:28:33.995192 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513995192*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 182444
# at 182580
#251210 14:28:33 server id 1  end_log_pos 182657 CRC32 0xc5bb0696 	Anonymous_GTID	last_committed=256	sequence_number=257	rbr_only=no	original_committed_timestamp=1765344513996827	immediate_commit_timestamp=1765344513996827	transaction_length=188
# original_commit_timestamp=1765344513996827 (2025-12-10 14:28:33.996827 KST)
# immediate_commit_timestamp=1765344513996827 (2025-12-10 14:28:33.996827 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344513996827*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 182657
# at 182768
#251210 14:28:34 server id 1  end_log_pos 182847 CRC32 0xdcfe272d 	Anonymous_GTID	last_committed=257	sequence_number=258	rbr_only=no	original_committed_timestamp=1765344514002408	immediate_commit_timestamp=1765344514002408	transaction_length=339
# original_commit_timestamp=1765344514002408 (2025-12-10 14:28:34.002408 KST)
# immediate_commit_timestamp=1765344514002408 (2025-12-10 14:28:34.002408 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514002408*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 182847
# at 183107
#251210 14:28:34 server id 1  end_log_pos 183184 CRC32 0x1bf2e27a 	Anonymous_GTID	last_committed=258	sequence_number=259	rbr_only=no	original_committed_timestamp=1765344514009124	immediate_commit_timestamp=1765344514009124	transaction_length=196
# original_commit_timestamp=1765344514009124 (2025-12-10 14:28:34.009124 KST)
# immediate_commit_timestamp=1765344514009124 (2025-12-10 14:28:34.009124 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514009124*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 183184
# at 183303
#251210 14:28:34 server id 1  end_log_pos 183382 CRC32 0x14d3c8e3 	Anonymous_GTID	last_committed=259	sequence_number=260	rbr_only=no	original_committed_timestamp=1765344514015223	immediate_commit_timestamp=1765344514015223	transaction_length=538
# original_commit_timestamp=1765344514015223 (2025-12-10 14:28:34.015223 KST)
# immediate_commit_timestamp=1765344514015223 (2025-12-10 14:28:34.015223 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514015223*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 183382
# at 183841
#251210 14:28:34 server id 1  end_log_pos 183918 CRC32 0x1233d01f 	Anonymous_GTID	last_committed=260	sequence_number=261	rbr_only=no	original_committed_timestamp=1765344514019870	immediate_commit_timestamp=1765344514019870	transaction_length=206
# original_commit_timestamp=1765344514019870 (2025-12-10 14:28:34.019870 KST)
# immediate_commit_timestamp=1765344514019870 (2025-12-10 14:28:34.019870 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514019870*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 183918
# at 184047
#251210 14:28:34 server id 1  end_log_pos 184126 CRC32 0xe22c337e 	Anonymous_GTID	last_committed=261	sequence_number=262	rbr_only=no	original_committed_timestamp=1765344514025037	immediate_commit_timestamp=1765344514025037	transaction_length=1811
# original_commit_timestamp=1765344514025037 (2025-12-10 14:28:34.025037 KST)
# immediate_commit_timestamp=1765344514025037 (2025-12-10 14:28:34.025037 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514025037*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 184126
# at 185858
#251210 14:28:34 server id 1  end_log_pos 185935 CRC32 0x1c30dddb 	Anonymous_GTID	last_committed=262	sequence_number=263	rbr_only=no	original_committed_timestamp=1765344514029522	immediate_commit_timestamp=1765344514029522	transaction_length=205
# original_commit_timestamp=1765344514029522 (2025-12-10 14:28:34.029522 KST)
# immediate_commit_timestamp=1765344514029522 (2025-12-10 14:28:34.029522 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514029522*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 185935
# at 186063
#251210 14:28:34 server id 1  end_log_pos 186142 CRC32 0xef2ae388 	Anonymous_GTID	last_committed=263	sequence_number=264	rbr_only=no	original_committed_timestamp=1765344514034882	immediate_commit_timestamp=1765344514034882	transaction_length=565
# original_commit_timestamp=1765344514034882 (2025-12-10 14:28:34.034882 KST)
# immediate_commit_timestamp=1765344514034882 (2025-12-10 14:28:34.034882 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514034882*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 186142
# at 186628
#251210 14:28:34 server id 1  end_log_pos 186705 CRC32 0x8eed6602 	Anonymous_GTID	last_committed=264	sequence_number=265	rbr_only=no	original_committed_timestamp=1765344514039391	immediate_commit_timestamp=1765344514039391	transaction_length=206
# original_commit_timestamp=1765344514039391 (2025-12-10 14:28:34.039391 KST)
# immediate_commit_timestamp=1765344514039391 (2025-12-10 14:28:34.039391 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514039391*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 186705
# at 186834
#251210 14:28:34 server id 1  end_log_pos 186913 CRC32 0x8b7282af 	Anonymous_GTID	last_committed=265	sequence_number=266	rbr_only=no	original_committed_timestamp=1765344514044742	immediate_commit_timestamp=1765344514044742	transaction_length=437
# original_commit_timestamp=1765344514044742 (2025-12-10 14:28:34.044742 KST)
# immediate_commit_timestamp=1765344514044742 (2025-12-10 14:28:34.044742 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344514044742*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 186913
# at 187271
#251210 14:30:06 server id 1  end_log_pos 187348 CRC32 0x761855ae 	Anonymous_GTID	last_committed=266	sequence_number=267	rbr_only=no	original_committed_timestamp=1765344606764463	immediate_commit_timestamp=1765344606764463	transaction_length=214
# original_commit_timestamp=1765344606764463 (2025-12-10 14:30:06.764463 KST)
# immediate_commit_timestamp=1765344606764463 (2025-12-10 14:30:06.764463 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606764463*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 187348
#251210 14:30:06 server id 1  end_log_pos 187485 CRC32 0xcd2c256a 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5073
use `tdb`/*!*/;
SET TIMESTAMP=1765344606/*!*/;
SET @@session.pseudo_thread_id=39/*!*/;
DROP TABLE IF EXISTS `dept` /* generated by server */
/*!*/;
# at 187485
#251210 14:30:06 server id 1  end_log_pos 187564 CRC32 0x93111f37 	Anonymous_GTID	last_committed=267	sequence_number=268	rbr_only=no	original_committed_timestamp=1765344606782115	immediate_commit_timestamp=1765344606782115	transaction_length=749
# original_commit_timestamp=1765344606782115 (2025-12-10 14:30:06.782115 KST)
# immediate_commit_timestamp=1765344606782115 (2025-12-10 14:30:06.782115 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606782115*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 187564
#251210 14:30:06 server id 1  end_log_pos 188234 CRC32 0x2d3b51a3 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5076
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `Dept` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상위부서id',
  `dname` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain` int unsigned DEFAULT NULL COMMENT '부서장',
  `empcnt` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_Dept_captain_Emp` (`captain`),
  CONSTRAINT `dept_ibfk_1` FOREIGN KEY (`captain`) REFERENCES `Emp` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 188234
#251210 14:30:06 server id 1  end_log_pos 188311 CRC32 0x3a1986a4 	Anonymous_GTID	last_committed=268	sequence_number=269	rbr_only=no	original_committed_timestamp=1765344606789618	immediate_commit_timestamp=1765344606789618	transaction_length=206
# original_commit_timestamp=1765344606789618 (2025-12-10 14:30:06.789618 KST)
# immediate_commit_timestamp=1765344606789618 (2025-12-10 14:30:06.789618 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606789618*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 188311
#251210 14:30:06 server id 1  end_log_pos 188440 CRC32 0xad711ab5 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5082
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Dept` DISABLE KEYS */
/*!*/;
# at 188440
#251210 14:30:06 server id 1  end_log_pos 188519 CRC32 0x5380c4a4 	Anonymous_GTID	last_committed=269	sequence_number=270	rbr_only=yes	original_committed_timestamp=1765344606791500	immediate_commit_timestamp=1765344606791500	transaction_length=488
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344606791500 (2025-12-10 14:30:06.791500 KST)
# immediate_commit_timestamp=1765344606791500 (2025-12-10 14:30:06.791500 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606791500*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 188519
#251210 14:30:06 server id 1  end_log_pos 188595 CRC32 0x91fd2257 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
BEGIN
/*!*/;
# at 188595
#251210 14:30:06 server id 1  end_log_pos 188653 CRC32 0x41f2eef1 	Table_map: `tdb`.`dept` mapped to number 271
# has_generated_invisible_primary_key=0
# at 188653
#251210 14:30:06 server id 1  end_log_pos 188897 CRC32 0x91b9f882 	Write_rows: table id 271 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XgU5aRMBAAAAOgAAAO3gAgAAAA8BAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHg8e7y
QQ==
XgU5aR4BAAAA9AAAAOHhAgAAAA8BAAAAAAcAAgAF/wgBAAnsmIHsl4XrtoAAAAACAAnqsJzrsJzr
toAeAAAAAAAAAwEK7JiB7JeFMe2MgE4AAAAAAAAEAQrsmIHsl4Uy7YyAMwAAAAAAAAUBCuyYgeyX
hTPtjICpAAAAAAAABgIJ7ISc67KE7YyAbQAAAAAAAAcCEu2BtOudvOydtOyWuO2KuO2MgJYAAAAA
AAgIBgzsnbjtlITrnbzshYAAAAgJBgVEQuyFgAAACAoHDOuqqOuwlOydvOyFgAAACAsDD+yYgeyX
he2KueqzteuMgAAAgvi5kQ==
'/*!*/;
### INSERT INTO `tdb`.`dept`
### SET
###   @1=1
###   @2=0
###   @3='영업부'
###   @4=NULL
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=2
###   @2=0
###   @3='개발부'
###   @4=30
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=3
###   @2=1
###   @3='영업1팀'
###   @4=78
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=4
###   @2=1
###   @3='영업2팀'
###   @4=51
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=5
###   @2=1
###   @3='영업3팀'
###   @4=169
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=6
###   @2=2
###   @3='서버팀'
###   @4=109
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=7
###   @2=2
###   @3='클라이언트팀'
###   @4=150
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=8
###   @2=6
###   @3='인프라셀'
###   @4=NULL
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=9
###   @2=6
###   @3='DB셀'
###   @4=NULL
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=10
###   @2=7
###   @3='모바일셀'
###   @4=NULL
###   @5=0
### INSERT INTO `tdb`.`dept`
### SET
###   @1=11
###   @2=3
###   @3='영업특공대'
###   @4=NULL
###   @5=0
# at 188897
#251210 14:30:06 server id 1  end_log_pos 188928 CRC32 0x5e5dfcd2 	Xid = 5083
COMMIT/*!*/;
# at 188928
#251210 14:30:06 server id 1  end_log_pos 189005 CRC32 0x5a0b2d82 	Anonymous_GTID	last_committed=270	sequence_number=271	rbr_only=no	original_committed_timestamp=1765344606792362	immediate_commit_timestamp=1765344606792362	transaction_length=205
# original_commit_timestamp=1765344606792362 (2025-12-10 14:30:06.792362 KST)
# immediate_commit_timestamp=1765344606792362 (2025-12-10 14:30:06.792362 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606792362*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 189005
#251210 14:30:06 server id 1  end_log_pos 189133 CRC32 0xb2e2e041 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5084
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Dept` ENABLE KEYS */
/*!*/;
# at 189133
#251210 14:30:06 server id 1  end_log_pos 189210 CRC32 0x50761f49 	Anonymous_GTID	last_committed=271	sequence_number=272	rbr_only=no	original_committed_timestamp=1765344606796658	immediate_commit_timestamp=1765344606796658	transaction_length=209
# original_commit_timestamp=1765344606796658 (2025-12-10 14:30:06.796658 KST)
# immediate_commit_timestamp=1765344606796658 (2025-12-10 14:30:06.796658 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606796658*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 189210
#251210 14:30:06 server id 1  end_log_pos 189342 CRC32 0xc2cde574 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
DROP TABLE IF EXISTS `emaillog` /* generated by server */
/*!*/;
# at 189342
#251210 14:30:06 server id 1  end_log_pos 189421 CRC32 0x9dadce4f 	Anonymous_GTID	last_committed=272	sequence_number=273	rbr_only=no	original_committed_timestamp=1765344606803482	immediate_commit_timestamp=1765344606803482	transaction_length=651
# original_commit_timestamp=1765344606803482 (2025-12-10 14:30:06.803482 KST)
# immediate_commit_timestamp=1765344606803482 (2025-12-10 14:30:06.803482 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606803482*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 189421
#251210 14:30:06 server id 1  end_log_pos 189993 CRC32 0xf3b92325 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `EmailLog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sender` int unsigned NOT NULL,
  `receivers` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_EmailLog_sender_Emp` (`sender`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 189993
#251210 14:30:06 server id 1  end_log_pos 190070 CRC32 0xc24ea5bd 	Anonymous_GTID	last_committed=273	sequence_number=274	rbr_only=no	original_committed_timestamp=1765344606808833	immediate_commit_timestamp=1765344606808833	transaction_length=201
# original_commit_timestamp=1765344606808833 (2025-12-10 14:30:06.808833 KST)
# immediate_commit_timestamp=1765344606808833 (2025-12-10 14:30:06.808833 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606808833*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 190070
#251210 14:30:06 server id 1  end_log_pos 190194 CRC32 0x8cdcee54 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `EmailLog` DISABLE KEYS */
/*!*/;
# at 190194
#251210 14:30:06 server id 1  end_log_pos 190273 CRC32 0x91c64346 	Anonymous_GTID	last_committed=274	sequence_number=275	rbr_only=yes	original_committed_timestamp=1765344606809967	immediate_commit_timestamp=1765344606809967	transaction_length=422
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344606809967 (2025-12-10 14:30:06.809967 KST)
# immediate_commit_timestamp=1765344606809967 (2025-12-10 14:30:06.809967 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606809967*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 190273
#251210 14:30:06 server id 1  end_log_pos 190347 CRC32 0x89120cfb 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
BEGIN
/*!*/;
# at 190347
#251210 14:30:06 server id 1  end_log_pos 190412 CRC32 0xa277c0b3 	Table_map: `tdb`.`emaillog` mapped to number 272
# has_generated_invisible_primary_key=0
# at 190412
#251210 14:30:06 server id 1  end_log_pos 190541 CRC32 0xae082951 	Write_rows: table id 272 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XgU5aRMBAAAAQQAAAMznAgAAABABAAAAAAEAA3RkYgAIZW1haWxsb2cABQMDDw/8BQAQ/AMCHAEB
wAIB4LPAd6I=
XgU5aR4BAAAAgQAAAE3oAgAAABABAAAAAAcAAgAF/wABAAAAAgAAAAkASG9uZywgS2ltCQB0ZXN0
IG1haWwOAHRlc3QgbWFpbCBib2R5AAIAAAABAAAACQBIb25nLCBLaW0JAHRlc3QgbWFpbA4AdGVz
dCBtYWlsIGJvZHlRKQiu
'/*!*/;
### INSERT INTO `tdb`.`emaillog`
### SET
###   @1=1
###   @2=2
###   @3='Hong, Kim'
###   @4='test mail'
###   @5='test mail body'
### INSERT INTO `tdb`.`emaillog`
### SET
###   @1=2
###   @2=1
###   @3='Hong, Kim'
###   @4='test mail'
###   @5='test mail body'
# at 190541
#251210 14:30:06 server id 1  end_log_pos 190616 CRC32 0xa2fde6ec 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
COMMIT
/*!*/;
# at 190616
#251210 14:30:06 server id 1  end_log_pos 190693 CRC32 0xaabbf628 	Anonymous_GTID	last_committed=275	sequence_number=276	rbr_only=no	original_committed_timestamp=1765344606812736	immediate_commit_timestamp=1765344606812736	transaction_length=200
# original_commit_timestamp=1765344606812736 (2025-12-10 14:30:06.812736 KST)
# immediate_commit_timestamp=1765344606812736 (2025-12-10 14:30:06.812736 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606812736*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 190693
#251210 14:30:06 server id 1  end_log_pos 190816 CRC32 0x961b8be1 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `EmailLog` ENABLE KEYS */
/*!*/;
# at 190816
#251210 14:30:06 server id 1  end_log_pos 190893 CRC32 0x8614af81 	Anonymous_GTID	last_committed=276	sequence_number=277	rbr_only=no	original_committed_timestamp=1765344606820731	immediate_commit_timestamp=1765344606820731	transaction_length=213
# original_commit_timestamp=1765344606820731 (2025-12-10 14:30:06.820731 KST)
# immediate_commit_timestamp=1765344606820731 (2025-12-10 14:30:06.820731 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606820731*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 190893
#251210 14:30:06 server id 1  end_log_pos 191029 CRC32 0x0f0d98e3 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5105
SET TIMESTAMP=1765344606/*!*/;
DROP TABLE IF EXISTS `emp` /* generated by server */
/*!*/;
# at 191029
#251210 14:30:06 server id 1  end_log_pos 191108 CRC32 0xefb137a0 	Anonymous_GTID	last_committed=277	sequence_number=278	rbr_only=no	original_committed_timestamp=1765344606836652	immediate_commit_timestamp=1765344606836652	transaction_length=850
# original_commit_timestamp=1765344606836652 (2025-12-10 14:30:06.836652 KST)
# immediate_commit_timestamp=1765344606836652 (2025-12-10 14:30:06.836652 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606836652*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 191108
#251210 14:30:06 server id 1  end_log_pos 191879 CRC32 0x60bd7da1 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5108
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `Emp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` tinyint unsigned NOT NULL,
  `salary` int NOT NULL DEFAULT '0',
  `outdt` date DEFAULT NULL COMMENT '퇴사일',
  `auth` enum('admin','manager','employee','temporary','guest') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `remark` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  KEY `idx_Emp_ename_dept` (`dept`,`ename`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `Dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 191879
#251210 14:30:06 server id 1  end_log_pos 191956 CRC32 0xe36fdea7 	Anonymous_GTID	last_committed=278	sequence_number=279	rbr_only=no	original_committed_timestamp=1765344606851516	immediate_commit_timestamp=1765344606851516	transaction_length=205
# original_commit_timestamp=1765344606851516 (2025-12-10 14:30:06.851516 KST)
# immediate_commit_timestamp=1765344606851516 (2025-12-10 14:30:06.851516 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606851516*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 191956
#251210 14:30:06 server id 1  end_log_pos 192084 CRC32 0x183a88e3 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5114
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Emp` DISABLE KEYS */
/*!*/;
# at 192084
#251210 14:30:06 server id 1  end_log_pos 192163 CRC32 0x5a803f7c 	Anonymous_GTID	last_committed=279	sequence_number=280	rbr_only=yes	original_committed_timestamp=1765344606858861	immediate_commit_timestamp=1765344606858861	transaction_length=6041
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344606858861 (2025-12-10 14:30:06.858861 KST)
# immediate_commit_timestamp=1765344606858861 (2025-12-10 14:30:06.858861 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606858861*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 192163
#251210 14:30:06 server id 1  end_log_pos 192239 CRC32 0xe6d600a9 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
BEGIN
/*!*/;
# at 192239
#251210 14:30:06 server id 1  end_log_pos 192301 CRC32 0x6593dcb8 	Table_map: `tdb`.`emp` mapped to number 276
# has_generated_invisible_primary_key=0
# at 192301
#251210 14:30:06 server id 1  end_log_pos 198094 CRC32 0x4fc7f011 	Write_rows: table id 276 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XgU5aRMBAAAAPgAAAC3vAgAAABQBAAAAAAMAA3RkYgADZW1wAAcDDwEDCv71BXwA9wEEUAEBwAIB
4Ljck2U=
XgU5aR4BAAAAoRYAAM4FAwAAABQBAAAAAAcAAgAH/xACAAAACeycoOyEuO2YnAQsAQAABXAAAAAA
AwBvABkAAgAbAAMAHgADAAUCAAUeAAIhAGlkYWdlZmFtAgBOAAAKAAAsAAIAIgASAAIAFAAEAAUB
AAwYAGlkbmFtZQnsnKDshLjssKgCACIAEgACABQABAAFAgAMGABpZG5hbWUJ7Jyg7IS47J20AAMA
AAAJ7JuQ7IKs7JWEBGQAAAB50w8FcAAAAAADAG8AGQACABsAAwAeAAMABQMABSEAAiEAaWRhZ2Vm
YW0CAE4AAAoAACwAAgAiABIAAgAUAAQABQEADBgAaWRuYW1lCeycoOyEuOywqAIAIgASAAIAFAAE
AAUCAAwYAGlkbmFtZQntmY3quLjsiK0QBAAAAAnquYDtg5ztmJwFvAIAAAUOAAAAAgMADQAFAQAF
AgAFAwAABQAAAAnsp4DshLjqta0HkAEAAHnTDwVwAAAAAAMAbwAZAAIAGwADAB4AAwAFBQAFLAAC
IQBpZGFnZWZhbQIATgAACgAALAACACIAEgACABQABAAFAQAMGABpZG5hbWUJ7KeA7IS47LCoAgAi
ABIAAgAUAAQABQIADBgAaWRuYW1lCeyngOyEuOywvRAGAAAACey1nOqwgOq1rQQgAwAABQ4AAAAA
AQANAAsAAgAFBgBpZBAHAAAACeuwsO2MjOuCmAEgAwAABVcAAAAABABWACAAAgAiAAMAJQADACgA
BQAFBwACLQAF9BoF9BppZGZhbWlkZGlkZHh4AQApAAAHAAIAIgASAAIAFAAEAAULAAwYAGlkbmFt
ZQnsnKDshLjtmY1QCAAAAAnsm5DshLHqsrACyAAAAAVQCQAAAAnsoITrsJTssKwGhAMAAAVQCgAA
AAnsp4DsnKTtnawF9AEAAAVQCwAAAAnsoITssKjqsIABhAMAAAVQDAAAAAnsp4DtmLjtlZgDIAMA
AAVQDQAAAAnstZzsooXrnbwFLAEAAAVADgAAAAnrp4jrp4jsiJwBvAIAAIjTDwVQDwAAAAnsm5Ds
npDtjIwHyAAAAAVQEAAAAAnsnbTqsrDshLgHvAIAAAVQEQAAAAnsm5DtmLjsi6ACWAIAAAVQEgAA
AAnsoITqta3ssKwDhwMAAAVQEwAAAAnrsKnshLHssKwDIAMAAAVQFAAAAAnstZztnazqsrAFvAIA
AAVQFQAAAAnsp4DssKztjIwCWAIAAAVQFgAAAAnstZztjIzsp4AEZAAAAAVQFwAAAAnrp4jri6Ts
nKQELAEAAAVQGAAAAAnsnbTsnKTtjIwGWAIAAAVQGQAAAAnsoITri6TsnKQDIAMAAAVAGgAAAAnq
uYDrgpjrgpgBIAMAAIjTDwVQGwAAAAnsm5DtmLjsiJwHWAIAAAVQHAAAAAnsobDqta3qta0HkAEA
AAVQHQAAAAnsnbTsnKTrsJQBLAEAAAVQHgAAAAnquYDrsJTsiJwCIAMAAAVQHwAAAAnrsKnsnKTs
nKQGWAIAAAVQIAAAAAnrsKntmLjsp4AEhAMAAAVQIQAAAAnstZzrp4jtmLgB9AEAAAVQIgAAAAns
oITslYTqsIADWAIAAAVQIwAAAAnsm5DshLHtg5wGWAIAAAVQJAAAAAnrp4jri6TrnbwDhAMAAAVQ
JQAAAAnsp4DrnbztjIwDyAAAAAVQJgAAAAnquYDsnpDrgpgDLAEAAAVQJwAAAAnsoITqsIDsiJwC
kAEAAAVQKAAAAAnsnKDtmLjqsIAGkAEAAAVQKQAAAAnrsKnsgqzsnpAGkAEAAAVQKgAAAAnrp4js
nKTqsrACvAIAAAVQKwAAAAnrp4jrp4jssKgBIAMAAAVQLAAAAAnsnbTssKzqsIAEZAAAAAVQLQAA
AAnsnKDtg5ztjIwF9AEAAAVQLgAAAAnsnKDtmLjri6QEyAAAAAVQLwAAAAnsnbTsi6DtnawGigMA
AAVQMAAAAAnsspzrp4jrnbwHyAAAAAVQMQAAAAnsnbTsiJzslYQEWAIAAAVQMgAAAAnstZzssKzs
npAHyAAAAAVQMwAAAAnquYDrsJTqsIAE9AEAAAVQNAAAAAnsm5DqsIDqta0GWAIAAAVQNQAAAAnr
sKnqsIDri6QHZAAAAAVQNgAAAAnsoITsiJzssKgGvAIAAAVQNwAAAAnsobDsooXssKgFWAIAAAVQ
OAAAAAnsoITtmLjrnbwDyAAAAAVQOQAAAAnsspztmLjsnKQE9AEAAAVQOgAAAAnrp4jsi6DtmJwB
LAEAAAVQOwAAAAnsoITshLjqta0CWAIAAAVQPAAAAAnsp4DtmLjtg5wCLAEAAAVQPQAAAAnsnKDt
mJztg5wEvAIAAAVQPgAAAAnsspzshLjssKwEIAMAAAVQPwAAAAnsp4DrsJTtmJwDyAAAAAVQQAAA
AAnsspzqsIDssKgBIAMAAAVQQQAAAAnrsLDshLjsgqwCIAMAAAVQQgAAAAnrsKnrgpjtlZgGyAAA
AAVQQwAAAAnstZztmLjtg5wBIAMAAAVQRAAAAAnrp4jqsIDtmJwDZAAAAAVQRQAAAAnquYDshLHr
sJQGyAAAAAVQRgAAAAnrsKntmJzqta0FWAIAAAVQRwAAAAnsnbTtjIztjIwELAEAAAVQSAAAAAns
p4DsnKTtmJwHZAAAAAVQSQAAAAnrsJXssKzsooUGWAIAAAVQSgAAAAnrsKntmJzsnKQDLAEAAAVQ
SwAAAAnsoITtmLjrsJQBWAIAAAVQTAAAAAnsnKDtnazrp4gBvAIAAAVQTQAAAAnsspzshLHtmJwH
9AEAAAVQTgAAAAnquYDrgpjrnbwDIAMAAAVQTwAAAAnstZztmJzshLEBvAIAAAVQUAAAAAnsp4Ds
ooXrnbwEiAMAAAVQUQAAAAnsnbTrsJTtnawHIAMAAAVQUgAAAAnstZzsnYDqsIAEIAMAAAVQUwAA
AAnrsLDsnpDtmLgF9AEAAAVQVAAAAAnrsLDsgqztjIwH9AEAAAVQVQAAAAnrp4jshLHri6QCkAEA
AAVQVgAAAAnstZzqta3shLgDWAIAAAVQVwAAAAnsnKDri6Tsp4AEWAIAAAVQWAAAAAnsspzqsrDs
i6AEkAEAAAVQWQAAAAnrsJXtg5zsgqwHLAEAAAVQWgAAAAnsm5DtjIzqsIAHhAMAAAVQWwAAAAnr
p4jsiJzssKgHLAEAAAVQXAAAAAnsp4DtmLjtnawGvAIAAAVQXQAAAAnstZzqsIDqta0GIAMAAAVQ
XgAAAAnrp4jshLHrgpgByAAAAAVQXwAAAAnsobDtlZjrp4gEvAIAAAVQYAAAAAnsm5DrsJTqsIAD
LAEAAAVQYQAAAAnstZzsi6DshLgChgMAAAVQYgAAAAnquYDsnYDri6QFhAMAAAVQYwAAAAnsspzr
nbzqta0F9AEAAAVQZAAAAAnsm5Dsi6Dqta0ByAAAAAVQZQAAAAnrsKnqta3snKQFLAEAAAVQZgAA
AAnrsJXshLjssKwEWAIAAAVQZwAAAAnstZzsooXri6QE9AEAAAVQaAAAAAnsnbTsi6DssKwEhAMA
AAVQaQAAAAnsm5DsooXrp4gGhAMAAAVQagAAAAnstZzsi6DtmLgGyAAAAAVQawAAAAnsp4DssKjs
sKwDZAAAAAVQbAAAAAnsnbTrgpjsooUBZAAAAAVQbQAAAAnquYDqsrDrgpgG9AEAAAVQbgAAAAns
obDtjIztmLgDWAIAAAVQbwAAAAnsnKDsi6DssKwFyAAAAAVQcAAAAAnsm5DshLjtg5wByAAAAAVQ
cQAAAAnrsKntmLjtmJwFIAMAAAVQcgAAAAnsnKDrp4jsnpAHyAAAAAVQcwAAAAnstZzsiJzsi6AC
hAMAAAVQdAAAAAnsobDsnKTtmJwHZAAAAAVQdQAAAAnsobDtmLjtmLgDkAEAAAVQdgAAAAnrp4js
hLjsgqwDhAMAAAVQdwAAAAnrsKnqsrDtnawBWAIAAAVQeAAAAAnsp4Dqta3tmJwBLAEAAAVQeQAA
AAnrsJXshLjqsrADZAAAAAVQegAAAAnsobDsp4DtmJwEIAMAAAVQewAAAAnrsKnsnYDtnawHIAMA
AAVQfAAAAAnsnbTshLHqsIAHhAMAAAVQfQAAAAnsm5Dsp4Dsi6AFLAEAAAVQfgAAAAnsspzsnKTs
lYQDWAIAAAVQfwAAAAnsm5DsiJzsp4ABkAEAAAVQgAAAAAnsnbTsnKTrsJQHiwMAAAVQgQAAAAnq
uYDsi6DtmLgGLAEAAAVQggAAAAnsm5DtmJztmLgCWAIAAAVQgwAAAAnsspzsnKTsgqwCIAMAAAVQ
hAAAAAnsspztnazqsIADWAIAAAVQhQAAAAnsm5DqsrDrsJQFiQMAAAVQhgAAAAnrp4jshLHtmLgE
ZAAAAAVQhwAAAAnsnbTshLHri6QDIAMAAAVQiAAAAAnsobDsgqzsnpAFIAMAAAVQiQAAAAnsspzs
sKztmJwDkAEAAAVQigAAAAnsoITsp4DsgqwGhAMAAAVQiwAAAAnrsKnsnpDshLgCIAMAAAVQjAAA
AAnsp4DslYTrp4gHvAIAAAVQjQAAAAnquYDssKzrp4gC9AEAAAVQjgAAAAnrsKnqsIDsgqwH9AEA
AAVQjwAAAAnrsLDslYTsiJwHkAEAAAVQkAAAAAnstZztmLjtnawGyAAAAAVQkQAAAAnstZztmJzt
mJwEkAEAAAVQkgAAAAnsnKDtg5zssKgDyAAAAAVQkwAAAAnsm5Dqta3snYABvAIAAAVQlAAAAAns
obDtmJzsnYAHkAEAAAVQlQAAAAnsobDqsIDrp4gCyAAAAAVQlgAAAAnquYDssKzrnbwHLAEAAAVQ
lwAAAAnstZzsi6DshLgChAMAAAVQmAAAAAnrsJXshLHsooUBhQMAAAVQmQAAAAnsp4Drgpjqta0G
WAIAAAVQmgAAAAnrp4jtjIzqsrAB9AEAAAVQmwAAAAnsobDtg5zqta0FyAAAAAVQnAAAAAnrsKnr
gpjssKgDWAIAAAVQnQAAAAnquYDsp4DtnawD9AEAAAVQngAAAAnsnKDrgpjsiJwFZAAAAAVQnwAA
AAnsobDsnKTtmLgGZAAAAAVQoAAAAAnrsLDri6TqsrAHyAAAAAVQoQAAAAnrsLDtnaztmLgB9AEA
AAVQogAAAAnrsKntmLjshLEEkAEAAAVQowAAAAnquYDshLjsnYADhAMAAAVQpAAAAAnstZzshLHr
nbwEIAMAAAVQpQAAAAnrp4jsi6Dsi6AByAAAAAVQpgAAAAnsnKDsnKTsgqwCIAMAAAVQpwAAAAns
oITtjIzsnpADyAAAAAVQqAAAAAnrsJXqta3ri6QDLAEAAAVQqQAAAAnquYDri6TrsJQFyAAAAAVQ
qgAAAAnsm5DtmLjsi6AGvAIAAAVQqwAAAAnquYDtmLjtjIwF9AEAAAVQrAAAAAnrsKnrgpjsnpAC
hAMAAAVQrQAAAAnrsJXshLjsnpAELAEAAAVQrgAAAAnsm5DqsrDrsJQE9AEAAAVQrwAAAAnquYDt
g5zsi6AFLAEAAAVQsAAAAAnstZzsi6Dsi6ACvAIAAAVQsQAAAAnrsLDqsIDtlZgFLAEAAAVQsgAA
AAnsp4Drgpjri6QCyAAAAAVQswAAAAnrsJXsgqztjIwH9AEAAAVQtAAAAAnsspzsi6DslYQELAEA
AAVQtQAAAAnsnbTqsIDshLgBhAMAAAVQtgAAAAnrsKnsi6Dri6QEZAAAAAVQtwAAAAnrsKntg5zq
sIAGvAIAAAVQuAAAAAnrsJXtlZjslYQH9AEAAAVQuQAAAAnsspzshLHqsIAHvAIAAAVQugAAAAns
nbTtmLjrnbwDkAEAAAVQuwAAAAnsspzri6TsooUBWAIAAAVQvAAAAAnsnbTtlZjqsrAHvAIAAAVQ
vQAAAAnsnbTsnYDtmLgHkAEAAAVQvgAAAAnsnbTshLHri6QDIAMAAAVQvwAAAAnsnbTsi6Dsi6AB
yAAAAAVQwAAAAAnrp4jshLjqsIACZAAAAAVQwQAAAAnsm5DshLjsiJwHvAIAAAVQwgAAAAnsm5Ds
nKTqsIABWAIAAAVQwwAAAAnquYDshLjsnKQGhAMAAAVQxAAAAAnstZzssKzrnbwBWAIAAAVQxQAA
AAnsnKDtmLjsnKQHkAEAAAVQxgAAAAnrsJXssKjtmLgFvAIAAAVQxwAAAAnrp4jrsJTsiJwCIAMA
AAVQyAAAAAnrsKnqta3qsIAByAAAAAVQyQAAAAnstZzshLjrp4gBLAEAAAVQygAAAAnsobDrnbzs
ooUG9AEAAAVQywAAAAnsnbTsp4Drp4gEvAIAAAVQzAAAAAnquYDsi6DtmLgGLAEAAAVQzQAAAAnq
uYDsnYDri6QGyAAAAAVQzgAAAAnrp4jshLjtmJwHvAIAAAVQzwAAAAnquYDtlZjshLgByAAAAAVQ
0AAAAAnsm5DsiJzshLgFkAEAAAVQ0QAAAAnsm5Drp4jsooUGWAIAAAVQ0gAAAAnrp4jsgqztmJwC
yAAAAAVQ0wAAAAnrsJXrgpjsi6AFLAEAAAVQ1AAAAAnsoITtmLjsgqwGZAAAAAVQ1QAAAAnsp4Ds
p4DtmLgCkAEAAAVQ1gAAAAnsspztmJztjIwChAMAAAVQ1wAAAAnsp4DsgqzshLgGvAIAAAVQ2AAA
AAnrsKnrgpjtg5wGZAAAAAVQ2QAAAAnquYDsp4DtlZgGkAEAAAVQ2gAAAAnsp4DssKztg5wDLAEA
AAVQ2wAAAAnsobDsgqzrgpgEIAMAAAVQ3AAAAAnsp4DssKjsiJwGIAMAAAVQ3QAAAAnsp4Dtnazt
g5wDLAEAAAVQ3gAAAAnsnbTtnazrgpgFIAMAAAVQ3wAAAAnrsLDsi6Drp4gHhAMAAAVQ4AAAAAnr
sLDrgpjtnawDhAMAAAVQ4QAAAAnrp4jslYTshLgEIAMAAAVQ4gAAAAnsoITrsJTsi6AChAMAAAVQ
4wAAAAnrsJXtnazsnKQByAAAAAVQ5AAAAAnsspzqsrDtmLgBZAAAAAVQ5QAAAAnrp4jsgqztmJwC
yAAAAAVQ5gAAAAnstZzsooXrsJQGLAEAAAVQ5wAAAAnsm5DtjIzqsIAByAAAAAVQ6AAAAAnsp4Dt
nazqsrAFyAAAAAVQ6QAAAAnquYDsnpDrp4gGyAAAAAVQ6gAAAAnrsKnshLHshLgBhAMAAAVQ6wAA
AAnrp4jrsJTshLEGWAIAAAVQ7AAAAAnsspzrp4jrp4gCyAAAAAVQ7QAAAAnstZzqsIDshLgGZAAA
AAVQ7gAAAAnquYDtjIztnawDyAAAAAVQ7wAAAAnrp4jssKzslYQFhAMAAAVQ8AAAAAnquYDshLjq
sIAByAAAAAVQ8QAAAAnsoITssKjrgpgCvAIAAAVQ8gAAAAnsnKDtnazqta0CZAAAAAVQ8wAAAAns
oITtnazrp4gBIAMAAAVQ9AAAAAnrp4jtmLjssKgDyAAAAAVQ9QAAAAnrsLDtg5zrsJQFWAIAAAVQ
9gAAAAnrsLDrgpjtnawELAEAAAVQ9wAAAAnsnKDsnYDsooUGLAEAAAVQ+AAAAAnsm5DshLjrp4gG
LAEAAAVQ+QAAAAnrsLDrp4jqsIAEZAAAAAVQ+gAAAAnsnKDqsrDtmLgBvAIAAAVQ+wAAAAnsp4Dt
g5zsnKQEZAAAAAVQ/AAAAAnrsLDtmLjqsIAHWAIAAAUR8MdP
'/*!*/;
### INSERT INTO `tdb`.`emp`
### SET
###   @1=2
###   @2='유세혜'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7='{"id": 2, "age": 30, "fam": [{"id": 1, "name": "유세차"}, {"id": 2, "name": "유세이"}]}'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=3
###   @2='원사아'
###   @3=4
###   @4=100
###   @5='2025:11:25'
###   @6=5
###   @7='{"id": 3, "age": 33, "fam": [{"id": 1, "name": "유세차"}, {"id": 2, "name": "홍길숭"}]}'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=4
###   @2='김태혜'
###   @3=5
###   @4=700
###   @5=NULL
###   @6=5
###   @7='[1, 2, 3]'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=5
###   @2='지세국'
###   @3=7
###   @4=400
###   @5='2025:11:25'
###   @6=5
###   @7='{"id": 5, "age": 44, "fam": [{"id": 1, "name": "지세차"}, {"id": 2, "name": "지세창"}]}'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=6
###   @2='최가국'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7='{"id": 6}'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=7
###   @2='배파나'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7='{"id": 7, "fam": [{"id": 11, "name": "유세홍"}], "idd": 6900, "iddxx": 6900}'
### INSERT INTO `tdb`.`emp`
### SET
###   @1=8
###   @2='원성결'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=9
###   @2='전바찬'
###   @3=6
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=10
###   @2='지윤희'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=11
###   @2='전차가'
###   @3=1
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=12
###   @2='지호하'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=13
###   @2='최종라'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=14
###   @2='마마순'
###   @3=1
###   @4=700
###   @5='2025:12:08'
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=15
###   @2='원자파'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=16
###   @2='이결세'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=17
###   @2='원호신'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=18
###   @2='전국찬'
###   @3=3
###   @4=903
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=19
###   @2='방성찬'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=20
###   @2='최희결'
###   @3=5
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=21
###   @2='지찬파'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=22
###   @2='최파지'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=23
###   @2='마다윤'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=24
###   @2='이윤파'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=25
###   @2='전다윤'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=26
###   @2='김나나'
###   @3=1
###   @4=800
###   @5='2025:12:08'
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=27
###   @2='원호순'
###   @3=7
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=28
###   @2='조국국'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=29
###   @2='이윤바'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=30
###   @2='김바순'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=31
###   @2='방윤윤'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=32
###   @2='방호지'
###   @3=4
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=33
###   @2='최마호'
###   @3=1
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=34
###   @2='전아가'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=35
###   @2='원성태'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=36
###   @2='마다라'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=37
###   @2='지라파'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=38
###   @2='김자나'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=39
###   @2='전가순'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=40
###   @2='유호가'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=41
###   @2='방사자'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=42
###   @2='마윤결'
###   @3=2
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=43
###   @2='마마차'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=44
###   @2='이찬가'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=45
###   @2='유태파'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=46
###   @2='유호다'
###   @3=4
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=47
###   @2='이신희'
###   @3=6
###   @4=906
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=48
###   @2='천마라'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=49
###   @2='이순아'
###   @3=4
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=50
###   @2='최찬자'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=51
###   @2='김바가'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=52
###   @2='원가국'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=53
###   @2='방가다'
###   @3=7
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=54
###   @2='전순차'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=55
###   @2='조종차'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=56
###   @2='전호라'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=57
###   @2='천호윤'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=58
###   @2='마신혜'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=59
###   @2='전세국'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=60
###   @2='지호태'
###   @3=2
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=61
###   @2='유혜태'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=62
###   @2='천세찬'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=63
###   @2='지바혜'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=64
###   @2='천가차'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=65
###   @2='배세사'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=66
###   @2='방나하'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=67
###   @2='최호태'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=68
###   @2='마가혜'
###   @3=3
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=69
###   @2='김성바'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=70
###   @2='방혜국'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=71
###   @2='이파파'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=72
###   @2='지윤혜'
###   @3=7
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=73
###   @2='박찬종'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=74
###   @2='방혜윤'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=75
###   @2='전호바'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=76
###   @2='유희마'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=77
###   @2='천성혜'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=78
###   @2='김나라'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=79
###   @2='최혜성'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=80
###   @2='지종라'
###   @3=4
###   @4=904
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=81
###   @2='이바희'
###   @3=7
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=82
###   @2='최은가'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=83
###   @2='배자호'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=84
###   @2='배사파'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=85
###   @2='마성다'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=86
###   @2='최국세'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=87
###   @2='유다지'
###   @3=4
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=88
###   @2='천결신'
###   @3=4
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=89
###   @2='박태사'
###   @3=7
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=90
###   @2='원파가'
###   @3=7
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=91
###   @2='마순차'
###   @3=7
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=92
###   @2='지호희'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=93
###   @2='최가국'
###   @3=6
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=94
###   @2='마성나'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=95
###   @2='조하마'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=96
###   @2='원바가'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=97
###   @2='최신세'
###   @3=2
###   @4=902
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=98
###   @2='김은다'
###   @3=5
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=99
###   @2='천라국'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=100
###   @2='원신국'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=101
###   @2='방국윤'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=102
###   @2='박세찬'
###   @3=4
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=103
###   @2='최종다'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=104
###   @2='이신찬'
###   @3=4
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=105
###   @2='원종마'
###   @3=6
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=106
###   @2='최신호'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=107
###   @2='지차찬'
###   @3=3
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=108
###   @2='이나종'
###   @3=1
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=109
###   @2='김결나'
###   @3=6
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=110
###   @2='조파호'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=111
###   @2='유신찬'
###   @3=5
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=112
###   @2='원세태'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=113
###   @2='방호혜'
###   @3=5
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=114
###   @2='유마자'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=115
###   @2='최순신'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=116
###   @2='조윤혜'
###   @3=7
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=117
###   @2='조호호'
###   @3=3
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=118
###   @2='마세사'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=119
###   @2='방결희'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=120
###   @2='지국혜'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=121
###   @2='박세결'
###   @3=3
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=122
###   @2='조지혜'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=123
###   @2='방은희'
###   @3=7
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=124
###   @2='이성가'
###   @3=7
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=125
###   @2='원지신'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=126
###   @2='천윤아'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=127
###   @2='원순지'
###   @3=1
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=128
###   @2='이윤바'
###   @3=7
###   @4=907
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=129
###   @2='김신호'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=130
###   @2='원혜호'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=131
###   @2='천윤사'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=132
###   @2='천희가'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=133
###   @2='원결바'
###   @3=5
###   @4=905
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=134
###   @2='마성호'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=135
###   @2='이성다'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=136
###   @2='조사자'
###   @3=5
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=137
###   @2='천찬혜'
###   @3=3
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=138
###   @2='전지사'
###   @3=6
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=139
###   @2='방자세'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=140
###   @2='지아마'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=141
###   @2='김찬마'
###   @3=2
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=142
###   @2='방가사'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=143
###   @2='배아순'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=144
###   @2='최호희'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=145
###   @2='최혜혜'
###   @3=4
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=146
###   @2='유태차'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=147
###   @2='원국은'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=148
###   @2='조혜은'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=149
###   @2='조가마'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=150
###   @2='김찬라'
###   @3=7
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=151
###   @2='최신세'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=152
###   @2='박성종'
###   @3=1
###   @4=901
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=153
###   @2='지나국'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=154
###   @2='마파결'
###   @3=1
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=155
###   @2='조태국'
###   @3=5
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=156
###   @2='방나차'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=157
###   @2='김지희'
###   @3=3
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=158
###   @2='유나순'
###   @3=5
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=159
###   @2='조윤호'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=160
###   @2='배다결'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=161
###   @2='배희호'
###   @3=1
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=162
###   @2='방호성'
###   @3=4
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=163
###   @2='김세은'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=164
###   @2='최성라'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=165
###   @2='마신신'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=166
###   @2='유윤사'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=167
###   @2='전파자'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=168
###   @2='박국다'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=169
###   @2='김다바'
###   @3=5
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=170
###   @2='원호신'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=171
###   @2='김호파'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=172
###   @2='방나자'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=173
###   @2='박세자'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=174
###   @2='원결바'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=175
###   @2='김태신'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=176
###   @2='최신신'
###   @3=2
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=177
###   @2='배가하'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=178
###   @2='지나다'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=179
###   @2='박사파'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=180
###   @2='천신아'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=181
###   @2='이가세'
###   @3=1
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=182
###   @2='방신다'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=183
###   @2='방태가'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=184
###   @2='박하아'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=185
###   @2='천성가'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=186
###   @2='이호라'
###   @3=3
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=187
###   @2='천다종'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=188
###   @2='이하결'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=189
###   @2='이은호'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=190
###   @2='이성다'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=191
###   @2='이신신'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=192
###   @2='마세가'
###   @3=2
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=193
###   @2='원세순'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=194
###   @2='원윤가'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=195
###   @2='김세윤'
###   @3=6
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=196
###   @2='최찬라'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=197
###   @2='유호윤'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=198
###   @2='박차호'
###   @3=5
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=199
###   @2='마바순'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=200
###   @2='방국가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=201
###   @2='최세마'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=202
###   @2='조라종'
###   @3=6
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=203
###   @2='이지마'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=204
###   @2='김신호'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=205
###   @2='김은다'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=206
###   @2='마세혜'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=207
###   @2='김하세'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=208
###   @2='원순세'
###   @3=5
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=209
###   @2='원마종'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=210
###   @2='마사혜'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=211
###   @2='박나신'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=212
###   @2='전호사'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=213
###   @2='지지호'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=214
###   @2='천혜파'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=215
###   @2='지사세'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=216
###   @2='방나태'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=217
###   @2='김지하'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=218
###   @2='지찬태'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=219
###   @2='조사나'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=220
###   @2='지차순'
###   @3=6
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=221
###   @2='지희태'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=222
###   @2='이희나'
###   @3=5
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=223
###   @2='배신마'
###   @3=7
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=224
###   @2='배나희'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=225
###   @2='마아세'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=226
###   @2='전바신'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=227
###   @2='박희윤'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=228
###   @2='천결호'
###   @3=1
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=229
###   @2='마사혜'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=230
###   @2='최종바'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=231
###   @2='원파가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=232
###   @2='지희결'
###   @3=5
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=233
###   @2='김자마'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=234
###   @2='방성세'
###   @3=1
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=235
###   @2='마바성'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=236
###   @2='천마마'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=237
###   @2='최가세'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=238
###   @2='김파희'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=239
###   @2='마찬아'
###   @3=5
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=240
###   @2='김세가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=241
###   @2='전차나'
###   @3=2
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=242
###   @2='유희국'
###   @3=2
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=243
###   @2='전희마'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=244
###   @2='마호차'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=245
###   @2='배태바'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=246
###   @2='배나희'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=247
###   @2='유은종'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=248
###   @2='원세마'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=249
###   @2='배마가'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=250
###   @2='유결호'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=251
###   @2='지태윤'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`emp`
### SET
###   @1=252
###   @2='배호가'
###   @3=7
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
# at 198094
#251210 14:30:06 server id 1  end_log_pos 198125 CRC32 0x57303b6a 	Xid = 5115
COMMIT/*!*/;
# at 198125
#251210 14:30:06 server id 1  end_log_pos 198202 CRC32 0xd1d75097 	Anonymous_GTID	last_committed=280	sequence_number=281	rbr_only=no	original_committed_timestamp=1765344606860823	immediate_commit_timestamp=1765344606860823	transaction_length=204
# original_commit_timestamp=1765344606860823 (2025-12-10 14:30:06.860823 KST)
# immediate_commit_timestamp=1765344606860823 (2025-12-10 14:30:06.860823 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606860823*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198202
#251210 14:30:06 server id 1  end_log_pos 198329 CRC32 0x261c1728 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5116
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Emp` ENABLE KEYS */
/*!*/;
# at 198329
#251210 14:30:06 server id 1  end_log_pos 198408 CRC32 0x231ff3c7 	Anonymous_GTID	last_committed=281	sequence_number=282	rbr_only=no	original_committed_timestamp=1765344606869222	immediate_commit_timestamp=1765344606869222	transaction_length=317
# original_commit_timestamp=1765344606869222 (2025-12-10 14:30:06.869222 KST)
# immediate_commit_timestamp=1765344606869222 (2025-12-10 14:30:06.869222 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606869222*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198408
#251210 14:30:06 server id 1  end_log_pos 198646 CRC32 0x672bea23 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5126
SET TIMESTAMP=1765344606.867273/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
CREATE DEFINER=`root`@`%` TRIGGER `tr_emp_after_insert` AFTER INSERT ON `emp` FOR EACH ROW update Dept set empcnt = empcnt + 1
   where id = NEW.dept 
/*!*/;
# at 198646
#251210 14:30:06 server id 1  end_log_pos 198725 CRC32 0x01046131 	Anonymous_GTID	last_committed=282	sequence_number=283	rbr_only=no	original_committed_timestamp=1765344606877126	immediate_commit_timestamp=1765344606877126	transaction_length=422
# original_commit_timestamp=1765344606877126 (2025-12-10 14:30:06.877126 KST)
# immediate_commit_timestamp=1765344606877126 (2025-12-10 14:30:06.877126 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606877126*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198725
#251210 14:30:06 server id 1  end_log_pos 199068 CRC32 0x75e580a1 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5139
SET TIMESTAMP=1765344606.875280/*!*/;
CREATE DEFINER=`root`@`%` TRIGGER `tr_emp_after_update` AFTER UPDATE ON `emp` FOR EACH ROW begin
    IF NEW.dept <> OLD.dept THEN
        update Dept set empcnt = empcnt + if(id = NEW.dept, 1, -1)
         where id in (NEW.dept, OLD.dept);
    END IF;
end
/*!*/;
# at 199068
#251210 14:30:06 server id 1  end_log_pos 199147 CRC32 0x1972dc66 	Anonymous_GTID	last_committed=283	sequence_number=284	rbr_only=no	original_committed_timestamp=1765344606885920	immediate_commit_timestamp=1765344606885920	transaction_length=317
# original_commit_timestamp=1765344606885920 (2025-12-10 14:30:06.885920 KST)
# immediate_commit_timestamp=1765344606885920 (2025-12-10 14:30:06.885920 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606885920*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 199147
#251210 14:30:06 server id 1  end_log_pos 199385 CRC32 0xfc0b67b6 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5152
SET TIMESTAMP=1765344606.883887/*!*/;
CREATE DEFINER=`root`@`%` TRIGGER `tr_emp_after_delete` AFTER DELETE ON `emp` FOR EACH ROW update Dept set empcnt = empcnt - 1
   where id = OLD.dept 
/*!*/;
# at 199385
#251210 14:30:06 server id 1  end_log_pos 199462 CRC32 0xe0737f3e 	Anonymous_GTID	last_committed=284	sequence_number=285	rbr_only=no	original_committed_timestamp=1765344606897347	immediate_commit_timestamp=1765344606897347	transaction_length=216
# original_commit_timestamp=1765344606897347 (2025-12-10 14:30:06.897347 KST)
# immediate_commit_timestamp=1765344606897347 (2025-12-10 14:30:06.897347 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606897347*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 199462
#251210 14:30:06 server id 1  end_log_pos 199601 CRC32 0xa25dc42f 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5160
SET TIMESTAMP=1765344606/*!*/;
SET @@session.sql_mode=524288/*!*/;
DROP TABLE IF EXISTS `notice` /* generated by server */
/*!*/;
# at 199601
#251210 14:30:06 server id 1  end_log_pos 199680 CRC32 0xca9fddd4 	Anonymous_GTID	last_committed=285	sequence_number=286	rbr_only=no	original_committed_timestamp=1765344606957509	immediate_commit_timestamp=1765344606957509	transaction_length=974
# original_commit_timestamp=1765344606957509 (2025-12-10 14:30:06.957509 KST)
# immediate_commit_timestamp=1765344606957509 (2025-12-10 14:30:06.957509 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606957509*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 199680
#251210 14:30:06 server id 1  end_log_pos 200575 CRC32 0xb28c92ba 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5163
SET TIMESTAMP=1765344606/*!*/;
SET @@session.explicit_defaults_for_timestamp=1/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `Notice` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  `workdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `writer` int unsigned DEFAULT NULL COMMENT '작성자',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '내용',
  PRIMARY KEY (`id`),
  KEY `fk_Notice_writer` (`writer`),
  FULLTEXT KEY `ft_idx_Notice_title_contents` (`title`,`contents`),
  CONSTRAINT `fk_Notice_writer` FOREIGN KEY (`writer`) REFERENCES `Emp` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 200575
#251210 14:30:06 server id 1  end_log_pos 200652 CRC32 0xf87373c9 	Anonymous_GTID	last_committed=286	sequence_number=287	rbr_only=no	original_committed_timestamp=1765344606961928	immediate_commit_timestamp=1765344606961928	transaction_length=208
# original_commit_timestamp=1765344606961928 (2025-12-10 14:30:06.961928 KST)
# immediate_commit_timestamp=1765344606961928 (2025-12-10 14:30:06.961928 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606961928*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 200652
#251210 14:30:06 server id 1  end_log_pos 200783 CRC32 0x45606156 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5169
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Notice` DISABLE KEYS */
/*!*/;
# at 200783
#251210 14:30:06 server id 1  end_log_pos 200862 CRC32 0xf65ac104 	Anonymous_GTID	last_committed=287	sequence_number=288	rbr_only=yes	original_committed_timestamp=1765344606963709	immediate_commit_timestamp=1765344606963709	transaction_length=949
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344606963709 (2025-12-10 14:30:06.963709 KST)
# immediate_commit_timestamp=1765344606963709 (2025-12-10 14:30:06.963709 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606963709*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 200862
#251210 14:30:06 server id 1  end_log_pos 200944 CRC32 0xc0781dbc 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
BEGIN
/*!*/;
# at 200944
#251210 14:30:06 server id 1  end_log_pos 201008 CRC32 0xc42ea886 	Table_map: `tdb`.`notice` mapped to number 282
# has_generated_invisible_primary_key=0
# at 201008
#251210 14:30:06 server id 1  end_log_pos 201701 CRC32 0x8d10e835 	Write_rows: table id 282 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XgU5aRMBAAAAQAAAADARAwAAABoBAAAAAAEAA3RkYgAGbm90aWNlAAYDEREPA/wFAAD8AwIwAQHA
AgHghqguxA==
XgU5aR4BAAAAtQIAAOUTAwAAABoBAAAAAAcAAgAG/xABAAAAaTjLVWk4y1UMAOyEuOyiheuMgOyZ
lR8A7KGw7ISg7J2YIOygnDTrjIAg6rWt7JmV7J2064ukLhACAAAAaTjLVWk4y1UGAOuLqOq1sHQA
64uo6rWw7JmV6rKAKOaqgOWQm+eOi+WEiSnsnYAg7ZWc66+87KGx7J2YIOyLnOyhsOydtOyekCDq
s6DsobDshKAo5Y+k5pyd6a6uKeydmCDqta3sobAo5ZyL56WWKSwg64yA7KKF6rWQ7J2YIOyLnOye
kS4QAwAAAGk4y1VpOMtVCQDsoJXslb3smqliAOyhsOyEoCDtm4TquLDsnZgg66y47Iug7J207J6Q
IOyLpO2VmeyekMK37KCA7Iig6rCAwrfsi5zsnbjCt+yyoO2VmeyekMK36rO87ZWZ7J6Qwrfqs7Xt
lZnsnpDsnbTri6QuEAQAAABpOMtVaTjLVQYA6rOE67CxHgDrsLHsoJwg66eQ6riw7J2YIOq1sOyd
uOydtOuLpC4QBQAAAGk4y1VpOMtVCQDsnbTsiJzsi6BsAOyhsOyEoCDspJHquLDsnZgg66y07Iug
7J207JeI64ukLiDrs7jqtIDsnYAg642V7IiYKOW+t+awtCksIOyekOuKlCDsl6ztlbQo5rGd6Kun
KSwg7Iuc7Zi464qUIOy2qeustCjlv6DmraYpLhAGAAAAaTjLVWk4y1UJAOq5gOycoOyLoHoA7Iug
65287J2YIO2ZlOuekeydmCDsmrDrkZDrqLjrpqzsmIDsnLzrqbAg7YOc64yA6rCB6rCEKOWkquWk
p+inkuW5sinsnbTsl4jqs6Ag7Iug65287JeQIOq3gOyInO2VnCDqsIDslbwg7JmV7KGx7J2YIO2b
hOyGkC416BCN
'/*!*/;
### INSERT INTO `tdb`.`notice`
### SET
###   @1=1
###   @2=1765329749
###   @3=1765329749
###   @4='세종대왕'
###   @5=NULL
###   @6='조선의 제4대 국왕이다.'
### INSERT INTO `tdb`.`notice`
### SET
###   @1=2
###   @2=1765329749
###   @3=1765329749
###   @4='단군'
###   @5=NULL
###   @6='단군왕검(檀君王儉)은 한민족의 시조이자 고조선(古朝鮮)의 국조(國祖), 대종교의 시작.'
### INSERT INTO `tdb`.`notice`
### SET
###   @1=3
###   @2=1765329749
###   @3=1765329749
###   @4='정약용'
###   @5=NULL
###   @6='조선 후기의 문신이자 실학자·저술가·시인·철학자·과학자·공학자이다.'
### INSERT INTO `tdb`.`notice`
### SET
###   @1=4
###   @2=1765329749
###   @3=1765329749
###   @4='계백'
###   @5=NULL
###   @6='백제 말기의 군인이다.'
### INSERT INTO `tdb`.`notice`
### SET
###   @1=5
###   @2=1765329749
###   @3=1765329749
###   @4='이순신'
###   @5=NULL
###   @6='조선 중기의 무신이었다. 본관은 덕수(德水), 자는 여해(汝諧), 시호는 충무(忠武).'
### INSERT INTO `tdb`.`notice`
### SET
###   @1=6
###   @2=1765329749
###   @3=1765329749
###   @4='김유신'
###   @5=NULL
###   @6='신라의 화랑의 우두머리였으며 태대각간(太大角干)이었고 신라에 귀순한 가야 왕족의 후손.'
# at 201701
#251210 14:30:06 server id 1  end_log_pos 201732 CRC32 0x3f17b92c 	Xid = 5170
COMMIT/*!*/;
# at 201732
#251210 14:30:06 server id 1  end_log_pos 201809 CRC32 0x9c106973 	Anonymous_GTID	last_committed=288	sequence_number=289	rbr_only=no	original_committed_timestamp=1765344606965200	immediate_commit_timestamp=1765344606965200	transaction_length=207
# original_commit_timestamp=1765344606965200 (2025-12-10 14:30:06.965200 KST)
# immediate_commit_timestamp=1765344606965200 (2025-12-10 14:30:06.965200 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606965200*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 201809
#251210 14:30:06 server id 1  end_log_pos 201939 CRC32 0x79c6070d 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5171
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `Notice` ENABLE KEYS */
/*!*/;
# at 201939
#251210 14:30:06 server id 1  end_log_pos 202016 CRC32 0x2c365c61 	Anonymous_GTID	last_committed=289	sequence_number=290	rbr_only=no	original_committed_timestamp=1765344606969741	immediate_commit_timestamp=1765344606969741	transaction_length=218
# original_commit_timestamp=1765344606969741 (2025-12-10 14:30:06.969741 KST)
# immediate_commit_timestamp=1765344606969741 (2025-12-10 14:30:06.969741 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606969741*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 202016
#251210 14:30:06 server id 1  end_log_pos 202157 CRC32 0xb0b3c862 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5176
SET TIMESTAMP=1765344606/*!*/;
DROP TABLE IF EXISTS `stopword` /* generated by server */
/*!*/;
# at 202157
#251210 14:30:06 server id 1  end_log_pos 202236 CRC32 0x502f0f3a 	Anonymous_GTID	last_committed=290	sequence_number=291	rbr_only=no	original_committed_timestamp=1765344606977045	immediate_commit_timestamp=1765344606977045	transaction_length=337
# original_commit_timestamp=1765344606977045 (2025-12-10 14:30:06.977045 KST)
# immediate_commit_timestamp=1765344606977045 (2025-12-10 14:30:06.977045 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606977045*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 202236
#251210 14:30:06 server id 1  end_log_pos 202494 CRC32 0x993a6e94 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5179
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `StopWord` (
  `value` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 202494
#251210 14:30:06 server id 1  end_log_pos 202571 CRC32 0xa6443e0b 	Anonymous_GTID	last_committed=291	sequence_number=292	rbr_only=no	original_committed_timestamp=1765344606981241	immediate_commit_timestamp=1765344606981241	transaction_length=210
# original_commit_timestamp=1765344606981241 (2025-12-10 14:30:06.981241 KST)
# immediate_commit_timestamp=1765344606981241 (2025-12-10 14:30:06.981241 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606981241*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 202571
#251210 14:30:06 server id 1  end_log_pos 202704 CRC32 0x1d9feafe 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5185
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `StopWord` DISABLE KEYS */
/*!*/;
# at 202704
#251210 14:30:06 server id 1  end_log_pos 202783 CRC32 0x3971b204 	Anonymous_GTID	last_committed=292	sequence_number=293	rbr_only=yes	original_committed_timestamp=1765344606987656	immediate_commit_timestamp=1765344606987656	transaction_length=6094
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344606987656 (2025-12-10 14:30:06.987656 KST)
# immediate_commit_timestamp=1765344606987656 (2025-12-10 14:30:06.987656 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606987656*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 202783
#251210 14:30:06 server id 1  end_log_pos 202857 CRC32 0xe52d4a2d 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344606/*!*/;
BEGIN
/*!*/;
# at 202857
#251210 14:30:06 server id 1  end_log_pos 202912 CRC32 0x07223ebb 	Table_map: `tdb`.`stopword` mapped to number 283
# has_generated_invisible_primary_key=0
# at 202912
#251210 14:30:06 server id 1  end_log_pos 208767 CRC32 0x38b3c38f 	Write_rows: table id 283 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XgU5aRMBAAAANwAAAKAYAwAAABsBAAAAAAEAA3RkYgAIc3RvcHdvcmQAAQ8CfAAAAgHguz4iBw==
XgU5aR4BAAAA3xYAAH8vAwAAABsBAAAAAAcAAgAB/wAM6rCA6rmM7Iqk66GcAAbqsIDroLkABuqw
geqwgQAG6rCB7J6QAAbqsIHsooUAEuqwluqzoOunkO2VmOyekOuptAAG6rCZ64ukAAbqsJnsnbQA
D+qwnOydmOy5mOyViuqzoAAJ6rGw64uI7JmAAAbqsbDrsJQABuqxsOydmAAG6rKD6rO8AAbqsoPr
k6QACeqyjOuLpOqwgAAJ6rKM7Jqw64ukAAbqsqjsmrAADOqyrOyngOyXkOyEnAAJ7J2066W064uk
AAbsnojri6QADOqyuOyCrOqyuOyCrAAM6rOg66Ck7ZWY66m0AAbqs6DroZwADOqzteuPmeycvOuh
nAAG6rO87JewAAzqtIDqs4Tsl4bsnbQACeq0gOugqOydtAAJ6rSA7ZWY7JesAAbqtIDtlZwADOq0
gO2VtOyEnOuKlAAP6rWs7LK07KCB7Jy866GcAAzqtazthqDtlZjri6QABuq3uOuTpAAG6re465WM
AAbqt7jrnpgACeq3uOuemOuPhAAJ6re4656Y7IScAAnqt7jrn6zrgpgACeq3uOufrOuLiAAM6re4
65+s64uI6rmMAAnqt7jrn6zrqbQADOq3uOufrOuvgOuhnAAM6re465+s7ZWc7KaJAAbqt7jrn7AA
Ceq5jOuLreyXkAAJ6re465+w642wAAnqt7jrn7DspokABuq3uOufvAAY6re465+87JeQ64+E67aI
6rWs7ZWY6rOgAAnqt7jroIfqsowADO2VqOycvOuhnOyNqAAJ6re466CH7KeAAAnslYrri6TrqbQA
CeyViuycvOuptAAM6re466CH7KeA66eMABLqt7jroIfsp4DslYrsnLzrqbQACeq3uOumrOqzoAAM
6re466as7ZWY7JesAAzqt7jrp4zsnbTri6QABuq3uOyXkAAJ65Sw66W064qUAAnqt7jsnITsl5AA
Buq3uOyggAAM6re47KSR7JeQ7IScAAnqt7jsuZjsp4AABuyViuuLpAAJ6re86rGw66GcAAzqt7zq
sbDtlZjsl6wACeq4sOuMgOyXrAAM6riw7KCQ7Jy866GcAAzquLDspIDsnLzroZwABuq4sO2DgAAM
6rmM64ut7Jy866GcAAbquYzslYUABuq5jOyngAAJ66+47LmY64ukAAnquYzsp4Drj4QABuq9iOuL
uQAG64GZ64GZAAbrgbzsnbUADOuCmOuouOyngOuKlAAG64Ko65OkAAbrgqjsp5MABuuEiO2drAAJ
64SI7Z2s65OkAAnrhbztlZjsp4AACeuGgOudvOuLpAAG64iE6rCAAAzslYzqsqDripTqsIAABuuI
hOq1rAAG64uk66W4AAzrsKnrqbTsnLzroZwABuuLpOunjAAG64uk7ISvAAbri6TshowABuuLpOyI
mAAG64uk7IucAAzrp5DtlZjsnpDrqbQAD+uLpOyLnOunkO2VmOuptAAG64uk7J2MAAnri6TsnYzs
l5AADOuLpOydjOycvOuhnAAG64uo7KeAAAbri7Xri6QABuuLueyLoAAG64u57J6lAAbrjIDroZwA
Bu2VmOuLpAAJ64yA7ZWY66m0AAnrjIDtlZjsl6wABuuMgO2VtAAJ64yA7ZW07IScAAbrjJXqt7gA
CeuNlOq1rOuCmAAM642U6rWw64uk64KYAAnrjZTrnbzrj4QACeuNlOu2iOyWtAAJ642U7Jqx642U
AAzrjZTsmrHsnbTripQADOuPhOuLrO2VmOuLpAAM64+E7LCp7ZWY64ukAAnrj5nsi5zsl5AABuuP
meyViAAM65Cc67CU7JeQ7JW8AAnrkJzsnbTsg4EADOuRkOuyiOynuOuhnAAG65Gl65GlAAnrkqTr
lLDrnbwACeuSpOydtOyWtAAJ65Og6rCE7JeQAAbrk7Hrk7EABuuUqeuPmQAG65Sw6528AAnrlLDr
nbzshJwABuuUsOychAAJ65Sw7KeA7KeAAAbrlYzqsIAABuuQmOyWtAAJ65WM66y47JeQAAbrmJDt
lZwABuuaneuanQAG7ZW064+EAAnsnbjtlZjsl6wACeuhnOu2gO2EsAAG66Gc7I2oAAzrp4jsnYzr
jIDroZwABuuniOyggAAJ66eI7KCA64+EAAbrp4jsuZgADOunieuhoO2VmOqzoAAJ66q77ZWY64uk
AAbrp4zslb0ACeunjOyVveyXkAAG66eM7J2AAAnslYTri4jri6QABuunjOydtAAG66eM7J28AAbr
p4ztgbwADOunkO2VoOqyg+uPhAAG7JeG6rOgAAbrp6TrsogADOuplOyTsOqygeuLpAAG66qo65GQ
AAbrrLTroLUADOustOumjuyTsOqzoAAG66y07IqoAAbrrLTsl4cAD+ustOyXh+uVjOusuOyXkAAG
66y866GgABLrsJTqvrjslrTrp5DtlZjrqbQAFeuwlOq+uOyWtOunkO2VmOyekOuptAAM67CU6r64
7Ja07IScAAnrp5DtlZjrqbQACe2VnOuLpOuptAAG67CU6r+UAAbrsJTroZwADOuwlOyZgOqwmeyd
tAAG67CW7JeQAAnslYjrkJzri6QACeuwmOuMgOuhnAAJ67CY65Oc7IucAAbrsoTquIgADOuztOuK
lOuNsOyEnAAJ67O064uk642UAAnrs7Trk5zrk50ACeuzuOuMgOuhnAAG67SQ6528AAnrtoDrpZjs
nZgACeyCrOuejOuTpAAG67aA7YSwAAzrtojqtaztlZjqs6AADOu2iOusuO2VmOqzoAAG67aV67aV
AA/ruYTqsbHqsbDrpqzri6QACeu5hOq1kOyggQAJ67mE6ri47IiYAAbsl4bri6QACeu5hOuhnOyG
jAAG67mE66GdAAzruYTsirftlZjri6QACeu5hOy2lOyWtAAG67O07JWEAAnruYTtlZjrqbQABuu/
kOunjAAJ7JWE64uI6528AA/rv5Drp4zslYTri4jrnbwACeu/kOydtOuLpAAG7IKQ6rGxAA/sgpDq
sbHqsbDrpqzri6QAD+yDgeuMgOyggeycvOuhnAAP7IOd6rCB7ZWc64yA66GcAAbshKTroLkABuyE
pOuniAAG7ISk7IKsAAbshozsg50ABuyGjOyduAAJ7Iq164uI6rmMAAnsirXri4jri6QABuyLnOqw
gQAG7Iuc6rCEAAzsi5zsnpHtlZjsl6wACeyLnOy0iOyXkAAJ7Iuc7YKk64ukAAbsi6TroZwACeyL
rOyngOyWtAAG7JWE64uIABLslYTri4jrgpjri6TrpbzqsIAADOyVhOuLiOudvOuptAAJ7JWE64uI
66m0AA/slYTri4jsl4jri6TrqbQACeyVhOuemOyclwAM7JWE66y06rGw64KYAAnslYTrrLTrj4QA
BuyVhOyVvAAJ7JWE7Jq465+sAAbslYTsnbQACeyVhOydtOqzoAAJ7JWE7J206rWsAAnslYTsnbTs
lbwACeyVhOydtOy/oAAG7JWE7ZWYAAbslYTtmYkABuyViuq4sAAJ7JyE7ZWY7JesAAnsnITtlbTs
hJwACeyVjOyVmOyWtAAJ7JWe7JeQ7IScAAnslZ7snZjqsoMABuyVveqwhAAG7JaR7J6QAAzslrTq
uLDsl6zssKgABuyWtOuKkAAG64WE64+EAAnslrTripDqsoMACeyWtOuKkOqzswAJ7Ja064qQ65WM
AAnslrTripDsqr0ACeyWtOuKkO2VtAAG7Ja065SUAAbslrTrlYwACeyWtOuWoO2VnAAG7Ja065ak
AAnslrTrlqTqsoMADOyWtOuWpOqyg+uTpAAJ7Ja065a76rKMAAnslrTrlrvtlbQABuyWtOydtAAJ
7Ja07Ke47IScAAnslrTsqIvrk6AACeyWtOyplOyImAAG7Ja07LCMAAzslrTssIzrkI/rk6AADOyW
tOywjOuQj+yWtAAP7Ja07LCM7ZWY65Og7KeAAAzslrTssIztlZjsl6wABuyWuOygnAAJ7Ja47KCg
6rCAAAbslrzrp4gABuuQmOuKlAAJ7Ja866eI6rCEAAnslrzrp4jrgpgADOyWvOuniOuToOyngAAM
7Ja866eI66eM7YG8AAnslrzrp4jtgbwABuyXieyXiQAG6rCA7IScAAbri6zroKQACe2VnO2VmOuL
pAAG7JeQ6rKMAAbsl5DshJwABuyXrOq4sAAG7Jes642fAAnsl6zrn6zrtoQADOyXrOuztOyLnOyY
pAAG7Jes67aAAAbsl6zshK8ACeyXrOyghO2eiAAG7Jes7LCoAAzsl7DqtIDrkJjri6QACeyXsOyd
tOyEnAAG7JiB7LCoAAnsmIbsgqzrnowABuyYiOulvAAG65Ok66m0AAnrk6TsnpDrqbQACeyYiOy7
qOuMgAAJ7JiI7ZWY66m0AAnsmKTroZzsp4AACeyYpOultOuLpAAM7Jik7J6Q66eI7J6QAAbsmKTs
p4EABuyYpO2YuAAJ7Jik7Z6I66CkAAbqsJnsnYAACeyZgOultOultAAG7JmA7JWEAAzsmZzrg5Dt
lZjrqbQACeyZuOyXkOuPhAAJ7JqU66eM7YG8AAnsmpTrp4ztlZwADOyalOunjO2VnOqxuAAJ7JqU
7Luo64yAAAnsmrDrpbTrpbQABuyasOumrAAJ7Jqw66as65OkAAbsmrDshKAABuyasOyXkAAV7KKF
7ZWp7ZWc6rKD6rO86rCZ7J20AAbsmrTsmrQACeychOyXkOyEnAAV7ISc7Iig7ZWc67CU7JmA6rCZ
7J20AAbsnJnsnJkABuycvOuhnAAJ7Jy866Gc7IScAAnsnLzroZzsjagABuydkeuLuQAM7J2Y6rGw
7ZWY7JesAAzsnZjsp4DtlZjsl6wABuydmO2VtAAM7J2Y7ZW065CY64ukAAnsnZjtlbTshJwABuuQ
mOuLpAAG7Jm47JeQAAnsoJXrj4TsnZgABuydtOqygwAG7J206rOzAAbsnbTrlYwACeydtOudvOup
tAAG7J20656YABLsnbTrn6zsnbTrn6ztlZjri6QACeydtOufrO2VnAAG7J2065+wAA/snbTrn7Ts
oJXrj4TroZwACeydtOugh+qyjAAG66eO7J2AAA/snbTroIfqsozrkJjrqbQAFeydtOugh+qyjOun
kO2VmOyekOuptAAM7J2066CH6rWs64KYAAbsnbTroZwAD+ydtOultOq4sOq5jOyngAAM7J2066as
7ZWY7JesAAnsnbTrp4ztgbwABuydtOuyiAAG7J2067SQAAbsnbTsg4EACeydtOyWtOyEnAAJ7J20
7JeI64ukAAbsnbTsmYAAD+ydtOyZgOqwmeuLpOuptAAM7J207Jm47JeQ64+EAAzsnbTsmqntlZjs
l6wAD+ydtOycoOunjOycvOuhnAAG7J207KCgAAnsnbTsp4Drp4wABuydtOyqvQAJ7J207LKc6rWs
AAnsnbTsspzsnKEACeydtOyynOy5oAAJ7J207LKc7YyUAAnrk6/tlZjri6QABuyduOygoAAM7J28
6rKD7J2064ukAAbsnbzqs7EABuydvOuLqAAG7J2865WMAA/snbzrsJjsoIHsnLzroZwADOydvOyn
gOudvOuPhAAG7J6E7JeQAAzti4Drprzsl4bri6QADOyeheqwge2VmOyXrAAM7J6F7J6l7JeQ7ISc
AAnsnofrlLDrnbwABuyekOq4sAAJ7J6Q6riw7KeRAAnsnpDrp4jsnpAABuyekOyLoAAG7J6g6rmQ
AAbsnqDsi5wABuyggOqygwAM7KCA6rKD66eM7YG8AAbsoIDquLAABuyggOyqvQAG7KCA7Z2sAAbs
oITrtoAABuyghOyekAAG7KCE7ZuEAAnsoJDsl5DshJwACeygleuPhOyXkAAJ7KCc6rCB6riwAAzs
oJzsmbjtlZjqs6AABuyhsOq4iAAG7KGw7LCoAAnsobDssKjrj4QABuyhuOyhuAAG7KKL7JWEAAbs
oo3soo0ADOyjvOujqeyjvOujqQAM7KO87KCA7ZWY7KeAAAbslYrqs6AABuykhOydgAAJ66qw656P
64ukAA/spITsnYDrqqjrpbjri6QACeykkeyXkOyEnAAM7KSR7J2Y7ZWY64KYAAzspojsnYztlZjs
l6wABuymieyLnAAJ7KeA65Og7KeAAAbsp4Drp4wACeyngOunkOqzoAAJ7KeE7Kec66GcAAnsqr3s
nLzroZwACeywqOudvOumrAAG7LC464KYAAzssqvrsojsp7jroZwADOy0neyggeycvOuhnAAG67O0
66m0AAbsvbjsvbgABuy+hey+hQAG7YOA64ukAAbtg4DsnbgABu2Dle2DlQAJ7Yag7ZWY64ukAAnt
hrXtlZjsl6wABu2LiO2DgAAG7Y6E66CBABLtlZjqsozrkKDqsoPsnbTri6QADO2VmOqyjO2VmOuL
pAAM7ZWY6rKg64qU6rCAAAbtlZjqs6AAD+2VmOqzoOyeiOyXiOuLpAAP7ZWY6rOk7ZWY7JiA64uk
AAntlZjqtazrgpgABu2VmOq4sAAP7ZWY6riw64qU7ZWc642wAAntlZjquLDrp4wABu2VmOuptAAP
7ZWY6riw67O064uk64qUAAntlZjquLDsl5AABu2VmOuCmAAJ7ZWY64qQ64uIAAbtlZjripQABuq5
gOyXkAAG7Y647J20AAbrgqvri6QADO2VmOuKlOqyg+uPhAAM7ZWY64qU6rKD66eMAAztlZjripTq
soPsnbQACe2VmOuKlOuwlAAM7ZWY642U652864+EAAntlZjrj4Tri6QAEu2VmOuPhOuhneyLnO2C
pOuLpAAP7ZWY64+E66Gd7ZWY64ukAAntlZjrk6Dsp4AAD+2VmOugpOqzoO2VmOuLpAAM7ZWY66eI
7YSw66m0AAntlaDsiJjroZ0ADO2VmOuptOuQnOuLpAAJ7ZWY66m07IScAAntlZjrrLzrqbAACe2V
mOyXrOq4iAAJ7ZWY7Jes7JW8AAztlZjsnpDrp4jsnpAABu2VmOyngAAM7JWK64qU64uk66m0AAns
lYrrj4TroZ0ACe2VmOyngOuniAAM7ZWY7KeA66eI6528AAntlZjsp4Drp4wABu2VmO2VmAAJ7J20
7Jyg64qUAAnrqrDrnbzrj4QABu2VnOuNsAAJ7ZWc66eI65SUAA/tlZzsoIHsnbTsnojri6QAD+2V
nOy8oOycvOuhnOuKlAAJ7ZWc7ZWt66qpAAzrlLDrpoTsnbTri6QADOyDneqwgeydtOuLpAAG7JWI
64ukAAzsp4Dqsr3snbTri6QABu2emOydtAAG7ZWg65WMAAztlaDrp4ztlZjri6QACe2VoOunneyg
lQAG7ZWg67+QAAztlaDsiJjsnojri6QADO2VoOyImOyeiOyWtAAM7ZWg7KSE7JWM64ukAAztlaDs
p4Drnbzrj4QADO2VoOyngOyWuOyglQAG7ZWo6ruYAAztlbTrj4TrkJzri6QADO2VtOuPhOyii+uL
pAAJ7ZW067SQ7JqUAAntlbTshJzripQADO2VtOyVvO2VnOuLpAAG7ZW07JqUAAntlojslrTsmpQA
Ce2Wpe2VmOuLpAAJ7Zal7ZWY7JesAAntlqXtlbTshJwABu2XiOqxsQAG7ZeI7ZeIAAbtl4ntl4kA
DO2XkOuWoe2XkOuWoQAM7ZiV7Iud7Jy866GcAAbsk7Dsl6wABu2YueyLnAAG7Zi57J2AAAbtmLzs
npAABu2bqOyUrAAG7ZyY7J21AAbtnZDtnZAACe2emOyeheyWtI/Dszg=
'/*!*/;
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='가까스로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='가령'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='각각'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='각자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='각종'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='갖고말하자면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='같다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='같이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='개의치않고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='거니와'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='거바'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='거의'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='것과'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='것들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='게다가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='게우다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='겨우'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='견지에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이르다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='있다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='겸사겸사'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='고려하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='고로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='공동으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='과연'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='관계없이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='관련이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='관하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='관한'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='관해서는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='구체적으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='구토하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그래'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그래도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그래서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러니'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러니까'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러므로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그러한즉'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그런'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='까닭에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그런데'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그런즉'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그럼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그럼에도불구하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그렇게'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='함으로써'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그렇지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않다면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않으면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그렇지만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그렇지않으면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그리고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그리하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그만이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따르는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그위에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그저'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그중에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='그치지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='근거로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='근거하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='기대여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='기점으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='기준으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='기타'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='까닭으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='까악'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='까지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='미치다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='까지도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='꽈당'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='끙끙'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='끼익'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='나머지는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='남들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='남짓'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='너희'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='너희들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='논하지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='놀라다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='누가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='알겠는가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='누구'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다른'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='방면으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다섯'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다소'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다수'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다시'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='말하자면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다시말하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다음'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다음에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='다음으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='단지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='답다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='당신'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='당장'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='대로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='대하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='대하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='대해'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='대해서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='댕그'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더구나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더군다나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더라도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더불어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더욱더'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='더욱이는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='도달하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='도착하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='동시에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='동안'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='된바에야'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='된이상'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='두번째로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='둥둥'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뒤따라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뒤이어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='든간에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='등등'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='딩동'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따라서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따위'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따지지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='때가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='되어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='때문에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='또한'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뚝뚝'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='인하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='로부터'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='로써'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='마음대로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='마저'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='마저도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='마치'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='막론하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='못하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만약'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만약에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만은'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만일'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='만큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='말할것도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='없고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='매번'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='메쓰겁다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='모두'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='무렵'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='무릎쓰고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='무슨'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='무엇'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='무엇때문에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='물론'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바꾸어말하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바꾸어말하자면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바꾸어서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='말하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한다면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바꿔'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='바와같이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='밖에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='안된다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='반대로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='반드시'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='버금'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='보는데서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='보다더'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='보드득'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='본대로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='봐라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='부류의'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='사람들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='부터'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='불구하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='불문하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='붕붕'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비걱거리다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비교적'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비길수'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='없다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비로소'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비록'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비슷하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비추어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='보아'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='비하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뿐만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뿐만아니라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='뿐이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='삐걱'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='삐걱거리다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='상대적으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='생각한대로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='설령'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='설마'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='설사'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='소생'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='소인'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='습니까'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='습니다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='시각'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='시간'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='시작하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='시초에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='시키다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='실로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='심지어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니나다를가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니라면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아니었다면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아래윗'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아무거나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아무도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아야'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아울러'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아이고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아이구'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아이야'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아이쿠'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아하'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='아홉'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='위하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='위해서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='알았어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='앞에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='앞의것'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='약간'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='양자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어기여차'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='년도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느것'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느곳'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느쪽'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어느해'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어디'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떠한'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떤'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떤것'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떤것들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떻게'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어떻해'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어째서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어쨋든'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어쩔수'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어찌'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어찌됏든'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어찌됏어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어찌하든지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='어찌하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='언제'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='언젠가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='되는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마간'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마든지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마만큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='얼마큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='엉엉'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='가서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='달려'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='에게'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여덟'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여러분'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여보시오'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여부'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여섯'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여전히'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='여차'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='연관되다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='연이서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='영차'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='옆사람'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='예를'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='들면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='들자면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='예컨대'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='예하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오로지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오르다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오자마자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오직'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오호'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='오히려'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='같은'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='와르르'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='와아'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='왜냐하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='외에도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='요만큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='요만한'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='요만한걸'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='요컨대'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='우르르'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='우리'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='우리들'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='우선'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='우에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='종합한것과같이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='운운'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='위에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='서술한바와같이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='윙윙'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='으로서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='으로써'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='응당'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='의거하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='의지하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='의해'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='의해되다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='의해서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='되다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='외에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='정도의'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이것'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이곳'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이라면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이래'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이러이러하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이러한'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이런'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이럴정도로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이렇게'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='많은'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이렇게되면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이렇게말하자면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이렇구나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이르기까지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이리하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이만큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이번'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이봐'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이상'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이어서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이었다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이와'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이와같다면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이외에도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이용하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이유만으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이젠'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이지만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이쪽'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이천구'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이천육'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이천칠'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이천팔'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='듯하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='인젠'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일것이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일곱'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일단'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일반적으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='일지라도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='임에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='틀림없다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='입각하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='입장에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='잇따라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='자기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='자기집'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='자마자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='자신'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='잠깐'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='잠시'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='저것'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='저것만큼'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='저기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='저쪽'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='저희'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='전부'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='전자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='전후'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='점에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='정도에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='제각기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='제외하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='조금'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='조차'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='조차도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='졸졸'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='좋아'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='좍좍'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='주룩주룩'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='주저하지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='줄은'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='몰랏다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='줄은모른다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='중에서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='중의하나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='즈음하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='즉시'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='지든지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='지만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='지말고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='진짜로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='쪽으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='차라리'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='참나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='첫번째로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='총적으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='보면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='콸콸'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='쾅쾅'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='타다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='타인'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='탕탕'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='토하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='통하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='틈타'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='펄렁'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하게될것이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하게하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하겠는가'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하고'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하고있었다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하곤하였다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하구나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하기'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하기는한데'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하기만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하기보다는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하기에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하나'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하느니'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='김에'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='편이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='낫다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하는것도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하는것만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하는것이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하는바'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하더라도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하도다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하도록시키다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하도록하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하든지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하려고하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하마터면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할수록'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하면된다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하면서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하물며'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하여금'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하여야'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하자마자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하지'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않는다면'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='않도록'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하지마'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하지마라'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하지만'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='하하'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='이유는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='몰라도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한데'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한마디'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한적이있다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한켠으로는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='한항목'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='따름이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='생각이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='안다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='지경이다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='힘이'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할때'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할만하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할망정'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할뿐'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할수있다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할수있어'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할줄알다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할지라도'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='할지언정'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='함께'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해도된다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해도좋다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해봐요'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해서는'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해야한다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='해요'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='했어요'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='향하다'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='향하여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='향해서'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='허걱'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='허허'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='헉헉'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='헐떡헐떡'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='형식으로'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='쓰여'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='혹시'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='혹은'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='혼자'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='훨씬'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='휘익'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='흐흐'
### INSERT INTO `tdb`.`stopword`
### SET
###   @1='힘입어'
# at 208767
#251210 14:30:06 server id 1  end_log_pos 208798 CRC32 0x44017325 	Xid = 5186
COMMIT/*!*/;
# at 208798
#251210 14:30:06 server id 1  end_log_pos 208875 CRC32 0x69dc5e87 	Anonymous_GTID	last_committed=293	sequence_number=294	rbr_only=no	original_committed_timestamp=1765344606989168	immediate_commit_timestamp=1765344606989168	transaction_length=209
# original_commit_timestamp=1765344606989168 (2025-12-10 14:30:06.989168 KST)
# immediate_commit_timestamp=1765344606989168 (2025-12-10 14:30:06.989168 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606989168*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 208875
#251210 14:30:06 server id 1  end_log_pos 209007 CRC32 0x26556102 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5187
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `StopWord` ENABLE KEYS */
/*!*/;
# at 209007
#251210 14:30:06 server id 1  end_log_pos 209084 CRC32 0xee9b7132 	Anonymous_GTID	last_committed=294	sequence_number=295	rbr_only=no	original_committed_timestamp=1765344606994409	immediate_commit_timestamp=1765344606994409	transaction_length=211
# original_commit_timestamp=1765344606994409 (2025-12-10 14:30:06.994409 KST)
# immediate_commit_timestamp=1765344606994409 (2025-12-10 14:30:06.994409 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344606994409*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 209084
#251210 14:30:06 server id 1  end_log_pos 209218 CRC32 0xd2c8808d 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5192
SET TIMESTAMP=1765344606/*!*/;
DROP TABLE IF EXISTS `t` /* generated by server */
/*!*/;
# at 209218
#251210 14:30:06 server id 1  end_log_pos 209297 CRC32 0x22a3b06b 	Anonymous_GTID	last_committed=295	sequence_number=296	rbr_only=no	original_committed_timestamp=1765344607003387	immediate_commit_timestamp=1765344607003387	transaction_length=532
# original_commit_timestamp=1765344607003387 (2025-12-10 14:30:07.003387 KST)
# immediate_commit_timestamp=1765344607003387 (2025-12-10 14:30:07.003387 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607003387*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 209297
#251210 14:30:06 server id 1  end_log_pos 209750 CRC32 0x7e5a50ae 	Query	thread_id=39	exec_time=1	error_code=0	Xid = 5195
SET TIMESTAMP=1765344606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `T` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` enum('A','B','C','D','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'F' COMMENT '학점',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!*/;
# at 209750
#251210 14:30:07 server id 1  end_log_pos 209827 CRC32 0x39175e75 	Anonymous_GTID	last_committed=296	sequence_number=297	rbr_only=no	original_committed_timestamp=1765344607006789	immediate_commit_timestamp=1765344607006789	transaction_length=203
# original_commit_timestamp=1765344607006789 (2025-12-10 14:30:07.006789 KST)
# immediate_commit_timestamp=1765344607006789 (2025-12-10 14:30:07.006789 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607006789*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 209827
#251210 14:30:07 server id 1  end_log_pos 209953 CRC32 0xe92984c2 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5201
SET TIMESTAMP=1765344607/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `T` DISABLE KEYS */
/*!*/;
# at 209953
#251210 14:30:07 server id 1  end_log_pos 210032 CRC32 0x4e05d596 	Anonymous_GTID	last_committed=297	sequence_number=298	rbr_only=yes	original_committed_timestamp=1765344607008461	immediate_commit_timestamp=1765344607008461	transaction_length=319
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344607008461 (2025-12-10 14:30:07.008461 KST)
# immediate_commit_timestamp=1765344607008461 (2025-12-10 14:30:07.008461 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607008461*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 210032
#251210 14:30:07 server id 1  end_log_pos 210106 CRC32 0x25a70fe3 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344607/*!*/;
BEGIN
/*!*/;
# at 210106
#251210 14:30:07 server id 1  end_log_pos 210161 CRC32 0x0216ec5f 	Table_map: `tdb`.`t` mapped to number 284
# has_generated_invisible_primary_key=0
# at 210161
#251210 14:30:07 server id 1  end_log_pos 210241 CRC32 0x32b12c5e 	Write_rows: table id 284 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XwU5aRMBAAAANwAAAPE0AwAAABwBAAAAAAEAA3RkYgABdAADAQ/+BHgA9wEEAQGAAgHgX+wWAg==
XwU5aR4BAAAAUAAAAEE1AwAAABwBAAAAAAcAAgAD/wABBEhvbmcBAAIDS2ltAgADA0xlZQMABARQ
YXJrBQAFBENob2kFAAYDSGFuBF4ssTI=
'/*!*/;
### INSERT INTO `tdb`.`t`
### SET
###   @1=1
###   @2='Hong'
###   @3=1
### INSERT INTO `tdb`.`t`
### SET
###   @1=2
###   @2='Kim'
###   @3=2
### INSERT INTO `tdb`.`t`
### SET
###   @1=3
###   @2='Lee'
###   @3=3
### INSERT INTO `tdb`.`t`
### SET
###   @1=4
###   @2='Park'
###   @3=5
### INSERT INTO `tdb`.`t`
### SET
###   @1=5
###   @2='Choi'
###   @3=5
### INSERT INTO `tdb`.`t`
### SET
###   @1=6
###   @2='Han'
###   @3=4
# at 210241
#251210 14:30:07 server id 1  end_log_pos 210272 CRC32 0x7ae99094 	Xid = 5202
COMMIT/*!*/;
# at 210272
#251210 14:30:07 server id 1  end_log_pos 210349 CRC32 0x7d8cada6 	Anonymous_GTID	last_committed=298	sequence_number=299	rbr_only=no	original_committed_timestamp=1765344607009339	immediate_commit_timestamp=1765344607009339	transaction_length=202
# original_commit_timestamp=1765344607009339 (2025-12-10 14:30:07.009339 KST)
# immediate_commit_timestamp=1765344607009339 (2025-12-10 14:30:07.009339 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607009339*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 210349
#251210 14:30:07 server id 1  end_log_pos 210474 CRC32 0xa3ee4a67 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5203
SET TIMESTAMP=1765344607/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `T` ENABLE KEYS */
/*!*/;
# at 210474
#251210 14:30:07 server id 1  end_log_pos 210551 CRC32 0x94ae9860 	Anonymous_GTID	last_committed=299	sequence_number=300	rbr_only=no	original_committed_timestamp=1765344607017454	immediate_commit_timestamp=1765344607017454	transaction_length=217
# original_commit_timestamp=1765344607017454 (2025-12-10 14:30:07.017454 KST)
# immediate_commit_timestamp=1765344607017454 (2025-12-10 14:30:07.017454 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607017454*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 210551
#251210 14:30:07 server id 1  end_log_pos 210691 CRC32 0xd763681d 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5208
SET TIMESTAMP=1765344607/*!*/;
DROP TABLE IF EXISTS `testemp` /* generated by server */
/*!*/;
# at 210691
#251210 14:30:07 server id 1  end_log_pos 210770 CRC32 0x049f5465 	Anonymous_GTID	last_committed=300	sequence_number=301	rbr_only=no	original_committed_timestamp=1765344607054434	immediate_commit_timestamp=1765344607054434	transaction_length=984
# original_commit_timestamp=1765344607054434 (2025-12-10 14:30:07.054434 KST)
# immediate_commit_timestamp=1765344607054434 (2025-12-10 14:30:07.054434 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607054434*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 210770
#251210 14:30:07 server id 1  end_log_pos 211675 CRC32 0xe0f47e40 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5211
SET TIMESTAMP=1765344607/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `TestEmp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` tinyint unsigned NOT NULL,
  `salary` int NOT NULL DEFAULT '0',
  `outdt` date DEFAULT NULL COMMENT '퇴사일',
  `auth` enum('admin','manager','employee','temporary','guest') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `remark` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  KEY `idx_Emp_ename_dept` (`dept`,`ename`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50100 PARTITION BY RANGE (`id`)
(PARTITION p1 VALUES LESS THAN (100) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (200) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */
/*!*/;
# at 211675
#251210 14:30:07 server id 1  end_log_pos 211752 CRC32 0xb83ca3f6 	Anonymous_GTID	last_committed=301	sequence_number=302	rbr_only=no	original_committed_timestamp=1765344607058961	immediate_commit_timestamp=1765344607058961	transaction_length=209
# original_commit_timestamp=1765344607058961 (2025-12-10 14:30:07.058961 KST)
# immediate_commit_timestamp=1765344607058961 (2025-12-10 14:30:07.058961 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607058961*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 211752
#251210 14:30:07 server id 1  end_log_pos 211884 CRC32 0x6110cca2 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5217
SET TIMESTAMP=1765344607/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `TestEmp` DISABLE KEYS */
/*!*/;
# at 211884
#251210 14:30:07 server id 1  end_log_pos 211963 CRC32 0xc119927b 	Anonymous_GTID	last_committed=302	sequence_number=303	rbr_only=yes	original_committed_timestamp=1765344607061819	immediate_commit_timestamp=1765344607061819	transaction_length=4043
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765344607061819 (2025-12-10 14:30:07.061819 KST)
# immediate_commit_timestamp=1765344607061819 (2025-12-10 14:30:07.061819 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607061819*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 211963
#251210 14:30:07 server id 1  end_log_pos 212037 CRC32 0xca1ad1ca 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344607/*!*/;
BEGIN
/*!*/;
# at 212037
#251210 14:30:07 server id 1  end_log_pos 212103 CRC32 0xbbb1bdad 	Table_map: `tdb`.`testemp` mapped to number 285
# has_generated_invisible_primary_key=0
# at 212103
#251210 14:30:07 server id 1  end_log_pos 214686 CRC32 0xdcafa860 	Write_rows: table id 285 flags: NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F
# at 214686
#251210 14:30:07 server id 1  end_log_pos 214745 CRC32 0x4daf20ab 	Write_rows: table id 285 flags: NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F
# at 214745
#251210 14:30:07 server id 1  end_log_pos 215896 CRC32 0xa38a2a53 	Write_rows: table id 285 flags: STMT_END_F NO_FOREIGN_KEY_CHECKS_F RELAXED_UNIQUE_CHECKS_F

BINLOG '
XwU5aRMBAAAAQgAAAIc8AwAAAB0BAAAAAAEAA3RkYgAHdGVzdGVtcAAHAw8BAwr+9QV8APcBBFAB
AcACAeCtvbG7
XwU5aR4BAAAAFwoAAJ5GAwAAAB0BAAAAAAYABQABAAAH/xACAAAACeycoOyEuO2YnAQsAQAABXAA
AAAAAwBvABkAAgAbAAMAHgADAAUCAAUeAAIhAGlkYWdlZmFtAgBOAAAKAAAsAAIAIgASAAIAFAAE
AAUBAAwYAGlkbmFtZQnsnKDshLjssKgCACIAEgACABQABAAFAgAMGABpZG5hbWUJ7Jyg7IS47J20
AAMAAAAJ7JuQ7IKs7JWEBGQAAAB50w8FcAAAAAADAG8AGQACABsAAwAeAAMABQMABSEAAiEAaWRh
Z2VmYW0CAE4AAAoAACwAAgAiABIAAgAUAAQABQEADBgAaWRuYW1lCeycoOyEuOywqAIAIgASAAIA
FAAEAAUCAAwYAGlkbmFtZQntmY3quLjsiK0QBAAAAAnquYDtg5ztmJwFvAIAAAUOAAAAAgMADQAF
AQAFAgAFAwAABQAAAAnsp4DshLjqta0HkAEAAHnTDwVwAAAAAAMAbwAZAAIAGwADAB4AAwAFBQAF
LAACIQBpZGFnZWZhbQIATgAACgAALAACACIAEgACABQABAAFAQAMGABpZG5hbWUJ7KeA7IS47LCo
AgAiABIAAgAUAAQABQIADBgAaWRuYW1lCeyngOyEuOywvRAGAAAACey1nOqwgOq1rQQgAwAABQ4A
AAAAAQANAAsAAgAFBgBpZBAHAAAACeuwsO2MjOuCmAEgAwAABVcAAAAABABWACAAAgAiAAMAJQAD
ACgABQAFBwACLQAF9BoF9BppZGZhbWlkZGlkZHh4AQApAAAHAAIAIgASAAIAFAAEAAULAAwYAGlk
bmFtZQnsnKDshLjtmY1QCAAAAAnsm5DshLHqsrACyAAAAAVQCQAAAAnsoITrsJTssKwGhAMAAAVQ
CgAAAAnsp4DsnKTtnawF9AEAAAVQCwAAAAnsoITssKjqsIABhAMAAAVQDAAAAAnsp4DtmLjtlZgD
IAMAAAVQDQAAAAnstZzsooXrnbwFLAEAAAVADgAAAAnrp4jrp4jsiJwBvAIAAIjTDwVQDwAAAAns
m5DsnpDtjIwHyAAAAAVQEAAAAAnsnbTqsrDshLgHvAIAAAVQEQAAAAnsm5DtmLjsi6ACWAIAAAVQ
EgAAAAnsoITqta3ssKwDhwMAAAVQEwAAAAnrsKnshLHssKwDIAMAAAVQFAAAAAnstZztnazqsrAF
vAIAAAVQFQAAAAnsp4DssKztjIwCWAIAAAVQFgAAAAnstZztjIzsp4AEZAAAAAVQFwAAAAnrp4jr
i6TsnKQELAEAAAVQGAAAAAnsnbTsnKTtjIwGWAIAAAVQGQAAAAnsoITri6TsnKQDIAMAAAVAGgAA
AAnquYDrgpjrgpgBIAMAAIjTDwVQGwAAAAnsm5DtmLjsiJwHWAIAAAVQHAAAAAnsobDqta3qta0H
kAEAAAVQHQAAAAnsnbTsnKTrsJQBLAEAAAVQHgAAAAnquYDrsJTsiJwCIAMAAAVQHwAAAAnrsKns
nKTsnKQGWAIAAAVQIAAAAAnrsKntmLjsp4AEhAMAAAVQIQAAAAnstZzrp4jtmLgB9AEAAAVQIgAA
AAnsoITslYTqsIADWAIAAAVQIwAAAAnsm5DshLHtg5wGWAIAAAVQJAAAAAnrp4jri6TrnbwDhAMA
AAVQJQAAAAnsp4DrnbztjIwDyAAAAAVQJgAAAAnquYDsnpDrgpgDLAEAAAVQJwAAAAnsoITqsIDs
iJwCkAEAAAVQKAAAAAnsnKDtmLjqsIAGkAEAAAVQKQAAAAnrsKnsgqzsnpAGkAEAAAVQKgAAAAnr
p4jsnKTqsrACvAIAAAVQKwAAAAnrp4jrp4jssKgBIAMAAAVQLAAAAAnsnbTssKzqsIAEZAAAAAVQ
LQAAAAnsnKDtg5ztjIwF9AEAAAVQLgAAAAnsnKDtmLjri6QEyAAAAAVQLwAAAAnsnbTsi6DtnawG
igMAAAVQMAAAAAnsspzrp4jrnbwHyAAAAAVQMQAAAAnsnbTsiJzslYQEWAIAAAVQMgAAAAnstZzs
sKzsnpAHyAAAAAVQMwAAAAnquYDrsJTqsIAE9AEAAAVQNAAAAAnsm5DqsIDqta0GWAIAAAVQNQAA
AAnrsKnqsIDri6QHZAAAAAVQNgAAAAnsoITsiJzssKgGvAIAAAVQNwAAAAnsobDsooXssKgFWAIA
AAVQOAAAAAnsoITtmLjrnbwDyAAAAAVQOQAAAAnsspztmLjsnKQE9AEAAAVQOgAAAAnrp4jsi6Dt
mJwBLAEAAAVQOwAAAAnsoITshLjqta0CWAIAAAVQPAAAAAnsp4DtmLjtg5wCLAEAAAVQPQAAAAns
nKDtmJztg5wEvAIAAAVQPgAAAAnsspzshLjssKwEIAMAAAVQPwAAAAnsp4DrsJTtmJwDyAAAAAVQ
QAAAAAnsspzqsIDssKgBIAMAAAVQQQAAAAnrsLDshLjsgqwCIAMAAAVQQgAAAAnrsKnrgpjtlZgG
yAAAAAVQQwAAAAnstZztmLjtg5wBIAMAAAVQRAAAAAnrp4jqsIDtmJwDZAAAAAVQRQAAAAnquYDs
hLHrsJQGyAAAAAVQRgAAAAnrsKntmJzqta0FWAIAAAVQRwAAAAnsnbTtjIztjIwELAEAAAVQSAAA
AAnsp4DsnKTtmJwHZAAAAAVQSQAAAAnrsJXssKzsooUGWAIAAAVQSgAAAAnrsKntmJzsnKQDLAEA
AAVQSwAAAAnsoITtmLjrsJQBWAIAAAVQTAAAAAnsnKDtnazrp4gBvAIAAAVQTQAAAAnsspzshLHt
mJwH9AEAAAVQTgAAAAnquYDrgpjrnbwDIAMAAAVQTwAAAAnstZztmJzshLEBvAIAAAVQUAAAAAns
p4DsooXrnbwEiAMAAAVQUQAAAAnsnbTrsJTtnawHIAMAAAVQUgAAAAnstZzsnYDqsIAEIAMAAAVQ
UwAAAAnrsLDsnpDtmLgF9AEAAAVQVAAAAAnrsLDsgqztjIwH9AEAAAVQVQAAAAnrp4jshLHri6QC
kAEAAAVQVgAAAAnstZzqta3shLgDWAIAAAVQVwAAAAnsnKDri6Tsp4AEWAIAAAVQWAAAAAnsspzq
srDsi6AEkAEAAAVQWQAAAAnrsJXtg5zsgqwHLAEAAAVQWgAAAAnsm5DtjIzqsIAHhAMAAAVQWwAA
AAnrp4jsiJzssKgHLAEAAAVQXAAAAAnsp4DtmLjtnawGvAIAAAVQXQAAAAnstZzqsIDqta0GIAMA
AAVQXgAAAAnrp4jshLHrgpgByAAAAAVQXwAAAAnsobDtlZjrp4gEvAIAAAVQYAAAAAnsm5DrsJTq
sIADLAEAAAVQYQAAAAnstZzsi6DshLgChgMAAAVQYgAAAAnquYDsnYDri6QFhAMAAAVQYwAAAAns
spzrnbzqta0F9AEAAAVgqK/c
XwU5aR4BAAAAOwAAANlGAwAAAB0BAAAAAAYABQABAQAH/1CWAAAACeq5gOywrOudvAHIAAAABasg
r00=
XwU5aR4BAAAAfwQAAFhLAwAAAB0BAAAAAAcABQABAgAH/1DIAAAACeuwqeq1reqwgAHIAAAABVDJ
AAAACey1nOyEuOuniAEsAQAABVDKAAAACeyhsOudvOyihQb0AQAABVDLAAAACeydtOyngOuniAS8
AgAABVDMAAAACeq5gOyLoO2YuAYsAQAABVDNAAAACeq5gOydgOuLpAbIAAAABVDOAAAACeuniOyE
uO2YnAe8AgAABVDPAAAACeq5gO2VmOyEuAHIAAAABVDQAAAACeybkOyInOyEuAWQAQAABVDRAAAA
CeybkOuniOyihQZYAgAABVDSAAAACeuniOyCrO2YnALIAAAABVDTAAAACeuwleuCmOyLoAUsAQAA
BVDUAAAACeyghO2YuOyCrAZkAAAABVDVAAAACeyngOyngO2YuAKQAQAABVDWAAAACeyynO2YnO2M
jAKEAwAABVDXAAAACeyngOyCrOyEuAa8AgAABVDYAAAACeuwqeuCmO2DnAZkAAAABVDZAAAACeq5
gOyngO2VmAaQAQAABVDaAAAACeyngOywrO2DnAMsAQAABVDbAAAACeyhsOyCrOuCmAQgAwAABVDc
AAAACeyngOywqOyInAYgAwAABVDdAAAACeyngO2drO2DnAMsAQAABVDeAAAACeydtO2drOuCmAUg
AwAABVDfAAAACeuwsOyLoOuniAeEAwAABVDgAAAACeuwsOuCmO2drAOEAwAABVDhAAAACeuniOyV
hOyEuAQgAwAABVDiAAAACeyghOuwlOyLoAKEAwAABVDjAAAACeuwle2drOycpAHIAAAABVDkAAAA
CeyynOqysO2YuAFkAAAABVDlAAAACeuniOyCrO2YnALIAAAABVDmAAAACey1nOyiheuwlAYsAQAA
BVDnAAAACeybkO2MjOqwgAHIAAAABVDoAAAACeyngO2drOqysAXIAAAABVDpAAAACeq5gOyekOun
iAbIAAAABVDqAAAACeuwqeyEseyEuAGEAwAABVDrAAAACeuniOuwlOyEsQZYAgAABVDsAAAACeyy
nOuniOuniALIAAAABVDtAAAACey1nOqwgOyEuAZkAAAABVDuAAAACeq5gO2MjO2drAPIAAAABVDv
AAAACeuniOywrOyVhAWEAwAABVDwAAAACeq5gOyEuOqwgAHIAAAABVDxAAAACeyghOywqOuCmAK8
AgAABVDyAAAACeycoO2drOq1rQJkAAAABVDzAAAACeyghO2drOuniAEgAwAABVD0AAAACeuniO2Y
uOywqAPIAAAABVD1AAAACeuwsO2DnOuwlAVYAgAABVD2AAAACeuwsOuCmO2drAQsAQAABVD3AAAA
CeycoOydgOyihQYsAQAABVD4AAAACeybkOyEuOuniAYsAQAABVD5AAAACeuwsOuniOqwgARkAAAA
BVD6AAAACeycoOqysO2YuAG8AgAABVD7AAAACeyngO2DnOycpARkAAAABVD8AAAACeuwsO2YuOqw
gAdYAgAABVMqiqM=
'/*!*/;
### Extra row info for partitioning: partition: 0
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=2
###   @2='유세혜'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7='{"id": 2, "age": 30, "fam": [{"id": 1, "name": "유세차"}, {"id": 2, "name": "유세이"}]}'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=3
###   @2='원사아'
###   @3=4
###   @4=100
###   @5='2025:11:25'
###   @6=5
###   @7='{"id": 3, "age": 33, "fam": [{"id": 1, "name": "유세차"}, {"id": 2, "name": "홍길숭"}]}'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=4
###   @2='김태혜'
###   @3=5
###   @4=700
###   @5=NULL
###   @6=5
###   @7='[1, 2, 3]'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=5
###   @2='지세국'
###   @3=7
###   @4=400
###   @5='2025:11:25'
###   @6=5
###   @7='{"id": 5, "age": 44, "fam": [{"id": 1, "name": "지세차"}, {"id": 2, "name": "지세창"}]}'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=6
###   @2='최가국'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7='{"id": 6}'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=7
###   @2='배파나'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7='{"id": 7, "fam": [{"id": 11, "name": "유세홍"}], "idd": 6900, "iddxx": 6900}'
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=8
###   @2='원성결'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=9
###   @2='전바찬'
###   @3=6
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=10
###   @2='지윤희'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=11
###   @2='전차가'
###   @3=1
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=12
###   @2='지호하'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=13
###   @2='최종라'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=14
###   @2='마마순'
###   @3=1
###   @4=700
###   @5='2025:12:08'
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=15
###   @2='원자파'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=16
###   @2='이결세'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=17
###   @2='원호신'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=18
###   @2='전국찬'
###   @3=3
###   @4=903
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=19
###   @2='방성찬'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=20
###   @2='최희결'
###   @3=5
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=21
###   @2='지찬파'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=22
###   @2='최파지'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=23
###   @2='마다윤'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=24
###   @2='이윤파'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=25
###   @2='전다윤'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=26
###   @2='김나나'
###   @3=1
###   @4=800
###   @5='2025:12:08'
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=27
###   @2='원호순'
###   @3=7
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=28
###   @2='조국국'
###   @3=7
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=29
###   @2='이윤바'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=30
###   @2='김바순'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=31
###   @2='방윤윤'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=32
###   @2='방호지'
###   @3=4
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=33
###   @2='최마호'
###   @3=1
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=34
###   @2='전아가'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=35
###   @2='원성태'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=36
###   @2='마다라'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=37
###   @2='지라파'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=38
###   @2='김자나'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=39
###   @2='전가순'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=40
###   @2='유호가'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=41
###   @2='방사자'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=42
###   @2='마윤결'
###   @3=2
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=43
###   @2='마마차'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=44
###   @2='이찬가'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=45
###   @2='유태파'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=46
###   @2='유호다'
###   @3=4
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=47
###   @2='이신희'
###   @3=6
###   @4=906
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=48
###   @2='천마라'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=49
###   @2='이순아'
###   @3=4
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=50
###   @2='최찬자'
###   @3=7
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=51
###   @2='김바가'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=52
###   @2='원가국'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=53
###   @2='방가다'
###   @3=7
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=54
###   @2='전순차'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=55
###   @2='조종차'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=56
###   @2='전호라'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=57
###   @2='천호윤'
###   @3=4
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=58
###   @2='마신혜'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=59
###   @2='전세국'
###   @3=2
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=60
###   @2='지호태'
###   @3=2
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=61
###   @2='유혜태'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=62
###   @2='천세찬'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=63
###   @2='지바혜'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=64
###   @2='천가차'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=65
###   @2='배세사'
###   @3=2
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=66
###   @2='방나하'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=67
###   @2='최호태'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=68
###   @2='마가혜'
###   @3=3
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=69
###   @2='김성바'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=70
###   @2='방혜국'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=71
###   @2='이파파'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=72
###   @2='지윤혜'
###   @3=7
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=73
###   @2='박찬종'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=74
###   @2='방혜윤'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=75
###   @2='전호바'
###   @3=1
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=76
###   @2='유희마'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=77
###   @2='천성혜'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=78
###   @2='김나라'
###   @3=3
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=79
###   @2='최혜성'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=80
###   @2='지종라'
###   @3=4
###   @4=904
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=81
###   @2='이바희'
###   @3=7
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=82
###   @2='최은가'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=83
###   @2='배자호'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=84
###   @2='배사파'
###   @3=7
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=85
###   @2='마성다'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=86
###   @2='최국세'
###   @3=3
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=87
###   @2='유다지'
###   @3=4
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=88
###   @2='천결신'
###   @3=4
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=89
###   @2='박태사'
###   @3=7
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=90
###   @2='원파가'
###   @3=7
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=91
###   @2='마순차'
###   @3=7
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=92
###   @2='지호희'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=93
###   @2='최가국'
###   @3=6
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=94
###   @2='마성나'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=95
###   @2='조하마'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=96
###   @2='원바가'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=97
###   @2='최신세'
###   @3=2
###   @4=902
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=98
###   @2='김은다'
###   @3=5
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=99
###   @2='천라국'
###   @3=5
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### Extra row info for partitioning: partition: 1
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=150
###   @2='김찬라'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### Extra row info for partitioning: partition: 2
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=200
###   @2='방국가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=201
###   @2='최세마'
###   @3=1
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=202
###   @2='조라종'
###   @3=6
###   @4=500
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=203
###   @2='이지마'
###   @3=4
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=204
###   @2='김신호'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=205
###   @2='김은다'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=206
###   @2='마세혜'
###   @3=7
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=207
###   @2='김하세'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=208
###   @2='원순세'
###   @3=5
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=209
###   @2='원마종'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=210
###   @2='마사혜'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=211
###   @2='박나신'
###   @3=5
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=212
###   @2='전호사'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=213
###   @2='지지호'
###   @3=2
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=214
###   @2='천혜파'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=215
###   @2='지사세'
###   @3=6
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=216
###   @2='방나태'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=217
###   @2='김지하'
###   @3=6
###   @4=400
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=218
###   @2='지찬태'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=219
###   @2='조사나'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=220
###   @2='지차순'
###   @3=6
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=221
###   @2='지희태'
###   @3=3
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=222
###   @2='이희나'
###   @3=5
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=223
###   @2='배신마'
###   @3=7
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=224
###   @2='배나희'
###   @3=3
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=225
###   @2='마아세'
###   @3=4
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=226
###   @2='전바신'
###   @3=2
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=227
###   @2='박희윤'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=228
###   @2='천결호'
###   @3=1
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=229
###   @2='마사혜'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=230
###   @2='최종바'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=231
###   @2='원파가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=232
###   @2='지희결'
###   @3=5
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=233
###   @2='김자마'
###   @3=6
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=234
###   @2='방성세'
###   @3=1
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=235
###   @2='마바성'
###   @3=6
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=236
###   @2='천마마'
###   @3=2
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=237
###   @2='최가세'
###   @3=6
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=238
###   @2='김파희'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=239
###   @2='마찬아'
###   @3=5
###   @4=900
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=240
###   @2='김세가'
###   @3=1
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=241
###   @2='전차나'
###   @3=2
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=242
###   @2='유희국'
###   @3=2
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=243
###   @2='전희마'
###   @3=1
###   @4=800
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=244
###   @2='마호차'
###   @3=3
###   @4=200
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=245
###   @2='배태바'
###   @3=5
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=246
###   @2='배나희'
###   @3=4
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=247
###   @2='유은종'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=248
###   @2='원세마'
###   @3=6
###   @4=300
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=249
###   @2='배마가'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=250
###   @2='유결호'
###   @3=1
###   @4=700
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=251
###   @2='지태윤'
###   @3=4
###   @4=100
###   @5=NULL
###   @6=5
###   @7=NULL
### INSERT INTO `tdb`.`testemp`
### SET
###   @1=252
###   @2='배호가'
###   @3=7
###   @4=600
###   @5=NULL
###   @6=5
###   @7=NULL
# at 215896
#251210 14:30:07 server id 1  end_log_pos 215927 CRC32 0xbc492571 	Xid = 5218
COMMIT/*!*/;
# at 215927
#251210 14:30:07 server id 1  end_log_pos 216004 CRC32 0xa6b09e7f 	Anonymous_GTID	last_committed=303	sequence_number=304	rbr_only=no	original_committed_timestamp=1765344607063351	immediate_commit_timestamp=1765344607063351	transaction_length=208
# original_commit_timestamp=1765344607063351 (2025-12-10 14:30:07.063351 KST)
# immediate_commit_timestamp=1765344607063351 (2025-12-10 14:30:07.063351 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607063351*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 216004
#251210 14:30:07 server id 1  end_log_pos 216135 CRC32 0x997ad2c6 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5219
SET TIMESTAMP=1765344607/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
/*!40000 ALTER TABLE `TestEmp` ENABLE KEYS */
/*!*/;
# at 216135
#251210 14:30:07 server id 1  end_log_pos 216212 CRC32 0x2bd17992 	Anonymous_GTID	last_committed=304	sequence_number=305	rbr_only=no	original_committed_timestamp=1765344607065901	immediate_commit_timestamp=1765344607065901	transaction_length=207
# original_commit_timestamp=1765344607065901 (2025-12-10 14:30:07.065901 KST)
# immediate_commit_timestamp=1765344607065901 (2025-12-10 14:30:07.065901 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607065901*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 216212
#251210 14:30:07 server id 1  end_log_pos 216342 CRC32 0x4b917688 	Query	thread_id=39	exec_time=0	error_code=0
SET TIMESTAMP=1765344607/*!*/;
DROP TABLE IF EXISTS `v_dept` /* generated by server */
/*!*/;
# at 216342
#251210 14:30:07 server id 1  end_log_pos 216419 CRC32 0xebf3888c 	Anonymous_GTID	last_committed=305	sequence_number=306	rbr_only=no	original_committed_timestamp=1765344607067161	immediate_commit_timestamp=1765344607067161	transaction_length=200
# original_commit_timestamp=1765344607067161 (2025-12-10 14:30:07.067161 KST)
# immediate_commit_timestamp=1765344607067161 (2025-12-10 14:30:07.067161 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607067161*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 216419
#251210 14:30:07 server id 1  end_log_pos 216542 CRC32 0x02814052 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5225
SET TIMESTAMP=1765344607/*!*/;
/*!50001 DROP VIEW IF EXISTS `v_dept`*/
/*!*/;
# at 216542
#251210 14:30:07 server id 1  end_log_pos 216621 CRC32 0x23fa81e3 	Anonymous_GTID	last_committed=306	sequence_number=307	rbr_only=no	original_committed_timestamp=1765344607069426	immediate_commit_timestamp=1765344607069426	transaction_length=333
# original_commit_timestamp=1765344607069426 (2025-12-10 14:30:07.069426 KST)
# immediate_commit_timestamp=1765344607069426 (2025-12-10 14:30:07.069426 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607069426*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 216621
#251210 14:30:07 server id 1  end_log_pos 216875 CRC32 0xac4e27a0 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5228
SET TIMESTAMP=1765344607/*!*/;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_dept` AS SELECT 
 1 AS `id`,
 1 AS `pid`,
 1 AS `dname`,
 1 AS `captain`,
 1 AS `ename`
/*!*/;
# at 216875
#251210 14:30:07 server id 1  end_log_pos 216952 CRC32 0xf221cfbb 	Anonymous_GTID	last_committed=307	sequence_number=308	rbr_only=no	original_committed_timestamp=1765344607074402	immediate_commit_timestamp=1765344607074402	transaction_length=208
# original_commit_timestamp=1765344607074402 (2025-12-10 14:30:07.074402 KST)
# immediate_commit_timestamp=1765344607074402 (2025-12-10 14:30:07.074402 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607074402*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 216952
#251210 14:30:07 server id 1  end_log_pos 217083 CRC32 0xbb77eb47 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5239
SET TIMESTAMP=1765344607/*!*/;
/*!50003 DROP FUNCTION IF EXISTS `f_empinfo` */
/*!*/;
# at 217083
#251210 14:30:07 server id 1  end_log_pos 217162 CRC32 0xd7ab4472 	Anonymous_GTID	last_committed=308	sequence_number=309	rbr_only=no	original_committed_timestamp=1765344607079194	immediate_commit_timestamp=1765344607079194	transaction_length=532
# original_commit_timestamp=1765344607079194 (2025-12-10 14:30:07.079194 KST)
# immediate_commit_timestamp=1765344607079194 (2025-12-10 14:30:07.079194 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607079194*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 217162
#251210 14:30:07 server id 1  end_log_pos 217615 CRC32 0xe581645a 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5248
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
CREATE DEFINER=`root`@`%` FUNCTION `f_empinfo`(_empid int unsigned) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
    declare v_result varchar(100) default '없는 직원';
    
    select concat(e.ename, '(', d.dname, ')') into v_result
      from Emp e inner join Dept d on e.dept = d.id
     where e.id = _empid;

RETURN v_result;
END
/*!*/;
# at 217615
#251210 14:30:07 server id 1  end_log_pos 217692 CRC32 0x3243a7a3 	Anonymous_GTID	last_committed=309	sequence_number=310	rbr_only=no	original_committed_timestamp=1765344607084134	immediate_commit_timestamp=1765344607084134	transaction_length=218
# original_commit_timestamp=1765344607084134 (2025-12-10 14:30:07.084134 KST)
# immediate_commit_timestamp=1765344607084134 (2025-12-10 14:30:07.084134 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607084134*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 217692
#251210 14:30:07 server id 1  end_log_pos 217833 CRC32 0x54fe7e24 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5256
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=524288/*!*/;
/*!50003 DROP PROCEDURE IF EXISTS `sp_depts_by_cursor` */
/*!*/;
# at 217833
#251210 14:30:07 server id 1  end_log_pos 217912 CRC32 0x952dff78 	Anonymous_GTID	last_committed=310	sequence_number=311	rbr_only=no	original_committed_timestamp=1765344607089443	immediate_commit_timestamp=1765344607089443	transaction_length=1805
# original_commit_timestamp=1765344607089443 (2025-12-10 14:30:07.089443 KST)
# immediate_commit_timestamp=1765344607089443 (2025-12-10 14:30:07.089443 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607089443*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 217912
#251210 14:30:07 server id 1  end_log_pos 219638 CRC32 0xc3e288b9 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5265
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_depts_by_cursor`()
BEGIN
    Declare v_deptid smallint unsigned;
    Declare v_dname varchar(31);
    Declare v_captain int unsigned;
    Declare v_minsal int unsigned;
    Declare v_minsalcnt smallint unsigned;
    Declare v_captainName varchar(31);
    Declare v_captainSal int unsigned;
    
    Declare _done boolean default False;
    Declare _cur CURSOR FOR
        select id, dname, captain from Dept;
        
    Declare Continue Handler
        For Not Found SET _done := True;
        
    drop table if exists Tmp;
    
    create temporary table Tmp (
        deptid smallint unsigned,
        dname varchar(31),
        minsal int,
        minsalcnt smallint unsigned,
        captainName varchar(31),
        captainSal int
    );
        
    OPEN _cur;
    cur_loop: LOOP
        Fetch _cur into v_deptid, v_dname, v_captain;
        IF _done THEN
            LEAVE cur_loop;
        END IF;
        
        select min(salary) into v_minsal from Emp where dept = v_deptid;
        select count(*) into v_minsalcnt from Emp where dept = v_deptid and salary = v_minsal;
        
        IF v_captain > 0 THEN
            select ename, salary into v_captainName, v_captainSal
              from Emp where id = v_captain;
        ELSE
            select v_captainName = '', v_captainSal = 0;
        END IF;
        
        insert into Tmp(deptid, dname, minsal, minsalcnt, captainName, captainSal)
                 values(v_deptid, v_dname, v_minsal, v_minsalcnt, v_captainName, v_captainSal);
                 
    END LOOP cur_loop;
    CLOSE _cur;

    select * from Tmp;
END
/*!*/;
# at 219638
#251210 14:30:07 server id 1  end_log_pos 219715 CRC32 0xf5901f3c 	Anonymous_GTID	last_committed=311	sequence_number=312	rbr_only=no	original_committed_timestamp=1765344607094048	immediate_commit_timestamp=1765344607094048	transaction_length=217
# original_commit_timestamp=1765344607094048 (2025-12-10 14:30:07.094048 KST)
# immediate_commit_timestamp=1765344607094048 (2025-12-10 14:30:07.094048 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607094048*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 219715
#251210 14:30:07 server id 1  end_log_pos 219855 CRC32 0x008d50b0 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5273
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=524288/*!*/;
/*!50003 DROP PROCEDURE IF EXISTS `sp_emps_by_deptid` */
/*!*/;
# at 219855
#251210 14:30:07 server id 1  end_log_pos 219934 CRC32 0x49c3f075 	Anonymous_GTID	last_committed=312	sequence_number=313	rbr_only=no	original_committed_timestamp=1765344607099315	immediate_commit_timestamp=1765344607099315	transaction_length=559
# original_commit_timestamp=1765344607099315 (2025-12-10 14:30:07.099315 KST)
# immediate_commit_timestamp=1765344607099315 (2025-12-10 14:30:07.099315 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607099315*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 219934
#251210 14:30:07 server id 1  end_log_pos 220414 CRC32 0x6031dad2 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5282
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_emps_by_deptid`(_dept smallint unsigned)
LBL:BEGIN
    IF _dept <= 0 THEN
        leave LBL;
    END IF;
    
    select e1.*, d.dname, ifnull(e2.ename, '공석') captain_name
      from Emp e1 inner join Dept d on e1.dept = d.id
               left outer join Emp e2 on d.captain = e2.id
     where e1.dept = _dept
       and e1.outdt is null;
END
/*!*/;
# at 220414
#251210 14:30:07 server id 1  end_log_pos 220491 CRC32 0xd2a29371 	Anonymous_GTID	last_committed=313	sequence_number=314	rbr_only=no	original_committed_timestamp=1765344607103403	immediate_commit_timestamp=1765344607103403	transaction_length=200
# original_commit_timestamp=1765344607103403 (2025-12-10 14:30:07.103403 KST)
# immediate_commit_timestamp=1765344607103403 (2025-12-10 14:30:07.103403 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607103403*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 220491
#251210 14:30:07 server id 1  end_log_pos 220614 CRC32 0x680900dc 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5290
SET TIMESTAMP=1765344607/*!*/;
SET @@session.sql_mode=524288/*!*/;
/*!50001 DROP VIEW IF EXISTS `v_dept`*/
/*!*/;
# at 220614
#251210 14:30:07 server id 1  end_log_pos 220693 CRC32 0xac370460 	Anonymous_GTID	last_committed=314	sequence_number=315	rbr_only=no	original_committed_timestamp=1765344607108195	immediate_commit_timestamp=1765344607108195	transaction_length=431
# original_commit_timestamp=1765344607108195 (2025-12-10 14:30:07.108195 KST)
# immediate_commit_timestamp=1765344607108195 (2025-12-10 14:30:07.108195 KST)
/*!80001 SET @@session.original_commit_timestamp=1765344607108195*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 220693
#251210 14:30:07 server id 1  end_log_pos 221045 CRC32 0x863cb97f 	Query	thread_id=39	exec_time=0	error_code=0	Xid = 5297
SET TIMESTAMP=1765344607/*!*/;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_dept` AS select `d`.`id` AS `id`,`d`.`pid` AS `pid`,`d`.`dname` AS `dname`,`d`.`captain` AS `captain`,`e`.`ename` AS `ename` from (`dept` `d` left join `emp` `e` on((`d`.`captain` = `e`.`id`)))
/*!*/;
# at 221045
#251210 14:09:37 server id 1  end_log_pos 221131 CRC32 0x77d36d04 	Anonymous_GTID	last_committed=315	sequence_number=316	rbr_only=yes	original_committed_timestamp=1765343377392775	immediate_commit_timestamp=1765345880046535	transaction_length=321
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765343377392775 (2025-12-10 14:09:37.392775 KST)
# immediate_commit_timestamp=1765345880046535 (2025-12-10 14:51:20.046535 KST)
/*!80001 SET @@session.original_commit_timestamp=1765343377392775*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 221131
#251210 14:09:37 server id 1  end_log_pos 221205 CRC32 0xe3448f00 	Query	thread_id=8	exec_time=2503	error_code=0
SET TIMESTAMP=1765343377/*!*/;
SET @@session.foreign_key_checks=1, @@session.unique_checks=1/*!*/;
SET @@session.sql_mode=1168637984/*!*/;
BEGIN
/*!*/;
# at 221205
#251210 14:09:37 server id 1  end_log_pos 221263 CRC32 0xa12fee64 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
# at 221263
#251210 14:09:37 server id 1  end_log_pos 221335 CRC32 0x04cc601d 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
kQA5aRMBAAAAOgAAAE9gAwAAABYBAAAAAAEAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgZO4v
oQ==
kQA5aR8BAAAASAAAAJdgAwAAABYBAAAAAAEAAgAF//8ICgcM66qo67CU7J287IWAAAAICgcM66qo
67CU7J287JWxAAAdYMwE
'/*!*/;
### UPDATE `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일셀'
###   @4=NULL
###   @5=0
### SET
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
# at 221335
#251210 14:09:37 server id 1  end_log_pos 221366 CRC32 0x86bcc001 	Xid = 5368
COMMIT/*!*/;
# at 221366
#251210 14:55:38 server id 1  end_log_pos 221445 CRC32 0x154f7516 	Anonymous_GTID	last_committed=316	sequence_number=317	rbr_only=yes	original_committed_timestamp=1765346138884837	immediate_commit_timestamp=1765346138884837	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765346138884837 (2025-12-10 14:55:38.884837 KST)
# immediate_commit_timestamp=1765346138884837 (2025-12-10 14:55:38.884837 KST)
/*!80001 SET @@session.original_commit_timestamp=1765346138884837*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 221445
#251210 14:55:38 server id 1  end_log_pos 221530 CRC32 0x396c0c18 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765346138/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
BEGIN
/*!*/;
# at 221530
#251210 14:55:38 server id 1  end_log_pos 221588 CRC32 0x2138ae5c 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
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
# at 221693
#251210 15:07:47 server id 1  end_log_pos 221772 CRC32 0xfede7876 	Anonymous_GTID	last_committed=317	sequence_number=318	rbr_only=yes	original_committed_timestamp=1765346867609425	immediate_commit_timestamp=1765346867609425	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765346867609425 (2025-12-10 15:07:47.609425 KST)
# immediate_commit_timestamp=1765346867609425 (2025-12-10 15:07:47.609425 KST)
/*!80001 SET @@session.original_commit_timestamp=1765346867609425*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 221772
#251210 15:07:47 server id 1  end_log_pos 221857 CRC32 0xa9b0b2c6 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765346867/*!*/;
BEGIN
/*!*/;
# at 221857
#251210 15:07:47 server id 1  end_log_pos 221915 CRC32 0x6c20551f 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
# at 221915
#251210 15:07:47 server id 1  end_log_pos 221989 CRC32 0x43830c4b 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
Mw45aRMBAAAAOgAAANtiAwAAABYBAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgH1Ug
bA==
Mw45aR8BAAAASgAAACVjAwAAABYBAAAAAAEAAgAF//8ICgcO66qo67CU7J287JWxeHgAAAgKBwzr
qqjrsJTsnbzslbEAAEsMg0M=
'/*!*/;
### UPDATE `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일앱xx'
###   @4=NULL
###   @5=0
### SET
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
# at 221989
#251210 15:07:47 server id 1  end_log_pos 222020 CRC32 0x8e1266b3 	Xid = 5491
COMMIT/*!*/;
# at 222020
#251210 14:55:38 server id 1  end_log_pos 222110 CRC32 0x45cdf43d 	Anonymous_GTID	last_committed=318	sequence_number=319	rbr_only=yes	original_committed_timestamp=0	immediate_commit_timestamp=1765346904022663	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=0 (1970-01-01 09:00:00.000000 KST)
# immediate_commit_timestamp=1765346904022663 (2025-12-10 15:08:24.022663 KST)
/*!80001 SET @@session.original_commit_timestamp=0*//*!*/;
/*!80014 SET @@session.original_server_version=0*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 222110
#251210 14:55:38 server id 1  end_log_pos 222184 CRC32 0x1f96a8b3 	Query	thread_id=45	exec_time=766	error_code=0
SET TIMESTAMP=1765346138/*!*/;
SET @@session.sql_mode=1168637984/*!*/;
BEGIN
/*!*/;
# at 222184
#251210 14:55:38 server id 1  end_log_pos 222242 CRC32 0xd01926a2 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
# at 222242
#251210 14:55:38 server id 1  end_log_pos 222316 CRC32 0x7086e752 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
Wgs5aRMBAAAAOgAAACJkAwAAABYBAAAAAAEAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgoiYZ
0A==
Wgs5aR8BAAAASgAAAGxkAwAAABYBAAAAAAEAAgAF//8ICgcM66qo67CU7J287JWxAAAICgcO66qo
67CU7J287JWxeHgAAFLnhnA=
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
# at 222316
#251210 14:55:38 server id 1  end_log_pos 222347 CRC32 0x5788e9cc 	Xid = 5522
COMMIT/*!*/;
# at 222347
#251210 15:08:36 server id 1  end_log_pos 222426 CRC32 0xee8cc8af 	Anonymous_GTID	last_committed=319	sequence_number=320	rbr_only=yes	original_committed_timestamp=1765346916930575	immediate_commit_timestamp=1765346916930575	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765346916930575 (2025-12-10 15:08:36.930575 KST)
# immediate_commit_timestamp=1765346916930575 (2025-12-10 15:08:36.930575 KST)
/*!80001 SET @@session.original_commit_timestamp=1765346916930575*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 222426
#251210 15:08:36 server id 1  end_log_pos 222511 CRC32 0x208dab07 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765346916/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
BEGIN
/*!*/;
# at 222511
#251210 15:08:36 server id 1  end_log_pos 222569 CRC32 0xbf02a982 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
# at 222569
#251210 15:08:36 server id 1  end_log_pos 222643 CRC32 0x199bc613 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
ZA45aRMBAAAAOgAAAGllAwAAABYBAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHggqkC
vw==
ZA45aR8BAAAASgAAALNlAwAAABYBAAAAAAEAAgAF//8ICgcO66qo67CU7J287JWxeHgAAAgKBwzr
qqjrsJTsnbzslbEAABPGmxk=
'/*!*/;
### UPDATE `tdb`.`dept`
### WHERE
###   @1=10
###   @2=7
###   @3='모바일앱xx'
###   @4=NULL
###   @5=0
### SET
###   @1=10
###   @2=7
###   @3='모바일앱'
###   @4=NULL
###   @5=0
# at 222643
#251210 15:08:36 server id 1  end_log_pos 222674 CRC32 0xa13f2920 	Xid = 5557
COMMIT/*!*/;
# at 222674
#251210 15:15:24 server id 1  end_log_pos 222753 CRC32 0x1e0c090d 	Anonymous_GTID	last_committed=320	sequence_number=321	rbr_only=yes	original_committed_timestamp=1765347324807596	immediate_commit_timestamp=1765347324807596	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1765347324807596 (2025-12-10 15:15:24.807596 KST)
# immediate_commit_timestamp=1765347324807596 (2025-12-10 15:15:24.807596 KST)
/*!80001 SET @@session.original_commit_timestamp=1765347324807596*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 222753
#251210 15:15:24 server id 1  end_log_pos 222838 CRC32 0x1df8d83d 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1765347324/*!*/;
BEGIN
/*!*/;
# at 222838
#251210 15:15:24 server id 1  end_log_pos 222896 CRC32 0xbbf4bc0c 	Table_map: `tdb`.`dept` mapped to number 278
# has_generated_invisible_primary_key=0
# at 222896
#251210 15:15:24 server id 1  end_log_pos 222968 CRC32 0x5de6f1b0 	Update_rows: table id 278 flags: STMT_END_F

BINLOG '
/A85aRMBAAAAOgAAALBmAwAAABYBAAAAAAMAA3RkYgAEZGVwdAAFAQEPAwICfAAIAQHgAgHgDLz0
uw==
/A85aR8BAAAASAAAAPhmAwAAABYBAAAAAAEAAgAF//8ICgcM66qo67CU7J287JWxAAAICgcM66qo
67CU7J28WFhYAACw8eZd
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
###   @3='모바일XXX'
###   @4=NULL
###   @5=0
# at 222968
#251210 15:15:24 server id 1  end_log_pos 222999 CRC32 0x9928e5e9 	Xid = 5577
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
