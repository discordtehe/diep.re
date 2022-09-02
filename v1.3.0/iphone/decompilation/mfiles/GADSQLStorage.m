@implementation GADSQLStorage

+(void *)sharedInstance {
    if (*qword_1011dbeb8 != -0x1) {
            dispatch_once(0x1011dbeb8, 0x100e9be70);
    }
    r0 = *0x1011dbec0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            sqlite3_close(r0);
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.sql-storage", 0x0, 0x21);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.sql-storage", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_writeQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_values));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_valuesToWrite));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_10087f8d8();
            r0 = [r0 retain];
            r20 = [[r0 URLByAppendingPathComponent:@"storage"] retain];
            [r0 release];
            if ([r19 openDatabaseAtURL:r20] != 0x0) {
                    [r19 loadDatabaseValues];
            }
            else {
                    sub_1007ce06c(0x0, @"Database initialization failed. Keeping values in memory only. %@");
            }
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)loadDatabaseValues {
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
    r19 = self;
    r0 = r19->_database;
    r0 = sqlite3_prepare_v2(r0, "select name, value from storage;", 0xffffffffffffffff, &var_38, 0x0);
    if (r0 != 0x0) {
            sub_1007ce06c(0x0, @"Couldn't prepare statement. %s");
    }
    else {
            r8 = sqlite3_step(var_38);
            r0 = var_38;
            if (r8 == 0x64) {
                    do {
                            r8 = sqlite3_column_text(r0, 0x0);
                            if (r8 != 0x0) {
                                    r0 = [NSString stringWithUTF8String:r2];
                                    r29 = r29;
                                    r21 = [r0 retain];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            r8 = sqlite3_column_text(var_38, 0x1);
                            if (r8 != 0x0) {
                                    r0 = [NSString stringWithUTF8String:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    if (r21 != 0x0 && r22 != 0x0) {
                                            sub_100822058(r19->_values, r21, r22);
                                    }
                            }
                            else {
                                    r22 = 0x0;
                            }
                            [r22 release];
                            [r21 release];
                            r8 = sqlite3_step(var_38);
                            r0 = var_38;
                    } while (r8 == 0x64);
            }
            sqlite3_finalize(r0);
    }
    return;
}

-(bool)openDatabaseAtURL:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100898698;

loc_100898624:
    r0 = [r19 retain];
    r20 = r0;
    r0 = [r0 path];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    r0 = [r21 UTF8String];
    r0 = sqlite3_open(r0, &var_48);
    if (r0 == 0x0) goto loc_1008986a0;

loc_100898680:
    sub_1007ce06c(0x0, @"Couldn't open database.");
    r22 = 0x0;
    goto loc_100898798;

loc_100898798:
    [r21 release];
    [r20 release];
    goto loc_1008987a8;

loc_1008987a8:
    [r19 release];
    r0 = r22;
    return r0;

loc_1008986a0:
    r25 = [@(YES) retain];
    r24 = [r20 setResourceValue:r25 forKey:**_NSURLIsExcludedFromBackupKey error:&var_50];
    r23 = [var_50 retain];
    [r25 release];
    if (r23 != 0x0 || (r24 ^ 0x1) != 0x0) goto loc_100898758;

loc_100898710:
    r0 = sqlite3_exec(var_48, "create table if not exists storage (name text primary key, value text);", 0x0, 0x0, &var_58);
    if (r0 == 0x0) goto loc_10089877c;

loc_100898734:
    r8 = var_58;
    if (r8 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = "No error info.";
            }
            else {
                    r8 = r8;
            }
    }
    r1 = @"Couldn't create table. %s";
    goto loc_100898764;

loc_100898764:
    sub_1007ce06c(0x0, r1);
    sqlite3_close(var_48);
    r22 = 0x0;
    goto loc_100898790;

loc_100898790:
    [r23 release];
    goto loc_100898798;

loc_10089877c:
    r22->_database = var_48;
    r22 = 0x1;
    goto loc_100898790;

loc_100898758:
    r1 = @"Couldn't exclude file from backup.\nFile: %@\nError:%@";
    goto loc_100898764;

loc_100898698:
    r22 = 0x0;
    goto loc_1008987a8;
}

-(void)setString:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r20 length] != 0x0) {
            r23 = [r19 copy];
            r22 = [r20 copy];
            r24 = r21->_lockQueue;
            var_48 = [r21 retain];
            var_40 = r22;
            [r22 retain];
            [r23 retain];
            dispatch_async(r24, &var_68);
            [r23 release];
            [var_40 release];
            [var_48 release];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setObject:(void *)arg2 forKeyedSubscript:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (r19 == 0x0) {
            [@"" retain];
            [r19 release];
            r19 = @"";
    }
    [r20 setString:r19 forKey:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void *)stringForKey:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = [arg2 retain];
    var_48 = &var_50;
    r21 = self->_lockQueue;
    var_68 = [self retain];
    r19 = [r20 retain];
    var_60 = r19;
    dispatch_sync(r21, &var_88);
    r20 = *(var_48 + 0x28);
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
            r0 = *(var_48 + 0x28);
            r0 = [r0 description];
            r0 = [r0 retain];
            r8 = *(var_48 + 0x28);
            *(var_48 + 0x28) = r0;
            [r8 release];
    }
    r0 = *(var_48 + 0x28);
    if (r0 != 0x0) {
            r20 = [r0 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [var_60 release];
    [var_68 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)objectForKeyedSubscript:(void *)arg2 {
    r0 = [self stringForKey:arg2];
    return r0;
}

-(void)writeUpdatedValues {
    r0 = self;
    r31 = r31 - 0xd0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_database != 0x0) {
            r19 = r0->_lockQueue;
            [r0 retain];
            dispatch_sync(r19, &var_90);
            r19 = *(&var_60 + 0x28);
            var_98 = [r20 retain];
            [r19 enumerateKeysAndObjectsUsingBlock:&var_B8];
            [var_98 release];
            [r20 release];
            _Block_object_dispose(&var_60, 0x8);
            [0x0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_valuesToWrite, 0x0);
    objc_storeStrong((int64_t *)&self->_writeQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_values, 0x0);
    return;
}

@end