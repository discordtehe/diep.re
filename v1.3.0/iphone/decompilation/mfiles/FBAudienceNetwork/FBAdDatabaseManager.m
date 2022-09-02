@implementation FBAdDatabaseManager

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = dispatch_queue_create("com.facebook.ads.database", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_databaseQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)openDatabaseWithCallback:(void *)arg2 {
    [self openDatabaseWithCallback:arg2 withRetry:0x1];
    return;
}

-(void)getDatabase:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self databaseQueue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(int)currentDatabaseVersion {
    return 0x2;
}

-(void)initializeDatabaseWithCompletionCallback:(void *)arg2 withDowngradeCallback:(void *)arg3 withUpgradeCallback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[self databaseQueue] retain];
    var_48 = r20;
    [r20 retain];
    var_40 = r19;
    [r19 retain];
    [r22 retain];
    dispatch_async(r23, &var_70);
    [r23 release];
    [r22 release];
    [var_40 release];
    [var_48 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)openDatabaseWithCallback:(void *)arg2 withRetry:(bool)arg3 {
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
    r27 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isInitialized] != 0x0) {
            r0 = [r20 database];
            if (r19 != 0x0 && r0 != 0x0) {
                    (*(r19 + 0x10))(r19, [r20 database]);
            }
    }
    r26 = [[r20 storagePath] retain];
    r24 = [[NSFileManager defaultManager] retain];
    r25 = [[r26 URLByDeletingLastPathComponent] retain];
    [r24 createDirectoryAtURL:r25 withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
    [r25 release];
    [r24 release];
    r0 = [r26 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r24 = [r0 UTF8String];
    [r0 release];
    if (*qword_1011dd908 != -0x1) {
            dispatch_once_f(0x1011dd908, 0x1011c6cd0, 0x100a3d91c);
    }
    r0 = qword_1011dd910(r24, &var_58);
    if (r0 != 0x0) {
            r22 = r26;
            [@"This is a severe error that may impact the reliability of the Audience Network SDK." retain];
            if (*0x1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            r0 = qword_1011dd9d0(0x0);
            r26 = r22;
            r8 = @"Retrying...";
            if (r27 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"This is a severe error that may impact the reliability of the Audience Network SDK.";
                    }
                    else {
                            r8 = @"Retrying...";
                    }
            }
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            if (r27 != 0x0) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    r0 = @class(NSFileManager);
                    r0 = [r0 defaultManager];
                    r0 = [r0 retain];
                    r25 = [r0 removeItemAtURL:r26 error:&var_60];
                    r22 = [var_60 retain];
                    [r0 release];
                    if ((r25 & 0x1) != 0x0) {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    }
                    else {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    }
                    [r20 openDatabaseWithCallback:r19 withRetry:0x0];
            }
            else {
                    if (*0x1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    r22 = [[r20 stringFromChars:qword_1011dd9d0(0x0)] retain];
                    [FBAdDebugLogging logDebugEventWithType:@"database" code:0x7 description:r22];
            }
            [r22 release];
            [@"This is a severe error that may impact the reliability of the Audience Network SDK." release];
    }
    else {
            [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x4e format:@"Successfully opened connection to database at %s"];
    }
    [r20 setDatabase:0x0];
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19, 0x0);
    }
    [r26 release];
    [r19 release];
    return;
}

-(void)queryWithStatementSync:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r22 = arg2;
    r20 = self;
    r19 = [arg4 retain];
    if (r22 == 0x0 && r19 != 0x0) {
            (*(r19 + 0x10))(r19, 0x0);
    }
    else {
            if (sub_100a3f440(r21, r22, r29 - 0x28) != 0x0) {
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    qword_1011dd9d0(r21);
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xed format:@"SELECT statement could not be prepared. (%s)"];
            }
            r20 = [[r20 databaseQueue] retain];
            var_38 = [r19 retain];
            dispatch_async(r20, &var_58);
            [r20 release];
            [var_38 release];
    }
    [r19 release];
    return;
}

-(void)deserializeWithStatementSync:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withDeserializeCallback:(void *)arg4 withCallback:(void *)arg5 {
    r23 = [arg4 retain];
    r19 = [arg5 retain];
    var_40 = r23;
    r23 = [r23 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [self queryWithStatementSync:arg2 withDatabase:arg3 withCallback:&var_60];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r23 release];
    return;
}

-(void)createTableSyncWithDatabase:(struct sqlite3 *)arg2 withStatement:(char *)arg3 withCallback:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r19 = [arg4 retain];
    if (sub_100a3f440(r21, arg3, r29 - 0x38) != 0x0) {
            [@"FBAdDatabaseManagerErrorDomain" retain];
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            r23 = [[r20 stringFromChars:qword_1011dd9d0(r21)] retain];
            r0 = [NSString stringWithFormat:@"CREATE TABLE statement could not be prepared. (%@)"];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xab format:@"%@"];
            r23 = 0x0;
            r22 = @"FBAdDatabaseManagerErrorDomain";
    }
    else {
            if (*qword_1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if (qword_1011dd940(0x0) == 0x65) {
                    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xa2 format:@"Table created."];
                    r22 = 0x0;
                    r21 = 0x0;
                    r23 = 0x1;
            }
            else {
                    [@"FBAdDatabaseManagerCriticalErrorDomain" retain];
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    r23 = [[r20 stringFromChars:qword_1011dd9d0(r21)] retain];
                    r0 = [NSString stringWithFormat:@"Table could not be created. (%@)"];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r23 release];
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xa6 format:@"%@"];
                    r23 = 0x0;
                    r22 = @"FBAdDatabaseManagerCriticalErrorDomain";
            }
    }
    r20 = [[r20 databaseQueue] retain];
    var_60 = r19;
    [r19 retain];
    var_58 = r22;
    [r22 retain];
    var_50 = r21;
    [r21 retain];
    dispatch_async(r20, &var_80);
    [r20 release];
    [var_50 release];
    [var_58 release];
    [var_60 release];
    [r21 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)dropTableSyncWithDatabase:(struct sqlite3 *)arg2 withTableName:(void *)arg3 withCallback:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r23 = arg2;
    r21 = self;
    r24 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSString stringWithFormat:@"DROP TABLE %@"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r24 release];
    r0 = objc_retainAutorelease(r19);
    r19 = r0;
    if (sub_100a3f440(r23, [r0 UTF8String], r29 - 0x48) != 0x0) {
            [@"FBAdDatabaseManagerErrorDomain" retain];
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            r24 = @class(NSString);
            r23 = [[r21 stringFromChars:qword_1011dd9d0(r23)] retain];
            r0 = [r24 stringWithFormat:@"DROP TABLE statement could not be prepared. (%@)"];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xd0 format:@"%@"];
            r24 = 0x0;
            r23 = @"FBAdDatabaseManagerErrorDomain";
    }
    else {
            if (*qword_1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if (qword_1011dd940(0x0) == 0x65) {
                    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xc7 format:@"Table dropped."];
                    r23 = 0x0;
                    r22 = 0x0;
                    r24 = 0x1;
            }
            else {
                    [@"FBAdDatabaseManagerCriticalErrorDomain" retain];
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    r24 = @class(NSString);
                    r23 = [[r21 stringFromChars:qword_1011dd9d0(r23)] retain];
                    r0 = [r24 stringWithFormat:@"Table could not be dropped. (%@)"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r23 release];
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0xcb format:@"%@"];
                    r24 = 0x0;
                    r23 = @"FBAdDatabaseManagerCriticalErrorDomain";
            }
    }
    r21 = [[r21 databaseQueue] retain];
    var_70 = r20;
    [r20 retain];
    var_68 = r23;
    [r23 retain];
    var_60 = r22;
    [r22 retain];
    dispatch_async(r21, &var_90);
    [r21 release];
    [var_60 release];
    [var_68 release];
    [var_70 release];
    [r22 release];
    [r20 release];
    [r19 release];
    [r23 release];
    return;
}

-(void)setForeignKeyEnforcementSyncWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = sub_100a3f440(r20, "PRAGMA foreign_keys = ON", &var_28);
    if (r0 != 0x0) {
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            qword_1011dd9d0(r20);
            r0 = @class(FBAdLogger);
    }
    else {
            r21 = var_28;
            if (*qword_1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if (qword_1011dd940(r21) == 0x65) {
                    r0 = @class(FBAdLogger);
            }
            else {
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    qword_1011dd9d0(r20);
                    r0 = @class(FBAdLogger);
            }
    }
    [r0 logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r20 = var_28;
    if (*qword_1011dd948 != -0x1) {
            dispatch_once_f(0x1011dd948, 0x1011c6d18, 0x100a3d91c);
    }
    qword_1011dd950(r20);
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    [r19 release];
    return;
}

-(void)insertWithStatementSync:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withStatementCallback:(void *)arg4 withCompletionCallback:(void *)arg5 {
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
    r21 = arg3;
    r23 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    if (r23 != 0x0) {
            [@"FBAdDatabaseManagerErrorDomain" retain];
            r0 = sub_100a3f440(r21, r23, &var_98);
            if (r0 != 0x0) {
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    r21 = [[r22 stringFromChars:qword_1011dd9d0(r21)] retain];
                    r0 = [NSString stringWithFormat:@"INSERT statement could not be prepared: (%@)"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x133 format:@"%@"];
                    r8 = 0x0;
                    r21 = @"FBAdDatabaseManagerErrorDomain";
                    if (r20 == 0x0) {
                            r21 = @"FBAdDatabaseManagerErrorDomain";
                    }
                    else {
                            if ((r8 & 0x1) != 0x0) {
                                    r23 = 0x0;
                            }
                            else {
                                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                                    r23 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r24] retain];
                                    [r24 release];
                            }
                            (*(r20 + 0x10))(r20, r23);
                            [r23 release];
                    }
            }
            else {
                    if (r19 != 0x0) {
                            (*(r19 + 0x10))(r19, var_98);
                    }
                    r24 = var_98;
                    if (*qword_1011dd938 != -0x1) {
                            dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
                    }
                    if (qword_1011dd940(r24) == 0x65) {
                            r0 = [r22 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = r0;
                            if (r0 != 0x0) {
                                    [r22 didInsertWithStatement:r23 withDatabase:r21];
                            }
                            [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x12b format:@"Successfully inserted item."];
                            [r22 release];
                            r22 = 0x0;
                            r21 = @"FBAdDatabaseManagerErrorDomain";
                            r8 = 0x1;
                            if (r20 == 0x0) {
                                    r22 = 0x0;
                                    r21 = @"FBAdDatabaseManagerErrorDomain";
                            }
                            else {
                                    if ((r8 & 0x1) != 0x0) {
                                            r23 = 0x0;
                                    }
                                    else {
                                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                                            r23 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r24] retain];
                                            [r24 release];
                                    }
                                    (*(r20 + 0x10))(r20, r23);
                                    [r23 release];
                            }
                    }
                    else {
                            if (*0x1011dd9c8 != -0x1) {
                                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                            }
                            r25 = [[r22 stringFromChars:(*0x1011dd9d0)(r21)] retain];
                            r0 = [NSString stringWithFormat:@"Could not insert item: (%@)"];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r25 release];
                            [@"FBAdDatabaseManagerCriticalErrorDomain" retain];
                            [@"FBAdDatabaseManagerErrorDomain" release];
                            if (*0x1011dd9c8 != -0x1) {
                                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                            }
                            (*0x1011dd9d0)(r21);
                            [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x12f format:@"Could not insert item: (%s) (%s)"];
                            r8 = 0x0;
                            r21 = @"FBAdDatabaseManagerCriticalErrorDomain";
                            if (r20 != 0x0) {
                                    if ((r8 & 0x1) != 0x0) {
                                            r23 = 0x0;
                                    }
                                    else {
                                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                                            r23 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r24] retain];
                                            [r24 release];
                                    }
                                    (*(r20 + 0x10))(r20, r23);
                                    [r23 release];
                            }
                    }
            }
            r23 = var_98;
            if (*qword_1011dd948 != -0x1) {
                    dispatch_once_f(0x1011dd948, 0x1011c6d18, 0x100a3d91c);
            }
            qword_1011dd950(r23);
            [r21 release];
    }
    else {
            r21 = [[r22 databaseQueue] retain];
            var_70 = [r20 retain];
            dispatch_async(r21, &var_90);
            [r21 release];
            r22 = var_70;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)queryUserVersionSyncWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
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
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r0 = sub_100a3f440(r21, "PRAGMA user_version;", &var_58);
    if (r0 != 0x0) {
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            qword_1011dd9d0(r21);
            [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x195 format:@"PRAGMA statement could not be prepared. (%s)"];
            r24 = 0x0;
    }
    else {
            r21 = var_58;
            if (*0x1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if ((*0x1011dd940)(r21) == 0x64) {
                    var_A0 = r20;
                    stack[-168] = r19;
                    do {
                            r24 = var_58;
                            if (*0x1011dd998 != -0x1) {
                                    dispatch_once_f(0x1011dd998, 0x1011c6d90, 0x100a3d91c);
                            }
                            r24 = (*0x1011dd9a0)(r24, 0x0);
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            r26 = var_58;
                            if (*0x1011dd938 != -0x1) {
                                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
                            }
                    } while ((*0x1011dd940)(r26) == 0x64);
                    r20 = var_A0;
                    r19 = stack[-168];
            }
            else {
                    r24 = 0x0;
            }
    }
    r20 = [[r20 databaseQueue] retain];
    var_70 = r19;
    [r19 retain];
    dispatch_async(r20, &var_90);
    [r20 release];
    [var_70 release];
    [r19 release];
    return;
}

-(void *)stringFromChars:(char *)arg2 {
    if (arg2 != 0x0) {
            r0 = [NSString stringWithUTF8String:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)storagePath {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = self->_storagePath;
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = [[r0 URLsForDirectory:0xd inDomains:0x1] retain];
            [r0 release];
            r0 = [r20 firstObject];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 URLByAppendingPathComponent:@"audience_network/"];
            r0 = [r0 retain];
            r19 = [[r0 URLByAppendingPathComponent:@"database.sqlite"] retain];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setUserVersionSync:(int)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg4 retain];
    r0 = [NSString stringWithFormat:@"PRAGMA user_version = %d"];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100a3f440(r21, r0, &var_28);
    if (r0 != 0x0) {
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            qword_1011dd9d0(r21);
            r0 = @class(FBAdLogger);
    }
    else {
            r22 = var_28;
            if (*qword_1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if (qword_1011dd940(r22) == 0x65) {
                    r0 = @class(FBAdLogger);
            }
            else {
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    qword_1011dd9d0(r21);
                    r0 = @class(FBAdLogger);
            }
    }
    [r0 logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r21 = var_28;
    if (*qword_1011dd948 != -0x1) {
            dispatch_once_f(0x1011dd948, 0x1011c6d18, 0x100a3d91c);
    }
    qword_1011dd950(r21);
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)deleteWithStatementSync:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r22 = arg2;
    r20 = self;
    r19 = [arg4 retain];
    if (r22 == 0x0) goto loc_100a343a4;

loc_100a342c4:
    [@"FBAdDatabaseManagerErrorDomain" retain];
    r0 = sub_100a3f440(r21, r22, &var_60);
    if (r0 != 0x0) {
            if (*qword_1011dd9c8 != -0x1) {
                    dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
            }
            r23 = [[r20 stringFromChars:qword_1011dd9d0(r21)] retain];
            r0 = [NSString stringWithFormat:@"DELETE statement could not be prepared (%@)"];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x163 format:@"%@"];
            r8 = 0x0;
            r22 = @"FBAdDatabaseManagerErrorDomain";
            if (r19 == 0x0) {
                    r22 = @"FBAdDatabaseManagerErrorDomain";
            }
            else {
                    if ((r8 & 0x1) != 0x0) {
                            r23 = 0x0;
                    }
                    else {
                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
                            r0 = [NSError errorWithDomain:r22 code:0x0 userInfo:r24];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r24 release];
                    }
                    (*(r19 + 0x10))(r19, r23);
                    [r23 release];
            }
    }
    else {
            r23 = var_60;
            if (*qword_1011dd938 != -0x1) {
                    dispatch_once_f(0x1011dd938, 0x1011c6d00, 0x100a3d91c);
            }
            if (qword_1011dd940(r23) == 0x65) {
                    r0 = [r20 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 != 0x0) {
                            [r23 didDeleteWithStatement:r22 withDatabase:r21];
                    }
                    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x15b format:@"Successfully deleted item."];
                    [r23 release];
                    r21 = 0x0;
                    r22 = @"FBAdDatabaseManagerErrorDomain";
                    r8 = 0x1;
                    if (r19 == 0x0) {
                            r22 = @"FBAdDatabaseManagerErrorDomain";
                            r21 = 0x0;
                    }
                    else {
                            if ((r8 & 0x1) != 0x0) {
                                    r23 = 0x0;
                            }
                            else {
                                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
                                    r0 = [NSError errorWithDomain:r22 code:0x0 userInfo:r24];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r24 release];
                            }
                            (*(r19 + 0x10))(r19, r23);
                            [r23 release];
                    }
            }
            else {
                    if (*qword_1011dd9c8 != -0x1) {
                            dispatch_once_f(0x1011dd9c8, 0x1011c6dd8, 0x100a3d91c);
                    }
                    r23 = [[r20 stringFromChars:qword_1011dd9d0(r21)] retain];
                    r0 = [NSString stringWithFormat:@"Could not delete item: (%@)"];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r23 release];
                    r22 = @"FBAdDatabaseManagerCriticalErrorDomain";
                    [r22 retain];
                    [@"FBAdDatabaseManagerErrorDomain" release];
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/database/FBAdDatabaseManager.m" lineNumber:0x15f format:@"%@"];
                    r8 = 0x0;
                    if (r19 != 0x0) {
                            if ((r8 & 0x1) != 0x0) {
                                    r23 = 0x0;
                            }
                            else {
                                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
                                    r0 = [NSError errorWithDomain:r22 code:0x0 userInfo:r24];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r24 release];
                            }
                            (*(r19 + 0x10))(r19, r23);
                            [r23 release];
                    }
            }
    }
    r0 = [r20 databaseQueue];
    r0 = [r0 retain];
    dispatch_async(r0, &var_88);
    [r20 release];
    [r22 release];
    goto loc_100a346bc;

loc_100a346bc:
    [r21 release];
    goto loc_100a346c4;

loc_100a346c4:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100a343a4:
    if (r19 == 0x0) goto loc_100a346c4;

loc_100a343a8:
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x40 forKeys:&var_48 count:0x1] retain];
    r21 = [[NSError errorWithDomain:@"FBAdDatabaseManagerErrorDomain" code:0x0 userInfo:r22] retain];
    [r22 release];
    (*(r19 + 0x10))(r19, r21);
    goto loc_100a346bc;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_databaseQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_storagePath, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = self->_database;
    if (r20 != 0x0) {
            if (*qword_1011dd9d8 != -0x1) {
                    dispatch_once_f(0x1011dd9d8, 0x1011c6df0, 0x100a3d91c);
            }
            qword_1011dd9e0(r20);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)databaseQueue {
    r0 = self->_databaseQueue;
    return r0;
}

-(void)setStoragePath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDatabaseQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_databaseQueue, arg2);
    return;
}

-(void *)operationQueue {
    r0 = self->_operationQueue;
    return r0;
}

-(void)setOperationQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_operationQueue, arg2);
    return;
}

-(struct sqlite3 *)database {
    r0 = self->_database;
    return r0;
}

-(void)setDatabase:(struct sqlite3 *)arg2 {
    self->_database = arg2;
    return;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

+(void *)sharedManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea8d68);
    if (*qword_1011dcc40 != -0x1) {
            dispatch_once(0x1011dcc40, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcc48);
    [r19 release];
    r0 = r20;
    return r0;
}

@end