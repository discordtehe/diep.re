@implementation APMSqliteStore

-(void)dealloc {
    [self closeDatabase];
    [[&var_20 super] dealloc];
    return;
}

-(struct sqlite3 *)sqliteHandle {
    r0 = self->_sqliteHandle;
    return r0;
}

-(bool)closeAndDeleteDatabase {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    [self closeDatabase];
    r0 = [NSFileManager alloc];
    r0 = [r0 init];
    r19 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_databasePath));
    if ([r0 fileExistsAtPath:*(r20 + r24)] != 0x0) {
            r23 = [@(NO) retain];
            r22 = 0x1;
            r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r19 setAttributes:r21 ofItemAtPath:*(r20 + r24) error:0x0];
            r23 = [r19 removeItemAtPath:*(r20 + r24) error:&var_50];
            r20 = [var_50 retain];
            if ((r23 & 0x1) == 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x84e3 message:@"Failed to delete database" context:r20];
                    [r0 release];
                    r22 = 0x0;
            }
            [r20 release];
            [r21 release];
    }
    else {
            r22 = 0x1;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithDatabasePath:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] == 0x0) goto loc_10017f100;

loc_10017efd4:
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_10017f0ec;

loc_10017effc:
    r21 = @selector(init);
    r0 = [r19 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_databasePath));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [NSMutableDictionary alloc];
    r0 = objc_msgSend(r0, r21);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_statementCache));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r20->_queueLabel = dispatch_queue_get_label(0x0);
    r23 = [r20 openAndValidateDatabase:r2];
    r21 = [0x0 retain];
    if ((r23 & 0x1) != 0x0) goto loc_10017f0e4;

loc_10017f09c:
    if (([r20 closeAndDeleteDatabase] & 0x1) == 0x0) goto loc_10017f174;

loc_10017f0b0:
    r23 = [r20 openAndValidateDatabase:r2];
    r22 = [r21 retain];
    [r21 release];
    if ((r23 & 0x1) == 0x0) goto loc_10017f1c0;

loc_10017f0e0:
    r21 = r22;
    goto loc_10017f0e4;

loc_10017f0e4:
    [r21 release];
    goto loc_10017f0ec;

loc_10017f0ec:
    r20 = [r20 retain];
    r21 = r20;
    goto loc_10017f148;

loc_10017f148:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10017f1c0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x84d2 message:@"Failed to recreate database file. Error" context:r22];
    [r0 release];
    r0 = r22;
    goto loc_10017f140;

loc_10017f140:
    [r0 release];
    r21 = 0x0;
    goto loc_10017f148;

loc_10017f174:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x84d1 message:@"Failed to delete existing database file. Error" context:r21];
    [r0 release];
    goto loc_10017f13c;

loc_10017f13c:
    r0 = r21;
    goto loc_10017f140;

loc_10017f100:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    [r0 logWithLevel:0x4 messageCode:0x84d0 message:@"Received empty database path on init"];
    goto loc_10017f13c;
}

-(bool)ensureTableWithName:(void *)arg2 elementaryColumnInfo:(void *)arg3 addOnColumnInfo:(void *)arg4 modifyColumnInfo:(void *)arg5 error:(void * *)arg6 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if ([r24 ensureTableWithName:r19 elementaryColumnInfo:r20 addOnColumnInfo:r21 error:r23] != 0x0) {
            if ([r22 count] != 0x0) {
                    r25 = [sub_1001804a4(r20, r22) retain];
                    r26 = [sub_1001804a4(r21, r22) retain];
                    r23 = [r24 ensureSchemaOfTableWithName:r19 elementaryColumnInfo:r25 addOnColumnInfo:r26 error:r23];
                    [r26 release];
                    [r25 release];
                    if (r23 != 0x0) {
                            r23 = 0x1;
                    }
            }
            else {
                    r23 = 0x1;
            }
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)ensureSchemaOfTableWithName:(void *)arg2 elementaryColumnInfo:(void *)arg3 addOnColumnInfo:(void *)arg4 error:(void * *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r23 = arg5;
    r24 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r1 = @selector(length);
    var_228 = r1;
    if (sub_100199468(objc_msgSend(r21, r1), r23, 0x1, @"Received empty table name for ensure table schema") != 0x0 && sub_100199468([r20 count], r23, 0x1, @"Received empty column info for ensure table schema") != 0x0) {
            r19 = @selector(count);
            r0 = [r24 columnInfoForTableWithName:r21 error:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (sub_100199468(objc_msgSend(r0, r19), r23, 0x2, @"Table does not exist for ensure table schema") != 0x0) {
                    var_260 = r26;
                    var_290 = r23;
                    var_288 = r24;
                    var_278 = r20;
                    var_270 = r21;
                    r19 = [r20 retain];
                    var_280 = r22;
                    var_268 = [r22 retain];
                    var_230 = [[NSMutableDictionary alloc] init];
                    r0 = [r19 retain];
                    r23 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_258 = r1;
                    r24 = objc_msgSend(r0, r1);
                    var_248 = r23;
                    if (r24 != 0x0) {
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r26 = *(0x0 + r28 * 0x8);
                                            r0 = [r26 firstObject];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            if (([r0 isEqual:@"PRIMARY KEY"] & 0x1) == 0x0) {
                                                    r0 = [r26 lastObject];
                                                    r0 = [r0 retain];
                                                    r27 = r0;
                                                    r0 = [r0 componentsSeparatedByString:@" "];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 firstObject];
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    [r23 release];
                                                    [r27 release];
                                                    if (objc_msgSend(r21, var_228) != 0x0) {
                                                            if (objc_msgSend(r26, var_228) != 0x0) {
                                                                    [var_230 setObject:r2 forKeyedSubscript:r3];
                                                            }
                                                    }
                                                    [r26 release];
                                                    r23 = var_248;
                                            }
                                            [r21 release];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r24);
                                    r24 = objc_msgSend(r23, var_258);
                            } while (r24 != 0x0);
                    }
                    [r23 release];
                    var_1C8 = q0;
                    r0 = [var_268 retain];
                    r24 = r0;
                    r19 = objc_msgSend(r0, var_258);
                    if (r19 != 0x0) {
                            r27 = *var_1C8;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_1C8 != r27) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r26 = *(var_1D0 + r28 * 0x8);
                                            r23 = [[r26 firstObject] retain];
                                            r0 = [r26 lastObject];
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            if (objc_msgSend(r23, var_228) != 0x0 && objc_msgSend(r26, var_228) != 0x0) {
                                                    [var_230 setObject:r2 forKeyedSubscript:r3];
                                            }
                                            [r26 release];
                                            [r23 release];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r19);
                                    r19 = objc_msgSend(r24, var_258);
                            } while (r19 != 0x0);
                    }
                    [r24 release];
                    [r24 release];
                    r22 = var_248;
                    [r22 release];
                    [var_230 autorelease];
                    r26 = var_260;
                    if (([r26 isEqual:r2] & 0x1) != 0x0) {
                            r19 = 0x1;
                            r20 = var_278;
                            r21 = var_270;
                            r22 = var_280;
                    }
                    else {
                            var_D0 = r29 - 0xd8;
                            r21 = var_270;
                            var_200 = [r21 retain];
                            var_1F0 = [r22 retain];
                            var_1E8 = [r24 retain];
                            r19 = [var_288 performTransaction:&var_220];
                            r22 = var_280;
                            r20 = var_278;
                            r23 = var_290;
                            if (r23 != 0x0) {
                                    r0 = *(var_D0 + 0x28);
                                    if (r0 != 0x0) {
                                            *r23 = objc_retainAutorelease(r0);
                                    }
                            }
                            [var_1E8 release];
                            [var_1F0 release];
                            [var_200 release];
                            _Block_object_dispose(r29 - 0xd8, 0x8);
                            [0x0 release];
                    }
            }
            else {
                    r19 = 0x0;
            }
            [r26 release];
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)ensureTableWithName:(void *)arg2 createSQL:(void *)arg3 requiredColumnNames:(void *)arg4 addOnColumns:(void *)arg5 error:(void * *)arg6 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (sub_100199434([r24 sqliteHandle], r23, 0x2, @"Ensure table failed. Database not open.") != 0x0 && sub_100199468([r20 length], r23, 0x1, @"Received empty create statement for ensure table") != 0x0 && sub_100199468([r19 length], r23, 0x1, @"Received empty table name for ensure table") != 0x0 && sub_100199468([r21 count], r23, 0x1, @"Received no table columns for ensure table") != 0x0) {
            r0 = [r24 tableExists:r19 error:r23];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    if (([r25 boolValue] & 0x1) == 0x0) {
                            if ([r24 executeSQL:r20 error:r23] != 0x0) {
                                    r24 = [[r24 validateTableWithName:r19 requiredColumnNames:r21 addOnColumns:r22 error:r23] retain];
                                    if (r24 != 0x0) {
                                            r23 = [r24 boolValue];
                                    }
                                    else {
                                            r23 = 0x0;
                                    }
                                    [r24 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                    }
                    else {
                            r24 = [[r24 validateTableWithName:r19 requiredColumnNames:r21 addOnColumns:r22 error:r23] retain];
                            if (r24 != 0x0) {
                                    r23 = [r24 boolValue];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r24 release];
                    }
            }
            else {
                    r23 = 0x0;
            }
            [r25 release];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)dropTableWithName:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty table name for drop table") != 0x0) {
            r22 = [[NSString stringWithFormat:@"DROP TABLE %@"] retain];
            r20 = [r21 executeSQL:r22 error:r20];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)ensureTableWithName:(void *)arg2 elementaryColumnInfo:(void *)arg3 addOnColumnInfo:(void *)arg4 error:(void * *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x230;
    r26 = arg5;
    r25 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = [arg4 retain];
    if (sub_100199468([r22 length], r26, 0x1, @"Received empty table name for ensure table") == 0x0) goto loc_10017f70c;

loc_10017f4d4:
    r1 = @selector(count);
    var_1F8 = r1;
    if (sub_100199468(objc_msgSend(r23, r1), r26, 0x1, @"Received empty elementary column info for ensure table") == 0x0) goto loc_10017f70c;

loc_10017f500:
    r21 = @selector(length);
    r20 = [r22 retain];
    r27 = [r23 retain];
    r0 = objc_msgSend(r20, r21);
    var_208 = r20;
    if (r0 != 0x0 && objc_msgSend(r27, var_1F8) != 0x0) {
            var_1E8 = @selector(length);
            var_238 = r25;
            var_230 = r24;
            var_200 = r26;
            var_228 = r23;
            stack[-560] = r22;
            r0 = [NSMutableString alloc];
            r0 = [r0 init];
            r20 = r0;
            [r0 appendFormat:@"CREATE TABLE IF NOT EXISTS %@ ( "];
            *(int128_t *)(&stack[-631] + 0xff) = q0;
            *(int128_t *)(&stack[-647] + 0xff) = q0;
            var_188 = q0;
            var_240 = r27;
            r0 = [r27 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1E0 = r0;
            var_1F0 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r27 = *var_188;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_188 != r27) {
                                            objc_enumerationMutation(var_1E0);
                                    }
                                    r22 = *(var_190 + r23 * 0x8);
                                    r26 = [[r22 firstObject] retain];
                                    r0 = [r22 lastObject];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r20 appendFormat:@"%@ %@, "];
                                    [r22 release];
                                    [r26 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r24 = objc_msgSend(var_1E0, var_1F0);
                    } while (r24 != 0x0);
            }
            [var_1E0 release];
            r21 = var_1E8;
            [r20 replaceCharactersInRange:objc_msgSend(r20, r21) - 0x2 withString:0x2];
            r19 = [r20 copy];
            [r20 release];
            r23 = var_228;
            r22 = stack[-560];
            r25 = var_238;
            r24 = var_230;
            r20 = var_208;
            r26 = var_200;
            r27 = var_240;
    }
    else {
            r19 = 0x0;
    }
    [r27 release];
    [r20 release];
    r0 = [r19 autorelease];
    r0 = [r0 retain];
    r28 = r0;
    if (sub_100199468(objc_msgSend(r0, r21), r26, 0x2, @"Failed to create statement for table") == 0x0) goto loc_10017f9f0;

loc_10017f758:
    if (objc_msgSend(r24, var_1F8) == 0x0) goto loc_10017f9f8;

loc_10017f768:
    var_250 = r28;
    var_240 = r27;
    var_238 = r25;
    var_1E8 = r21;
    var_228 = r23;
    stack[-560] = r22;
    r27 = [[NSMutableDictionary alloc] init];
    var_230 = r24;
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_200 = r0;
    var_258 = r1;
    r28 = objc_msgSend(r0, r1);
    if (r28 == 0x0) goto loc_10017f9cc;

loc_10017f800:
    r23 = 0x0;
    goto loc_10017f820;

loc_10017f820:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_200);
    }
    r19 = *(0x0 + r23 * 0x8);
    r0 = [r19 firstObject];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10017f990;

loc_10017f864:
    r25 = [r20 retain];
    r24 = [r19 retain];
    if (objc_msgSend(r25, var_1E8) != 0x0 && objc_msgSend(r24, var_1F8) != 0x0) {
            var_218 = @selector(stringWithFormat:);
            r22 = [[r24 firstObject] retain];
            r0 = [r24 lastObject];
            r0 = [r0 retain];
            r20 = r26;
            r26 = r0;
            r0 = objc_msgSend(@class(NSString), var_218);
            r29 = r29;
            r19 = [r0 retain];
            r0 = r26;
            r26 = r20;
            r20 = var_208;
            [r0 release];
            [r22 release];
    }
    else {
            r19 = 0x0;
    }
    [r24 release];
    [r25 release];
    if (sub_100199468(objc_msgSend(r19, var_1E8), r26, 0x2, @"Failed to create alter statement for table") == 0x0) goto loc_10017fb00;

loc_10017f954:
    r0 = [r24 firstObject];
    r29 = r29;
    [r0 retain];
    [r27 setObject:r2 forKeyedSubscript:r3];
    [r22 release];
    [r19 release];
    goto loc_10017f990;

loc_10017f990:
    r23 = r23 + 0x1;
    if (r23 < r28) goto loc_10017f820;

loc_10017f99c:
    r28 = objc_msgSend(var_200, var_258);
    if (r28 != 0x0) goto loc_10017f800;

loc_10017f9cc:
    var_248 = r27;
    [var_200 release];
    r23 = var_228;
    r22 = stack[-560];
    r25 = var_238;
    r24 = var_230;
    r27 = var_240;
    r28 = var_250;
    r21 = @selector(alloc);
    goto loc_10017fa04;

loc_10017fa04:
    r20 = [r27 retain];
    r0 = [objc_msgSend(@class(NSMutableArray), r21) initWithCapacity:objc_msgSend(r20, var_1F8)];
    r21 = [r0 retain];
    [r20 enumerateObjectsUsingBlock:r29 - 0xd8];
    [r20 release];
    r19 = [r21 copy];
    [r0 release];
    [r21 release];
    r19 = [r25 ensureTableWithName:var_208 createSQL:r28 requiredColumnNames:[r19 autorelease] addOnColumns:var_248 error:r26];
    r0 = var_248;
    goto loc_10017fb24;

loc_10017fb24:
    [r0 release];
    goto loc_10017fb28;

loc_10017fb28:
    [r28 release];
    goto loc_10017fb30;

loc_10017fb30:
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10017fb00:
    [r19 release];
    [var_200 release];
    r19 = 0x0;
    r23 = var_228;
    r22 = stack[-560];
    r24 = var_230;
    r28 = var_250;
    r0 = r27;
    goto loc_10017fb24;

loc_10017f9f8:
    var_248 = 0x0;
    r21 = @selector(alloc);
    goto loc_10017fa04;

loc_10017f9f0:
    r19 = 0x0;
    goto loc_10017fb28;

loc_10017f70c:
    r19 = 0x0;
    goto loc_10017fb30;
}

-(bool)renameTable:(void *)arg2 toName:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_100199468([r19 length], r21, 0x1, @"Received empty old name for rename table") != 0x0 && sub_100199468([r20 length], r21, 0x1, @"Received empty new name for rename table") != 0x0) {
            if (sub_1001993cc([r19 isEqual:r2] ^ 0x1, r21, 0x1, @"Received duplicate name for rename table") != 0x0) {
                    r23 = [[NSString stringWithFormat:@"ALTER TABLE %@ RENAME TO %@"] retain];
                    r21 = [r22 executeSQL:r23 error:r21];
                    [r23 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)copyContentsFromTable:(void *)arg2 toTable:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_100199468([r19 length], r21, 0x1, @"Received empty source name for copy table") != 0x0 && sub_100199468([r20 length], r21, 0x1, @"Received empty destination name for copy table") != 0x0) {
            if (sub_1001993cc([r19 isEqual:r2] ^ 0x1, r21, 0x1, @"Received duplicate name for copy table") != 0x0) {
                    r23 = [[NSString stringWithFormat:@"INSERT INTO %@ SELECT * FROM %@"] retain];
                    r21 = [r22 executeSQL:r23 error:r21];
                    [r23 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)rowCountForTableWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = [self rowCountForTableWithName:arg2 columnName:0x0 columnValue:0x0 error:arg3];
    return r0;
}

-(void *)tableExists:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r21, 0x1, @"Received empty table name for table exists") != 0x0 && sub_100199434([r20 sqliteHandle], r21, 0x2, @"Table exists failed. Database not open.") != 0x0) {
            r22 = [r20 prepareSQL:@"SELECT name FROM sqlite_master WHERE type='table' AND name=?" error:r21];
            if (r22 != 0x0) {
                    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                    r29 = r29;
                    r23 = [r0 retain];
                    r21 = [r20 bindValues:r23 toStatement:r22 error:r21];
                    [r23 release];
                    if (r21 != 0x0) {
                            if (sqlite3_step(r22) == 0x64) {
                                    if (CPU_FLAGS & E) {
                                            r21 = 0x1;
                                    }
                            }
                            [r20 cleanUpStatement:r22 forQuery:@"SELECT name FROM sqlite_master WHERE type='table' AND name=?"];
                            r20 = [[NSNumber numberWithBool:r2] retain];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)rowCountForTableWithName:(void *)arg2 columnName:(void *)arg3 columnValue:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x70;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (sub_100199468([r19 length], r22, 0x1, @"Received empty table name for row count") != 0x0 && sub_100199434([r23 sqliteHandle], r22, 0x2, @"Row count failed. Database not open.") != 0x0) {
            r26 = [r20 length];
            r24 = [[NSMutableString alloc] initWithFormat:@"SELECT count(1) FROM %@"];
            r25 = 0x0;
            if (r21 != 0x0) {
                    r25 = 0x0;
                    if (r26 != 0x0) {
                            [r24 appendFormat:@" WHERE %@=?"];
                            r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
                            r29 = r29;
                            r25 = [r0 retain];
                    }
            }
            r22 = [[r23 numberForQuery:r24 parameterValues:r25 error:r22] retain];
            [r25 release];
            [r24 release];
    }
    else {
            r22 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)columnsForTableWithName:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r23, 0x1, @"Received empty table name for get columns") != 0x0 && sub_100199434([r20 sqliteHandle], r23, 0x2, @"Get table columns failed. Database not open.") != 0x0) {
            r0 = [NSString stringWithFormat:@"PRAGMA table_info(%@)"];
            r29 = r29;
            r25 = [r0 retain];
            r23 = [r20 statementForQuery:r25 error:r23];
            if (r23 != 0x0) {
                    var_58 = r25;
                    r24 = [[NSMutableArray array] retain];
                    if (sqlite3_step(r23) != 0x65) {
                            do {
                                    r28 = sqlite3_column_text(r23, 0x1);
                                    if (r28 != 0x0) {
                                            r21 = @selector(length);
                                            r0 = [NSString alloc];
                                            r0 = [r0 initWithUTF8String:r28];
                                            r28 = r0;
                                            if (objc_msgSend(r0, r21) != 0x0) {
                                                    [r24 addObject:r2];
                                            }
                                            [r28 release];
                                    }
                            } while (sqlite3_step(r23) != 0x65);
                    }
                    r25 = var_58;
                    [r20 cleanUpStatement:r23 forQuery:r25];
                    r20 = [r24 copy];
                    [r24 release];
            }
            else {
                    r20 = 0x0;
            }
            [r25 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)columnInfoForTableWithName:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x80;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r23, 0x1, @"Received empty table name for column info") != 0x0 && sub_100199434([r20 sqliteHandle], r23, 0x2, @"Get table column info failed. Database not open.") != 0x0) {
            r22 = [[NSString stringWithFormat:@"PRAGMA table_info(%@)"] retain];
            r23 = [r20 statementForQuery:r22 error:r23];
            if (r23 != 0x0) {
                    var_60 = r22;
                    r24 = [[NSMutableDictionary alloc] init];
                    if (sqlite3_step(r23) != 0x65) {
                            do {
                                    r28 = sqlite3_column_text(r23, 0x1);
                                    r22 = sqlite3_column_text(r23, 0x2);
                                    if (r28 != 0x0 && r22 != 0x0) {
                                            r21 = @selector(length);
                                            r28 = [[NSString alloc] initWithUTF8String:r28];
                                            r22 = [[NSString alloc] initWithUTF8String:r22];
                                            if (objc_msgSend(r28, r21) != 0x0) {
                                                    if ([r22 length] != 0x0) {
                                                            [r24 setObject:r2 forKeyedSubscript:r3];
                                                    }
                                            }
                                            [r22 release];
                                            [r28 release];
                                    }
                            } while (sqlite3_step(r23) != 0x65);
                    }
                    r22 = var_60;
                    [r20 cleanUpStatement:r23 forQuery:r22];
                    r20 = [r24 copy];
                    [r24 release];
            }
            else {
                    r20 = 0x0;
            }
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)upsertRecord:(void *)arg2 inTableWithName:(void *)arg3 error:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_100199434([r22 sqliteHandle], r21, 0x2, @"Upsert record failed. Database not open.") != 0x0 && sub_100199468([r19 count], r21, 0x1, @"Received empty record for upsert") != 0x0 && sub_100199468([r20 length], r21, 0x1, @"Received empty table name for upsert") != 0x0) {
            r8 = [r22 upsertStatementForRecord:r19 inTableWithName:r20 error:r21];
            if (r8 != 0x0) {
                    r21 = [r22 executeSQLStatement:r8 error:r21];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)updateRecord:(void *)arg2 inTableWithName:(void *)arg3 columnName:(void *)arg4 columnValue:(void *)arg5 error:(void * *)arg6 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (sub_100199400(r22, r23, 0x1, @"Nil column value for update") != 0x0 && sub_100199468([r21 length], r23, 0x1, @"Empty column name for update") != 0x0 && sub_100199468([r19 count], r23, 0x1, @"Empty record for update") != 0x0 && sub_100199468([r20 length], r23, 0x1, @"Empty table name for update") != 0x0) {
            if (sub_100199434([r24 sqliteHandle], r23, 0x2, @"Update record failed. Database not open.") != 0x0) {
                    r8 = [r24 updateStatementForRecord:r19 inTableWithName:r20 columnName:r21 columnValue:r22 error:r23];
                    if (r8 != 0x0) {
                            r23 = [r24 executeSQLStatement:r8 error:r23];
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            else {
                    r23 = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)validateTableWithName:(void *)arg2 requiredColumnNames:(void *)arg3 addOnColumns:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x190;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r24 = arg5;
    r27 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg4 retain];
    if (sub_100199434([r27 sqliteHandle], r24, 0x2, @"Validate table failed. Database not open.") == 0x0 || sub_100199468([r19 length], r24, 0x1, @"Received empty table name for validate table") == 0x0 || sub_100199468([r20 count], r24, 0x1, @"Received no table columns for validate table") == 0x0) goto loc_1001810ec;

loc_100180d30:
    r28 = @selector(count);
    r23 = [NSMutableSet alloc];
    r0 = [r27 columnsForTableWithName:r19 error:r24];
    r29 = r29;
    r25 = [r0 retain];
    r23 = [r23 initWithArray:r2];
    [r25 release];
    if (objc_msgSend(r23, r28) == 0x0) goto loc_100181144;

loc_100180da4:
    r0 = [NSSet alloc];
    r0 = [r0 initWithArray:r2];
    r22 = r0;
    if (([r0 isSubsetOfSet:r23] & 0x1) == 0x0) goto loc_10018114c;

loc_100180dd8:
    var_170 = @selector(count);
    var_150 = r27;
    var_120 = r23;
    var_160 = r22;
    [r23 minusSet:r22];
    var_108 = q0;
    var_130 = r26;
    r0 = [r26 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_168 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100180f88;

loc_100180e54:
    r22 = *var_108;
    r21 = var_120;
    goto loc_100180e78;

loc_100180e78:
    r25 = 0x0;
    goto loc_100180ea0;

loc_100180ea0:
    if (*var_108 != r22) {
            objc_enumerationMutation(var_128);
    }
    r28 = @selector(containsObject:);
    r27 = *(var_110 + r25 * 0x8);
    if (objc_msgSend(r21, r28) == 0x0) goto loc_100180ee8;

loc_100180ed4:
    [r21 removeObject:r2];
    goto loc_100180f44;

loc_100180f44:
    r25 = r25 + 0x1;
    if (r25 < r23) goto loc_100180ea0;

loc_100180f50:
    r23 = objc_msgSend(var_128, var_168);
    if (r23 != 0x0) goto loc_100180e78;

loc_100180f88:
    [var_128 release];
    r23 = var_120;
    if (objc_msgSend(r23, var_170) == 0x0) goto loc_1001811ec;

loc_100180fa4:
    r0 = [NSString stringWithFormat:@"PRAGMA table_info(%@)"];
    r29 = r29;
    r26 = [r0 retain];
    r23 = [var_150 statementForQuery:r26 error:r24];
    if (r23 == 0x0) goto loc_10018122c;

loc_100180ff0:
    if (sqlite3_step(r23) == 0x65) goto loc_1001811c8;

loc_100181010:
    r25 = sqlite3_column_text(r23, 0x1);
    if (r25 == 0x0) goto loc_100181070;

loc_100181024:
    if (sqlite3_column_int(r23, 0x3) != 0x0) {
            r22 = @selector(containsObject:);
            r0 = [NSString stringWithUTF8String:r2];
            r29 = r29;
            r27 = [r0 retain];
            r25 = objc_msgSend(var_120, r22);
            [r27 release];
    }
    else {
            r25 = 0x0;
    }
    r0 = sqlite3_step(r23);
    if ((r25 & 0x1) != 0x0 || r0 == 0x65) goto loc_10018109c;
    goto loc_100181010;

loc_10018109c:
    [var_150 cleanUpStatement:r23 forQuery:r26];
    if (r25 == 0x0) goto loc_1001811e0;

loc_1001810b8:
    sub_100199354();
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100181248;

loc_100181248:
    r23 = var_120;
    r22 = var_160;
    r21 = [r0 retain];
    [r26 release];
    r26 = var_130;
    goto loc_100181218;

loc_100181218:
    [r22 release];
    goto loc_100181220;

loc_100181220:
    [r23 release];
    goto loc_1001810f0;

loc_1001810f0:
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001811e0:
    [r26 release];
    r23 = var_120;
    goto loc_1001811ec;

loc_1001811ec:
    r21 = [[NSNumber numberWithBool:r2] retain];
    r26 = var_130;
    goto loc_100181214;

loc_100181214:
    r22 = var_160;
    goto loc_100181218;

loc_100181070:
    if (sqlite3_step(r23) != 0x65) goto loc_100181010;

loc_1001811c8:
    [var_150 cleanUpStatement:r23 forQuery:r26];
    goto loc_1001811e0;

loc_10018122c:
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100181248;

loc_100180ee8:
    var_148 = @selector(class);
    r0 = [var_130 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    objc_msgSend(@class(NSString), var_148);
    if (objc_msgSend(r27, r26) == 0x0 || [var_150 executeSQL:r2 error:r3] == 0x0) goto loc_100181188;

loc_100180f3c:
    [r27 release];
    goto loc_100180f44;

loc_100181188:
    r21 = [[NSNumber numberWithBool:r2] retain];
    [r27 release];
    [var_128 release];
    r26 = var_130;
    r23 = var_120;
    goto loc_100181214;

loc_10018114c:
    sub_100199354();
    r21 = [[NSNumber numberWithBool:r2] retain];
    goto loc_100181218;

loc_100181144:
    r21 = 0x0;
    goto loc_100181220;

loc_1001810ec:
    r21 = 0x0;
    goto loc_1001810f0;
}

-(void *)deleteRecordsFromTableWithName:(void *)arg2 condition:(void *)arg3 parameterValues:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (sub_100199434([r23 sqliteHandle], r22, 0x2, @"Delete records with condition failed. Database not open.") == 0x0 || sub_100199468([r19 length], r22, 0x1, @"Received empty table name for delete record") == 0x0 || sub_100199468([r20 length], r22, 0x1, @"Received empty condition for delete record") == 0x0) goto loc_1001823bc;

loc_100182304:
    r0 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE %@"];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r23 statementForQuery:r24 parameterValues:r21 error:r22];
    if (r25 == 0x0) goto loc_100182414;

loc_100182354:
    r26 = sqlite3_step(r25);
    [r23 cleanUpStatement:r25 forQuery:r24];
    if (r26 != 0x65) goto loc_1001823f8;

loc_100182380:
    sqlite3_changes(r23->_sqliteHandle);
    r22 = [[NSNumber numberWithInt:r2] retain];
    goto loc_100182418;

loc_100182418:
    [r24 release];
    goto loc_1001823c0;

loc_1001823c0:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_1001823f8:
    [r23 setDatabaseError:r22 operation:@"delete records with condition"];
    goto loc_100182414;

loc_100182414:
    r22 = 0x0;
    goto loc_100182418;

loc_1001823bc:
    r22 = 0x0;
    goto loc_1001823c0;
}

-(bool)deleteRecordFromTableWithName:(void *)arg2 columnName:(void *)arg3 columnValue:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x80;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (sub_100199434([r22 sqliteHandle], r23, 0x2, @"Delete record failed. Database not open.") != 0x0 && sub_100199400(r21, r23, 0x1, @"Received nil value for delete record") != 0x0 && sub_100199468([r19 length], r23, 0x1, @"Received empty table name for delete record") != 0x0 && sub_100199468([r20 length], r23, 0x1, @"Received empty column for delete record") != 0x0) {
            r0 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE %@=?"];
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r22 prepareSQL:r24 error:r23];
            if (r25 != 0x0) {
                    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
                    r26 = [r0 retain];
                    r27 = [r22 bindValues:r26 toStatement:r25 error:r23];
                    [r26 release];
                    if (r27 != 0x0) {
                            if (sqlite3_step(r25) == 0x65) {
                                    if (CPU_FLAGS & E) {
                                            r26 = 0x1;
                                    }
                            }
                            if (!CPU_FLAGS & E) {
                                    [r22 setDatabaseError:r23 operation:@"delete record"];
                            }
                            [r22 cleanUpStatement:r25 forQuery:r24];
                    }
                    else {
                            r26 = 0x0;
                    }
            }
            else {
                    r26 = 0x0;
            }
            [r24 release];
    }
    else {
            r26 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r26;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteAllRecordsFromTableWithName:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r21, 0x1, @"Received empty table name for delete all records") != 0x0 && sub_100199434([r20 sqliteHandle], r21, 0x2, @"Delete all records failed. Database not open.") != 0x0) {
            r22 = [[NSString stringWithFormat:@"DELETE FROM %@"] retain];
            r24 = [r20 statementForQuery:r22 error:r21];
            if (r24 != 0x0) {
                    if (sqlite3_step(r24) == 0x65) {
                            if (CPU_FLAGS & E) {
                                    r23 = 0x1;
                            }
                    }
                    if (!CPU_FLAGS & E) {
                            [r20 setDatabaseError:r21 operation:@"delete all records"];
                    }
                    [r20 cleanUpStatement:r24 forQuery:r22];
            }
            else {
                    r23 = 0x0;
            }
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)increaseColumn:(void *)arg2 byValue:(long long)arg3 inTable:(void *)arg4 condition:(void *)arg5 parameterValues:(void *)arg6 error:(void * *)arg7 {
    r31 = r31 - 0xa0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r24 = arg7;
    r25 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    if (sub_100199434([r23 sqliteHandle], r24, 0x2, @"Increase column failed. Database not open.") != 0x0 && sub_100199468([r21 length], r24, 0x1, @"Empty condition for increase column") != 0x0 && sub_100199468([r20 length], r24, 0x1, @"Empty table name for increase column") != 0x0 && sub_100199468([r19 length], r24, 0x1, @"Empty column name for increase column") != 0x0) {
            r0 = [r23 columnInfoForTableWithName:r20 error:r24];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            if (sub_100199400(r0, r24, 0x1, @"Invalid column or table name") != 0x0) {
                    var_58 = r26;
                    r0 = [r27 uppercaseString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = sub_1001993cc([r0 isEqual:r2], r24, 0x1, @"Column type is not integer.");
                    [r0 release];
                    if (r26 != 0x0) {
                            var_60 = [[NSString stringWithFormat:@"UPDATE %@ SET %@ = %@ + %lld WHERE %@"] retain];
                            r28 = [r23 statementForQuery:@"UPDATE %@ SET %@ = %@ + %lld WHERE %@" parameterValues:r22 error:r24];
                            if (r28 != 0x0) {
                                    if (sqlite3_step(r28) == 0x65) {
                                            if (CPU_FLAGS & E) {
                                                    r25 = 0x1;
                                            }
                                    }
                                    if (!CPU_FLAGS & E) {
                                            [r23 setDatabaseError:r24 operation:@"increase records value"];
                                    }
                                    r0 = r23;
                                    r23 = var_60;
                                    [r0 cleanUpStatement:r28 forQuery:r23];
                                    r26 = var_58;
                            }
                            else {
                                    r25 = 0x0;
                                    r23 = var_60;
                                    r26 = var_58;
                            }
                            [r23 release];
                    }
                    else {
                            r25 = 0x0;
                            r26 = var_58;
                    }
            }
            else {
                    r25 = 0x0;
            }
            [r27 release];
            [r26 release];
    }
    else {
            r25 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void *)recordsForQuery:(void *)arg2 parameterValues:(void *)arg3 error:(void * *)arg4 {
    r22 = [arg2 retain];
    r19 = [[self recordsForQuery:r22 parameterValues:arg3 error:arg4 withFilter:0x100e6e948] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)beginTransaction {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self sqliteHandle] != 0x0) {
            r0 = [r19 sqliteHandle];
            r0 = sqlite3_exec(r0, "BEGIN EXCLUSIVE TRANSACTION", 0x0, 0x0, 0x0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x84dd message:@"Begin transaction failed. Database not open"];
            [r0 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)numberForQuery:(void *)arg2 parameterValues:(void *)arg3 error:(void * *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_100199468([r19 length], r22, 0x1, @"Received empty query to get numeric result") == 0x0 || sub_100199434([r21 sqliteHandle], r22, 0x2, @"Query numeric result failed. Database not open.") == 0x0) goto loc_100182b8c;

loc_100182aa4:
    r23 = [r21 statementForQuery:r19 parameterValues:r20 error:r22];
    if (r23 == 0x0) goto loc_100182b8c;

loc_100182ac8:
    if (sqlite3_step(r23) != 0x64) goto loc_100182bbc;

loc_100182ad8:
    r24 = [[r21 valueAtColumn:0x0 forStatement:r23] retain];
    r25 = [[NSNull null] retain];
    r26 = [r24 isEqual:r2];
    [r25 release];
    if (r26 != 0x0) goto loc_100182b80;

loc_100182b40:
    [NSNumber class];
    if ((sub_1001993cc([r24 isKindOfClass:r2], r22, 0x1, @"Found result that was not numeric") & 0x1) != 0x0) goto loc_100182bdc;

loc_100182b80:
    [r24 release];
    goto loc_100182bd8;

loc_100182bd8:
    r24 = 0x0;
    goto loc_100182bdc;

loc_100182bdc:
    [r21 cleanUpStatement:r23 forQuery:r19];
    goto loc_100182b90;

loc_100182b90:
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_100182bbc:
    [r21 setDatabaseError:r22 operation:@"query numeric result"];
    goto loc_100182bd8;

loc_100182b8c:
    r24 = 0x0;
    goto loc_100182b90;
}

-(bool)performTransaction:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100182c78;

loc_100182c20:
    if ([r20 sqliteHandle] == 0x0) goto loc_100182cb4;

loc_100182c34:
    if (([r20 beginTransaction] & 0x1) == 0x0) goto loc_100182cf0;

loc_100182c48:
    if ((*(r19 + 0x10))(r19) != 0x1) goto loc_100182d5c;

loc_100182c5c:
    if (([r20 endTransaction] & 0x1) == 0x0) goto loc_100182dec;

loc_100182c70:
    r20 = 0x1;
    goto loc_100182d3c;

loc_100182d3c:
    [r19 release];
    r0 = r20;
    return r0;

loc_100182dec:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100182d28;

loc_100182d28:
    r0 = r20;
    goto loc_100182d2c;

loc_100182d2c:
    [r0 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    goto loc_100182d38;

loc_100182d38:
    r20 = 0x0;
    goto loc_100182d3c;

loc_100182d5c:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x0 messageCode:0x84da message:@"Transaction failed"];
    [r0 release];
    if (([r20 rollbackTransaction] & 0x1) != 0x0) goto loc_100182d38;

loc_100182dbc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    goto loc_100182d2c;

loc_100182cf0:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100182d28;

loc_100182cb4:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100182d28;

loc_100182c78:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100182d28;
}

-(void *)recordsForQuery:(void *)arg2 parameterValues:(void *)arg3 error:(void * *)arg4 withFilter:(void *)arg5 {
    r31 = r31 - 0xc0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg4;
    var_60 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r25 = [arg5 retain];
    if (sub_100199468([r22 length], r19, 0x1, @"Received empty query for records for query") == 0x0) goto loc_100182954;

loc_100182664:
    r0 = objc_retainBlock(r25);
    r20 = r0;
    if ((sub_100199400(r0, r19, 0x1, @"Received empty filter for selecting records") & 0x1) == 0x0) goto loc_10018294c;

loc_100182688:
    r21 = sub_100199434([var_60 sqliteHandle], r19, 0x2, @"Query records failed. Database not open.");
    [r20 release];
    if (r21 == 0x0) goto loc_100182954;

loc_1001826bc:
    r0 = [r22 rangeOfString:@"select" options:0x9];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    if (sub_1001993cc(r0, r19, 0x1, @"Received invalid select query") == 0x0) goto loc_100182954;

loc_1001826f8:
    r24 = [var_60 statementForQuery:r22 parameterValues:r23 error:r19];
    if (r24 == 0x0) goto loc_100182954;

loc_10018271c:
    r20 = [[NSMutableArray alloc] init];
    if (sqlite3_step(r24) != 0x64) goto loc_1001829fc;

loc_100182754:
    var_B0 = r23;
    stack[-184] = r22;
    r19 = 0x0;
    var_88 = r25;
    var_98 = r20;
    r22 = var_60;
    goto loc_100182778;

loc_100182778:
    var_90 = @selector(initWithCapacity:);
    var_7C = r19;
    r20 = sqlite3_column_count(r24);
    r0 = [NSMutableDictionary alloc];
    asm { sxtw       x2, w20 };
    r27 = objc_msgSend(r0, var_90);
    if (r20 >= 0x1) {
            r28 = 0x0;
            do {
                    r21 = sqlite3_column_name(r24, r28);
                    if (r21 != 0x0) {
                            r25 = [[NSString alloc] initWithUTF8String:r21];
                            r0 = [r22 valueAtColumn:r28 forStatement:r24];
                            r29 = r29;
                            r21 = [r0 retain];
                            if (r21 != 0x0) {
                                    [r27 setObject:r2 forKeyedSubscript:r3];
                            }
                            else {
                                    r0 = [APMMeasurement monitor];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:0x4 messageCode:0x84d4 message:@"Value is nil for column" context:r25];
                                    r22 = var_60;
                                    [r0 release];
                            }
                            [r21 release];
                            r0 = r25;
                    }
                    else {
                            r0 = [APMMeasurement monitor];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logWithLevel:r2 messageCode:r3 message:r4];
                            r0 = r21;
                    }
                    [r0 release];
                    r28 = r28 + 0x1;
            } while (r20 != r28);
    }
    r25 = var_88;
    r19 = var_7C;
    if (((*(r25 + 0x10))(r25, r19, r27) & 0x1) == 0x0) goto loc_100182994;

loc_10018291c:
    r19 = r19 + 0x1;
    r20 = var_98;
    [r20 addObject:r2];
    [r27 release];
    if (sqlite3_step(r24) == 0x64) goto loc_100182778;

loc_1001829a0:
    r0 = [r20 count];
    r23 = var_B0;
    r22 = stack[-184];
    if (r0 == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x84d5 message:@"Database contains records that were all filtered out"];
            [r0 release];
    }
    goto loc_1001829fc;

loc_1001829fc:
    [var_60 cleanUpStatement:r24 forQuery:r22];
    goto loc_100182958;

loc_100182958:
    [r25 release];
    [r23 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;

loc_100182994:
    [r27 release];
    r20 = var_98;
    goto loc_1001829a0;

loc_100182954:
    r20 = 0x0;
    goto loc_100182958;

loc_10018294c:
    [r20 release];
    goto loc_100182954;
}

-(bool)endTransaction {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self sqliteHandle] != 0x0) {
            r0 = [r19 sqliteHandle];
            r0 = sqlite3_exec(r0, "END TRANSACTION", 0x0, 0x0, 0x0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x84de message:@"End transaction failed. Database not open"];
            [r0 release];
            r0 = 0x0;
    }
    return r0;
}

-(struct sqlite3_stmt *)statementForQuery:(void *)arg2 error:(void * *)arg3 {
    r0 = [self statementForQuery:arg2 parameterValues:0x0 error:arg3];
    return r0;
}

-(bool)rollbackTransaction {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self sqliteHandle] != 0x0) {
            r0 = [r19 sqliteHandle];
            r0 = sqlite3_exec(r0, "ROLLBACK", 0x0, 0x0, 0x0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x84df message:@"Rollback transaction failed. Database not open"];
            [r0 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)cleanUpStatement:(struct sqlite3_stmt *)arg2 forQuery:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = self->_statementCache;
    r0 = [r0 objectForKeyedSubscript:arg3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            if ([r20 pointerValue] != r19) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x84e0 message:@"Statement is not the same one in the cache"];
                    [r0 release];
            }
            sqlite3_reset(r19);
            sqlite3_clear_bindings(r19);
    }
    else {
            sqlite3_finalize(r19);
    }
    [r20 release];
    return;
}

-(bool)executeSQL:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty SQL string to execute") != 0x0 && sub_100199434([r21 sqliteHandle], r20, 0x2, @"Execute SQL failed. Database not open.") != 0x0) {
            r8 = [r21 prepareSQL:r19 error:r20];
            if (r8 != 0x0) {
                    r20 = [r21 executeSQLStatement:r8 error:r20];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(struct sqlite3_stmt *)prepareSQL:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty SQL string to prepare") == 0x0 || sub_100199434([r21 sqliteHandle], r20, 0x2, @"Prepare SQL failed. Database not open.") == 0x0) goto loc_1001834a0;

loc_100183410:
    r22 = [r21 sqliteHandle];
    r0 = objc_retainAutorelease(r19);
    r0 = [r0 UTF8String];
    r0 = sqlite3_prepare_v2(r22, r0, 0xffffffffffffffff, &var_28, &var_30);
    if (r0 == 0x0) goto loc_100183474;

loc_100183454:
    [r21 setDatabaseError:r20 operation:@"prepare statement"];
    goto loc_100183498;

loc_100183498:
    sqlite3_finalize(var_28);
    goto loc_1001834a0;

loc_1001834a0:
    r20 = 0x0;
    goto loc_1001834a4;

loc_1001834a4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100183474:
    r8 = var_30;
    if (r8 == 0x0 || *(int8_t *)r8 == 0x0) goto loc_1001834c4;

loc_100183484:
    sub_100199354();
    goto loc_100183498;

loc_1001834c4:
    r20 = var_28;
    goto loc_1001834a4;
}

-(struct sqlite3_stmt *)statementForQuery:(void *)arg2 parameterValues:(void *)arg3 error:(void * *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_statementCache));
    r0 = *(r23 + r26);
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100183188;

loc_10018313c:
    r24 = [r21 pointerValue];
    goto loc_100183150;

loc_100183150:
    if ([r20 count] != 0x0) {
            if ([r23 bindValues:r20 toStatement:r24 error:r22] == 0x0) {
                    r24 = 0x0;
            }
    }
    goto loc_100183298;

loc_100183298:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;

loc_100183188:
    if (sub_100199434([r23 sqliteHandle], r22, 0x2, @"Statement for query failed. Database not open.") == 0x0) goto loc_100183294;

loc_1001831b0:
    if ([r19 rangeOfString:@"?"] != 0x7fffffffffffffff) goto loc_1001831fc;

loc_1001831d4:
    if ([r19 rangeOfString:@"WHERE" options:0x1] == 0x7fffffffffffffff) {
            if (CPU_FLAGS & E) {
                    r25 = 0x1;
            }
    }
    goto loc_100183228;

loc_100183228:
    r24 = [r23 prepareSQL:r19 error:r22];
    if (r24 == 0x0) goto loc_100183298;

loc_100183248:
    if (r25 != 0x0) {
            r25 = [[NSValue valueWithPointer:r24] retain];
            [*(r23 + r26) setObject:r25 forKeyedSubscript:r19];
            [r25 release];
    }
    goto loc_100183150;

loc_1001831fc:
    r0 = [r20 count];
    r25 = 0x1;
    if ((sub_100199468(r0, r22, 0x1, @"Received empty parameters") & 0x1) == 0x0) goto loc_100183294;
    goto loc_100183228;

loc_100183294:
    r24 = 0x0;
    goto loc_100183298;
}

-(bool)executeSQLStatement:(struct sqlite3_stmt *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r0 = sub_100199434(r21, r19, 0x1, @"Execute SQL statement failed. Statement is NULL.");
    if (r0 != 0x0) {
            r0 = [r20 sqliteHandle];
            r0 = sub_100199434(r0, r19, 0x2, @"Execute SQL statement failed. Database not open.");
            if (r0 != 0x0) {
                    sqlite3_step(r21);
                    sqlite3_finalize(r21);
                    if (r22 == 0x65) {
                            r0 = 0x1;
                    }
                    else {
                            [r20 setDatabaseError:r19 operation:@"execute statement"];
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(bool)validateDatabaseWithError:(void * *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self sqliteHandle];
    r0 = sub_100199434(r0, r19, 0x2, @"Validate database failed. Database not open.");
    if (r0 != 0x0) {
            r0 = [r20 prepareSQL:@"PRAGMA integrity_check" error:r19];
            r21 = r0;
            if (r21 != 0x0) {
                    if (sqlite3_step(r21) == 0x64) {
                            r22 = sqlite3_column_text(r21, 0x0);
                            sqlite3_column_count(r21);
                            r22 = strcmp(r22, "ok");
                            sqlite3_finalize(r21);
                            if (r23 == 0x1 && r22 == 0x0) {
                                    r0 = 0x1;
                            }
                            else {
                                    [r20 setDatabaseError:r19 operation:@"validate database"];
                                    r0 = 0x0;
                            }
                    }
                    else {
                            sqlite3_finalize(r21);
                            [r20 setDatabaseError:r19 operation:@"validate database"];
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(void)closeDatabase {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteHandle));
    if (*(r19 + r22) != 0x0) {
            [r19 finalizeAndClearStatements];
            r20 = sqlite3_close(*(r19 + r22));
            if (r20 != 0x0) {
                    r21 = [[APMMeasurement monitor] retain];
                    r20 = [[NSNumber numberWithInt:r20] retain];
                    [r21 logWithLevel:0x4 messageCode:0x84e2 message:@"Failed to close database. Got error code" context:r20];
                    [r20 release];
                    [r21 release];
            }
            *(r19 + r22) = 0x0;
    }
    return;
}

-(bool)openAndValidateDatabase:(void * *)arg2 {
    r31 = r31 - 0x70;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r0 = [NSFileManager alloc];
    r0 = [r0 init];
    r19 = r0;
    r26 = (int64_t *)&r20->_databasePath;
    if ([r0 fileExistsAtPath:*r26] == 0x0) goto loc_1001837cc;

loc_1001836c8:
    r0 = [r19 attributesOfItemAtPath:*r26 error:r21];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100183928;

loc_1001836f0:
    r0 = [r22 objectForKeyedSubscript:**_NSFileImmutable];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 boolValue] == 0x0) goto loc_1001837b8;

loc_10018372c:
    r24 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    r24 = [r19 setAttributes:r25 ofItemAtPath:*r26 error:r21];
    [r25 release];
    if (r24 == 0x0) goto loc_100183920;

loc_1001837b8:
    [r23 release];
    [r22 release];
    goto loc_100183818;

loc_100183818:
    if (sqlite3_open_v2([*r26 UTF8String], (int64_t *)&r20->_sqliteHandle, 0x6, 0x0) == 0x0) goto loc_100183874;

loc_100183844:
    [r20 setDatabaseError:r21 operation:@"initialize sqlite handle"];
    [r20 closeDatabase];
    goto loc_100183930;

loc_100183930:
    r20 = 0x0;
    goto loc_100183934;

loc_100183934:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100183874:
    r0 = *r26;
    r0 = sub_100197728(r0, &var_60);
    r22 = [var_60 retain];
    if ((r0 & 0x1) == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x84e1 message:@"Failed to exclude database file from backup" context:r22];
            [r0 release];
    }
    if (([r20 validateDatabaseWithError:r21] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            [r20 closeDatabase];
            r20 = 0x0;
    }
    [r22 release];
    goto loc_100183934;

loc_100183920:
    [r23 release];
    goto loc_100183928;

loc_100183928:
    [r22 release];
    goto loc_100183930;

loc_1001837cc:
    r0 = *r26;
    r0 = [r0 stringByDeletingLastPathComponent];
    r29 = r29;
    r22 = [r0 retain];
    r23 = [r19 createDirectoryAtPath:r22 withIntermediateDirectories:0x1 attributes:0x0 error:r21];
    [r22 release];
    if (r23 == 0x0) goto loc_100183930;
}

-(void)finalizeAndClearStatements {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_statementCache));
    r0 = *(r19 + r26);
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r2 = *(0x0 + r28 * 0x8);
                            r0 = *(r19 + r26);
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 pointerValue];
                            if (r0 != 0x0) {
                                    sqlite3_finalize(r0);
                            }
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [*(r19 + r26) removeAllObjects];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)valueAtColumn:(int)arg2 forStatement:(struct sqlite3_stmt *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = arg2;
    if (r19 == 0x0) goto loc_100183d24;

loc_100183cc8:
    r8 = sqlite3_column_type(r19, r20) - 0x1;
    if (r8 > 0x4) goto loc_100183d24;

loc_100183ce0:
    goto *0x100183e08[sign_extend_64(*(int32_t *)(0x100183e08 + r8 * 0x4)) + 0x100183e08];

loc_100183cf4:
    r0 = [NSNumber numberWithLongLong:sqlite3_column_int64(r19, r20)];
    goto loc_100183df4;

loc_100183df4:
    r0 = [r0 retain];
    goto loc_100183df8;

loc_100183df8:
    r0 = [r0 autorelease];
    return r0;

loc_100183d2c:
    sqlite3_column_double(r19, r20);
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100183df4;

loc_100183d58:
    r0 = sqlite3_column_text(r19, r20);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSString alloc];
            r0 = [r0 initWithUTF8String:r19];
    }
    goto loc_100183df8;

loc_100183d94:
    r0 = sqlite3_column_blob(r19, r20);
    r21 = r0;
    if (r21 == 0x0) goto loc_100183df8;

loc_100183da8:
    sqlite3_column_bytes(r19, r20);
    asm { sxtw       x3, w0 };
    r0 = [r22 dataWithBytes:r21 length:r3];
    goto loc_100183df4;

loc_100183ddc:
    r0 = [NSNull null];
    goto loc_100183df4;

loc_100183d24:
    r0 = 0x0;
    goto loc_100183df8;
}

-(struct sqlite3_stmt *)upsertStatementForRecord:(void *)arg2 inTableWithName:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xd0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (sub_100199468([r0 length], r21, 0x1, @"Received empty table name for upsert") != 0x0 && sub_100199468([r19 count], r21, 0x1, @"Received empty record for upsert") != 0x0) {
            r23 = [[NSMutableString alloc] init];
            r25 = [[NSMutableString alloc] init];
            var_78 = &var_80;
            var_58 = [[NSMutableArray alloc] init];
            r23 = [r23 retain];
            var_98 = r23;
            r25 = [r25 retain];
            var_90 = r25;
            [r19 enumerateKeysAndObjectsUsingBlock:&var_B8];
            if (*(var_78 + 0x28) != 0x0) {
                    r24 = @selector(length);
                    r26 = [[NSMutableString alloc] init];
                    [r26 appendFormat:@"INSERT OR REPLACE INTO %@ ("];
                    [r23 replaceCharactersInRange:objc_msgSend(r23, r24) - 0x2 withString:0x2];
                    [r26 appendString:r23];
                    [r25 replaceCharactersInRange:objc_msgSend(r25, r24) - 0x2 withString:0x2];
                    [r26 appendString:r25];
                    r24 = [r22 prepareSQL:r26 error:r21];
                    if (r24 != 0x0) {
                            if ([r22 bindValues:*(var_78 + 0x28) toStatement:r24 error:r21] != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r21 = 0x0;
                                    }
                                    else {
                                            r21 = r24;
                                    }
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r26 release];
            }
            else {
                    r21 = 0x0;
            }
            [var_90 release];
            [var_98 release];
            _Block_object_dispose(&var_80, 0x8);
            [var_58 release];
            [r25 release];
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(struct sqlite3_stmt *)updateStatementForRecord:(void *)arg2 inTableWithName:(void *)arg3 columnName:(void *)arg4 columnValue:(void *)arg5 error:(void * *)arg6 {
    r31 = r31 - 0xe0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (sub_100199400(r22, r23, 0x1, @"Nil column value for update") != 0x0 && sub_100199468([r21 length], r23, 0x1, @"Empty column name for update") != 0x0 && sub_100199468([r19 count], r23, 0x1, @"Empty record for update") != 0x0 && sub_100199468([r20 length], r23, 0x1, @"Empty table name for update") != 0x0) {
            r28 = [[NSMutableString alloc] init];
            var_78 = &var_80;
            var_58 = [[NSMutableArray alloc] init];
            r25 = [r28 retain];
            var_90 = r25;
            [r19 enumerateKeysAndObjectsUsingBlock:&var_B0];
            if ((sub_100199400(*(var_78 + 0x28), r23, 0x1, @"Failed to bind parameter of unexpected type to update statement") & 0x1) != 0x0) {
                    [r25 deleteCharactersInRange:[r25 length] - 0x1];
                    r26 = [[NSString stringWithFormat:@"UPDATE %@ SET %@ WHERE %@=?"] retain];
                    [*(var_78 + 0x28) addObject:r22];
                    r27 = [r24 prepareSQL:r26 error:r23];
                    if (r27 != 0x0) {
                            if ([r24 bindValues:*(var_78 + 0x28) toStatement:r27 error:r23] != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r23 = 0x0;
                                    }
                                    else {
                                            r23 = r27;
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r26 release];
            }
            else {
                    r23 = 0x0;
            }
            [var_90 release];
            _Block_object_dispose(&var_80, 0x8);
            [var_58 release];
            [r25 release];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)bindValues:(void *)arg2 toStatement:(struct sqlite3_stmt *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xd0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r21 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    if (sub_100199434(r21, r20, 0x1, @"Failed to bind to NULL statement") != 0x0) {
            sqlite3_clear_bindings(r21);
            var_48 = r29 - 0x50;
            var_78 = &var_80;
            [r19 enumerateObjectsUsingBlock:&var_C0];
            if (r20 != 0x0) {
                    r0 = *(var_78 + 0x28);
                    if (r0 != 0x0) {
                            *r20 = objc_retainAutorelease(r0);
                    }
            }
            if (*(int8_t *)(var_48 + 0x18) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            _Block_object_dispose(&var_80, 0x8);
            [0x0 release];
            _Block_object_dispose(r29 - 0x50, 0x8);
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)lastErrorMessage {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self sqliteHandle] != 0x0) {
            r0 = [r19 sqliteHandle];
            r0 = sqlite3_errmsg(r0);
            r19 = r0;
            if (r19 != 0x0) {
                    r0 = [NSString alloc];
                    r0 = [r0 initWithUTF8String:r19];
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x84e6 message:@"Failed to get last error message. Database not open"];
            [r0 release];
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)errorDescriptionForDatabaseOperation:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = r19->_sqliteHandle;
    if (r20 != 0x0) {
            r21 = [r2 retain];
            sqlite3_errcode(r20);
            r23 = [[r19 lastErrorMessage] retain];
            r19 = [[NSString stringWithFormat:r2] retain];
            [r21 release];
            [r23 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setDatabaseError:(void * *)arg2 operation:(void *)arg3 {
    r22 = [arg3 retain];
    r21 = [[self errorDescriptionForDatabaseOperation:r22] retain];
    r20 = [[self monitorContextForDatabaseOperation:r22] retain];
    [r22 release];
    sub_10019935c(arg2, 0x3, r21, r20);
    [r20 release];
    [r21 release];
    return;
}

-(void *)databasePath {
    r0 = self->_databasePath;
    return r0;
}

-(void *)monitorContextForDatabaseOperation:(void *)arg2 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [[NSMutableArray alloc] init];
    if ([r19 length] == 0x0) {
            [@"Unknown operation" retain];
            [r19 release];
            r19 = @"Unknown operation";
    }
    [r20 addObject:r19];
    sqlite3_errcode(r23->_sqliteHandle);
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r25 = [r0 retain];
    [r20 addObject:r25];
    [r25 release];
    r0 = [NSFileManager alloc];
    r0 = [r0 init];
    r22 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_databasePath));
    if ([r0 isWritableFileAtPath:*(r23 + r24)] != 0x0) {
            r2 = @"A";
    }
    else {
            r2 = @"NA";
    }
    [r20 addObject:r2];
    r0 = [r22 attributesOfFileSystemForPath:*(r23 + r24) error:&var_48];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [var_48 retain];
    if (r23 == 0x0 && r24 != 0x0) {
            [r20 addObject:@""];
    }
    else {
            r0 = [r23 objectForKeyedSubscript:**_NSFileSystemFreeSize];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 unsignedLongLongValue];
            if (r0 >> 0x14 != 0x0) {
                    asm { ucvtf      d0, x8 };
                    log10(r0);
                    asm { fcvtms     x2, d0 };
                    r0 = *(r26 + 0xfc0);
                    r0 = [r0 numberWithLong:r2];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r20, r21);
                    [r26 release];
            }
            else {
                    [r20 addObject:@"-1"];
            }
            [r25 release];
    }
    r21 = [[r20 componentsJoinedByString:r2] retain];
    [r23 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_databasePath, 0x0);
    objc_storeStrong((int64_t *)&self->_statementCache, 0x0);
    return;
}

@end