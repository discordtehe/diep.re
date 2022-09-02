@implementation ISEventsEngine

-(void)setOptOut:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_optOut, r20);
            [ISUtils saveValueToUDForKey:r19 forKey:@"optOut"];
    }
    [r19 release];
    return;
}

-(void *)optOut {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_optOut));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [ISUtils getObjectFromUDForKey:@"optOut"];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setMaxEventsPerBatch:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r0->_maxEventsPerBatch = r2;
            r20 = [[NSNumber numberWithUnsignedInteger:r2] retain];
            [ISUtils saveValueToUDForKey:r20 forKey:@"maxEventsPerBatch"];
            [r20 release];
    }
    return;
}

-(unsigned long long)maxEventsPerBatch {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_maxEventsPerBatch));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [ISUtils getObjectFromUDForKey:@"maxEventsPerBatch"];
            r0 = [r0 retain];
            *(r19 + r21) = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = *(r19 + r21);
    }
    return r0;
}

-(void *)initWithIdentifier:(void *)arg2 formatter:(void *)arg3 server:(void *)arg4 {
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
    r23 = arg4;
    r24 = arg3;
    r26 = arg2;
    r19 = [r26 retain];
    r20 = [r24 retain];
    r21 = [r23 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_identifier, r26);
            r0 = [ISDefaultEventStorageHelper alloc];
            r0 = [r0 initWithIdentifier:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storage));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_totalEvents = 0x0;
            r22->_backupThreshold = 0x1;
            r22->_maxNumberOfEvents = 0x64;
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r25);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_localEvents));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r22->_eventsEnabled = 0x1;
            r0 = [r22 serverEventsURL];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serverEventsURL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_formatter, r24);
            objc_storeStrong((int64_t *)&r22->_serverEventsType, r23);
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r25);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            [*(r22 + r24) setMaxConcurrentOperationCount:0x1];
            r23 = [[NSString stringWithFormat:@"com.ironsrc.%@_queue"] retain];
            [*(r22 + r24) setName:r23];
            [r23 release];
            r0 = [ISUtils UUIDForSession];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionId));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r22 initConnectivityEventsSet];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)verifyFormatter:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r20 serverEventsType];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 isEqualToString:r2];
            [r21 release];
            if ((r22 & 0x1) == 0x0) {
                    r21 = [[ISFormatterFabric getFormatterFromType:r19] retain];
                    [r20 setFormatter:r21];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)initSessionWithUrl:(void *)arg2 maxEvents:(long long)arg3 threshold:(long long)arg4 andIsActive:(bool)arg5 serverEventsType:(void *)arg6 optOut:(void *)arg7 maxEventsPerBatch:(unsigned long long)arg8 {
    r26 = [arg2 retain];
    r22 = [arg6 retain];
    r21 = [arg7 retain];
    [self setServerEventsURL:r26];
    [r26 release];
    [self setMaxNumberOfEvents:arg3];
    [self setBackupThreshold:arg4];
    [self setEventsEnabled:arg5];
    [self verifyFormatter:r22];
    [self setServerEventsType:r22];
    [r22 release];
    [self setOptOut:r21];
    [r21 release];
    [self setMaxEventsPerBatch:arg8];
    [self initConnectivityEventsSet];
    return;
}

-(bool)increaseSessionDepthIfNeeded:(void *)arg2 {
    return 0x0;
}

-(unsigned long long)getSessionDepth:(void *)arg2 {
    return 0x0;
}

-(bool)shouldSendEvents:(void *)arg2 {
    return 0x0;
}

-(void)addObject:(void *)arg2 forKey:(void *)arg3 inDic:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            [r21 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addSegmentDataToBatch:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    var_140 = [[r0 segment] retain];
    [r0 release];
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 segmentId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(length);
    var_148 = r1;
    r27 = objc_msgSend(r0, r1);
    [r0 release];
    [r25 release];
    if (r27 != 0x0) {
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 segmentId];
            r29 = r29;
            r24 = [r0 retain];
            [r20 addObject:r24 forKey:@"segmentId" inDic:r19];
            [r24 release];
            [r25 release];
    }
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 customSegmentParams];
    r29 = r29;
    r24 = [r0 retain];
    [r22 release];
    var_120 = q0;
    r0 = [r24 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_130;
    var_138 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r21 = *var_120;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_120 != r21) {
                                    objc_enumerationMutation(r22);
                            }
                            r0 = [r22 objectForKey:*(var_128 + r24 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObject:r2 forKey:r3 inDic:r4];
                            [r23 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
                    r2 = &var_130;
                    r25 = objc_msgSend(r22, var_138);
            } while (r25 != 0x0);
    }
    [r22 release];
    r21 = var_140;
    if (r21 != 0x0) {
            if ([r21 age] != 0x0) {
                    r0 = [NSNumber numberWithInt:[r21 age]];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 addObject:r23 forKey:@"age" inDic:r19];
                    [r23 release];
            }
            if ([r21 level] != 0x0) {
                    r0 = [NSNumber numberWithInt:[r21 level]];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 addObject:r23 forKey:@"lvl" inDic:r19];
                    [r23 release];
            }
            r0 = [r21 isUserPaying];
            r29 = r29;
            r0 = [r0 retain];
            r25 = objc_msgSend(r0, var_148);
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r21 isUserPaying];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 addObject:r23 forKey:@"pay" inDic:r19];
                    [r23 release];
            }
            [r21 iapTotal];
            if (d0 != 0x0) {
                    [r21 iapTotal];
                    r0 = [NSString stringWithFormat:@"%.2f"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 addObject:r23 forKey:@"iapt" inDic:r19];
                    [r23 release];
            }
            if ([r21 gender] != 0x0) {
                    r24 = [[NSArray arrayWithObjects:&var_F0 count:0x3] retain];
                    r0 = [r24 objectAtIndex:[r21 gender]];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 addObject:r23 forKey:@"gen" inDic:r19];
                    [r23 release];
                    [r24 release];
            }
            r0 = [r21 userCreationDate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @class(NSString);
                    r25 = @class(NSNumber);
                    r0 = [r21 userCreationDate];
                    r0 = [r0 retain];
                    r23 = r0;
                    [r0 timeIntervalSince1970];
                    asm { frintp     d0, d0 };
                    r0 = [r25 numberWithDouble:r2];
                    r0 = [r0 retain];
                    [r0 longLongValue];
                    r24 = [[r24 stringWithFormat:@"%lld"] retain];
                    [r20 addObject:r24 forKey:@"ucd" inDic:r19];
                    [r24 release];
                    [r0 release];
                    [r23 release];
            }
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)shouldBackupEvents:(void *)arg2 {
    return 0x0;
}

-(bool)shouldIncreaseSessionDepth:(void *)arg2 {
    return 0x0;
}

-(void)logEvent:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self queue] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 addOperationWithBlock:&var_50];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(bool)isTopPriorty:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 eventId];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 longValue] == 0xe) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendEvents {
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
    r19 = self;
    r20 = [self hasTopPriortyEvent];
    [r19 setHasTopPriortyEvent:0x0];
    r21 = [[r19 storage] retain];
    r25 = [[r19 identifier] retain];
    r0 = [r21 loadEventsForKey:r25];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    [r21 release];
    if (r24 != 0x0) {
            r26 = 0x0;
            r25 = r24;
    }
    else {
            r25 = [NSArray new];
            r26 = 0x1;
    }
    r21 = [r25 retain];
    [r24 release];
    if (r26 != 0x0) {
            [r25 release];
    }
    r23 = [[r19 storage] retain];
    r24 = [[r19 identifier] retain];
    [r23 clearEventsStorageForKey:r24];
    [r24 release];
    [r23 release];
    r0 = [r19 pullLocalEvents];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 arrayByAddingObjectsFromArray:r21];
    r29 = r29;
    r24 = [r0 retain];
    [r23 release];
    if ([r24 count] != 0x0) {
            r23 = [[r19 splitEventsArray:r24] retain];
            [r24 release];
            r24 = [[r19 generateEventBatchData] retain];
            r22 = [[r19 identifier] retain];
            [r19 addObject:r23 forKey:r22 inDic:r24];
            [r22 release];
            r0 = [r19 formatter];
            r0 = [r0 retain];
            r22 = [[r0 parseEventData:r24] retain];
            [r0 release];
            r25 = [[ISEventSender alloc] init];
            r26 = [[NSDictionary dictionaryWithDictionary:r22] retain];
            r27 = [[r19 serverEventsURL] retain];
            [r25 sendEvents:r26 toUrl:r27 onCompletion:&var_80];
            [r27 release];
            [r26 release];
            [r25 release];
            [r22 release];
            [r24 release];
            r24 = r23;
    }
    [r24 release];
    [r21 release];
    return;
}

-(void)backUpEvents {
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
    r19 = self;
    r22 = [[self storage] retain];
    r24 = [[r19 identifier] retain];
    r0 = [r22 loadEventsForKey:r24];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    [r22 release];
    if (r23 != 0x0) {
            r25 = 0x0;
            r24 = r23;
    }
    else {
            r24 = [[NSArray alloc] init];
            r25 = 0x1;
    }
    r22 = [r24 retain];
    [r23 release];
    if (r25 != 0x0) {
            [r24 release];
    }
    r23 = [[r19 pullLocalEvents] retain];
    r24 = [[r22 arrayByAddingObjectsFromArray:r23] retain];
    [r23 release];
    r20 = [[r19 storage] retain];
    r19 = [[r19 identifier] retain];
    [r20 saveEvents:r24 forKey:r19];
    [r19 release];
    [r20 release];
    [r24 release];
    [r22 release];
    return;
}

-(void *)splitEventsArray:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sortArrayByTimestemps:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([r19 maxEventsPerBatch] != 0x0) {
            if ([r19 maxEventsPerBatch] <= [r20 count]) {
                    r0 = r19;
                    r1 = @selector(maxEventsPerBatch);
            }
            else {
                    r0 = r20;
                    r1 = @selector(count);
            }
    }
    else {
            r0 = r20;
            r1 = @selector(count);
    }
    r21 = @selector(count);
    r23 = objc_msgSend(r0, r1);
    r22 = [[r20 subarrayWithRange:0x0] retain];
    objc_msgSend(r20, r21) - r23;
    r0 = [r20 subarrayWithRange:r23];
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r21) != 0x0) {
            [r19 addEvents:r23];
            [r19 backUpEvents];
    }
    [r23 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)sortArrayByTimestemps:(void *)arg2 {
    r0 = [arg2 sortedArrayUsingComparator:0x100e8c780];
    return r0;
}

-(void *)generateEventBatchData {
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
    r21 = self;
    r25 = [[SSEDeviceStatus alloc] init];
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 mediationType];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 release];
    if (r22 != 0x0) {
            [r21 addObject:r22 forKey:@"mt" inDic:r20];
    }
    var_138 = r22;
    r26 = [[r25 advertiserId] retain];
    r27 = [[r25 vendorId] retain];
    r0 = [r25 customUUID];
    r29 = r29;
    r28 = [r0 retain];
    r0 = [r25 isAdvertisingTrackingEnabled];
    var_148 = r27;
    var_140 = r26;
    var_150 = r28;
    if ((r0 & 0x1) != 0x0) goto loc_1006eec14;

loc_1006eeb78:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 compare:@"10.0" options:0x40];
    [r0 release];
    [r19 release];
    if (r24 == -0x1) goto loc_1006eec14;

loc_1006eebe4:
    if (r27 == 0x0) goto loc_1006ef808;

loc_1006eebe8:
    [r21 addObject:r27 forKey:@"advertisingId" inDic:r20];
    r0 = @"IDFV";
    goto loc_1006eec3c;

loc_1006eec3c:
    var_130 = r0;
    [r0 retain];
    goto loc_1006eec44;

loc_1006eec44:
    r24 = @selector(getConfigurations);
    r0 = objc_msgSend(@class(ISConfigurations), r24);
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 categorizeType];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(length);
    var_170 = r1;
    r28 = objc_msgSend(r0, r1);
    [r0 release];
    [r23 release];
    if (r28 != 0x0) {
            r0 = objc_msgSend(@class(ISConfigurations), r24);
            r0 = [r0 retain];
            r0 = [r0 categorizeType];
            r29 = r29;
            [r0 retain];
            [r21 addObject:r2 forKey:r3 inDic:r4];
            [r19 release];
            [r23 release];
    }
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"userIdType"];
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    var_160 = r24;
    [r21 addObject:r2 forKey:r3 inDic:r4];
    objc_msgSend(r21, r28);
    if ([r25 isAdvertisingTrackingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = @"true";
            }
            else {
                    r19 = @"false";
            }
    }
    var_168 = [r19 retain];
    [r21 addObject:r2 forKey:r3 inDic:r4];
    [[r25 language] retain];
    objc_msgSend(r21, r28);
    [r19 release];
    [[r25 systemVersion] retain];
    objc_msgSend(r21, r28);
    [r19 release];
    r0 = [r21 sessionId];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 sessionId];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r2 forKey:r3 inDic:r4];
    }
    else {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 UUIDString];
            r29 = r29;
            [r0 retain];
            [r21 addObject:r2 forKey:r3 inDic:r4];
            [r22 release];
    }
    [r19 release];
    var_128 = r25;
    r24 = @selector(getConfigurations);
    r0 = objc_msgSend(@class(ISConfigurations), r24);
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 userId];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1006ef02c;

loc_1006eef70:
    r19 = @selector(userId);
    r0 = objc_msgSend(@class(ISConfigurations), r24);
    r0 = [r0 retain];
    r25 = r0;
    r0 = objc_msgSend(r0, r19);
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, var_170);
    [r0 release];
    r24 = @selector(getConfigurations);
    [r25 release];
    [r22 release];
    [r27 release];
    if (r26 == 0x0) goto loc_1006ef03c;

loc_1006eefd4:
    r19 = @selector(userId);
    r0 = objc_msgSend(@class(ISConfigurations), r24);
    r0 = [r0 retain];
    r0 = objc_msgSend(r0, r19);
    r29 = r29;
    [r0 retain];
    [r21 addObject:r2 forKey:r3 inDic:r4];
    [r19 release];
    r0 = r22;
    goto loc_1006ef038;

loc_1006ef038:
    [r0 release];
    goto loc_1006ef03c;

loc_1006ef03c:
    r0 = @class(ISConfigurations);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    [[r0 appKey] retain];
    [r21 addObject:r2 forKey:r3 inDic:r4];
    [r22 release];
    [r19 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    [[r0 bundleIdentifier] retain];
    objc_msgSend(r21, r28);
    [r22 release];
    [r19 release];
    r0 = @class(ISConfigurations);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    [[r0 version] retain];
    objc_msgSend(r21, r28);
    [r22 release];
    [r19 release];
    objc_msgSend(r21, r28);
    objc_msgSend(r21, r28);
    [[ISHelpers platformString] retain];
    objc_msgSend(r21, r28);
    [r19 release];
    r26 = var_128;
    r2 = [[r26 carrier] retain];
    objc_msgSend(r21, r28);
    [r19 release];
    r0 = [r26 batteryLevel];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 intValue] < 0x0) {
            asm { cneg       w2, w0, mi };
    }
    [[NSNumber numberWithInt:r2] retain];
    [r21 addObject:r2 forKey:r3 inDic:r4];
    [r19 release];
    [r22 release];
    objc_msgSend(r21, r28);
    r0 = [NSNumber numberWithInteger:[r26 timezoneOffset]];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r21, r28);
    [r19 release];
    [r26 jailBroken];
    [r21 addObject:r2 forKey:r3 inDic:r4];
    [var_168 release];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r0 = [r0 getReachabilityObject];
    r0 = [r0 retain];
    [[r0 currentReachabilityString] retain];
    objc_msgSend(r21, r28);
    [r24 release];
    [r22 release];
    [r19 release];
    r19 = @class(NSNumber);
    r0 = @class(ISUtils);
    r0 = [r0 timeInMilliSeconds];
    r0 = [r0 retain];
    [[r19 numberWithLongLong:[r0 longLongValue]] retain];
    objc_msgSend(r21, r28);
    [r19 release];
    [r22 release];
    r22 = @selector(getConfigurations);
    r19 = [NSNumber alloc];
    [r19 initWithUnsignedLongLong:[ISUtils freeDiskSpace]];
    objc_msgSend(r21, r28);
    [r19 release];
    r0 = @class(ISConfigurations);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 plugin];
    r29 = r29;
    r26 = [r0 retain];
    [r19 release];
    if (r26 != 0x0) {
            [r21 addObject:r2 forKey:r3 inDic:r4];
    }
    r0 = objc_msgSend(@class(ISConfigurations), r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 pluginVersion];
    r29 = r29;
    r27 = [r0 retain];
    [r19 release];
    if (r27 != 0x0) {
            [r21 addObject:r2 forKey:r3 inDic:r4];
    }
    r0 = objc_msgSend(@class(ISConfigurations), r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 pluginFrameworkVersion];
    r29 = r29;
    r8 = [r0 retain];
    r0 = r19;
    r19 = r8;
    [r0 release];
    if (r19 != 0x0) {
            [r21 addObject:r2 forKey:r3 inDic:r4];
    }
    var_170 = r19;
    var_168 = r27;
    var_158 = r26;
    r0 = [ISUtils getAppVersion];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r21 addObject:r2 forKey:r3 inDic:r4];
    }
    var_178 = r19;
    [r21 addSegmentDataToBatch:r20];
    r0 = @class(ISConfigurations);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 batchGenricParams];
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    var_108 = q0;
    r0 = [r22 retain];
    r26 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r27 = *var_108;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_108 != r27) {
                                    objc_enumerationMutation(r26);
                            }
                            r24 = *(var_110 + r19 * 0x8);
                            r0 = [r20 objectForKey:r24];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    r0 = [r26 objectForKey:r24];
                                    r29 = r29;
                                    [r0 retain];
                                    [r21 addObject:r2 forKey:r3 inDic:r4];
                                    [r25 release];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = objc_msgSend(r26, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r26 release];
    [var_178 release];
    [var_170 release];
    [var_168 release];
    [var_158 release];
    [var_160 release];
    [var_150 release];
    [var_148 release];
    [var_140 release];
    [var_130 release];
    [var_138 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006ef02c:
    [r22 release];
    r0 = r27;
    goto loc_1006ef038;

loc_1006ef808:
    if (r28 == 0x0) goto loc_1006ef838;

loc_1006ef80c:
    [r21 addObject:r28 forKey:@"advertisingId" inDic:r20];
    r0 = @"UUID";
    goto loc_1006eec3c;

loc_1006ef838:
    var_130 = 0x0;
    goto loc_1006eec44;

loc_1006eec14:
    [r21 addObject:r26 forKey:@"advertisingId" inDic:r20];
    r0 = @"IDFA";
    goto loc_1006eec3c;
}

-(unsigned long long)totalEvents {
    r20 = [[self storage] retain];
    r21 = [[self identifier] retain];
    r22 = [[r20 loadEventsForKey:r21] retain];
    [r21 release];
    [r20 release];
    r21 = [r22 count];
    r0 = [self localEvents];
    r0 = [r0 retain];
    r20 = [r0 count] + r21;
    [r0 release];
    [r22 release];
    r0 = r20;
    return r0;
}

-(void)initConnectivityEventsSet {
    return;
}

-(void)log:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"%@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x7];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (r20 != 0x0) {
            r22 = [r20 retain];
            r0 = [r19 localEvents];
            r0 = [r0 retain];
            [r0 addObject:r20];
            [r0 release];
            [r19 log:r22];
            [r22 release];
    }
    return;
}

-(void *)pullLocalEvents {
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
    r19 = self;
    r0 = [self localEvents];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 localEvents] retain];
            r0 = [NSArray arrayWithArray:r22];
            r29 = r29;
            r23 = [r0 retain];
            r26 = 0x0;
            r25 = 0x1;
    }
    else {
            r23 = [[NSArray alloc] init];
            r25 = 0x0;
            r26 = 0x1;
    }
    r24 = [r23 retain];
    [r21 release];
    if (r26 != 0x0) {
            [r23 release];
    }
    if (r25 != 0x0) {
            [r23 release];
            [r22 release];
    }
    r0 = [r19 localEvents];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void)addEvents:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r20 localEvents];
            r0 = [r0 retain];
            [r0 addObjectsFromArray:r19];
            [r0 release];
            var_108 = q0;
            r0 = [r19 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    r25 = *var_108;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_108 != r25) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [r20 log:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isNoConnectivityEvent:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 getReachabilityObject];
    r0 = [r0 retain];
    r24 = [r0 hasConnectivity];
    [r0 release];
    [r22 release];
    r21 = [[self connectivitySensitiveEventsSet] retain];
    r20 = [[arg2 eventId] retain];
    [r19 release];
    r19 = [r21 containsObject:r20];
    [r20 release];
    [r21 release];
    r0 = r19 & (r24 ^ 0x1);
    return r0;
}

-(bool)shouldEventBeLogged:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1006f10c4;

loc_1006f0f3c:
    r0 = [r21 optOut];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006f10c4;

loc_1006f0f60:
    r0 = [r21 optOut];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    [r20 release];
    if (r24 == 0x0) goto loc_1006f10c4;

loc_1006f0f9c:
    r20 = [[r19 eventId] retain];
    r0 = [r21 optOut];
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_1006f10d8;

loc_1006f1004:
    var_128 = r19;
    goto loc_1006f1020;

loc_1006f1020:
    r19 = 0x0;
    goto loc_1006f1030;

loc_1006f1030:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r24 = @selector(class);
    r27 = *(0x0 + r19 * 0x8);
    objc_msgSend(@class(NSNumber), r24);
    if (objc_msgSend(r27, r25) == 0x0 || ([r20 isEqualToNumber:r2] & 0x1) == 0x0) goto loc_1006f1084;

loc_1006f10cc:
    r22 = 0x0;
    goto loc_1006f10d0;

loc_1006f10d0:
    r19 = var_128;
    goto loc_1006f10dc;

loc_1006f10dc:
    [r21 release];
    [r20 release];
    goto loc_1006f10ec;

loc_1006f10ec:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006f1084:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_1006f1030;

loc_1006f1090:
    r23 = objc_msgSend(r21, var_120);
    if (r23 != 0x0) goto loc_1006f1020;

loc_1006f10bc:
    r22 = 0x1;
    goto loc_1006f10d0;

loc_1006f10d8:
    r22 = 0x1;
    goto loc_1006f10dc;

loc_1006f10c4:
    r22 = 0x1;
    goto loc_1006f10ec;
}

-(void *)adjustEventToNoConnectivity:(void *)arg2 {
    r0 = [arg2 eventId];
    r0 = [r0 retain];
    [r0 intValue] + 0x15f90;
    r19 = [[NSNumber numberWithInt:r2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)shouldAddSessionDepth:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 eventId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 intValue] == 0xe) {
            r22 = 0x0;
    }
    else {
            r23 = @selector(intValue);
            r0 = [r19 eventId];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, r23) == 0x28) {
                    r22 = 0x0;
            }
            else {
                    r23 = @selector(intValue);
                    r0 = [r19 eventId];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (objc_msgSend(r0, r23) == 0x29) {
                            r22 = 0x0;
                    }
                    else {
                            r23 = @selector(intValue);
                            r22 = @selector(eventId);
                            r0 = objc_msgSend(r19, r22);
                            r0 = [r0 retain];
                            r25 = r0;
                            if (objc_msgSend(r0, r23) != 0x8c) {
                                    r22 = @selector(eventId);
                                    if (CPU_FLAGS & NE) {
                                            r22 = 0x1;
                                    }
                            }
                            [r25 release];
                    }
                    [r24 release];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)storage {
    r0 = self->_storage;
    return r0;
}

-(void)setStorage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storage, arg2);
    return;
}

-(void)sendEvent:(void *)arg2 toUrl:(void *)arg3 {
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
    var_58 = **___stack_chk_guard;
    r25 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[ISEventSender alloc] init];
    r21 = [[self generateEventBatchData] retain];
    r23 = [NSMutableDictionary alloc];
    r26 = [[arg2 additionalData] retain];
    r23 = [r23 initWithDictionary:r26];
    [r26 release];
    r27 = [[arg2 eventId] retain];
    [self addObject:r27 forKey:@"eventId" inDic:r23];
    [r27 release];
    r24 = [arg2 eventTimestamp];
    [r25 release];
    r24 = [[NSNumber numberWithLongLong:r24] retain];
    [self addObject:r24 forKey:@"timestamp" inDic:r23];
    [r24 release];
    r24 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
    r25 = [[self identifier] retain];
    [self addObject:r24 forKey:r25 inDic:r21];
    [r25 release];
    r0 = [self formatter];
    r0 = [r0 retain];
    r25 = [[r0 parseEventData:r21] retain];
    [r0 release];
    r22 = [[NSDictionary dictionaryWithDictionary:r25] retain];
    [r19 sendEvents:r22 toUrl:r20 onCompletion:0x100e8c7c0];
    [r20 release];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)serverEventsURL {
    r0 = self->_serverEventsURL;
    return r0;
}

-(void)setServerEventsURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_serverEventsURL, arg2);
    return;
}

-(void)setBackupThreshold:(unsigned long long)arg2 {
    self->_backupThreshold = arg2;
    return;
}

-(unsigned long long)backupThreshold {
    r0 = self->_backupThreshold;
    return r0;
}

-(unsigned long long)maxNumberOfEvents {
    r0 = self->_maxNumberOfEvents;
    return r0;
}

-(void)setMaxNumberOfEvents:(unsigned long long)arg2 {
    self->_maxNumberOfEvents = arg2;
    return;
}

-(bool)eventsEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_eventsEnabled;
    return r0;
}

-(void)setEventsEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_eventsEnabled = arg2;
    return;
}

-(void *)formatter {
    r0 = self->_formatter;
    return r0;
}

-(void)setFormatter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_formatter, arg2);
    return;
}

-(void *)serverEventsType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_serverEventsType)), 0x0);
    return r0;
}

-(void *)localEvents {
    r0 = self->_localEvents;
    return r0;
}

-(void)setServerEventsType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLocalEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localEvents, arg2);
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(bool)gotResponse {
    r0 = *(int8_t *)(int64_t *)&self->_gotResponse;
    return r0;
}

-(void)setGotResponse:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_gotResponse = arg2;
    return;
}

-(void)setHasTopPriortyEvent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasTopPriortyEvent = arg2;
    return;
}

-(bool)hasTopPriortyEvent {
    r0 = *(int8_t *)(int64_t *)&self->_hasTopPriortyEvent;
    return r0;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void)setIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sessionId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionId)), 0x0);
    return r0;
}

-(void)setSessionId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTotalEvents:(unsigned long long)arg2 {
    self->_totalEvents = arg2;
    return;
}

-(void *)connectivitySensitiveEventsSet {
    r0 = self->_connectivitySensitiveEventsSet;
    return r0;
}

-(void)setConnectivitySensitiveEventsSet:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connectivitySensitiveEventsSet, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_connectivitySensitiveEventsSet, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionId, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_localEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_serverEventsType, 0x0);
    objc_storeStrong((int64_t *)&self->_formatter, 0x0);
    objc_storeStrong((int64_t *)&self->_serverEventsURL, 0x0);
    objc_storeStrong((int64_t *)&self->_storage, 0x0);
    objc_storeStrong((int64_t *)&self->_optOut, 0x0);
    return;
}

@end