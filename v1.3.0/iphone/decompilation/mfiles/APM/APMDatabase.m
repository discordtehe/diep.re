@implementation APMDatabase

-(void *)initWithDatabaseName:(void *)arg2 persistedConfig:(void *)arg3 {
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
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [r22 retain];
    if ([r19 length] == 0x0) goto loc_100145af8;

loc_100145a70:
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100145ae4;

loc_100145a94:
    r23 = [sub_1001979d0() retain];
    if ([r20 initializeDatabaseResourcesWithContext:@"Init" databasePath:r23] == 0x0) goto loc_100145b3c;

loc_100145ac8:
    objc_storeStrong((int64_t *)&r20->_persistedConfig, r22);
    [r23 release];
    goto loc_100145ae4;

loc_100145ae4:
    r20 = [r20 retain];
    r22 = r20;
    goto loc_100145b48;

loc_100145b48:
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;

loc_100145b3c:
    r0 = r23;
    goto loc_100145b40;

loc_100145b40:
    [r0 release];
    r22 = 0x0;
    goto loc_100145b48;

loc_100145af8:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x2ee0 message:@"Received empty database name in init"];
    r0 = r0;
    goto loc_100145b40;
}

-(void)reset {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
    r0 = *(r19 + r21);
    r0 = [r0 databasePath];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (([*(r19 + r21) closeAndDeleteDatabase] & 0x1) == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2f17 message:@"Failed to delete database data"];
            [r0 release];
    }
    [r19 initializeDatabaseResourcesWithContext:@"Reset" databasePath:r20];
    [r20 release];
    return;
}

-(bool)performTransaction:(void *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 performTransaction:arg2];
    return r0;
}

-(bool)initializeAppMetadata {
    r0 = [self performTransaction:&var_28];
    return r0;
}

-(void *)queryAppMetadata:(void * *)arg2 {
    r0 = [self dataTypesFromTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:arg2 createDataTypeBlock:0x100e6d0d0];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)updateAppMetadata:(void *)arg2 error:(void * *)arg3 {
    r0 = [self updateDataType:arg2 inTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:arg3 createDictionaryBlock:0x100e6d110];
    return r0;
}

-(bool)updateDailyCounts:(void *)arg2 error:(void * *)arg3 {
    r0 = [self updateDataType:arg2 inTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:arg3 createDictionaryBlock:0x100e6d170];
    return r0;
}

-(void *)dailyCounts:(void * *)arg2 {
    r31 = r31 - 0x70;
    r19 = arg2;
    r20 = self;
    [r20->_persistedConfig midnightOffset];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    asm { fdiv       d0, d0, d1 };
    asm { fcvtms     w8, d0 };
    r0 = [r20 dataTypesFromTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:r19 createDataTypeBlock:&var_58];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)insertIfNotExistsRawEventMetadata:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
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
    r0 = [r0 protoBuffer];
    r0 = [r0 retain];
    r23 = [r0 apm_64LSBMD5];
    [r0 release];
    r0 = [r21 queryRawEventsMetadataWithFingerprint:r23 error:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r20 = 0x1;
    }
    else {
            r23 = [[NSNumber numberWithLongLong:r23] retain];
            r20 = [r21 upsertDataType:r19 inTableWithName:@"raw_events_metadata" columnName:@"metadata_fingerprint" columnValue:r23 tableLimit:*0x100ba1fe8 error:r20 createDictionaryBlock:0x100e6d1b0];
            [r23 release];
    }
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)queryRawEventsMetadataWithFingerprint:(long long)arg2 error:(void * *)arg3 {
    r21 = [[NSNumber numberWithLongLong:arg2] retain];
    r0 = [self dataTypesFromTableWithName:@"raw_events_metadata" columnName:@"metadata_fingerprint" columnValue:r21 error:arg3 createDataTypeBlock:0x100e6d1f0];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)deleteRawEventMetadataWithMetadataFingerprint:(long long)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self->_sqliteStore;
    r21 = [[NSNumber numberWithLongLong:arg2] retain];
    r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    r20 = [[r20 deleteRecordsFromTableWithName:@"raw_events_metadata" condition:@"metadata_fingerprint == ?" parameterValues:r22 error:r19] retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteUnusedRawEventsMetadata:(void * *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_sqliteStore;
    r0 = [r0 deleteRecordsFromTableWithName:@"raw_events_metadata" condition:@"metadata_fingerprint NOT IN (SELECT DISTINCT metadata_fingerprint FROM raw_events)" parameterValues:0x0 error:arg2];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)isRawEventsTableEmpty:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT NOT EXISTS (SELECT 1 FROM raw_events LIMIT 1)" parameterValues:0x0 error:arg2];
    return r0;
}

-(bool)insertRawEvent:(void *)arg2 metadataFingerprint:(long long)arg3 isRealtime:(bool)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199400(r0, r20, 0x1, @"Received empty event for inserting in the database") != 0x0) {
            r23 = [[APMRawEventData alloc] initWithRawEvent:r19 rowID:0x0 metadataFingerprint:r23];
            r20 = [r21 insertDataType:r23 inTableWithName:@"raw_events" error:r20 createDictionaryBlock:&var_58];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)queryLatestRawEventTime:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT MAX(timestamp) FROM raw_events" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)containsRawEventWithMetadataFingerprint:(long long)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = self->_sqliteStore;
    r21 = [[NSNumber numberWithLongLong:arg2] retain];
    r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    r19 = [[r20 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM raw_events WHERE metadata_fingerprint = ? LIMIT 1)" parameterValues:r22 error:arg3] retain];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteRawEventsWithMaxRowID:(long long)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self->_sqliteStore;
    r21 = [[NSNumber numberWithLongLong:arg2] retain];
    r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    r20 = [[r20 deleteRecordsFromTableWithName:@"raw_events" condition:@"rowid <= ?" parameterValues:r22 error:r19] retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)deleteRawEventsOverAbsoluteLimit:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r0 = [APMMeasurement remoteConfig];
    r0 = [r0 retain];
    r21 = [[NSNumber numberWithInt:[r0 maxEventsStored] - 0x1] retain];
    r23 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
    [r21 release];
    [r0 release];
    r19 = [[self->_sqliteStore deleteRecordsFromTableWithName:@"raw_events" condition:@"rowid IN (SELECT rowid FROM raw_events ORDER BY rowid DESC LIMIT -1 OFFSET ?)" parameterValues:r23 error:arg2] retain];
    [r23 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)rawEventsWithMetadataFingerprint:(long long)arg2 error:(void * *)arg3 eventFilter:(void *)arg4 {
    r31 = r31 - 0x150;
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
    r19 = arg3;
    r20 = self;
    r21 = r20->_sqliteStore;
    r24 = @class(NSNumber);
    r22 = [arg4 retain];
    r23 = [[r24 numberWithLongLong:arg2] retain];
    r24 = [[NSNumber numberWithInteger:*0x100ba1ff0] retain];
    r25 = [[NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2] retain];
    r0 = [r21 recordsForQuery:@"SELECT rowid, * FROM raw_events WHERE metadata_fingerprint = ? ORDER BY rowid ASC LIMIT ?" parameterValues:r25 error:r19 withFilter:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            r22 = [[NSMutableArray alloc] init];
            var_138 = r21;
            r0 = [r21 retain];
            r23 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    do {
                            r24 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r0 = [r20 rawEventDataFromDictionary:*(0x0 + r24 * 0x8) error:r19];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if (r28 != 0x0) {
                                            [r22 addObject:r2];
                                    }
                                    [r28 release];
                                    r24 = r24 + 0x1;
                            } while (r24 < r25);
                            r25 = objc_msgSend(r23, var_130);
                    } while (r25 != 0x0);
            }
            [r23 release];
            if ([r22 count] != 0x0) {
                    r19 = [r22 retain];
            }
            else {
                    if ([r23 count] != 0x0) {
                            r19 = 0x0;
                    }
                    else {
                            r19 = [r22 retain];
                    }
            }
            [r22 release];
            r21 = var_138;
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteStaleRawEventsDataOlderThanMaxAge:(double)arg2 error:(void * *)arg3 {
    r0 = self;
    r31 = r31 - 0x70;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    v8 = v0;
    r20 = r0;
    if (d8 >= 0x0) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    if (sub_1001993cc(r0, r19, 0x1, @"Cannot delete stale raw events given negative time period") != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r22 = r20->_sqliteStore;
            r21 = [[NSNumber numberWithDouble:0x1] retain];
            r23 = [[NSNumber numberWithDouble:0x1] retain];
            r24 = [[NSArray arrayWithObjects:&var_58 count:0x2] retain];
            r22 = [[r22 deleteRecordsFromTableWithName:@"raw_events" condition:@"abs(timestamp - cast(? as REAL)) > cast(? as REAL)" parameterValues:r24 error:r19] retain];
            [r24 release];
            [r23 release];
            [r21 release];
            if (r22 != 0x0) {
                    if ([r22 intValue] != 0x0 && [r20 deleteUnusedRawEventsMetadata:r19] == 0x0) {
                            r19 = 0x0;
                    }
                    else {
                            r19 = 0x1;
                    }
            }
            else {
                    r19 = 0x0;
            }
            [r22 release];
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)nextMetadataFingerprintToProcess:(void * *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = self->_sqliteStore;
    r0 = [r0 recordsForQuery:@"SELECT metadata_fingerprint, MIN(rowid) FROM raw_events" parameterValues:0x0 error:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 count];
            if (r0 == 0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
            if (sub_1001993cc(r0, r20, 0x2, @"Only one event metadata should be processed") != 0x0) {
                    r0 = [r19 firstObject];
                    r0 = [r0 retain];
                    r20 = r0;
                    r22 = [[r0 objectForKeyedSubscript:@"metadata_fingerprint"] retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r22 release];
                    if (r22 != r0) {
                            r21 = [[r20 objectForKeyedSubscript:@"metadata_fingerprint"] retain];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)containsRealtimeRawEventsWithError:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM raw_events WHERE is_realtime = 1 LIMIT 1)" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)isQueuedBundleTableEmpty:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT NOT EXISTS (SELECT 1 FROM queue LIMIT 1)" parameterValues:0x0 error:arg2];
    return r0;
}

-(bool)incrementRetryCounterForBundlesWithIDs:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 count], r20, 0x1, @"Failed to increment retry counter") != 0x0) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
            r23 = *(r21 + r26);
            r24 = [@(0x7fffffff) retain];
            r25 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
            r0 = [r23 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM queue WHERE retry_count = ? LIMIT 1)" parameterValues:r25 error:r20];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r24 release];
            if (r0 != 0x0) {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x2f16 message:@"The number of upload retries exceeds the limit. Will remain unchanged."];
                    [r0 release];
            }
            r0 = sub_100148f6c(r19, r20);
            r29 = r29;
            r23 = [r0 retain];
            if (r20 != 0x0 && r23 == 0x0) {
                    r20 = 0x0;
            }
            else {
                    r24 = [[NSString stringWithFormat:@"%@ AND retry_count < ?"] retain];
                    r22 = [@(0x7fffffff) retain];
                    r25 = [[r19 arrayByAddingObject:r22] retain];
                    [r22 release];
                    r20 = [*(r21 + r26) increaseColumn:@"retry_count" byValue:0x1 inTable:@"queue" condition:r24 parameterValues:r25 error:r20];
                    [r25 release];
                    [r24 release];
            }
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)insertBundle:(void *)arg2 isRealtime:(bool)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xa0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = arg4;
    r24 = arg3;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 protoBuffer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (sub_100199468([r0 length], r22, 0x1, @"Failed to insert nil bundle") != 0x0) {
            r26 = @selector(length);
            r0 = sub_1001a7b3c(r19, 0xe);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (sub_100199468(objc_msgSend(r0, r26), r22, 0x1, @"Failed to insert bundle without App ID") != 0x0) {
                    r0 = sub_1001a78e8(r19, 0x5);
                    if (r0 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r0 = 0x1;
                            }
                    }
                    if (sub_1001993cc(r0, r22, 0x1, @"Failed to insert bundle without valid timestamp") != 0x0) {
                            r0 = [r23 maybeDeleteStaleData:r22];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [NSDate date];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 timeIntervalSince1970];
                                    [r0 release];
                                    asm { scvtf      d0, x25 };
                                    asm { fdiv       d8, d0, d1 };
                                    r0 = [APMMeasurement remoteConfig];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 maxQueueTime];
                                    [r0 release];
                                    if (Abs(d9 - d8) > d9) {
                                            r0 = [APMMeasurement monitor];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:0x4 messageCode:0x2ef0 message:@"Storing bundle outside of the max uploading time span"];
                                            [r0 release];
                                    }
                                    r26 = @selector(length);
                                    var_78 = 0x0;
                                    r25 = [[NSData gul_dataByGzippingData:r20 error:&var_78] retain];
                                    var_80 = [var_78 retain];
                                    r27 = sub_100199468(objc_msgSend(r25, r26), r22, 0x2, @"Failed to compress bundle");
                                    r0 = @class(APMMeasurement);
                                    r0 = [r0 monitor];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if ((r27 & 0x1) != 0x0) {
                                            r0 = [NSNumber numberWithUnsignedInteger:[r25 length]];
                                            r0 = [r0 retain];
                                            r27 = [[r0 stringValue] retain];
                                            [r28 logWithLevel:0x7 messageCode:0x2ef2 message:@"Saving bundle. size (bytes)" context:r27];
                                            [r27 release];
                                            [r0 release];
                                            [r28 release];
                                            var_84 = sub_1001a77c0(r19, 0x23);
                                            r26 = [[NSMutableDictionary alloc] init];
                                            r28 = [[NSNumber numberWithDouble:0x7] retain];
                                            [r26 setObject:r28 forKeyedSubscript:@"bundle_end_timestamp"];
                                            [r28 release];
                                            [r26 setObject:r25 forKeyedSubscript:@"data"];
                                            r24 = [[NSNumber numberWithBool:r24] retain];
                                            [r26 setObject:r24 forKeyedSubscript:@"is_realtime"];
                                            [r24 release];
                                            r24 = [[NSNumber numberWithInt:var_84] retain];
                                            [r26 setObject:r24 forKeyedSubscript:@"retry_count"];
                                            [r24 release];
                                            r22 = [r23->_sqliteStore upsertRecord:r26 inTableWithName:@"queue" error:r22];
                                            [r26 release];
                                            r23 = var_80;
                                    }
                                    else {
                                            r23 = var_80;
                                            [r28 logWithLevel:0x1 messageCode:0x2ef1 message:@"Cannot compress data. Error" context:r23];
                                            [r28 release];
                                            r22 = 0x0;
                                    }
                                    [r25 release];
                                    [r23 release];
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)queryBundlesWithCountLimit:(long long)arg2 sizeLimit:(long long)arg3 error:(void * *)arg4 {
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
    var_68 = arg3;
    r21 = self->_sqliteStore;
    r22 = [[NSNumber numberWithLongLong:arg2] retain];
    r23 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
    r0 = [r21 recordsForQuery:@"SELECT rowid, data, retry_count FROM queue ORDER BY bundle_end_timestamp ASC LIMIT ?" parameterValues:r23 error:arg4];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            r0 = [r20 retain];
            r21 = r0;
            if ([r0 count] != 0x0) {
                    var_90 = r20;
                    r23 = [[NSMutableArray alloc] init];
                    r24 = 0x0;
                    r19 = 0x0;
                    r8 = @selector(length);
                    var_70 = r8;
                    do {
                            r22 = @selector(count);
                            r28 = [[r21 objectAtIndexedSubscript:r24] retain];
                            r0 = sub_1001496e4();
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            if (objc_msgSend(r0, r22) == 0x2) {
                                    r22 = @selector(count);
                                    r0 = [r26 firstObject];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 protoBuffer];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r20 release];
                                    if (objc_msgSend(r23, r22) != 0x0) {
                                            r8 = objc_msgSend(r27, var_70) + sign_extend_64(r19);
                                            if (r8 >= var_68) {
                                                    r20 = 0x2;
                                            }
                                            else {
                                                    [r23 addObject:r26];
                                                    r0 = objc_msgSend(r27, var_70);
                                                    r20 = 0x0;
                                                    r19 = r19 + r0;
                                            }
                                    }
                                    else {
                                            [r23 addObject:r26];
                                            r0 = objc_msgSend(r27, var_70);
                                            r20 = 0x0;
                                            r19 = r19 + r0;
                                    }
                                    [r27 release];
                            }
                            else {
                                    r20 = 0x3;
                            }
                            [r26 release];
                            [r28 release];
                            if (r20 == 0x2) {
                                break;
                            }
                            asm { sxtw       x8, w19 };
                            if (r8 > var_68) {
                                break;
                            }
                            r24 = r24 + 0x1;
                    } while ([r21 count] > r24);
                    r20 = var_90;
            }
            else {
                    r23 = [r21 retain];
            }
            [r21 release];
            r19 = [[r23 autorelease] retain];
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)queryBundlesWithRowIDs:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x150;
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
    r22 = arg3;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = sub_100148f6c(r0, r22);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r22 != 0x0 && r20 == 0x0) {
            r22 = 0x0;
    }
    else {
            r21 = [[NSString stringWithFormat:@"SELECT rowid, data, retry_count FROM queue WHERE %@"] retain];
            r0 = r23->_sqliteStore;
            r0 = [r0 recordsForQuery:r21 parameterValues:r19 error:r22];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    var_128 = r21;
                    stack[-304] = r20;
                    r22 = [[NSMutableArray alloc] init];
                    var_130 = r23;
                    r0 = [r23 retain];
                    r24 = r0;
                    r26 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r26 != 0x0) {
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r0 = sub_1001496e4();
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (r28 != 0x0) {
                                                    [r22 addObject:r2];
                                            }
                                            [r28 release];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r26);
                                    r26 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r26 != 0x0);
                    }
                    [r24 release];
                    r21 = var_128;
                    r20 = stack[-304];
                    r23 = var_130;
            }
            else {
                    r22 = 0x0;
            }
            [r23 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteBundlesWithRowIDs:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = sub_100148f6c(r0, r21);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r21 != 0x0 && r20 == 0x0) {
            r21 = 0x0;
    }
    else {
            r0 = r22->_sqliteStore;
            r0 = [r0 deleteRecordsFromTableWithName:@"queue" condition:r20 parameterValues:r19 error:r21];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)maybeDeleteStaleData:(void * *)arg2 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r0 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    [*(r19 + r23) lastDeleteStaleBundlesTimestamp];
    r0 = [APMMeasurement remoteConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 databaseDeleteStaleBundlesInterval];
    [r0 release];
    if (Abs(d8 - d0) <= d9) goto loc_100149c94;

loc_100149bf8:
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    [r0 maxQueueTime];
    v9 = v0;
    [r0 release];
    if ([r19 deleteStaleRawEventsDataOlderThanMaxAge:r20 error:r3] == 0x0 || [r19 deleteStaleBundlesOlderThanMaxAge:r20 error:r3] == 0x0) goto loc_100149cb8;

loc_100149c60:
    [*(r19 + r23) setLastDeleteStaleBundlesTimestamp:r2];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100149cb0;

loc_100149cb0:
    r0 = [r0 retain];
    goto loc_100149cbc;

loc_100149cbc:
    r0 = [r0 autorelease];
    return r0;

loc_100149cb8:
    r0 = 0x0;
    goto loc_100149cbc;

loc_100149c94:
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100149cb0;
}

-(bool)deleteStaleBundlesOlderThanMaxAge:(double)arg2 error:(void * *)arg3 {
    r0 = self;
    r31 = r31 - 0x70;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    v8 = v0;
    r20 = r0;
    if (d8 >= 0x0) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    if (sub_1001993cc(r0, r19, 0x1, @"Cannot delete stale bundles after negative time period") != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r21 = r20->_sqliteStore;
            r20 = [[NSNumber numberWithDouble:0x1] retain];
            r22 = [[NSNumber numberWithDouble:0x1] retain];
            r23 = [[NSArray arrayWithObjects:&var_58 count:0x2] retain];
            r21 = [[r21 deleteRecordsFromTableWithName:@"queue" condition:@"abs(bundle_end_timestamp - cast(? as REAL)) > cast(? as REAL)" parameterValues:r23 error:r19] retain];
            [r23 release];
            [r22 release];
            [r20 release];
            if (r21 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)queryLatestBundleTime:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT MAX(bundle_end_timestamp) FROM queue" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)containsRealtimeBundlesWithError:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM queue WHERE is_realtime = 1 LIMIT 1)" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)rawEventDataFromDictionary:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x1c0;
    var_60 = d9;
    stack[-104] = d8;
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
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199400(r0, r20, 0x1, @"Received empty dictionary for getting raw event data") == 0x0) goto loc_10014874c;

loc_100147ef4:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r21 == 0x0) goto loc_100147fa0;

loc_100147f20:
    r22 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r22 != r23) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    r24 = sub_1001993cc(r0, r20, 0x1, @"Unable to find row ID in the database dictionary");
    [r23 release];
    [r22 release];
    [r21 release];
    if (r24 != 0x0) goto loc_100147fb8;

loc_10014874c:
    r20 = 0x0;
    goto loc_100148750;

loc_100148750:
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100147fb8:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r21 == 0x0) goto loc_10014805c;

loc_100147fdc:
    r22 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r22 != r23) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    r24 = sub_1001993cc(r0, r20, 0x1, @"Unable to find event data in the database dictionary");
    [r23 release];
    [r22 release];
    [r21 release];
    if (r24 != 0x0) goto loc_100148074;
    goto loc_10014874c;

loc_100148074:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r22 != r23) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
            sub_1001993cc(r0, r20, 0x1, @"Unable to find event metadata in the database dictionary");
            [r23 release];
            [r22 release];
    }
    else {
            sub_1001993cc(r0, r20, 0x1, @"Unable to find event metadata in the database dictionary");
    }
    [r21 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = [r0 longLongValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = [r0 longLongValue];
    [r0 release];
    r27 = [r19 retain];
    r21 = [APMPBEvent alloc];
    r0 = [r27 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    r28 = [r21 initWithBuffer:r22];
    [r22 release];
    if (sub_100199400(r28, r20, 0x2, @"Failed to parse event from data") == 0x0) goto loc_1001485dc;

loc_100148218:
    var_188 = r24;
    stack[-400] = r23;
    var_178 = [[r27 objectForKeyedSubscript:r2] retain];
    var_190 = r27;
    r0 = [r27 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 doubleValue];
    v8 = v0;
    [r0 release];
    var_1A8 = sub_1001a78e8(r28, 0x3);
    var_140 = [[NSMutableDictionary alloc] init];
    r0 = [APMPBEventParam class];
    var_198 = r28;
    r0 = sub_1001a80d8(r28, 0x0, r0);
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_1A0 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_100148608;

loc_100148318:
    var_138 = 0x0;
    goto loc_100148340;

loc_100148340:
    r28 = 0x0;
    goto loc_1001483c8;

loc_1001483c8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_130);
    }
    r25 = @selector(isEqual:);
    r23 = *(0x0 + r28 * 0x8);
    r0 = sub_1001a7b3c(r23, 0x0);
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    r26 = objc_msgSend(r0, r25);
    r0 = sub_1001a7578(r23, 0x1);
    if (r26 == 0x0) goto loc_100148468;

loc_100148424:
    if (sub_1001993cc(r0, r20, 0x2, @"Cannot create an event from database. Origin parameter is not a string") != 0x0) {
            r0 = sub_1001a7b3c(r23, 0x1);
            r29 = r29;
            r23 = [r0 retain];
            [var_138 release];
            r26 = 0x3;
            var_138 = r23;
    }
    else {
            r26 = 0x1;
    }
    goto loc_100148578;

loc_100148578:
    [r27 release];
    r8 = r26 & 0x3;
    if (r8 == 0x3 || r8 == 0x0) goto loc_100148590;

loc_1001485e4:
    [var_130 release];
    if (r26 != 0x0) {
            r21 = 0x0;
            r24 = var_188;
            r23 = stack[-400];
            r25 = @selector(alloc);
            r28 = var_198;
            r27 = var_190;
            r22 = var_178;
    }
    else {
            r25 = @selector(alloc);
            r22 = var_178;
            r21 = var_138;
            if (sub_100199468([r21 length], r20, 0x2, @"Cannot create an event from database. Missing origin parameter") != 0x0) {
                    asm { scvtf      d0, x8 };
                    asm { fdiv       d9, d0, d1 };
                    r21 = [objc_msgSend(@class(APMEvent), r25) initWithOrigin:r21 isPublic:0x0 name:r22 timestamp:var_140 previousTimestamp:r6 parameters:r7];
            }
            else {
                    r21 = 0x0;
            }
            r24 = var_188;
            r23 = stack[-400];
            r28 = var_198;
            r27 = var_190;
    }
    goto loc_1001486a4;

loc_1001486a4:
    [var_130 release];
    [var_140 release];
    [var_138 release];
    [r22 release];
    goto loc_1001486c4;

loc_1001486c4:
    [r28 release];
    [r27 release];
    r0 = [r21 autorelease];
    if (r0 != 0x0) {
            r22 = [r0 retain];
            r21 = [objc_msgSend(@class(APMRawEventData), r25) initWithRawEvent:r22 rowID:r23 metadataFingerprint:r24];
            [r22 release];
            if (sub_100199400(r21, r20, 0x2, @"Failed to initialize raw event data from dictionary") != 0x0) {
                    r20 = [r21 retain];
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    goto loc_100148750;

loc_100148590:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1001483c8;

loc_10014859c:
    r22 = objc_msgSend(var_130, var_1A0);
    if (r22 != 0x0) goto loc_100148340;

loc_10014860c:
    [var_130 release];
    r25 = @selector(alloc);
    r22 = var_178;
    r21 = var_138;
    if (sub_100199468([r21 length], r20, 0x2, @"Cannot create an event from database. Missing origin parameter") != 0x0) {
            asm { scvtf      d0, x8 };
            asm { fdiv       d9, d0, d1 };
            r21 = [objc_msgSend(@class(APMEvent), r25) initWithOrigin:r21 isPublic:0x0 name:r22 timestamp:var_140 previousTimestamp:r6 parameters:r7];
    }
    else {
            r21 = 0x0;
    }
    r24 = var_188;
    r23 = stack[-400];
    r28 = var_198;
    r27 = var_190;
    goto loc_1001486a4;

loc_100148468:
    if (r0 == 0x0) goto loc_1001484d4;

loc_10014846c:
    r26 = [APMValue alloc];
    r0 = sub_1001a7b3c(r23, 0x1);
    r29 = r29;
    r23 = [r0 retain];
    r26 = [r26 initWithString:r2];
    [var_140 setObject:r2 forKeyedSubscript:r3];
    goto loc_1001484c0;

loc_1001484c0:
    [r26 release];
    goto loc_10014856c;

loc_10014856c:
    [r23 release];
    r26 = 0x0;
    goto loc_100148578;

loc_1001484d4:
    if (sub_1001a7578(r23, 0x2) == 0x0) goto loc_100148518;

loc_1001484e4:
    [APMValue alloc];
    sub_1001a78e8(r23, 0x2);
    r0 = [r26 initWithInt64:r2];
    goto loc_100148554;

loc_100148554:
    r23 = r0;
    [var_140 setObject:r2 forKeyedSubscript:r3];
    goto loc_10014856c;

loc_100148518:
    if (sub_1001a7578(r23, 0x4) == 0x0) goto loc_100148374;

loc_100148528:
    [APMValue alloc];
    sub_1001a7a10(r23, 0x4);
    r0 = [r26 initWithDouble:r2];
    goto loc_100148554;

loc_100148374:
    r23 = [[APMMeasurement monitor] retain];
    r0 = sub_100197f7c();
    r29 = r29;
    r26 = [r0 retain];
    [r23 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    goto loc_1001484c0;

loc_100148608:
    var_138 = 0x0;
    goto loc_10014860c;

loc_1001485dc:
    r25 = @selector(alloc);
    r21 = 0x0;
    goto loc_1001486c4;

loc_10014805c:
    if ((sub_1001993cc(r0, r20, 0x1, @"Unable to find event data in the database dictionary") & 0x1) == 0x0) goto loc_10014874c;
    goto loc_100148074;

loc_100147fa0:
    if ((sub_1001993cc(r0, r20, 0x1, @"Unable to find row ID in the database dictionary") & 0x1) == 0x0) goto loc_10014874c;
}

-(void *)publicEventCount:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT count(1) FROM events WHERE name NOT LIKE '!_%%' ESCAPE '!'" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)allEventAggregates:(void * *)arg2 {
    r0 = [self allDataTypesFromTableWithName:@"events" tableLimit:sign_extend_64(*(int32_t *)0x100ba1ffc) error:arg2 createDataTypeBlock:0x100e6d250];
    return r0;
}

-(void *)eventAggregatesWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = [self dataTypesFromTableWithName:@"events" columnName:@"name" columnValue:arg2 error:arg3 createDataTypeBlock:0x100e6d290];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)updateEventAggregates:(void *)arg2 error:(void * *)arg3 {
    r23 = [arg2 retain];
    r22 = [[arg2 name] retain];
    r19 = [self upsertDataType:arg2 inTableWithName:@"events" columnName:@"name" columnValue:r22 tableLimit:sign_extend_64(*(int32_t *)0x100ba1ffc) error:arg3 createDictionaryBlock:0x100e6d2d0];
    [r23 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)publicUserAttributeCount:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT count(1) FROM user_attributes WHERE name NOT LIKE '!_%%' ESCAPE '!'" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)userAttributeCountForOrigin:(void *)arg2 error:(void * *)arg3 {
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
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty user property origin for count query") != 0x0) {
            r21 = r21->_sqliteStore;
            r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
            r20 = [[r21 numberForQuery:@"SELECT count(1) FROM user_attributes WHERE origin = ?" parameterValues:r22 error:r20] retain];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)containsUserAttributeWithName:(void *)arg2 error:(void * *)arg3 {
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
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty user property name for exists query") != 0x0) {
            r21 = r21->_sqliteStore;
            r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
            r20 = [[r21 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM user_attributes WHERE name = ? LIMIT 1)" parameterValues:r22 error:r20] retain];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)userAttributeWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = [self dataTypesFromTableWithName:@"user_attributes" columnName:@"name" columnValue:arg2 error:arg3 createDataTypeBlock:0x100e6d310];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)allLifetimeValueUserAttributes:(void * *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = [[NSArray arrayWithObjects:&saved_fp - 0x60 count:0x1] retain];
    r0 = self->_sqliteStore;
    r0 = [r0 recordsForQuery:@"SELECT * FROM user_attributes WHERE name LIKE ? || '%' ORDER BY set_timestamp DESC" parameterValues:r19 error:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            var_128 = r19;
            r21 = [NSMutableArray alloc];
            r21 = [r21 initWithCapacity:[r20 count]];
            r0 = [r20 retain];
            r22 = r0;
            r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r24 != 0x0) {
                    do {
                            r19 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r25 = @selector(addObject:);
                                    r0 = sub_10014ac8c();
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r21, r25);
                                    [r26 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            [r22 release];
            r19 = var_128;
    }
    else {
            r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)updateUserAttribute:(void *)arg2 error:(void * *)arg3 {
    r23 = [arg2 retain];
    r22 = [[arg2 name] retain];
    r19 = [self upsertDataType:arg2 inTableWithName:@"user_attributes" columnName:@"name" columnValue:r22 tableLimit:sign_extend_64(*(int32_t *)0x100ba2004) error:arg3 createDictionaryBlock:0x100e6d390];
    [r23 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)userAttributesIncludingInternal:(bool)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x170;
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
    r0 = [self allDataTypesFromTableWithName:@"user_attributes" tableLimit:sign_extend_64(*(int32_t *)0x100ba2004) error:arg3 createDataTypeBlock:0x100e6d350];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (arg2 != 0x0) {
            var_148 = [r20 retain];
    }
    else {
            var_148 = [[NSMutableArray alloc] init];
            var_158 = r20;
            r0 = [r20 retain];
            r19 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r21 = *0x0;
                    r27 = @"_";
                    r25 = &@class(MCConfigurationData);
                    do {
                            r24 = 0x0;
                            r26 = @selector(name);
                            var_130 = r26;
                            do {
                                    if (*0x0 != r21) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r22 = *(0x0 + r24 * 0x8);
                                    r0 = objc_msgSend(r22, r26);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    if (([r0 hasPrefix:r27] & 0x1) == 0x0 && ([*(r25 + 0xc58) hasReservedPrefixes:r20] & 0x1) == 0x0) {
                                            r0 = sub_10018d6e8();
                                            r0 = [r0 retain];
                                            r26 = r25;
                                            r25 = r23;
                                            r23 = r21;
                                            r21 = r27;
                                            r27 = r19;
                                            r19 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r20];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            [r0 release];
                                            r0 = r19;
                                            r19 = r27;
                                            r27 = r21;
                                            r21 = r23;
                                            r23 = r25;
                                            r25 = r26;
                                            r26 = var_130;
                                            [r0 release];
                                            if (r28 == 0x0) {
                                                    [var_148 addObject:r2];
                                            }
                                    }
                                    [r20 release];
                                    r24 = r24 + 0x1;
                            } while (r24 < r23);
                            r23 = objc_msgSend(r19, var_150);
                    } while (r23 != 0x0);
            }
            [r19 release];
            r20 = var_158;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_148 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteUserAttributeWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = self->_sqliteStore;
    r0 = [r0 deleteRecordFromTableWithName:@"user_attributes" columnName:@"name" columnValue:arg2 error:arg3];
    return r0;
}

-(void *)allFilterResults:(void * *)arg2 {
    r19 = [[self allDataTypesFromTableWithName:@"audience_filter_values" tableLimit:0xffffffffffffffff error:arg2 createDataTypeBlock:0x100e6d3d0] retain];
    r20 = [[[NSMutableDictionary alloc] initWithCapacity:[r19 count]] retain];
    [r19 enumerateObjectsUsingBlock:&var_38];
    [r20 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)eventFiltersForEventName:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty event name for getting event filters") != 0x0) {
            r20 = [[r21 dataTypesFromTableWithName:@"event_filters" columnName:@"event_name" columnValue:r19 error:r20 createDataTypeBlock:0x100e6d440] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)propertyFiltersForPropertyName:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received empty property name for getting property filters") != 0x0) {
            r20 = [[r21 dataTypesFromTableWithName:@"property_filters" columnName:@"property_name" columnValue:r19 error:r20 createDataTypeBlock:0x100e6d480] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)allAudienceIDs:(void * *)arg2 {
    r31 = r31 - 0x140;
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
    r20 = arg2;
    r0 = self->_sqliteStore;
    r0 = [r0 recordsForQuery:@"SELECT audience_id FROM event_filters UNION SELECT audience_id FROM property_filters" parameterValues:0x0 error:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_10014bcd8;

loc_10014bb58:
    r21 = [NSMutableArray alloc];
    r21 = [r21 initWithCapacity:[r19 count]];
    var_120 = r19;
    r0 = [r19 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_10014bc9c;

loc_10014bbf4:
    r25 = 0x0;
    goto loc_10014bc00;

loc_10014bc00:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r22);
    }
    r0 = *(0x0 + r25 * 0x8);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (sub_100199400(r0, r20, 0x1, @"Received nil audience ID for querying all audience IDs") == 0x0) goto loc_10014bcb4;

loc_10014bc50:
    [r21 addObject:r2];
    [r23 release];
    r25 = r25 + 0x1;
    if (r25 < r24) goto loc_10014bc00;

loc_10014bc74:
    r24 = objc_msgSend(r22, var_128);
    if (r24 != 0x0) goto loc_10014bbf4;

loc_10014bc9c:
    [r22 release];
    r20 = [r21 retain];
    goto loc_10014bcc8;

loc_10014bcc8:
    [r21 release];
    r19 = var_120;
    goto loc_10014bcdc;

loc_10014bcdc:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014bcb4:
    [r23 release];
    [r22 release];
    r20 = 0x0;
    goto loc_10014bcc8;

loc_10014bcd8:
    r20 = 0x0;
    goto loc_10014bcdc;
}

-(void *)filterResultForAudienceID:(int)arg2 error:(void * *)arg3 {
    r21 = [[NSNumber numberWithInt:arg2] retain];
    r0 = [self dataTypesFromTableWithName:@"audience_filter_values" columnName:@"audience_id" columnValue:r21 error:arg3 createDataTypeBlock:0x100e6d4c0];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)deleteFilterResults:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x170;
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
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 count];
    var_120 = arg3;
    if (sub_100199468(r0, arg3, 0x1, @"Received empty filter results to delete") == 0x0) goto loc_10014c530;

loc_10014c2d0:
    var_148 = r21;
    r23 = [[NSMutableSet alloc] init];
    var_138 = r20;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_140 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_10014c458;

loc_10014c35c:
    r20 = 0x0;
    goto loc_10014c374;

loc_10014c374:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_130);
    }
    r27 = @selector(class);
    r21 = *(0x0 + r20 * 0x8);
    objc_msgSend(@class(APMFilterResult), r27);
    if (sub_1001993cc(objc_msgSend(r21, r28), var_120, 0x1, @"Received unknown type to delete filter result") == 0x0) goto loc_10014c538;

loc_10014c3d0:
    [r21 audienceID];
    r0 = objc_msgSend(@class(NSNumber), r24);
    r29 = r29;
    [r0 retain];
    objc_msgSend(r23, r19);
    [r21 release];
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_10014c374;

loc_10014c424:
    r25 = objc_msgSend(var_130, var_140);
    if (r25 != 0x0) goto loc_10014c35c;

loc_10014c458:
    [var_130 release];
    r0 = [r23 allObjects];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 componentsJoinedByString:@","] retain];
    [r19 release];
    r22 = [[NSString stringWithFormat:@"%@ IN (%@)"] retain];
    r0 = var_148->_sqliteStore;
    r0 = [r0 deleteRecordsFromTableWithName:@"audience_filter_values" condition:r22 parameterValues:0x0 error:var_120];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r22 release];
    [r21 release];
    goto loc_10014c544;

loc_10014c544:
    r20 = var_138;
    [r23 release];
    goto loc_10014c550;

loc_10014c550:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014c538:
    [var_130 release];
    r19 = 0x0;
    goto loc_10014c544;

loc_10014c530:
    r19 = 0x0;
    goto loc_10014c550;
}

-(bool)updateEventFilters:(void *)arg2 error:(void * *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 count];
    var_160 = arg3;
    if (sub_100199468(r0, arg3, 0x1, @"Received empty event filters to update") == 0x0) goto loc_10014ca50;

loc_10014c604:
    var_148 = q0;
    r0 = [r21 retain];
    var_1A0 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_178 = r0;
    if (r0 == 0x0) goto loc_10014ca40;

loc_10014c648:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r25 = *var_148;
    var_1E0 = r22;
    var_1D8 = r21;
    var_1D0 = r19;
    goto loc_10014c688;

loc_10014c688:
    r28 = 0x0;
    r23 = @selector(length);
    var_1A8 = r23;
    goto loc_10014c6e8;

loc_10014c6e8:
    if (*var_148 != r25) {
            objc_enumerationMutation(var_1A0);
    }
    var_168 = @selector(class);
    var_170 = @selector(isKindOfClass:);
    r21 = *(var_150 + r28 * 0x8);
    objc_msgSend(@class(APMEventFilter), var_168);
    if ((sub_1001993cc(objc_msgSend(r21, var_170), var_160, 0x1, @"Received unknown data type to update event filter") & 0x1) == 0x0) goto loc_10014ca58;

loc_10014c73c:
    r26 = [r21 retain];
    if (r26 == 0x0) goto loc_10014c8e0;

loc_10014c74c:
    r0 = [r26 eventName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r23);
    [r0 release];
    if (r27 == 0x0) goto loc_10014c914;

loc_10014c77c:
    r24 = @selector(data);
    r0 = objc_msgSend(r26, r24);
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r23);
    [r0 release];
    if (r27 != 0x0) {
            var_1B8 = @selector(numberWithInt:);
            var_1C8 = @selector(dictionaryWithObjects:forKeys:count:);
            [r26 audienceID];
            [objc_msgSend(r21, var_1B8) retain];
            [r26 filterID];
            r19 = [objc_msgSend(r21, var_1B8) retain];
            r0 = [r26 eventName];
            r0 = [r0 retain];
            r23 = r25;
            r25 = r0;
            r24 = [objc_msgSend(r26, r24) retain];
            r0 = objc_msgSend(@class(NSDictionary), var_1C8);
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            r0 = r25;
            r25 = r23;
            [r0 release];
            r0 = r19;
            r19 = var_1D0;
            [r0 release];
            [r27 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:r2 messageCode:r3 message:r4];
            [r21 release];
            r21 = 0x0;
    }
    r23 = var_1A8;
    goto loc_10014c99c;

loc_10014c99c:
    [r26 release];
    [r21 autorelease];
    if ([r19->_sqliteStore upsertRecord:r2 inTableWithName:r3 error:r4] == 0x0) goto loc_10014ca58;

loc_10014c9d4:
    r28 = r28 + 0x1;
    if (r28 < var_178) goto loc_10014c6e8;

loc_10014c9e4:
    r2 = objc_msgSend(var_1A0, var_1E0);
    r21 = var_1D8;
    var_178 = r2;
    if (r2 != 0x0) goto loc_10014c688;

loc_10014ca40:
    [var_1A0 release];
    r19 = 0x1;
    goto loc_10014ca68;

loc_10014ca68:
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014ca58:
    [var_1A0 release];
    r19 = 0x0;
    r21 = var_1D8;
    goto loc_10014ca68;

loc_10014c914:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(logWithLevel:messageCode:message:);
    goto loc_10014c944;

loc_10014c944:
    objc_msgSend(r0, r1);
    [r21 release];
    r21 = 0x0;
    goto loc_10014c99c;

loc_10014c8e0:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(logWithLevel:messageCode:message:);
    goto loc_10014c944;

loc_10014ca50:
    r19 = 0x0;
    goto loc_10014ca68;
}

-(bool)deleteEventFilters:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x180;
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
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 count];
    var_120 = r19;
    if (sub_100199468(r0, r19, 0x1, @"Received empty event filters to delete") == 0x0) goto loc_10014d75c;

loc_10014d52c:
    var_158 = r21;
    r28 = [[NSMutableArray alloc] init];
    var_148 = r20;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 == 0x0) goto loc_10014d6e0;

loc_10014d5bc:
    r25 = 0x0;
    goto loc_10014d5dc;

loc_10014d5dc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_140);
    }
    var_128 = @selector(class);
    r23 = *(0x0 + r25 * 0x8);
    objc_msgSend(@class(APMEventFilter), var_128);
    if (sub_1001993cc(objc_msgSend(r23, r21), var_120, 0x1, @"Received unknown type to delete event filter") == 0x0) goto loc_10014d764;

loc_10014d638:
    r19 = @selector(filterID);
    r27 = @selector(stringWithFormat:);
    r26 = @selector(addObject:);
    [r23 audienceID];
    objc_msgSend(r23, r19);
    r0 = objc_msgSend(@class(NSString), r27);
    r29 = r29;
    [r0 retain];
    objc_msgSend(r28, r26);
    [r20 release];
    r25 = r25 + 0x1;
    if (r25 < var_130) goto loc_10014d5dc;

loc_10014d6a8:
    r0 = objc_msgSend(var_140, var_150);
    var_130 = r0;
    if (r0 != 0x0) goto loc_10014d5bc;

loc_10014d6e0:
    [var_140 release];
    r20 = [[r28 componentsJoinedByString:@" OR "] retain];
    r0 = var_158->_sqliteStore;
    r0 = [r0 deleteRecordsFromTableWithName:@"event_filters" condition:r20 parameterValues:0x0 error:var_120];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    goto loc_10014d770;

loc_10014d770:
    [r28 release];
    r20 = var_148;
    goto loc_10014d77c;

loc_10014d77c:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014d764:
    [var_140 release];
    r19 = 0x0;
    goto loc_10014d770;

loc_10014d75c:
    r19 = 0x0;
    goto loc_10014d77c;
}

-(bool)updatePropertyFilters:(void *)arg2 error:(void * *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 count];
    var_160 = arg3;
    if (sub_100199468(r0, arg3, 0x1, @"Received empty property filters to update") == 0x0) goto loc_10014cf68;

loc_10014cb1c:
    var_148 = q0;
    r0 = [r21 retain];
    var_1A0 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_178 = r0;
    if (r0 == 0x0) goto loc_10014cf58;

loc_10014cb60:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r25 = *var_148;
    var_1E0 = r22;
    var_1D8 = r21;
    var_1D0 = r19;
    goto loc_10014cba0;

loc_10014cba0:
    r28 = 0x0;
    r23 = @selector(length);
    var_1A8 = r23;
    goto loc_10014cc00;

loc_10014cc00:
    if (*var_148 != r25) {
            objc_enumerationMutation(var_1A0);
    }
    var_168 = @selector(class);
    var_170 = @selector(isKindOfClass:);
    r21 = *(var_150 + r28 * 0x8);
    objc_msgSend(@class(APMPropertyFilter), var_168);
    if ((sub_1001993cc(objc_msgSend(r21, var_170), var_160, 0x1, @"Received unknown data type to update property filter") & 0x1) == 0x0) goto loc_10014cf70;

loc_10014cc54:
    r26 = [r21 retain];
    if (r26 == 0x0) goto loc_10014cdf8;

loc_10014cc64:
    r0 = [r26 propertyName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r23);
    [r0 release];
    if (r27 == 0x0) goto loc_10014ce2c;

loc_10014cc94:
    r24 = @selector(data);
    r0 = objc_msgSend(r26, r24);
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r23);
    [r0 release];
    if (r27 != 0x0) {
            var_1B8 = @selector(numberWithInt:);
            var_1C8 = @selector(dictionaryWithObjects:forKeys:count:);
            [r26 audienceID];
            [objc_msgSend(r21, var_1B8) retain];
            [r26 filterID];
            r19 = [objc_msgSend(r21, var_1B8) retain];
            r0 = [r26 propertyName];
            r0 = [r0 retain];
            r23 = r25;
            r25 = r0;
            r24 = [objc_msgSend(r26, r24) retain];
            r0 = objc_msgSend(@class(NSDictionary), var_1C8);
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            r0 = r25;
            r25 = r23;
            [r0 release];
            r0 = r19;
            r19 = var_1D0;
            [r0 release];
            [r27 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:r2 messageCode:r3 message:r4];
            [r21 release];
            r21 = 0x0;
    }
    r23 = var_1A8;
    goto loc_10014ceb4;

loc_10014ceb4:
    [r26 release];
    [r21 autorelease];
    if ([r19->_sqliteStore upsertRecord:r2 inTableWithName:r3 error:r4] == 0x0) goto loc_10014cf70;

loc_10014ceec:
    r28 = r28 + 0x1;
    if (r28 < var_178) goto loc_10014cc00;

loc_10014cefc:
    r2 = objc_msgSend(var_1A0, var_1E0);
    r21 = var_1D8;
    var_178 = r2;
    if (r2 != 0x0) goto loc_10014cba0;

loc_10014cf58:
    [var_1A0 release];
    r19 = 0x1;
    goto loc_10014cf80;

loc_10014cf80:
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014cf70:
    [var_1A0 release];
    r19 = 0x0;
    r21 = var_1D8;
    goto loc_10014cf80;

loc_10014ce2c:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(logWithLevel:messageCode:message:);
    goto loc_10014ce5c;

loc_10014ce5c:
    objc_msgSend(r0, r1);
    [r21 release];
    r21 = 0x0;
    goto loc_10014ceb4;

loc_10014cdf8:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(logWithLevel:messageCode:message:);
    goto loc_10014ce5c;

loc_10014cf68:
    r19 = 0x0;
    goto loc_10014cf80;
}

-(bool)updateFilterResults:(void *)arg2 error:(void * *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r20 = arg3;
    r19 = self;
    r0 = [arg2 retain];
    r21 = r0;
    if (sub_100199468([r0 count], r20, 0x1, @"Received empty filter results to update") == 0x0) goto loc_10014d460;

loc_10014d030:
    var_138 = q0;
    r0 = [r21 retain];
    var_170 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 == 0x0) goto loc_10014d450;

loc_10014d074:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r26 = *var_138;
    r28 = @"Received unknown data type to update filter result";
    var_1E0 = r22;
    var_1D8 = r21;
    var_1C8 = r26;
    stack[-464] = r19;
    var_190 = r20;
    goto loc_10014d0c0;

loc_10014d0c0:
    r23 = 0x0;
    r24 = @selector(currentResults);
    var_198 = r25;
    var_168 = r24;
    goto loc_10014d128;

loc_10014d128:
    if (*var_138 != r26) {
            objc_enumerationMutation(var_170);
    }
    var_150 = @selector(class);
    var_158 = @selector(isKindOfClass:);
    r21 = *(var_140 + r23 * 0x8);
    objc_msgSend(@class(APMFilterResult), var_150);
    if ((sub_1001993cc(objc_msgSend(r21, var_158), r20, 0x1, r28) & 0x1) == 0x0) goto loc_10014d468;

loc_10014d178:
    r27 = [r21 retain];
    if (r27 != 0x0) {
            var_178 = @selector(length);
            r22 = r28;
            r28 = r19;
            r0 = objc_msgSend(r27, r24);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r19 = var_178;
            r0 = objc_msgSend(r0, r19);
            r20 = r24;
            r24 = r0;
            [r21 release];
            if (r24 != 0x0) {
                    var_1A8 = @selector(numberWithInt:);
                    [r27 audienceID];
                    r26 = [objc_msgSend(@class(NSNumber), var_1A8) retain];
                    r21 = [objc_msgSend(r27, r20) retain];
                    r20 = @selector(previousResults);
                    r0 = objc_msgSend(r27, r20);
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (objc_msgSend(r0, r19) != 0x0) {
                            r0 = objc_msgSend(r27, r20);
                            r29 = r29;
                            r28 = [r0 retain];
                            r22 = 0x0;
                            r19 = 0x1;
                    }
                    else {
                            r0 = [NSNull null];
                            r29 = r29;
                            r28 = [r0 retain];
                            r19 = 0x0;
                            r22 = 0x1;
                    }
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r24 = [r0 retain];
                    r20 = var_190;
                    if (r22 != 0x0) {
                            [r28 release];
                    }
                    if (r19 != 0x0) {
                            [r28 release];
                    }
                    [r25 release];
                    [r21 release];
                    [r26 release];
                    r26 = var_1C8;
                    r19 = stack[-464];
                    r25 = var_198;
                    r28 = @"Received unknown data type to update filter result";
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logWithLevel:r2 messageCode:r3 message:r4];
                    [r21 release];
                    r20 = var_190;
                    r19 = r28;
                    r28 = r22;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:r2 messageCode:r3 message:r4];
            [r21 release];
            r24 = 0x0;
    }
    [r27 release];
    [r24 autorelease];
    if ([r19->_sqliteStore upsertRecord:r2 inTableWithName:r3 error:r4] == 0x0) goto loc_10014d468;

loc_10014d3e8:
    r23 = r23 + 0x1;
    r24 = var_168;
    if (r23 < r25) goto loc_10014d128;

loc_10014d3f8:
    r25 = objc_msgSend(var_170, var_1E0);
    r21 = var_1D8;
    if (r25 != 0x0) goto loc_10014d0c0;

loc_10014d450:
    [var_170 release];
    r19 = 0x1;
    goto loc_10014d478;

loc_10014d478:
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014d468:
    [var_170 release];
    r19 = 0x0;
    r21 = var_1D8;
    goto loc_10014d478;

loc_10014d460:
    r19 = 0x0;
    goto loc_10014d478;
}

-(bool)deleteAllEventFilters:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 deleteAllRecordsFromTableWithName:@"event_filters" error:arg2];
    return r0;
}

-(bool)deleteAllPropertyFilters:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 deleteAllRecordsFromTableWithName:@"property_filters" error:arg2];
    return r0;
}

-(bool)deletePropertyFilters:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x180;
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
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 count];
    var_120 = r19;
    if (sub_100199468(r0, r19, 0x1, @"Received empty property filters to delete") == 0x0) goto loc_10014da60;

loc_10014d830:
    var_158 = r21;
    r28 = [[NSMutableArray alloc] init];
    var_148 = r20;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 == 0x0) goto loc_10014d9e4;

loc_10014d8c0:
    r25 = 0x0;
    goto loc_10014d8e0;

loc_10014d8e0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_140);
    }
    var_128 = @selector(class);
    r23 = *(0x0 + r25 * 0x8);
    objc_msgSend(@class(APMPropertyFilter), var_128);
    if (sub_1001993cc(objc_msgSend(r23, r21), var_120, 0x1, @"Received unknown type to delete property filter") == 0x0) goto loc_10014da68;

loc_10014d93c:
    r19 = @selector(filterID);
    r27 = @selector(stringWithFormat:);
    r26 = @selector(addObject:);
    [r23 audienceID];
    objc_msgSend(r23, r19);
    r0 = objc_msgSend(@class(NSString), r27);
    r29 = r29;
    [r0 retain];
    objc_msgSend(r28, r26);
    [r20 release];
    r25 = r25 + 0x1;
    if (r25 < var_130) goto loc_10014d8e0;

loc_10014d9ac:
    r0 = objc_msgSend(var_140, var_150);
    var_130 = r0;
    if (r0 != 0x0) goto loc_10014d8c0;

loc_10014d9e4:
    [var_140 release];
    r20 = [[r28 componentsJoinedByString:@" OR "] retain];
    r0 = var_158->_sqliteStore;
    r0 = [r0 deleteRecordsFromTableWithName:@"property_filters" condition:r20 parameterValues:0x0 error:var_120];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    goto loc_10014da74;

loc_10014da74:
    [r28 release];
    r20 = var_148;
    goto loc_10014da80;

loc_10014da80:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014da68:
    [var_140 release];
    r19 = 0x0;
    goto loc_10014da74;

loc_10014da60:
    r19 = 0x0;
    goto loc_10014da80;
}

-(bool)updateRemoteConfig:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 protoBuffer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (sub_100199468([r0 length], r21, 0x1, @"Invalid measurement config data") != 0x0) {
            r24 = @selector(length);
            r0 = sub_1001a7b3c(r19, 0x1);
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (sub_100199468(objc_msgSend(r0, r24), r21, 0x1, @"Missing Google app ID in measurement configuration") != 0x0) {
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 timeIntervalSince1970];
                    r24 = [[NSNumber numberWithDouble:0x1] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
                    r26 = [r0 retain];
                    [r24 release];
                    [r25 release];
                    r21 = [r22 updateDataType:r26 inTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:r21 createDictionaryBlock:0x100e6d500];
                    [r26 release];
            }
            else {
                    r21 = 0x0;
            }
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)updateRemoteConfigSuccessfulTimestamp:(double)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r22 = [r0 retain];
    [r21 release];
    r19 = [self updateDataType:r22 inTableWithName:@"app_metadata" columnName:@"rowid" columnValue:@"1" error:arg2 createDictionaryBlock:0x100e6d540];
    [r22 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)lastRemoteConfigUpdateTimestamp:(void * *)arg2 {
    r0 = self->_sqliteStore;
    r0 = [r0 numberForQuery:@"SELECT remote_config_timestamp FROM app_metadata LIMIT 1" parameterValues:0x0 error:arg2];
    return r0;
}

-(void *)queryMeasurementConfigWithError:(void * *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = self->_sqliteStore;
    r0 = [r0 recordsForQuery:@"SELECT remote_config_data FROM app_metadata LIMIT 1" parameterValues:0x0 error:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 firstObject];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:@"remote_config_data"] retain];
            [r0 release];
            [NSData class];
            if ([r21 isKindOfClass:r2] != 0x0 && [r21 length] != 0x0) {
                    r0 = [APMPBMeasurementConfig alloc];
                    r0 = [r0 initWithBuffer:r21];
                    r22 = r0;
                    if (sub_100199400(r0, r20, 0x2, @"Remote config data is corrupted") != 0x0) {
                            r20 = [r22 retain];
                    }
                    else {
                            r20 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)conditionalUserPropertyWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = [self dataTypesFromTableWithName:@"conditional_properties" columnName:@"name" columnValue:arg2 error:arg3 createDataTypeBlock:0x100e6d580];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)insertIfNotDuplicatePurchaseFingerprint:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x90;
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
    r24 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
            r20 = *(r24 + r25);
            r23 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
            r0 = [r20 numberForQuery:@"SELECT EXISTS (SELECT 1 FROM purchase_transactions WHERE fingerprint = ? LIMIT 1)" parameterValues:r23 error:r21];
            r29 = r29;
            r20 = [r0 retain];
            [r23 release];
            if (r21 != 0x0 && r20 == 0x0) {
                    r21 = 0x0;
            }
            else {
                    if ([r20 boolValue] != 0x0) {
                            r21 = [[NSNumber numberWithBool:r2] retain];
                    }
                    else {
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_70 count:0x1];
                            r29 = r29;
                            r23 = [r0 retain];
                            r0 = *(r24 + r25);
                            r0 = [r0 upsertRecord:r23 inTableWithName:@"purchase_transactions" error:r21];
                            if (r21 != 0x0 && r0 == 0x0) {
                                    r21 = 0x0;
                            }
                            else {
                                    r24 = *(r24 + r25);
                                    r25 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1ff8] retain];
                                    r26 = [[NSArray arrayWithObjects:&var_78 count:0x1] retain];
                                    r0 = [r24 deleteRecordsFromTableWithName:@"purchase_transactions" condition:@"rowid IN (SELECT rowid FROM purchase_transactions ORDER BY rowid DESC LIMIT -1 OFFSET ?)" parameterValues:r26 error:r21];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r26 release];
                                    [r25 release];
                                    if (r21 != 0x0) {
                                            if (r22 == 0x0) {
                                                    r21 = 0x0;
                                            }
                                            else {
                                                    r21 = [[NSNumber numberWithBool:r2] retain];
                                            }
                                    }
                                    else {
                                            r21 = [[NSNumber numberWithBool:r2] retain];
                                    }
                                    [r22 release];
                            }
                            [r23 release];
                    }
            }
            [r20 release];
    }
    else {
            r21 = [[NSNumber numberWithBool:r2] retain];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)updateConditionalUserProperty:(void *)arg2 error:(void * *)arg3 {
    r23 = [arg2 retain];
    r22 = [[arg2 name] retain];
    r19 = [self upsertDataType:arg2 inTableWithName:@"conditional_properties" columnName:@"name" columnValue:r22 tableLimit:sign_extend_64(*(int32_t *)0x100ba1fe0) error:arg3 createDictionaryBlock:0x100e6d5c0];
    [r23 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)deleteConditionalUserPropertyWithName:(void *)arg2 error:(void * *)arg3 {
    r0 = self->_sqliteStore;
    r0 = [r0 deleteRecordFromTableWithName:@"conditional_properties" columnName:@"name" columnValue:arg2 error:arg3];
    return r0;
}

-(void *)timedOutConditionalUserPropertiesWithError:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
    r19 = [[self conditionalUserPropertiesWithCondition:@"active=0 and abs(? - creation_timestamp) > trigger_timeout" parameterValues:r23 error:arg2] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)expiredConditionalUserPropertiesWithError:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
    r19 = [[self conditionalUserPropertiesWithCondition:@"active=1 and abs(? - triggered_timestamp) > time_to_live" parameterValues:r23 error:arg2] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)triggeredConditionalUserPropertiesWithEventName:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (sub_100199468([r0 length], r20, 0x1, @"Received nil/empty event name for querying triggered conditional user properties") != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r22 = [[NSNumber numberWithDouble:0x1] retain];
            r24 = [[NSArray arrayWithObjects:&var_48 count:0x2] retain];
            [r22 release];
            [r0 release];
            r20 = [[r21 conditionalUserPropertiesWithCondition:@"active=0 and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout" parameterValues:r24 error:r20] retain];
            [r24 release];
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

-(void *)conditionalUserPropertiesWithPrefix:(void *)arg2 filterByOrigin:(void *)arg3 error:(void * *)arg4 {
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
    r21 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[NSMutableArray alloc] init];
    r24 = [[NSMutableArray alloc] init];
    if ([r20 length] != 0x0) {
            r0 = [NSString stringWithFormat:@"%@ LIKE ?"];
            r29 = r29;
            [r0 retain];
            [r24 addObject:r2];
            [r26 release];
            objc_msgSend(r22, r27);
    }
    if ([r19 length] != 0x0) {
            r0 = [NSString stringWithFormat:@"%@ LIKE ? || '%%'"];
            r29 = r29;
            [r0 retain];
            [r24 addObject:r2];
            [r26 release];
            objc_msgSend(r22, r27);
    }
    r25 = @selector(length);
    r0 = [r24 componentsJoinedByString:@" AND "];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (objc_msgSend(r0, r25) != 0x0) {
            r0 = [r23 conditionalUserPropertiesWithCondition:r2 parameterValues:r3 error:r4];
    }
    else {
            r0 = [r23 conditionalUserPropertiesWithCondition:r2 parameterValues:r3 error:r4];
    }
    r21 = [r0 retain];
    [r26 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)conditionalUserPropertiesWithCondition:(void *)arg2 parameterValues:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x160;
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
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_100199468([r19 length], r22, 0x1, @"Received empty condition for querying a conditional user property") != 0x0) {
            r21 = [[NSString stringWithFormat:@"SELECT rowid, * FROM %@ WHERE %@"] retain];
            r0 = r23->_sqliteStore;
            r0 = [r0 recordsForQuery:r21 parameterValues:r20 error:r22];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    var_128 = r21;
                    stack[-304] = r20;
                    r22 = [[NSMutableArray alloc] init];
                    var_130 = r23;
                    r0 = [r23 retain];
                    r24 = r0;
                    r26 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r26 != 0x0) {
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r0 = sub_10014e310();
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (r28 != 0x0) {
                                                    [r22 addObject:r2];
                                            }
                                            [r28 release];
                                            r23 = r23 + 0x1;
                                    } while (r23 < r26);
                                    r26 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r26 != 0x0);
                    }
                    [r24 release];
                    r21 = var_128;
                    r20 = stack[-304];
                    r23 = var_130;
            }
            else {
                    r22 = 0x0;
            }
            [r23 release];
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)mainEventAndChildCountPairWithEventID:(long long)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r20 = [[NSNumber numberWithLongLong:arg2] retain];
    r19 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
    [r20 release];
    r20 = [[NSString stringWithFormat:@"SELECT * FROM %@ WHERE event_id=? LIMIT 1"] retain];
    r0 = self->_sqliteStore;
    r0 = [r0 recordsForQuery:r20 parameterValues:r19 error:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r22 firstObject];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r24 = [[NSMutableArray alloc] init];
                    r0 = [r23 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = sub_10014fd20(r0, r21);
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (sub_100199400(r0, r21, 0x3, @"Main event blob is nil in database") != 0x0) {
                            [r24 addObject:r2];
                            r0 = [r23 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r27 = r0;
                            if (sub_100199400(r0, r21, 0x3, @"Complex event does not have children count in database") != 0x0) {
                                    [r24 addObject:r2];
                                    r21 = [r24 retain];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            [r27 release];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            else {
                    r21 = 0x0;
            }
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteComplexEventForAudienceEvaluationWithEventID:(long long)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self->_sqliteStore;
    r21 = [[NSNumber numberWithLongLong:arg2] retain];
    r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    r20 = [[r20 deleteRecordsFromTableWithName:@"main_event_params" condition:@"event_id=?" parameterValues:r22 error:r19] retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)updateComplexEventForAudienceEvaluationWithEventID:(long long)arg2 childEventCount:(long long)arg3 mainEvent:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x90;
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
    r20 = arg5;
    r23 = arg3;
    r24 = arg2;
    r21 = self;
    r0 = [arg4 retain];
    r19 = r0;
    if (sub_100199400(r0, r20, 0x1, @"Received nil main event") != 0x0) {
            [APMEvent class];
            if (sub_1001993cc([r19 isKindOfClass:r2], r20, 0x1, @"Received main event which is not a APMEvent") != 0x0) {
                    r0 = sub_100150058();
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (sub_100199400(r0, r20, 0x1, @"Cannot create the main event blob") != 0x0) {
                            r24 = [[NSNumber numberWithLongLong:r24] retain];
                            r23 = [[NSNumber numberWithLongLong:r23] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
                            r25 = [r0 retain];
                            [r23 release];
                            [r24 release];
                            r20 = [r21->_sqliteStore upsertRecord:r25 inTableWithName:@"main_event_params" error:r20];
                            [r25 release];
                    }
                    else {
                            r20 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)initializeDatabaseResourcesWithContext:(void *)arg2 databasePath:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [APMSqliteStore alloc];
    r0 = [r0 initWithDatabasePath:r20];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
    r8 = *(r21 + r22);
    *(r21 + r22) = r0;
    [r8 release];
    if (*(r21 + r22) == 0x0) goto loc_100150268;

loc_100150238:
    if (([r21 ensureAllTables] & 0x1) == 0x0) goto loc_1001502c8;

loc_10015024c:
    if (([r21 initializeAppMetadata] & 0x1) == 0x0) goto loc_1001503d4;

loc_100150260:
    r21 = 0x1;
    goto loc_100150450;

loc_100150450:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1001503d4:
    r21 = [[NSString stringWithFormat:@"Failed to initialize App Metadata table (%@)"] retain];
    r22 = [[APMMeasurement monitor] retain];
    goto loc_100150430;

loc_100150430:
    [r22 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r22;
    goto loc_100150440;

loc_100150440:
    [r0 release];
    [r21 release];
    r21 = 0x0;
    goto loc_100150450;

loc_1001502c8:
    r21 = [[NSString stringWithFormat:@"Failed to create or validate required database tables (%@)"] retain];
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x2ee2 message:r21];
    [r0 release];
    r0 = sub_100197b84(r20, &var_58);
    r25 = r0;
    r24 = [var_58 retain];
    if (r24 != 0x0 && r25 == 0x0) {
            r22 = [[NSString stringWithFormat:@"Failed to delete old database file after failed validation. Error (%@)"] retain];
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2ee3 message:r22 context:r24];
            [r0 release];
            [r22 release];
    }
    r0 = r24;
    goto loc_100150440;

loc_100150268:
    r21 = [[NSString stringWithFormat:@"Failed to open database (%@)"] retain];
    r22 = [[APMMeasurement monitor] retain];
    goto loc_100150430;
}

-(bool)insertDataType:(void *)arg2 inTableWithName:(void *)arg3 error:(void * *)arg4 createDictionaryBlock:(void *)arg5 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    if (sub_100199468([r20 length], r22, 0x1, @"Received empty table name for inserting") != 0x0) {
            r0 = objc_retainBlock(r21);
            r25 = sub_100199400(r0, r22, 0x1, @"Received nil block to create dictionary for inserting");
            [r0 release];
            if (r25 != 0x0) {
                    r0 = (*(r21 + 0x10))(r21, r19);
                    r0 = [r0 retain];
                    r24 = r0;
                    if (sub_100199400(r0, r22, 0x2, @"Failed to insert unknown data type") != 0x0) {
                            r22 = [r23->_sqliteStore upsertRecord:r24 inTableWithName:r20 error:r22];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r24 release];
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)allDataTypesFromTableWithName:(void *)arg2 tableLimit:(long long)arg3 error:(void * *)arg4 createDataTypeBlock:(void *)arg5 {
    r31 = r31 - 0x160;
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
    r22 = arg4;
    r21 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r0 = [arg5 retain];
    r20 = r0;
    r0 = objc_retainBlock(r0);
    r25 = sub_100199400(r0, r22, 0x1, @"Received nil block to get all data types");
    [r0 release];
    if (r25 != 0x0) {
            r21 = [[NSString stringWithFormat:@"SELECT rowid, * FROM %@ ORDER BY rowid LIMIT %ld"] retain];
            r0 = r23->_sqliteStore;
            r0 = [r0 recordsForQuery:r21 parameterValues:0x0 error:r22];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    var_128 = r21;
                    stack[-304] = r19;
                    r22 = [[NSMutableArray alloc] init];
                    var_130 = r23;
                    r0 = [r23 retain];
                    r24 = r0;
                    r26 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r26 != 0x0) {
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r0 = (*(r20 + 0x10))(r20, *(0x0 + r23 * 0x8));
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (r28 != 0x0) {
                                                    [r22 addObject:r2];
                                            }
                                            [r28 release];
                                            r23 = r23 + 0x1;
                                    } while (r23 < r26);
                                    r26 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r26 != 0x0);
                    }
                    [r24 release];
                    r21 = var_128;
                    r19 = stack[-304];
                    r23 = var_130;
            }
            else {
                    r22 = 0x0;
            }
            [r23 release];
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)dataTypesFromTableWithName:(void *)arg2 columnName:(void *)arg3 columnValue:(void *)arg4 error:(void * *)arg5 createDataTypeBlock:(void *)arg6 {
    r31 = r31 - 0x170;
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
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg4 retain];
    r22 = [arg6 retain];
    if (sub_100199400(r26, r23, 0x1, @"Received nil column value to create data type from table") != 0x0 && sub_100199468([r19 length], r23, 0x1, @"Received empty table name to create data type from table") != 0x0 && sub_100199468([r20 length], r23, 0x1, @"Received empty column name to create data type from table") != 0x0) {
            r0 = objc_retainBlock(r22);
            r24 = sub_100199400(r0, r23, 0x2, @"Received nil block to create data type from table");
            [r0 release];
            if (r24 != 0x0) {
                    r27 = [[NSString stringWithFormat:@"SELECT rowid, * FROM %@ WHERE %@ = ?"] retain];
                    r21 = r25->_sqliteStore;
                    r24 = [[NSArray arrayWithObjects:r29 - 0x60 count:0x1] retain];
                    r0 = [r21 recordsForQuery:r27 parameterValues:r24 error:r23];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r24 release];
                    if (r21 != 0x0) {
                            var_148 = r19;
                            var_138 = r27;
                            var_130 = r26;
                            var_128 = r20;
                            r26 = [[NSMutableArray alloc] init];
                            var_140 = r21;
                            r0 = [r21 retain];
                            r27 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r19 = r1;
                            r24 = objc_msgSend(r0, r1);
                            if (r24 != 0x0) {
                                    do {
                                            r28 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r27);
                                                    }
                                                    r0 = (*(r22 + 0x10))(r22, *(0x0 + r28 * 0x8));
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    if (r21 != 0x0) {
                                                            [r26 addObject:r2];
                                                    }
                                                    [r21 release];
                                                    r28 = r28 + 0x1;
                                            } while (r28 < r24);
                                            r24 = objc_msgSend(r27, r19);
                                    } while (r24 != 0x0);
                            }
                            [r27 release];
                            if ([r26 count] != 0x0) {
                                    r23 = [r26 retain];
                            }
                            else {
                                    if ([r27 count] != 0x0) {
                                            sub_100199354();
                                            r23 = 0x0;
                                    }
                                    else {
                                            r23 = [r26 retain];
                                    }
                            }
                            r19 = var_148;
                            [r26 release];
                            r26 = var_130;
                            r20 = var_128;
                            r21 = var_140;
                            r27 = var_138;
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r21 release];
                    [r27 release];
            }
            else {
                    r23 = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r26 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)updateDataType:(void *)arg2 inTableWithName:(void *)arg3 columnName:(void *)arg4 columnValue:(void *)arg5 error:(void * *)arg6 createDictionaryBlock:(void *)arg7 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = arg6;
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg7 retain];
    if (sub_100199400(r19, r24, 0x1, @"Received empty data type to update") != 0x0 && sub_100199468([r20 length], r24, 0x1, @"Received empty table name for updating") != 0x0) {
            r0 = objc_retainBlock(r23);
            r27 = sub_100199400(r0, r24, 0x1, @"Received nil block to create dictionary for updating");
            [r0 release];
            if (r27 != 0x0) {
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
                    r0 = *(r25 + r28);
                    r0 = [r0 rowCountForTableWithName:r20 columnName:r21 columnValue:r22 error:r24];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r26 != 0x0 && sub_1001993cc([r26 boolValue], r24, 0x2, @"Failed to update record. Item doesn't exist") != 0x0) {
                            r0 = (*(r23 + 0x10))(r23, r19);
                            r0 = [r0 retain];
                            r27 = r0;
                            if (sub_100199400(r0, r24, 0x2, @"Failed to update unknown data type") != 0x0) {
                                    r24 = [*(r25 + r28) updateRecord:r27 inTableWithName:r20 columnName:r21 columnValue:r22 error:r24];
                            }
                            else {
                                    r24 = 0x0;
                            }
                            [r27 release];
                    }
                    else {
                            r24 = 0x0;
                    }
                    [r26 release];
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_persistedConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_sqliteStore, 0x0);
    return;
}

-(bool)upsertDataType:(void *)arg2 inTableWithName:(void *)arg3 columnName:(void *)arg4 columnValue:(void *)arg5 tableLimit:(long long)arg6 error:(void * *)arg7 createDictionaryBlock:(void *)arg8 {
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
    r24 = arg7;
    r26 = arg6;
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg8 retain];
    if (sub_100199400(r19, r24, 0x1, @"Received empty data type to upsert") != 0x0 && sub_100199468([r20 length], r24, 0x1, @"Received empty table name for checking upsert") != 0x0) {
            r0 = objc_retainBlock(r23);
            r28 = sub_100199400(r0, r24, 0x1, @"Received nil block to create dictionary for upserting");
            [r0 release];
            if (r28 != 0x0) {
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
                    r0 = *(r25 + r28);
                    r0 = [r0 rowCountForTableWithName:r20 columnName:r21 columnValue:r22 error:r24];
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            r0 = *(r25 + r28);
                            r0 = [r0 rowCountForTableWithName:r20 error:r24];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    var_58 = r0;
                                    if (([r27 boolValue] & 0x1) != 0x0) {
                                            r0 = 0x1;
                                    }
                                    else {
                                            r0 = [var_58 integerValue];
                                            if (r0 < r26) {
                                                    if (CPU_FLAGS & L) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                                    if (sub_1001993cc(r0, r24, 0x2, @"Failed to insert data type. Table is full") != 0x0) {
                                            r0 = (*(r23 + 0x10))(r23, r19);
                                            r0 = [r0 retain];
                                            r26 = r0;
                                            if (sub_100199400(r0, r24, 0x2, @"Failed to insert/update unknown data type") != 0x0) {
                                                    r24 = [*(r25 + r28) upsertRecord:r26 inTableWithName:r20 error:r24];
                                            }
                                            else {
                                                    r24 = 0x0;
                                            }
                                            [r26 release];
                                    }
                                    else {
                                            r24 = 0x0;
                                    }
                                    r0 = var_58;
                            }
                            else {
                                    r24 = 0x0;
                            }
                            [r0 release];
                    }
                    else {
                            r24 = 0x0;
                    }
                    [r27 release];
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(bool)ensureAllTables {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x5a0;
    var_588 = self;
    var_58 = **___stack_chk_guard;
    r26 = objc_msgSend([*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xf98) alloc], *0x1011371e0);
    r0 = *(&@class(MCConfigurationData) + 0xc0);
    r23 = *(&@selector(menu) + 0x868);
    [objc_msgSend(r0, r23) retain];
    [objc_msgSend(*(&@class(MCConfigurationData) + 0xc0), r23) retain];
    r0 = *(&@class(MCConfigurationData) + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, *(&@selector(alloc) + 0xbf0));
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    var_580 = r24;
    var_578 = r26;
    objc_msgSend(r26, r24);
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, r25);
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, var_580);
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, r27);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, r27);
    [r21 release];
    [r20 release];
    [r19 release];
    var_5A0 = [objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8), *0x1011371e8) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5B0 = *qword_value_4310472784;
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, var_580);
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r19 release];
    var_5A8 = [objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8), r20) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, var_580);
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, r27);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, r27);
    [r20 release];
    [r19 release];
    var_5B0 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5B8 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5C0 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5C8 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5D0 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    var_5D8 = [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r26, var_580);
    [r21 release];
    [r20 release];
    [r24 release];
    [r25 release];
    [r27 release];
    [r22 release];
    [r19 release];
    [var_5D8 release];
    [var_5D0 release];
    [var_5C8 release];
    [var_5C0 release];
    [var_5B8 release];
    [var_5B0 release];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    [objc_msgSend(*(r28 + 0xc0), r23) retain];
    r0 = *(r28 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, r26);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [var_5A8 release];
    [var_5A0 release];
    var_5A0 = [[r24 autorelease] retain];
    var_578 = objc_msgSend(objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xf98), r1), r1);
    r21 = r28;
    var_5A8 = [objc_msgSend(*(r21 + 0xc0), r23) retain];
    var_5B0 = [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    r0 = *(r21 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, var_580);
    [r20 release];
    [r27 release];
    [r26 release];
    [r28 release];
    [r25 release];
    [r22 release];
    [r19 release];
    [r24 release];
    [var_5B0 release];
    [var_5A8 release];
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    r26 = r21;
    [objc_msgSend(*(r21 + 0xc0), r23) retain];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    r0 = *(r26 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(var_578, var_580);
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    r0 = *(r26 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r28, r27);
    [r21 release];
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r26 + 0xc0), r23) retain];
    r0 = *(r26 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r28, r27);
    [r20 release];
    [r19 release];
    [objc_msgSend(*(r22 + 0xc0), r23) retain];
    r0 = *(r22 + 0xc0);
    r0 = objc_msgSend(r0, r23);
    [r0 retain];
    objc_msgSend(r28, r27);
    [r20 release];
    [r19 release];
    var_578 = [[r28 autorelease] retain];
    r19 = objc_msgSend(objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xf98), r1), r1);
    r0 = *(&@class(MCConfigurationData) + 0x18);
    r0 = objc_msgSend(r0, *0x101137710);
    r29 = r29;
    [r0 retain];
    objc_msgSend(r19, r27);
    [r20 release];
    var_580 = [[r19 autorelease] retain];
    r0 = [var_5A0 retain];
    r20 = r0;
    r1 = *0x1011372c0;
    var_5A8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_590 = r0;
    if (r0 == 0x0) goto loc_100151c28;

loc_100151adc:
    var_5A0 = sign_extend_64(*(int32_t *)ivar_offset(_sqliteStore));
    goto loc_100151afc;

loc_100151afc:
    r21 = 0x0;
    goto loc_100151b08;

loc_100151b08:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r25 = *(0x0 + r21 * 0x8);
    r27 = *(var_588 + var_5A0);
    r19 = r20;
    r22 = [[r20 objectForKeyedSubscript:r2] retain];
    r23 = [[var_578 objectForKeyedSubscript:r2] retain];
    r0 = [var_580 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    r28 = [r27 ensureTableWithName:r2 elementaryColumnInfo:r3 addOnColumnInfo:r4 modifyColumnInfo:r5 error:r6];
    r27 = [0x0 retain];
    [r20 release];
    [r23 release];
    [r22 release];
    if (r27 == 0x0 || r28 != 0x0) goto loc_100151be4;

loc_100151c38:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x2f0f message:@"Failed to ensure table. Table, error" context:r25 context:r27];
    [r0 release];
    [r27 release];
    r20 = r19;
    [r20 release];
    r19 = 0x0;
    goto loc_100151c9c;

loc_100151c9c:
    [var_580 release];
    [var_578 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100151be4:
    [r27 release];
    r21 = r21 + 0x1;
    r20 = r19;
    if (r21 < var_590) goto loc_100151b08;

loc_100151c00:
    r0 = objc_msgSend(r20, var_5A8);
    var_590 = r0;
    if (r0 != 0x0) goto loc_100151afc;

loc_100151c28:
    [r20 release];
    r19 = 0x1;
    goto loc_100151c9c;
}

@end