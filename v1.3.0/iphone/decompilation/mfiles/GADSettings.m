@implementation GADSettings

+(void *)sharedInstance {
    if (*qword_1011dbe78 != -0x1) {
            dispatch_once(0x1011dbe78, 0x100e9a150);
    }
    r0 = *0x1011dbe80;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.settings", 0x0, 0x21);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.settings", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_writeQueue));
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
            r0 = sub_100814cb0();
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_values));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_temporaryValues));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            if ([r19 openDatabase] != 0x0) {
                    [r19 loadDatabaseValues];
            }
    }
    r0 = r19;
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
    if (r0 != 0x0) {
            r0 = sqlite3_prepare_v2(r0, "select name, value from settings;", 0xffffffffffffffff, &var_38, 0x0);
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
    }
    return;
}

-(void)updateValuesWithString:(void *)arg2 forKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_values));
    r0 = *(r20 + r24);
    r0 = [r0 objectForKeyedSubscript:r21];
    r0 = [r0 retain];
    r23 = [r0 isEqual:r2];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            sub_100822058(*(r20 + r24), r21, r19);
            sub_100822058(r20->_valuesToWrite, r21, r19);
    }
    [r21 release];
    [r19 release];
    return;
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
            [r23 retain];
            var_38 = r22;
            [r22 retain];
            dispatch_async(r24, &var_68);
            [var_38 release];
            [r23 release];
            [var_48 release];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)openDatabase {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = sub_10087f8d8();
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 URLByAppendingPathComponent:@"Settings"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 == 0x0) goto loc_10087fed8;

loc_10087fe6c:
    r0 = [r19 path];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 UTF8String];
    r0 = sqlite3_open(r0, &var_38);
    if (r0 == 0x0) goto loc_10087fee0;

loc_10087fec0:
    sub_1007ce06c(0x0, @"Couldn't open database.");
    r21 = 0x0;
    goto loc_10087ffd8;

loc_10087ffd8:
    [r20 release];
    goto loc_10087ffe0;

loc_10087ffe0:
    [r19 release];
    r0 = r21;
    return r0;

loc_10087fee0:
    r24 = [@(YES) retain];
    r23 = [r19 setResourceValue:r24 forKey:**_NSURLIsExcludedFromBackupKey error:&var_40];
    r22 = [var_40 retain];
    [r24 release];
    if (r22 != 0x0 || (r23 ^ 0x1) != 0x0) goto loc_10087ff98;

loc_10087ff50:
    r0 = sqlite3_exec(var_38, "create table if not exists settings (name text primary key, value text);", 0x0, 0x0, &var_48);
    if (r0 == 0x0) goto loc_10087ffbc;

loc_10087ff74:
    r8 = var_48;
    if (r8 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = "No error info.";
            }
            else {
                    r8 = r8;
            }
    }
    r1 = @"Couldn't create table. %s";
    goto loc_10087ffa4;

loc_10087ffa4:
    sub_1007ce06c(0x0, r1);
    sqlite3_close(var_38);
    r21 = 0x0;
    goto loc_10087ffd0;

loc_10087ffd0:
    [r22 release];
    goto loc_10087ffd8;

loc_10087ffbc:
    r21->_database = var_38;
    r21 = 0x1;
    goto loc_10087ffd0;

loc_10087ff98:
    r1 = @"Couldn't exclude file from backup.\nFile: %@\nError:%@";
    goto loc_10087ffa4;

loc_10087fed8:
    r21 = 0x0;
    goto loc_10087ffe0;
}

-(void)addEntriesFromDictionary:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSDictionary alloc] initWithDictionary:r22 copyItems:0x1];
    [r22 release];
    r21 = self->_lockQueue;
    var_30 = r20;
    [r20 retain];
    var_28 = [self retain];
    dispatch_async(r21, &var_50);
    [var_28 release];
    [var_30 release];
    [r20 release];
    return;
}

-(void)addTemporaryEntriesFromDictionary:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_lockQueue;
    [r0 retain];
    var_28 = [self retain];
    dispatch_async(r20, &var_50);
    [var_28 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)setJSONObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = self->_lockQueue;
    [r0 retain];
    var_30 = r21;
    [r21 retain];
    var_28 = [self retain];
    dispatch_async(r19, &var_58);
    [var_28 release];
    [var_30 release];
    [r0 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)setArray:(void *)arg2 forKey:(void *)arg3 {
    r22 = [arg2 retain];
    [self setJSONObject:arg2 forKey:arg3];
    [r22 release];
    return;
}

-(void)setDictionary:(void *)arg2 forKey:(void *)arg3 {
    r22 = [arg2 retain];
    [self setJSONObject:arg2 forKey:arg3];
    [r22 release];
    return;
}

-(void *)internalObjectForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_temporaryValues;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) {
            r22 = [[r20->_values objectForKeyedSubscript:r2] retain];
            if (r22 == 0x0) {
                    sub_1007ce06c(0x0, @"Settings key must have a default value. Key: %@");
            }
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_68 = [self retain];
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    [var_68 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self objectForKey:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r20 = [[r19 description] retain];
            [r19 release];
            r19 = r20;
    }
    if (r19 == 0x0) {
            r19 = @"";
            [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)stringsForKeys:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[NSMutableDictionary alloc] init];
    r22 = self->_lockQueue;
    var_38 = r20;
    [r20 retain];
    var_30 = [self retain];
    [r21 retain];
    dispatch_sync(r22, &var_58);
    r21 = r19;
    r19 = objc_retainAutoreleaseReturnValue(r19);
    [r21 release];
    [var_30 release];
    [var_38 release];
    [r19 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(long long)integerForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r20 = [r19 integerValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(double)doubleForKey:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 respondsToSelector:r2];
    v8 = 0x0;
    if (r0 != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(bool)boolForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)arrayForKey:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self objectForKey:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = sub_10084abc4(r0, &var_40);
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [var_40 retain];
    if (r22 != 0x0) {
            sub_1007ce06c(0x0, @"Error deserializing JSON object.\nkey: %@\nvalue: %@\nerror: %@");
    }
    if (r21 != 0x0) {
            r0 = [r21 retain];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-72] count:0x0];
            r0 = [r0 retain];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void *)dictionaryForKey:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self objectForKey:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = sub_10084acf0(r0, &var_40);
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [var_40 retain];
    if (r22 != 0x0) {
            sub_1007ce06c(0x0, @"Error deserializing JSON object.\nkey: %@\nvalue: %@\nerror: %@");
    }
    if (r21 != 0x0) {
            r0 = [r21 retain];
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void)writeUpdates {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)writeUpdatedValues:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (r20->_database != 0x0) {
            r21 = [r19 retain];
            var_28 = [r20 retain];
            [r19 enumerateKeysAndObjectsUsingBlock:&var_48];
            [r21 release];
            [var_28 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_writeQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_valuesToWrite, 0x0);
    objc_storeStrong((int64_t *)&self->_temporaryValues, 0x0);
    objc_storeStrong((int64_t *)&self->_values, 0x0);
    return;
}

@end