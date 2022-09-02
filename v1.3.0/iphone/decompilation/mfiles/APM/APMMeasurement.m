@implementation APMMeasurement

+(void)initializeSharedInstanceWithAppID:(void *)arg2 isAnalyticsCollectionEnabled:(bool)arg3 isAnalyticsCollectionDeactivated:(bool)arg4 safelistedEvents:(void *)arg5 {
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
    r21 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [arg5 retain];
    pthread_mutex_lock(0x1011a9c08);
    if (*(int8_t *)0x1011d1f48 != 0x1) {
            *(int8_t *)0x1011d1f48 = 0x1;
            if ([r19 length] != 0x0) {
                    [[[APMMeasurement monitor] retain] release];
                    r0 = @class(APMMeasurement);
                    r0 = [r0 alloc];
                    r0 = [r0 initWithAppID:r19 isAnalyticsCollectionEnabled:r22 isAnalyticsCollectionDeactivated:r21 safelistedEvents:r20];
                    r8 = *0x1011d1f38;
                    *0x1011d1f38 = r0;
                    [r8 release];
            }
    }
    pthread_mutex_unlock(0x1011a9c08);
    [r20 release];
    [r19 release];
    return;
}

+(bool)hasSharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    pthread_mutex_lock(0x1011a9c08);
    r9 = *qword_1011d1f38;
    if (r9 != 0x0) {
            r9 = *qword_1011d1f38;
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    pthread_mutex_unlock(0x1011a9c08);
    r0 = r20;
    return r0;
}

+(void *)sharedInstance {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([APMAEU isOSSupported] != 0x0) {
            pthread_mutex_lock(0x1011a9c08);
            if ((*(int8_t *)byte_1011d1f48 & 0x1) == 0x0 && NSClassFromString(@"FIRAnalytics") != 0x0) {
                    sub_1000ac134(*0x100e6cf88, 0x0, [[NSString stringWithFormat:@"I-ACS%06ld"] retain], @"Google Analytics for Firebase has not been created. Please, configure Firebase by calling [FIRApp configure]");
                    [r20 release];
            }
            r19 = [*0x1011d1f38 retain];
            pthread_mutex_unlock(0x1011a9c08);
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)monitor {
    if (*qword_1011d1f50 != -0x1) {
            dispatch_once(0x1011d1f50, 0x100e6d748);
    }
    r0 = *0x1011d1f40;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)remoteConfig {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011d1f38 != 0x0) {
            r0 = [APMMeasurement sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0->_remoteConfig;
            [r0 release];
            if (r22 != 0x0) {
                    r20 = [[APMMeasurement sharedInstance] retain];
                    r19 = [r20->_remoteConfig retain];
                    [r20 release];
            }
            else {
                    r19 = [[APMRemoteConfig defaultInstance] retain];
            }
    }
    else {
            r19 = [[APMRemoteConfig defaultInstance] retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)handleNonFirstOpenEventURL:(void *)arg2 eventTimestampInSeconds:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r20 = self;
    r19 = [arg2 retain];
    r21 = dispatch_queue_get_label(0x0);
    r0 = [r20 scheduler];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 workerQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = dispatch_queue_get_label(r0);
    [r0 release];
    [r22 release];
    if (strcmp(r21, r24) != 0x0) {
            [r20 handleOpenURL:r19 clickTimestampInMs:0x0 eventTimestampInSeconds:r4];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a7b message:@"Do not call handleNonFirstOpenOpenURL on the measurement worker queue"];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)handleOpenURL:(void *)arg2 clickTimestampInMs:(void *)arg3 eventTimestampInSeconds:(double)arg4 {
    r4 = arg4;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 != 0x0) {
            [r20 handleDebugModeWithURL:r19];
            [r20 handleDeepLink:r19 clickTimestampInMs:r21 eventTimestampInSeconds:r4];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)handleDeepLink:(void *)arg2 clickTimestampInMs:(void *)arg3 eventTimestampInSeconds:(double)arg4 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_scheduler;
    r20 = [r21 retain];
    var_40 = r19;
    r19 = [r19 retain];
    [r22 scheduleOnWorkerQueueBlockID:@"APMMeasurement:361" block:&var_70];
    [var_40 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)handleDebugModeWithURL:(void *)arg2 {
    return;
}

+(void)load {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    return;
}

+(void *)deepLinkFromUserActivity:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100155438;

loc_10015539c:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 intValue];
    [r0 release];
    [r20 release];
    if (r22 > 0x8) goto loc_10015547c;

loc_1001553fc:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_1001555b0;

loc_1001555b0:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    goto loc_1001555b8;

loc_1001555b8:
    [r20 release];
    r21 = 0x0;
    goto loc_1001555c4;

loc_1001555c4:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10015547c:
    r0 = NSClassFromString(@"NSUserActivity");
    r20 = r0;
    if ([r0 instancesRespondToSelector:r2] == 0x0 || ([r20 instancesRespondToSelector:r2] & 0x1) == 0x0) goto loc_100155578;

loc_1001554c8:
    r0 = [r19 retain];
    r20 = r0;
    r0 = [r0 activityType];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 isEqual:r2] & 0x1) != 0x0) {
            r0 = [r20 webpageURL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 length];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r25 != 0x0) {
                    r21 = [[r20 webpageURL] retain];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x7 messageCode:0x59de message:@"User Activity does not have Deep Link. User Activity" context:r20];
                    [r0 release];
                    r21 = 0x0;
            }
    }
    else {
            [r22 release];
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x59de message:@"User Activity does not have Deep Link. User Activity" context:r20];
            [r0 release];
            r21 = 0x0;
    }
    [r20 release];
    goto loc_1001555c4;

loc_100155578:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_1001555b0;

loc_100155438:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x7 messageCode:0x59db message:@"User Activity is empty. User Activity" context:r19];
    goto loc_1001555b8;
}

-(bool)isValidCampaignURLParamDictionary:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x78 count:0x4];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1001557c4;

loc_100155734:
    r28 = 0x0;
    goto loc_100155740;

loc_100155740:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(length);
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r24);
    [r0 release];
    if (r26 != 0x0) goto loc_1001557d4;

loc_100155790:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100155740;

loc_10015579c:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_100155734;

loc_1001557c4:
    [r20 release];
    r21 = 0x0;
    goto loc_1001557e0;

loc_1001557e0:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001557d4:
    [r20 release];
    r21 = 0x1;
    goto loc_1001557e0;
}

-(void)handleOpenURLOnWorkerQueue:(void *)arg2 clickTimestampInMs:(void *)arg3 eventTimestampInSeconds:(double)arg4 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1a0;
    v8 = v0;
    r24 = self;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"handleOpenURLOnWorkerQueue:clickTimestampInMs:eventTimestampInSeconds:"];
    r20 = [[arg2 query] retain];
    [r21 release];
    r0 = [NSDictionary apm_dictionaryWithHttpArgumentsString:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    if ([r21 count] == 0x0) goto loc_10015520c;

loc_100154e70:
    if (([r24 isValidCampaignURLParamDictionary:r21] & 0x1) == 0x0) goto loc_10015524c;

loc_100154e88:
    var_1E8 = r24;
    var_1D8 = r23;
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xb0 forKeys:r29 - 0xf8 count:0x9];
    r29 = r29;
    var_1C0 = [r0 retain];
    var_1C8 = [[NSMutableDictionary alloc] init];
    var_1E0 = r21;
    r0 = [r21 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r25);
                            }
                            r20 = *(0x0 + r22 * 0x8);
                            r0 = [r25 objectForKeyedSubscript:r20];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            if ([r0 length] != 0x0) {
                                    r0 = [var_1C0 objectForKeyedSubscript:r20];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [var_1C0 objectForKeyedSubscript:r20];
                                            r29 = r29;
                                            [r0 retain];
                                            [var_1C8 setObject:r2 forKeyedSubscript:r3];
                                            [r20 release];
                                    }
                            }
                            [r21 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r27);
                    r27 = objc_msgSend(r25, var_1D0);
            } while (r27 != 0x0);
    }
    [r25 release];
    r23 = var_1D8;
    r21 = var_1C8;
    if (r23 != 0x0) {
            [r21 setObject:r23 forKeyedSubscript:@"click_timestamp"];
    }
    r20 = var_1E8;
    [r20->_persistedConfig firstOpenTimestampMilliseconds];
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d0, d1 };
    if (d0 > d8) {
            asm { fcsel      d8, d0, d8, gt };
    }
    r19 = [[APMEvent alloc] initWithOrigin:@"auto" isPublic:0x0 name:@"_cmp" timestamp:r21 previousTimestamp:r6 parameters:r7];
    [r20 handleEventOnWorkerQueue:r19];
    [APMAnalytics notifyEventListeners:r19];
    [r19 release];
    [r21 release];
    [var_1C0 release];
    r21 = var_1E0;
    goto loc_100155294;

loc_100155294:
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r23 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10015524c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r19 = r0;
    [r0 logWithLevel:0x7 messageCode:0x59d9 message:@"Deep Link does not contain valid required params. URL params" context:r21];
    goto loc_10015528c;

loc_10015528c:
    [r19 release];
    goto loc_100155294;

loc_10015520c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r19 = r0;
    [r0 logWithLevel:0x7 messageCode:0x59d8 message:@"Deep Link Web URL query is empty"];
    goto loc_10015528c;
}

-(bool)shouldEnableMeasurement {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isAnalyticsCollectionDeactivated != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = r19->_persistedConfig;
            r0 = [r0 measurementEnabledState];
            if (r0 != 0x1) {
                    if (r0 != 0x2) {
                            if (*(int8_t *)(int64_t *)&r19->_isAnalyticsCollectionEnabled != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithDatabaseName:(void *)arg2 persistedConfig:(void *)arg3 network:(void *)arg4 scheduler:(void *)arg5 alarm:(void *)arg6 appID:(void *)arg7 isAnalyticsCollectionEnabled:(bool)arg8 isAnalyticsCollectionDeactivated:(bool)arg9 safelistedEvents:(void *)arg10 {
    var_0 = arg8;
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
    r27 = arg6;
    r21 = arg5;
    r22 = arg4;
    r23 = arg3;
    r26 = arg9;
    r25 = [arg2 retain];
    r20 = [r23 retain];
    r28 = [r22 retain];
    var_68 = [r21 retain];
    var_70 = [r27 retain];
    r19 = [arg7 retain];
    var_78 = [r26 retain];
    r0 = [[&var_60 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            var_88 = r28;
            var_80 = r25;
            var_90 = r19;
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appID));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r24->_isAnalyticsCollectionEnabled = var_0;
            *(int8_t *)(int64_t *)&r24->_isAnalyticsCollectionDeactivated = arg_1;
            r0 = [r20 loadTimestampValue];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 loadTimestampValue];
                    r0 = [r0 retain];
                    r19 = r0;
                    [r0 doubleValue];
                    r24->_initTimestamp = d0;
            }
            else {
                    [APMAnalytics loadTimestamp];
                    r24->_initTimestamp = d0;
                    r19 = [[NSNumber numberWithDouble:r2] retain];
                    [r20 setLoadTimestampValue:r19];
            }
            [r19 release];
            r25 = var_80;
            r0 = [r25 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_databaseName));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r24->_persistedConfig, r23);
            objc_storeStrong((int64_t *)&r24->_network, r22);
            objc_storeStrong((int64_t *)&r24->_scheduler, r21);
            objc_storeStrong((int64_t *)&r24->_alarm, r27);
            objc_storeStrong((int64_t *)&r24->_safelistedEvents, r26);
            r19 = [r24 shouldEnableMeasurement];
            [r24 setEnabled:r19];
            *(int8_t *)(int64_t *)&r24->_wasEnabledDuringInitialization = r19;
            [r24 swapBackgroundTaskWithNewTaskID:**_UIBackgroundTaskInvalid];
            r19 = var_90;
            r28 = var_88;
    }
    [var_78 release];
    [r19 release];
    [var_70 release];
    [var_68 release];
    [r28 release];
    [r20 release];
    [r25 release];
    r0 = r24;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_scheduler))) scheduleOnWorkerQueueBlockID:@"APMMeasurement:687" block:&var_30];
    return;
}

-(void *)initWithAppID:(void *)arg2 isAnalyticsCollectionEnabled:(bool)arg3 isAnalyticsCollectionDeactivated:(bool)arg4 safelistedEvents:(void *)arg5 {
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
    r23 = arg4;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg5 retain];
    if ([r19 length] != 0x0) {
            var_80 = r19;
            var_68 = r23;
            var_64 = r22;
            var_58 = r21;
            r26 = [[NSString stringWithFormat:@"Analytics v.%@ started"] retain];
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            var_60 = r26;
            [r0 logWithLevel:0x6 messageCode:0x59df message:r26];
            [r0 release];
            r8 = 0x100e6cf80;
            if (NSClassFromString(@"FIRAnalytics") == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x100e6cf80;
                    }
                    else {
                            r8 = 0x100e6cf70;
                    }
            }
            r22 = [*r8 retain];
            r8 = 0x100e6cf78;
            if (NSClassFromString(@"FIRAnalytics") == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x100e6cf78;
                    }
                    else {
                            r8 = 0x100e6cf68;
                    }
            }
            r19 = [*r8 retain];
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 isDebugModeEnabled];
            [r0 release];
            var_78 = r19;
            var_70 = r22;
            if (r27 != 0x0) {
                    r0 = [NSString stringWithFormat:@"To disable debug logging set the following application argument: %@ (see http://goo.gl/RfcP7r)"];
                    r29 = r29;
            }
            else {
                    r0 = [NSString stringWithFormat:@"To enable debug logging set the following application argument: %@ (see http://goo.gl/RfcP7r)"];
                    r29 = r29;
            }
            r19 = var_80;
            r27 = [r0 retain];
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x6 messageCode:0x59e0 message:r27];
            [r0 release];
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x59e1 message:@"Debug logging enabled"];
            [r0 release];
            r0 = [GULNetwork alloc];
            r0 = [r0 initWithReachabilityHost:*0x100e6cf98];
            r24 = r0;
            [r0 setLoggerDelegate:r20];
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r24 setIsDebugModeEnabled:[r0 isDebugModeEnabled]];
            [r0 release];
            if (r24 == 0x0) {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x59e2 message:@"Failed to initialize network component"];
                    [r0 release];
            }
            r23 = [[APMScheduler alloc] initWithWorkerQueueLabel:*0x100e6cfb0];
            r22 = [APMAlarm alloc];
            r25 = [[r23 workerQueue] retain];
            r22 = [r22 initWithDispatchQueue:r25 name:@"Measurement timer"];
            [r25 release];
            r20->_suspendedUploadTimestamp = 0x0;
            r26 = [[APMPersistedConfig sharedInstance] retain];
            r21 = var_58;
            r20 = [[r20 initWithDatabaseName:*0x100e6cf50 persistedConfig:r26 network:r24 scheduler:r23 alarm:r22 appID:r19 isAnalyticsCollectionEnabled:var_64 isAnalyticsCollectionDeactivated:r21 safelistedEvents:var_80] retain];
            [r26 release];
            [r22 release];
            [r23 release];
            [r24 release];
            [r27 release];
            [var_78 release];
            [var_70 release];
            [var_60 release];
            r22 = r20;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a82 message:@"Cannot start Measurement. App ID is empty."];
            [r0 release];
            r22 = 0x0;
    }
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)setEnabledOnWorkerQueue:(bool)arg2 {
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
    r20 = arg2;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"setIsEnabledOnWorkerQueue"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isAnalyticsCollectionDeactivated));
    r8 = *(int8_t *)(r19 + r8);
    r21 = r20 ^ 0x1;
    if (r8 != 0x0) {
            asm { ccmp       w21, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) goto .l3;

loc_1001561d4:
    if (r8 == 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            r0 = *(r19 + r23);
            r0 = [r0 deferredAnalyticsCollection];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [NSNumber numberWithInt:r21];
                    r29 = r29;
                    r21 = [r0 retain];
                    [*(r19 + r23) setDeferredAnalyticsCollection:r21];
                    [r21 release];
            }
    }
    *(int8_t *)(int64_t *)&r19->_enabled = r20;
    if (r20 == 0x0) goto loc_1001562d4;

loc_100156254:
    if (([r19 startMeasurementOnWorkerQueue] & 0x1) == 0x0) goto loc_100156348;

loc_100156268:
    [r19->_sessionReporter setReportingEnabled:0x1];
    r19 = [[APMMeasurement monitor] retain];
    goto loc_100156328;

loc_100156328:
    [r19 logWithLevel:r2 messageCode:r3 message:r4];
    [r19 release];
    return;

.l3:
    return;

loc_100156348:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x59e3 message:@"Failed to start Analytics. Analytics is disabled"];
    [r0 release];
    [r19 setEnabled:r2];
    return;

loc_1001562d4:
    [r19->_sessionReporter setReportingEnabled:0x0];
    r19 = [[APMMeasurement monitor] retain];
    goto loc_100156328;
}

-(bool)startMeasurementOnWorkerQueue {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"startMeasurementOnWorkerQueue"];
    if ([APMAEU isOSSupported] != 0x0) {
            var_28 = &var_30;
            r20 = r19 + sign_extend_64(*(int32_t *)ivar_offset(_initializeComponentsOnce));
            if (*r20 != -0x1) {
                    dispatch_once(r20, &var_60);
            }
            if (*(int8_t *)(var_28 + 0x18) != 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_needFirstOpenAfterReset));
                    if (*(int8_t *)(r19 + r20) != 0x0) {
                            [r19 reportFirstOpenOnWorkerQueue];
                            *(int8_t *)(r19 + r20) = 0x0;
                    }
                    [r19 updateSchedule];
                    r19 = 0x1;
            }
            else {
                    r19 = 0x0;
                    *r20 = 0x0;
            }
            _Block_object_dispose(&var_30, 0x8);
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)reachabilityDidChange {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_scheduler))) scheduleOnWorkerQueueBlockID:@"APMMeasurement:972" block:&var_28];
    return;
}

-(void)reportStoredCampaignEventOnWorkerQueue:(void *)arg2 {
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
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"reportStoredCampaignEventWithClickTimestampInMillisOnWorkerQueue:"];
    r0 = [APMUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 objectForKey:@"/google/measurement/deep_link"] retain];
    r0 = [r21 objectForKey:@"/google/measurement/deep_link_timestamp_seconds"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [NSString class];
    if ([r22 isKindOfClass:r2] != 0x0 && [r22 length] != 0x0) {
            [r21 removeObjectForKey:@"/google/measurement/deep_link"];
            [r21 removeObjectForKey:@"/google/measurement/deep_link_timestamp_seconds"];
            r24 = [[NSURL URLWithString:r22] retain];
            [r23 doubleValue];
            [r20 handleOpenURLOnWorkerQueue:r24 clickTimestampInMs:r19 eventTimestampInSeconds:r4];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)shouldWipeDataWithAppID:(void *)arg2 appIDFromGMP:(void *)arg3 appIDFromAdMob:(void *)arg4 persistedAppIDFromGMP:(void *)arg5 persistedAppIDFromAdMob:(void *)arg6 {
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
    r27 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r26 = [r22 length];
    if (r26 == 0x0) {
            if (CPU_FLAGS & E) {
                    r28 = 0x1;
            }
    }
    r25 = [r20 length];
    if (r25 == 0x0) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    if (r26 != 0x0 && (r19 & 0x1) == 0x0) {
            r24 = [r22 isEqual:r2] ^ 0x1;
    }
    else {
            var_5C = r28;
            var_58 = r27;
            if (r26 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r27 = 0x1;
                    }
            }
            r26 = [r23 length];
            if (r26 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r28 = 0x1;
                    }
            }
            r0 = [r21 length];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            r8 = r27 | r28;
            if ((r8 | r9 | r19) == 0x1) {
                    if (r0 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r27 = 0x1;
                            }
                    }
                    r8 = r8 | r27 | r19;
                    if ((r8 & 0x1) == 0x0) {
                            r8 = 0x101137000;
                            if (objc_msgSend(r23, *(r8 + 0x990)) != 0x0) {
                                    if (r25 != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if (r26 == 0x0) {
                                            r8 = r8 | var_5C | r27;
                                            if ((r8 & 0x1) == 0x0 && [var_58 length] != 0x0) {
                                                    r24 = 0x1;
                                                    r27 = var_58;
                                            }
                                            else {
                                                    if (r25 != 0x0) {
                                                            if (CPU_FLAGS & NE) {
                                                                    r8 = 0x1;
                                                            }
                                                    }
                                                    r27 = var_58;
                                                    if (((r8 | r28) & 0x1) == 0x0 && [r27 length] != 0x0) {
                                                            if ([r27 isEqual:r2] != 0x0) {
                                                                    r24 = 0x0;
                                                            }
                                                            else {
                                                                    r24 = 0x1;
                                                            }
                                                    }
                                                    else {
                                                            r24 = 0x0;
                                                    }
                                            }
                                    }
                                    else {
                                            if (r25 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r8 = 0x1;
                                                    }
                                            }
                                            r27 = var_58;
                                            if (((r8 | r28) & 0x1) == 0x0 && [r27 length] != 0x0) {
                                                    if ([r27 isEqual:r2] != 0x0) {
                                                            r24 = 0x0;
                                                    }
                                                    else {
                                                            r24 = 0x1;
                                                    }
                                            }
                                            else {
                                                    r24 = 0x0;
                                            }
                                    }
                            }
                            else {
                                    r24 = 0x1;
                                    r27 = var_58;
                            }
                    }
                    else {
                            if (r25 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            if (r26 == 0x0) {
                                    r8 = r8 | var_5C | r27;
                                    if ((r8 & 0x1) == 0x0 && [var_58 length] != 0x0) {
                                            r24 = 0x1;
                                            r27 = var_58;
                                    }
                                    else {
                                            if (r25 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r8 = 0x1;
                                                    }
                                            }
                                            r27 = var_58;
                                            if (((r8 | r28) & 0x1) == 0x0 && [r27 length] != 0x0) {
                                                    if ([r27 isEqual:r2] != 0x0) {
                                                            r24 = 0x0;
                                                    }
                                                    else {
                                                            r24 = 0x1;
                                                    }
                                            }
                                            else {
                                                    r24 = 0x0;
                                            }
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    r27 = var_58;
                                    if (((r8 | r28) & 0x1) == 0x0 && [r27 length] != 0x0) {
                                            if ([r27 isEqual:r2] != 0x0) {
                                                    r24 = 0x0;
                                            }
                                            else {
                                                    r24 = 0x1;
                                            }
                                    }
                                    else {
                                            r24 = 0x0;
                                    }
                            }
                    }
            }
            else {
                    r24 = 0x1;
                    r27 = var_58;
            }
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r27 release];
    r0 = r24;
    return r0;
}

-(void)reportSessionStartOnWorkerQueueWithTimestamp:(double)arg2 {
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"reportSessionStartOnWorkerQueue"];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sessionReporter));
    if ([*(r19 + r21) isSessionExpired] != 0x0) {
            [*(r19 + r21) updatePropertiesForNewSessionStart];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
            if ([*(r19 + r22) sessionIDEnabled] != 0x0) {
                    r0 = *(r19 + r21);
                    r0 = [r0 sessionIDPropertyWithTimestamp:@"reportSessionStartOnWorkerQueue"];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 setUserAttributeOnWorkerQueue:r20];
                    [r20 release];
            }
            else {
                    [r19->_database performTransaction:&var_58];
            }
            if ([*(r19 + r22) sessionNumberEnabled] != 0x0) {
                    r0 = *(r19 + r21);
                    r0 = [r0 sessionNumberProperty];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 setUserAttributeOnWorkerQueue:r21];
                    [r21 release];
            }
            else {
                    [r19->_database performTransaction:&var_80];
            }
            if ([*(r19 + r22) sessionNumberEnabled] != 0x0) {
                    r0 = [NSNumber numberWithLongLong:[r19->_persistedConfig sessionNumber]];
                    r29 = r29;
                    r20 = [r0 retain];
            }
            else {
                    r20 = 0x0;
            }
            r21 = [sub_10016f580() retain];
            [r19 handleEventOnWorkerQueue:r21];
            [APMAnalytics notifyEventListeners:r21];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)reportAppUpdateOnWorkerQueue {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"reportAppUpdateOnWorkerQueue"];
    r19 = [[r21->_identity appVersion] retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r21 + r22);
    r0 = [r0 appVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
            [*(r21 + r22) setAppVersion:r19];
            if ([r20 length] != 0x0) {
                    r21 = [[APMValue alloc] initWithString:r20];
                    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
                    r22 = [r0 retain];
                    [r21 release];
                    [APMAnalytics logInternalEventWithOrigin:@"auto" name:@"_au" parameters:r22];
                    [r22 release];
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)reportOSUpdateOnWorkerQueue {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"reportOSUpdateOnWorkerQueue"];
    r0 = [APMEnvironmentInfo sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 deviceOSVersion] retain];
    [r0 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r21 + r22);
    r0 = [r0 osVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
            [*(r21 + r22) setOSVersion:r19];
            if ([r20 length] != 0x0) {
                    r21 = [[APMValue alloc] initWithString:r20];
                    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
                    r22 = [r0 retain];
                    [r21 release];
                    [APMAnalytics logInternalEventWithOrigin:@"auto" name:@"_ou" parameters:r22];
                    [r22 release];
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(long long)timestampMillisRoundedUpToNextHour:(long long)arg2 {
    r2 = arg2;
    r8 = 0x4a90be587de6e565;
    asm { smulh      x8, x2, x8 };
    r0 = (r2 + 0x36ee80 - r2) + ((SAR(r8, 0x14)) + r8 / 0xffffffff80000000) * 0x36ee80;
    return r0;
}

-(bool)isAppUpdateWithAnalytics {
    r0 = sub_1001874b4();
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)setMinimumSessionInterval:(double)arg2 {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_scheduler))) scheduleOnWorkerQueueBlockID:@"APMMeasurement:1435" block:&var_30];
    return;
}

-(void *)fileAttributesForPath:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 attributesOfItemAtPath:r19 error:&var_28];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_28 retain];
            [r22 release];
            r0 = [r20 count];
            if (r21 != 0x0 && r0 == 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x5 messageCode:0x59ee message:@"Unable to read attributes of path. Path, error" context:r19 context:r21];
                    [r0 release];
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

-(void)setSessionTimeoutInterval:(double)arg2 {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_scheduler))) scheduleOnWorkerQueueBlockID:@"APMMeasurement:1443" block:&var_30];
    return;
}

-(void)backfillSessionNumber {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if ([r20->_remoteConfig sessionNumberEnabled] != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            if ([*(r20 + r22) sessionNumber] == 0x0) {
                    r0 = r20->_database;
                    r0 = [r0 eventAggregatesWithName:@"_s" error:&var_28];
                    r29 = r29;
                    r19 = [r0 retain];
                    r21 = [var_28 retain];
                    if (r19 == 0x0) {
                            asm { ccmp       x21, #0x0, #0x4, eq };
                    }
                    if (!CPU_FLAGS & NE) {
                            r2 = @"_s";
                            [r19 lifetimeCount];
                            asm { sxtw       x2, w0 };
                            [*(r20 + r22) setSessionNumber:r2];
                            r0 = r21;
                    }
                    else {
                            r20 = [[APMMeasurement monitor] retain];
                            r22 = [sub_100197c2c() retain];
                            [r20 logWithLevel:0x1 messageCode:0x5a17 message:@"Unable to query event aggregates. Name, error" context:r22 context:r21];
                            [r21 release];
                            [r22 release];
                            r0 = r20;
                    }
                    [r0 release];
                    [r19 release];
            }
    }
    return;
}

-(void)uploadDataOrRegisterAlarm {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([r19->_network isNetworkConnected] != 0x0 && [r19 hasDataToUpload] != 0x0) {
            r1 = @selector(uploadData);
    }
    else {
            r1 = @selector(updateSchedule);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)updateSchedule {
    r31 = r31 - 0xc0;
    var_50 = d11;
    stack[-88] = d10;
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
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"updateSchedule"];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_suspendedUploadTimestamp));
    if (*(r19 + r20) == 0x0) goto loc_100158d1c;

loc_100158bdc:
    r2 = @"updateSchedule";
    if (CPU_FLAGS & O) goto loc_100158d1c;

loc_100158be0:
    r2 = @"updateSchedule";
    r0 = sysctl(&var_68, 0x2, &var_60, &var_70, 0x0, 0x0);
    d0 = 0xbff0000000000000;
    if (r0 != -0x1 && var_60 != 0x0) {
            gettimeofday(&var_80, 0x0);
            r8 = var_80 - var_60;
            r9 = var_78 - var_58;
            r10 = r9 + 0xf4240;
            d0 = 0xbff0000000000000;
            asm { scvtf      d0, x8 };
            asm { scvtf      d1, w10 };
            d0 = d1 * *0x100b9b700 + d0;
    }
    d0 = Abs(d0 - *(r19 + r20));
    if (d0 >= *0x100ba2058) goto loc_100158d18;

loc_100158ca0:
    r20 = [[APMMeasurement monitor] retain];
    r21 = [[NSNumber numberWithDouble:@"updateSchedule"] retain];
    [r20 logWithLevel:0x4 messageCode:0x59ef message:@"Upload has been suspended. Will update scheduling later. Seconds" context:r21];
    [r21 release];
    goto loc_100158dd4;

loc_100158dd4:
    [r20 release];
    [r19->_alarm cancel];
    [r19->_network setReachabilityDelegate:0x0];
    goto loc_100158e10;

loc_100158e10:
    [r19 terminateBackgroundTask];
    return;

loc_100158d18:
    *(r19 + r20) = 0x0;
    goto loc_100158d1c;

loc_100158d1c:
    if (([r19 hasDataToUpload] & 0x1) == 0x0) goto loc_100158d94;

loc_100158d30:
    [r19 nextUploadingTime];
    v8 = v0;
    if (Abs(d8) >= *0x100ba2078) goto loc_100158e40;

loc_100158d58:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100158dcc;

loc_100158dcc:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    goto loc_100158dd4;

loc_100158e40:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_network));
    if (([*(r19 + r21) isNetworkConnected] & 0x1) == 0x0) goto loc_100159070;

loc_100158e5c:
    [*(r19 + r21) setReachabilityDelegate:0x0];
    [r19->_persistedConfig lastBackoffTimestamp];
    v9 = v0;
    d0 = Abs(d9);
    if (d0 > *0x100ba2078) {
            r0 = [NSDate alloc];
            v0 = v9;
            r0 = [r0 initWithTimeIntervalSince1970:0x0];
            r20 = r0;
            [r0 timeIntervalSinceNow];
            d9 = -d0;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
            [*(r19 + r24) uploadingBackoffInterval];
            if (d0 > d9) {
                    r2 = 0x0;
                    [NSDate alloc];
                    [*(r19 + r24) uploadingBackoffInterval];
                    r0 = [r21 initWithTimeInterval:r20 sinceDate:r3];
                    r21 = r0;
                    [r0 timeIntervalSince1970];
                    if (d8 < d0) {
                            asm { fcsel      d8, d0, d8, mi };
                    }
                    [r21 release];
            }
            [r20 release];
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_alarm));
    r0 = *(r19 + r24);
    r0 = [r0 scheduledTimestamp];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 timeIntervalSince1970];
    if (d0 != 0x0) {
            r22 = @selector(timeIntervalSince1970);
            r0 = *(r19 + r24);
            r0 = [r0 scheduledTimestamp];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            [r23 release];
            [r21 release];
            if (d9 <= d8) {
                    r21 = [[APMMeasurement monitor] retain];
                    r0 = *(r19 + r24);
                    r0 = [r0 scheduledTimestamp];
                    r0 = [r0 retain];
                    [r0 timeIntervalSinceNow];
                    r20 = [[NSNumber numberWithDouble:r2] retain];
                    [r21 logWithLevel:0x7 messageCode:0x59f3 message:@"Do not schedule an upload task. Task already exists. Will be executed in seconds" context:r20];
                    [r20 release];
                    [r0 release];
                    r0 = r21;
            }
            else {
                    r0 = [NSDate alloc];
                    r0 = [r0 initWithTimeIntervalSince1970:r2];
                    r20 = r0;
                    [r0 timeIntervalSinceNow];
                    if (Abs(d0) < *0x100ba2078) {
                            asm { fcsel      d8, d1, d0, mi };
                    }
                    [*(r19 + r24) runAfterDelay:&var_A8 withBlock:r3];
                    r19 = [[APMMeasurement monitor] retain];
                    r0 = [NSNumber numberWithDouble:&var_A8];
                    r21 = [r0 retain];
                    [r19 logWithLevel:0x7 messageCode:0x59f4 message:@"Upload task scheduled to be executed in approx. (s)" context:r21];
                    [r21 release];
                    [r19 release];
                    r0 = r20;
            }
    }
    else {
            [r21 release];
            r0 = [NSDate alloc];
            r0 = [r0 initWithTimeIntervalSince1970:r2];
            r20 = r0;
            [r0 timeIntervalSinceNow];
            if (Abs(d0) < *0x100ba2078) {
                    asm { fcsel      d8, d1, d0, mi };
            }
            [*(r19 + r24) runAfterDelay:&var_A8 withBlock:r3];
            r19 = [[APMMeasurement monitor] retain];
            r0 = [NSNumber numberWithDouble:&var_A8];
            r21 = [r0 retain];
            [r19 logWithLevel:0x7 messageCode:0x59f4 message:@"Upload task scheduled to be executed in approx. (s)" context:r21];
            [r21 release];
            [r19 release];
            r0 = r20;
    }
    [r0 release];
    return;

loc_100159070:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x59f2 message:@"No network. Upload task will not be scheduled"];
    [r0 release];
    [*(r19 + r21) setReachabilityDelegate:r19];
    [r19->_alarm cancel];
    goto loc_100158e10;

loc_100158d94:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100158dcc;
}

-(void)reportFirstOpenOnWorkerQueue {
    r31 = r31 - 0x140;
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
    r22 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"reportFirstOpenOnWorkerQueue"];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r22 + r25);
    r0 = [r0 containsUserAttributeWithName:r2 error:r3];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r23 = [0x0 retain];
    if (r27 == 0x0) {
            asm { ccmp       x23, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_1001578d8;

loc_10015784c:
    r0 = [r22 isAppUpdateWithAnalytics];
    var_B8 = r0;
    r24 = [[APMValue alloc] initWithInt64:r0 ^ 0x1];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r22 + r21);
    r0 = [r0 firstOpenTimestampMilliseconds];
    var_A0 = r21;
    if (r0 != 0x0) {
            [*(r22 + r21) firstOpenTimestampMilliseconds];
            asm { scvtf      d0, x0 };
            asm { fdiv       d8, d0, d1 };
    }
    r0 = [APMUserAttribute alloc];
    v0 = v8;
    var_98 = [r0 initWithOrigin:@"auto" name:@"_fi" value:r24 lastSetTimestamp:r5];
    [r22 setUserAttributeOnWorkerQueue:r2];
    r0 = *(r22 + r25);
    r0 = objc_msgSend(r0, r19);
    r29 = r29;
    r21 = [r0 retain];
    r28 = [r23 retain];
    [r23 release];
    if (r21 != 0x0 || r28 == 0x0) goto loc_100157a10;

loc_1001579cc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r19 = r0;
    [r0 logWithLevel:0x1 messageCode:0x5a79 message:@"Failed to query first open after install property  after setting it. Error" context:r28];
    goto loc_100157c2c;

loc_100157c2c:
    [r19 release];
    r19 = var_98;
    goto loc_1001583a4;

loc_1001583a4:
    [r21 release];
    [r19 release];
    [r24 release];
    [r27 release];
    r23 = r28;
    goto loc_1001583c8;

loc_1001583c8:
    var_68 = **___stack_chk_guard;
    [r23 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100157a10:
    if (([r21 boolValue] & 0x1) == 0x0) goto loc_100157bf0;

loc_100157a28:
    var_D0 = r28;
    var_C8 = r24;
    var_C0 = r21;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r24 = r0;
    r21 = [[r0 bundleIdentifier] retain];
    r0 = [APMKeychainWrapper keychainValueWithIdentifier:@"_pfo" appID:r21];
    r29 = r29;
    r28 = [r0 retain];
    [r21 release];
    [r24 release];
    var_D8 = @selector(boolValue);
    if ([r27 boolValue] != 0x0) {
            r0 = [r28 longLongValue];
            r23 = r28;
            if (r0 <= 0x0) {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 bundleIdentifier];
                    r29 = r29;
                    r21 = [r0 retain];
                    [APMKeychainWrapper upsertKeychainValue:@"1" withIdentifier:@"_pfo" appID:r21];
                    [r21 release];
                    [r20 release];
            }
            [*(r22 + var_A0) setDeferredAnalyticsCollection:0x0];
            [*(r22 + var_A0) setLoadTimestampValue:0x0];
            r0 = r22->_remoteConfig;
            r0 = [r0 sessionImmediateStartEnabled];
            r28 = var_D0;
            r24 = var_C8;
            if (r0 != 0x0) {
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r0 release];
                    [r22 reportSessionStartOnWorkerQueueWithTimestamp:0x0];
            }
            r19 = var_98;
            r21 = var_C0;
    }
    else {
            var_A8 = @selector(initWithInt64:);
            var_B0 = @selector(alloc);
            r26 = @selector(setUserAttributeOnWorkerQueue:);
            r20 = @selector(initWithOrigin:name:value:lastSetTimestamp:);
            r2 = @"_pfo";
            var_E0 = r28;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_initTimestamp));
            asm { fcvtzs     x2, d0 };
            var_F0 = r2;
            [r22 timestampMillisRoundedUpToNextHour:r2];
            r24 = objc_msgSend(objc_msgSend(@class(APMValue), var_B0), var_A8);
            r0 = objc_msgSend(@class(APMUserAttribute), var_B0);
            var_E8 = r23;
            r20 = objc_msgSend(r0, r20);
            objc_msgSend(r22, r26);
            r0 = *(r22 + r25);
            r0 = objc_msgSend(r0, r19);
            r29 = r29;
            r26 = [r0 retain];
            r28 = [var_D0 retain];
            [var_D0 release];
            [r27 release];
            if (r26 == 0x0 && r28 != 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x59ec message:@"Failed to query first open property after setting it. Error" context:r28];
                    [r0 release];
                    r21 = var_C0;
                    r23 = var_E0;
            }
            else {
                    var_F8 = r28;
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
                    r0 = *(r22 + r25);
                    r0 = [r0 sessionImmediateStartEnabled];
                    r21 = var_C0;
                    if (r0 != 0x0) {
                            [r22 reportSessionStartOnWorkerQueueWithTimestamp:@"_fot"];
                    }
                    var_100 = r26;
                    r0 = objc_msgSend(r26, var_D8);
                    r28 = var_A0;
                    r26 = @selector(alloc);
                    r23 = var_E0;
                    if ((r0 & 0x1) != 0x0) {
                            var_110 = r20;
                            r0 = [APMScreenViewReporter sharedInstance];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 screenParameters];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            r21 = [objc_msgSend(@class(NSMutableDictionary), r26) init];
                            r19 = sign_extend_64(*(int32_t *)ivar_offset(_previousGMPAppID));
                            if ([*(r22 + r19) length] != 0x0) {
                                    r19 = [objc_msgSend(@class(APMValue), r26) initWithString:*(r22 + r19)];
                                    [r21 setObject:r19 forKeyedSubscript:@"_pgmp"];
                                    [r19 release];
                            }
                            var_118 = r25;
                            var_D0 = r21;
                            var_108 = r20;
                            if ([r23 longLongValue] <= 0x0) {
                                    [@"0" retain];
                                    [r23 release];
                                    r23 = @"0";
                            }
                            objc_msgSend(@class(APMValue), r26);
                            [r23 longLongValue];
                            r20 = [r20 initWithInt64:r2];
                            [var_D0 setObject:r20 forKeyedSubscript:@"_pfo"];
                            [r20 release];
                            [objc_msgSend(@class(APMValue), r26) initWithInt64:r2];
                            [var_D0 setObject:r2 forKeyedSubscript:r3];
                            [r20 release];
                            r0 = *(r22 + r28);
                            r0 = [r0 deferredAnalyticsCollection];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = objc_msgSend(r0, var_D8);
                            [r0 release];
                            if (r21 != 0x0) {
                                    [objc_msgSend(*(&@class(MCConfigurationData) + 0xca8), r26) initWithInt64:r2];
                                    [var_D0 setObject:r2 forKeyedSubscript:r3];
                                    [r20 release];
                            }
                            var_E0 = r23;
                            r25 = var_118;
                            if ([*(r22 + r25) efficientEngagementReportingEnabled] != 0x0) {
                                    [objc_msgSend(*(&@class(MCConfigurationData) + 0xca8), r26) initWithInt64:r2];
                                    [var_D0 setObject:r2 forKeyedSubscript:r3];
                                    [r21 release];
                            }
                            r0 = objc_msgSend(@class(APMEvent), r26);
                            r0 = [r0 initWithOrigin:@"auto" isPublic:0x0 name:@"_f" timestamp:var_D0 previousTimestamp:r6 parameters:r7];
                            r23 = r0;
                            r21 = var_108;
                            [r0 addScreenParameters:r21];
                            [r22 handleEventOnWorkerQueue:r23];
                            [*(r22 + r28) setDeferredAnalyticsCollection:0x0];
                            [*(r22 + r28) setLoadTimestampValue:0x0];
                            r27 = r26;
                            [APMAnalytics notifyEventListeners:r23];
                            if (([*(r22 + r25) redundantEngagementRemovalEnabled] & 0x1) == 0x0) {
                                    r0 = objc_msgSend(@class(APMValue), r27);
                                    r26 = @selector(initWithInt64:);
                                    r21 = objc_msgSend(r0, r26);
                                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r21 release];
                                    if ([*(r22 + r25) efficientEngagementReportingEnabled] != 0x0) {
                                            r20 = [r28 mutableCopy];
                                            objc_msgSend(objc_msgSend(@class(APMValue), r27), r26);
                                            [r20 setObject:r2 forKeyedSubscript:r3];
                                            [r21 release];
                                            r19 = [r20 copy];
                                            [r28 release];
                                            [r20 release];
                                            r28 = r19;
                                    }
                                    r0 = objc_msgSend(@class(APMEvent), r27);
                                    r0 = [r0 initWithOrigin:r2 isPublic:r3 name:r4 timestamp:r5 previousTimestamp:r6 parameters:r7];
                                    r21 = var_108;
                                    [r0 addScreenParameters:r2];
                                    [r22 handleEventOnWorkerQueue:r2];
                                    [APMAnalytics notifyEventListeners:r2];
                                    [r19 release];
                                    [r28 release];
                                    r28 = var_A0;
                            }
                            [*(r22 + r28) setFirstOpenTimestampMilliseconds:var_F0];
                            r19 = [[NSNumber numberWithLongLong:var_F0 - 0x1] retain];
                            [r22 reportStoredCampaignEventOnWorkerQueue:r19];
                            [r19 release];
                            [r23 release];
                            [var_D0 release];
                            [r21 release];
                            r21 = var_C0;
                            r23 = var_E0;
                            r20 = var_110;
                    }
                    else {
                            r0 = [APMMeasurement monitor];
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x1 messageCode:0x59ed message:@"Failed to set first open property"];
                            [r0 release];
                    }
                    r26 = var_100;
                    r28 = var_F8;
            }
            [r20 release];
            [r24 release];
            r27 = r26;
            r24 = var_C8;
            r19 = var_98;
    }
    [r23 release];
    goto loc_1001583a4;

loc_100157bf0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r19 = r0;
    [r0 logWithLevel:0x1 messageCode:0x5a7a message:@"Failed to set first open after install property"];
    goto loc_100157c2c;

loc_1001578d8:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x59eb message:@"Failed to query first open property. Error" context:r23];
    [r0 release];
    goto loc_1001583c8;
}

-(bool)isNetworkReadyForRequest {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = *(int8_t *)(int64_t *)&self->_isNetworkRequestPending;
    r0 = self->_network;
    r0 = [r0 hasUploadInProgress];
    if (r19 != 0x0) {
            if ((r0 & 0x1) == 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x5a01 message:@"Analytics is uploading but network is not uploading"];
                    [r0 release];
            }
            r0 = 0x0;
    }
    else {
            r0 = r0 ^ 0x1;
    }
    return r0;
}

-(double)nextUploadingTime {
    r31 = r31 - 0xb0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    [*(r20 + r19) lastSuccessfulUploadTimestamp];
    v9 = v0;
    [*(r20 + r19) lastFailedUploadTimestamp];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r20 + r28);
    r0 = [r0 queryLatestRawEventTime:&var_98];
    r29 = &var_10;
    r19 = [r0 retain];
    r23 = [var_98 retain];
    if (r19 == 0x0) {
            asm { ccmp       x23, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x59f5 message:@"Failed to query latest raw event time. Error" context:r23];
            [r0 release];
    }
    r0 = *(r20 + r28);
    r0 = [r0 queryLatestBundleTime:&var_A0];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [var_A0 retain];
    [r23 release];
    if (r21 == 0x0) {
            asm { ccmp       x22, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x59f6 message:@"Failed to query latest bundle time. Error" context:r22];
            [r0 release];
    }
    [r21 doubleValue];
    v10 = v0;
    [r19 doubleValue];
    if (d10 < d0) {
            asm { fcsel      d13, d0, d10, mi };
    }
    if (Abs(d13) < *0x100ba2078) goto loc_100159764;

loc_10015945c:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isDebugModeEnabled];
    [r0 release];
    if ((r26 & 0x1) != 0x0) {
            r26 = 0x1;
    }
    else {
            r0 = *(r20 + r28);
            r0 = [r0 containsRealtimeBundlesWithError:&var_A8];
            r29 = r29;
            r27 = [r0 retain];
            r25 = [var_A8 retain];
            [r22 release];
            if (r27 == 0x0 && r25 != 0x0) {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x59f7 message:@"Failed to query for real-time bundle indicator. Error" context:r25];
                    [r0 release];
            }
            r22 = [r27 boolValue];
            [r27 release];
            if ((r22 & 0x1) != 0x0) {
                    r26 = 0x1;
                    r22 = r25;
            }
            else {
                    r0 = *(r20 + r28);
                    r0 = [r0 containsRealtimeRawEventsWithError:&var_B0];
                    r29 = r29;
                    r27 = [r0 retain];
                    r22 = [var_B0 retain];
                    [r25 release];
                    if (r27 == 0x0 && r22 != 0x0) {
                            r0 = [APMMeasurement monitor];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x4 messageCode:0x59f8 message:@"Failed to query for real-time raw event indicator. Error" context:r22];
                            [r0 release];
                    }
                    r26 = [r27 boolValue];
                    [r27 release];
            }
    }
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    [*(r20 + r27) uploadingInterval];
    if (r26 != 0x0) {
            [*(r20 + r27) uploadingRealTimeInterval];
    }
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    d0 = Abs(d13 - d12);
    d13 = d12 - d0;
    [*(r20 + r27) uploadingInitialDelayInterval];
    d0 = d13 + d0;
    d1 = Abs(d12 - d9);
    if (d1 < d11) {
            asm { fcsel      d9, d2, d0, mi };
    }
    if (d8 >= d13) goto loc_1001596f4;

loc_1001596a0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r24 = [r0 isDebugModeEnabled];
    [r0 release];
    if (r24 != 0x0) {
            [*(r20 + r27) uploadingDebugModeInterval];
            if (d9 < d13 + d0) {
                    asm { fcsel      d10, d9, d0, mi };
            }
    }
    else {
            v10 = v9;
    }
    goto loc_100159764;

loc_100159764:
    [r21 release];
    [r19 release];
    r0 = [r22 release];
    return r0;

loc_1001596f4:
    if ([*(r20 + r27) uploadingRetryCount] < 0x1) goto loc_100159764;

loc_10015970c:
    r25 = 0x0;
    goto loc_100159720;

loc_100159720:
    [*(r20 + r27) uploadingRetryInterval];
    asm { scvtf      d1, w28 };
    d0 = d0 * d1;
    d9 = d9 + d0;
    if (d9 > d8) goto loc_100159760;

loc_100159744:
    r25 = r25 + 0x1;
    if (r25 < [*(r20 + r27) uploadingRetryCount]) goto loc_100159720;
    goto loc_100159764;

loc_100159760:
    v10 = v9;
    goto loc_100159764;
}

-(void *)filteredBundlesWithCompatibleAppID:(void *)arg2 resettableDeviceID:(void *)arg3 vendorDeviceID:(void *)arg4 bundlesToUpload:(void *)arg5 {
    r31 = r31 - 0xd0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if ([r20 length] != 0x0 && [r21 length] != 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x2 messageCode:0x5a02 message:@"Bundle filter must not specify both resettableDeviceID and vendorDeviceID"];
            [r0 release];
            r24 = [[NSArray arrayWithObjects:r29 - 0x48 count:0x0] retain];
    }
    else {
            r0 = [r20 length];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r25 = 0x1;
                    }
            }
            if (CPU_FLAGS & NE) {
                    if (!CPU_FLAGS & NE) {
                            r0 = r21;
                    }
                    else {
                            r0 = r20;
                    }
            }
            r23 = [r0 retain];
            r24 = [r22 retain];
            var_50 = r24;
            r23 = [r23 retain];
            var_98 = [r19 retain];
            r0 = [r24 retain];
            [r0 enumerateObjectsUsingBlock:&var_C0];
            r24 = [*(&var_78 + 0x28) retain];
            [r0 release];
            [var_98 release];
            [r23 release];
            _Block_object_dispose(&var_78, 0x8);
            [var_50 release];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void)incrementRetryCounter {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_database))) performTransaction:&var_28];
    return;
}

-(void)setUploadInProgressWithBundleIDs:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r0 = [r20 retain];
    r19 = r0;
    if ([r0 count] == 0x0) goto loc_10015b1e4;

loc_10015b18c:
    r21 = (int64_t *)&r21->_uploadingBundleIDs;
    if ([*r21 count] == 0x0) goto loc_10015b230;

loc_10015b1a8:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10015b21c;

loc_10015b21c:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    goto loc_10015b23c;

loc_10015b23c:
    [r19 release];
    return;

loc_10015b230:
    objc_storeStrong(r21, r20);
    goto loc_10015b23c;

loc_10015b1e4:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10015b21c;
}

-(void)logEvent:(void *)arg2 {
    r31 = r31 - 0x60;
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
            r21 = r20->_scheduler;
            var_28 = [r19 retain];
            [r21 scheduleOnWorkerQueueBlockID:@"APMMeasurement:2131" block:&var_50];
            r0 = var_28;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x5a08 message:@"Attempted to log nil event"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)networkUploadCompletionHandlerWithResponse:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [r19 statusCode];
    r0 = [NSDate date];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r0 release];
    if (r22 != sign_extend_64(*(int32_t *)0x100ba1e30)) {
            asm { ccmp       x22, x9, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r24 = [[APMMeasurement monitor] retain];
            r22 = [[NSNumber numberWithInteger:r22] retain];
            r0 = [NSNumber numberWithLongLong:[r19 expectedContentLength]];
            r29 = r29;
            r25 = [r0 retain];
            [r24 logWithLevel:0x7 messageCode:0x5a04 message:@"Successful upload. Got network response. Code, size" context:r22 context:r25];
            [r25 release];
            [r22 release];
            [r24 release];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            [*(r21 + r22) setLastSuccessfulUploadTimestamp:0x7];
            d8 = 0x0;
            [*(r21 + r22) setLastFailedUploadTimestamp:0x7];
            [*(r21 + r22) setLastBackoffTimestamp:0x7];
            [r21 updateSchedule];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_uploadingBundleIDs));
            if (([r21 removeBundlesFromDatabaseWithIDs:*(r21 + r25)] & 0x1) == 0x0) {
                    r23 = [[APMMeasurement monitor] retain];
                    r24 = [[NSNumber numberWithDouble:r2] retain];
                    [r23 logWithLevel:0x1 messageCode:0x5a05 message:@"Unable to delete uploaded bundles. Uploads will be suspended for seconds" context:r24];
                    [r24 release];
                    [r23 release];
                    r0 = sysctl(&var_90, 0x2, &var_88, &var_98, 0x0, 0x0);
                    d8 = 0xbff0000000000000;
                    if (r0 != -0x1 && var_88 != 0x0) {
                            gettimeofday(&var_A8, 0x0);
                            r8 = var_A8 - var_88;
                            r9 = var_A0 - var_80;
                            r10 = r9 + 0xf4240;
                            d0 = *0x100ba2058;
                            asm { scvtf      d0, x8 };
                            asm { scvtf      d1, w10 };
                            d8 = d1 * *0x100b9b700 + d0;
                    }
            }
            r21->_suspendedUploadTimestamp = d8;
            r0 = *(r21 + r25);
            *(r21 + r25) = 0x0;
            [r0 release];
            if ([r21->_network isNetworkConnected] != 0x0 && ([r21 hasDataToUpload] & 0x1) != 0x0) {
                    r1 = @selector(uploadData);
                    r0 = r21;
            }
            else {
                    if ([r21->_remoteConfig isExpired] != 0x0) {
                            r1 = @selector(uploadData);
                            r0 = r21;
                    }
                    else {
                            r0 = r21;
                            r1 = @selector(updateSchedule);
                    }
            }
            objc_msgSend(r0, r1);
    }
    else {
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            [*(r21 + r28) setLastFailedUploadTimestamp:r2];
            r24 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e54] retain];
            r25 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e50] retain];
            r23 = [[NSArray arrayWithObjects:&var_78 count:0x2] retain];
            [r25 release];
            [r24 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInteger:r22];
            r29 = r29;
            r25 = [r0 retain];
            r2 = r25;
            r26 = [r23 containsObject:r2];
            [r25 release];
            if (r26 != 0x0) {
                    [*(r21 + r28) setLastBackoffTimestamp:r2];
            }
            r25 = [[APMMeasurement monitor] retain];
            r22 = [[NSNumber numberWithInteger:r22] retain];
            [r25 logWithLevel:0x7 messageCode:0x5a03 message:@"Network upload failed. Will retry later. Code, error" context:r22 context:r20];
            [r22 release];
            [r25 release];
            [r21 incrementRetryCounter];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_uploadingBundleIDs));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
            [r21 updateSchedule];
            [r23 release];
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)uploadData {
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
    r31 = r31 + 0xffffffffffffff90 - 0x290;
    r23 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"uploadData"];
    if (r23->_suspendedUploadTimestamp > 0x0) goto loc_100159d6c;

loc_100159878:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x59f9 message:@"Starting data upload"];
    [r0 release];
    if (([r23 isNetworkReadyForRequest] & 0x1) == 0x0) goto loc_100159cc4;

loc_1001598d8:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_network));
    if (([*(r23 + r27) isNetworkConnected] & 0x1) == 0x0) goto loc_100159d34;

loc_1001598f4:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    var_230 = r8;
    if (([*(r23 + r8) isExpired] & 0x1) == 0x0) {
            r22 = 0x0;
            do {
                    if ([r23 bundleRawEvents] == 0x0) {
                        break;
                    }
                    r22 = r22 + 0x1;
            } while (r22 < [*(r23 + var_230) maxBundlesCreatedPerIteration]);
    }
    r0 = [r23->_database queryBundlesWithCountLimit:[*(r23 + var_230) uploadMaxBundlesLimit] sizeLimit:[*(r23 + var_230) uploadMaxSizeLimitBytes] error:&var_170];
    r29 = r29;
    r22 = [r0 retain];
    r20 = [var_170 retain];
    if (r22 == 0x0) {
            asm { ccmp       x20, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100159db4;

loc_1001599d0:
    var_268 = r23;
    if ([r22 count] == 0x0) goto loc_100159e04;

loc_1001599e8:
    var_2C8 = r20;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    var_298 = r9;
    [*(var_268 + r9) lastSuccessfulUploadTimestamp];
    v8 = v0;
    d0 = Abs(d8);
    if (d0 > *0x100ba2078) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            d0 = d9 - d8;
            r19 = [[APMMeasurement monitor] retain];
            r0 = [NSNumber numberWithDouble:0x7];
            r29 = r29;
            r20 = [r0 retain];
            [r19 logWithLevel:0x7 messageCode:0x59fe message:@"Uploading events. Elapsed time since last successful upload (s)" context:r20];
            [r20 release];
            [r19 release];
    }
    var_280 = r27;
    r0 = [r22 firstObject];
    r0 = [r0 retain];
    var_2D0 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    var_2D8 = r0;
    r0 = sub_1001a7b3c(r0, 0xe);
    r29 = r29;
    var_288 = [r0 retain];
    var_2C0 = r22;
    r0 = [r22 retain];
    r27 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_270 = r1;
    r0 = objc_msgSend(r0, r1);
    r9 = r0;
    if (r0 == 0x0) goto loc_100159e60;

loc_100159b6c:
    r21 = @selector(firstObject);
    var_278 = 0x0;
    r23 = 0x0;
    r25 = *0x0;
    r26 = r9;
    goto loc_100159b84;

loc_100159b84:
    r28 = 0x0;
    r24 = @selector(length);
    var_240 = r26;
    var_238 = r24;
    goto loc_100159b90;

loc_100159b90:
    if (*0x0 != r25) {
            objc_enumerationMutation(r27);
    }
    r0 = *(0x0 + r28 * 0x8);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r19 = r0;
    r0 = sub_1001a7b3c(r0, 0x13);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            r22 = [r20 retain];
            [r23 release];
            r24 = 0x4;
            r23 = r22;
    }
    else {
            r0 = sub_1001a7b3c(r19, 0x14);
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (objc_msgSend(r0, r24) != 0x0) {
                    r0 = [r22 retain];
                    [var_278 release];
                    r24 = 0x4;
                    var_278 = r0;
                    r23 = r23;
                    r21 = r21;
                    r27 = r27;
                    r25 = r25;
                    r26 = var_240;
            }
            else {
                    r24 = 0x0;
            }
            [r22 release];
    }
    [r20 release];
    [r19 release];
    if (r24 != 0x0) goto loc_100159e68;

loc_100159c8c:
    r28 = r28 + 0x1;
    r24 = var_238;
    if (r28 < r26) goto loc_100159b90;

loc_100159c9c:
    r26 = objc_msgSend(r27, var_270);
    if (r26 != 0x0) goto loc_100159b84;

loc_100159e68:
    [r27 release];
    r22 = var_268;
    var_2E0 = r23;
    r19 = [[r22 filteredBundlesWithCompatibleAppID:var_288 resettableDeviceID:r23 vendorDeviceID:var_278 bundlesToUpload:r27] retain];
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    r8 = 0x100b9b000;
    asm { fcvtzs     x8, d0 };
    var_248 = r8;
    [r20 release];
    r0 = @class(NSMutableArray);
    r0 = [r0 alloc];
    r20 = @selector(init);
    var_238 = objc_msgSend(r0, r20);
    r21 = r22;
    var_240 = objc_msgSend([NSMutableArray alloc], r20);
    r0 = [r19 retain];
    var_250 = r0;
    r28 = objc_msgSend(r0, var_270);
    if (r28 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_250);
                            }
                            r25 = *(0x0 + r26 * 0x8);
                            r24 = [[r25 objectAtIndexedSubscript:0x0] retain];
                            r0 = [r25 objectAtIndexedSubscript:0x1];
                            r29 = r29;
                            r25 = [r0 retain];
                            sub_1001a7978(r24, 0x12, [APMIdentity appMeasurementLibraryVersion]);
                            sub_1001a7978(r24, 0x3, var_248);
                            if ([*(r21 + var_230) checksumEnabled] != 0x0) {
                                    r0 = [r24 protoBuffer];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    sub_1001a7978(r24, 0x26, [r0 apm_64LSBMD5]);
                                    r0 = r21;
                                    r21 = var_268;
                                    [r0 release];
                            }
                            [var_240 addObject:r2];
                            objc_msgSend(var_238, r19);
                            [r25 release];
                            [r24 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r28);
                    r28 = objc_msgSend(var_250, var_270);
            } while (r28 != 0x0);
    }
    [var_250 release];
    r0 = [APMPBMeasurementBatch alloc];
    r0 = [r0 initWithMessageInfo:0x0];
    r22 = r0;
    sub_1001a8480(r0, 0x0, var_240);
    r27 = @selector(monitor);
    r19 = [objc_msgSend(@class(APMMeasurement), r27) retain];
    r20 = [[NSNumber numberWithLongLong:var_248] retain];
    [r19 logWithLevel:0x7 messageCode:0x59ff message:@"Measurement data sent to network. Timestamp (ms), data" context:r20 context:r22];
    [r20 release];
    [r19 release];
    [r21 setUploadInProgressWithBundleIDs:var_238];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [*(r21 + var_298) setLastFailedUploadTimestamp:var_238];
    [r19 release];
    objc_initWeak(&stack[-520], r21);
    r0 = [NSURL URLWithString:*0x100e6cfb8];
    r26 = r21;
    r21 = [r0 retain];
    *(int8_t *)(int64_t *)&r26->_isNetworkRequestPending = 0x1;
    [*(r26 + var_230) networkTimeout];
    [*(r26 + var_280) setTimeoutInterval:*0x100e6cfb8];
    [[r22 protoBuffer] retain];
    [[r26->_scheduler workerQueue] retain];
    [*(r26 + var_230) isNetworkBackgroundSessionEnabled];
    r19 = &var_228 + 0x28;
    objc_copyWeak(r19, &stack[-520]);
    r0 = [r20 postURL:r21 payload:r23 queue:r24 usingBackgroundSession:r25 completionHandler:&var_228];
    r25 = @selector(logWithLevel:messageCode:message:);
    r29 = r29;
    r20 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r20 length] == 0x0) {
            r0 = objc_msgSend(@class(APMMeasurement), r27);
            r0 = [r0 retain];
            objc_msgSend(r0, r25);
            [r23 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_uploadingBundleIDs));
            r0 = *(var_268 + r8);
            *(var_268 + r8) = 0x0;
            [r0 release];
    }
    [r20 release];
    objc_destroyWeak(r19);
    [r21 release];
    objc_destroyWeak(&stack[-520]);
    [r22 release];
    [var_240 release];
    [var_238 release];
    [var_250 release];
    [var_278 release];
    [var_2E0 release];
    [var_288 release];
    [var_2D8 release];
    [var_2D0 release];
    r20 = var_2C8;
    r22 = var_2C0;
    goto loc_10015a438;

loc_10015a438:
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100159e60:
    var_278 = 0x0;
    r23 = 0x0;
    goto loc_100159e68;

loc_100159e04:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x59fd message:@"No data to upload"];
    [r0 release];
    r19 = var_268;
    if ([*(r19 + var_230) isExpired] != 0x0) {
            r1 = @selector(fetchRemoteConfig);
    }
    else {
            r1 = @selector(terminateBackgroundTask);
    }
    r0 = r19;
    goto loc_10015a434;

loc_10015a434:
    objc_msgSend(r0, r1);
    goto loc_10015a438;

loc_100159db4:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x59fc message:@"Failed to query bundles. Error" context:r20];
    [r0 release];
    r1 = @selector(terminateBackgroundTask);
    r0 = r23;
    goto loc_10015a434;

loc_100159d34:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x59fb message:@"Network not connected, ignoring upload request"];
    [r0 release];
    goto loc_100159d6c;

loc_100159d6c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            [r23 updateSchedule];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_100159cc4:
    var_68 = **___stack_chk_guard;
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r19 = r0;
    [r0 logWithLevel:0x7 messageCode:0x59fa message:@"Network operation is pending. Ignoring upload request"];
    if (**___stack_chk_guard == var_68) {
            [r19 release];
    }
    else {
            __stack_chk_fail();
    }
    return;
}

-(void)handleEventOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r20 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"handleEventOnWorkerQueue:"];
    if (*(int8_t *)(int64_t *)&r20->_enabled == 0x0) goto loc_10015b62c;

loc_10015b418:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_safelistedEvents));
    if ([*(r20 + r21) count] == 0x0) goto loc_10015b528;

loc_10015b434:
    r22 = *(r20 + r21);
    r0 = [r19 name];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r22 containsObject:r2];
    [r23 release];
    if (r22 == 0x0) goto loc_10015b66c;

loc_10015b47c:
    r0 = [r19 parameters];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 mutableCopy];
    [r0 release];
    r21 = [[APMValue alloc] initWithInt64:0x1];
    [r22 setObject:r21 forKeyedSubscript:@"ga_safelisted"];
    [r21 release];
    r21 = [r19 copyWithParameters:r22];
    [r19 release];
    [r22 release];
    r19 = r21;
    goto loc_10015b528;

loc_10015b528:
    if ([r20->_remoteConfig sessionBackgroundEnabled] != 0x0 && (sub_10019475c() & 0x1) == 0x0) {
            r0 = [r19 parameters];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:@"extend_session"];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    if ([r21 isInt64] != 0x0 && [r21 int64Value] == 0x1) {
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_sessionReporter));
                            if ([*(r20 + r22) isSessionExpired] != 0x0) {
                                    r0 = [NSDate date];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 timeIntervalSince1970];
                                    [r0 release];
                                    [r20 reportSessionStartOnWorkerQueueWithTimestamp:@"extend_session"];
                            }
                            else {
                                    [*(r20 + r22) extendSession];
                            }
                    }
                    else {
                            r0 = [APMMeasurement monitor];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x3 messageCode:0x5a8b message:@"extend_session is a reserved parameter. To extend or start a session in the background, set an event parameter {@'extend_session': @1}"];
                            [r0 release];
                    }
            }
            [r21 release];
    }
    if ([r20->_sessionReporter isSessionExpired] != 0x0 && (sub_10019475c() & 0x1) == 0x0) {
            [r20->_database performTransaction:&var_110];
    }
    r0 = [APMConditionalUserPropertyController sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 processEventOnWorkerQueue:r19];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (r21 == 0x0) {
            r22 = [[APMMeasurement monitor] retain];
            r23 = [[r19 name] retain];
            r24 = [sub_100197c2c() retain];
            r25 = [[r19 origin] retain];
            [r22 logWithLevel:0x4 messageCode:0x5a0a message:@"Unable to process conditional user property. Event name, origin" context:r24 context:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r20 writeEventOnWorkerQueue:r19];
    var_140 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            r25 = *var_140;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_140 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 writeEventOnWorkerQueue:*(var_148 + r26 * 0x8)];
                            r26 = r26 + 0x1;
                    } while (r26 < r24);
                    r24 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    [r21 release];
    [r20 updateSchedule];
    r0 = r21;
    goto loc_10015b988;

loc_10015b988:
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10015b66c:
    r20 = [[APMMeasurement monitor] retain];
    r21 = [[r19 name] retain];
    r22 = [[r19 origin] retain];
    [r20 logWithLevel:0x3 messageCode:0x5a86 message:@"Event dropped. Reason: not whitelisted. Event name, origin" context:r21 context:r22];
    [r22 release];
    [r21 release];
    goto loc_10015b6f8;

loc_10015b6f8:
    r0 = r20;
    goto loc_10015b988;

loc_10015b62c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x7 messageCode:0x5a09 message:@"Analytics is disabled. Event not logged"];
    goto loc_10015b6f8;
}

-(void)writeEventOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r20 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"writeEventOnWorkerQueue:"];
    r22 = [[APMMeasurement monitor] retain];
    r25 = [[r19 origin] retain];
    r26 = [[r19 name] retain];
    r27 = [sub_100197c2c() retain];
    r28 = [[r19 parameters] retain];
    r24 = [sub_10019809c() retain];
    [r22 logWithLevel:0x7 messageCode:0x5a0b message:@"Logging event: origin, name, params" context:r25 context:r27 context:r24];
    [r24 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r22 release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    r22 = *(r20 + r25);
    r0 = [r19 name];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r22 = [r22 isEventBlacklisted:r24];
    [r24 release];
    if (r22 == 0x0) goto loc_10015be20;

loc_10015bd0c:
    r22 = [[APMMeasurement monitor] retain];
    r23 = [[r19 name] retain];
    r0 = sub_100197c2c();
    r29 = r29;
    r24 = [r0 retain];
    [r22 logWithLevel:0x4 messageCode:0x5a0c message:@"Rejected event. Event name" context:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    if ((sub_100195754() & 0x1) != 0x0 || ([*(r20 + r25) blacklistInternal] & 0x1) != 0x0 || ([*(r20 + r25) blacklistPublic] & 0x1) != 0x0) goto loc_10015c11c;

loc_10015bdc0:
    sub_100194dd8(0xb, [[r19 name] retain], *(int32_t *)0x100ba2010, [[r19 name] retain]);
    [r21 release];
    r0 = r20;
    goto loc_10015c118;

loc_10015c118:
    [r0 release];
    goto loc_10015c11c;

loc_10015c11c:
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10015be20:
    r22 = [[NSArray arrayWithObjects:r29 - 0x80 count:0x3] retain];
    r0 = [r19 name];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r22 containsObject:r2];
    [r24 release];
    if (r25 != 0x0) {
            [r19 setConversion:0x1];
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r24 = *(r20 + r28);
    r26 = [r19 retain];
    var_90 = r26;
    if ([r24 performTransaction:r2] != 0x0) {
            r0 = [r26 name];
            r29 = r29;
            r24 = [r0 retain];
            r23 = sub_100195640();
            [r24 release];
            var_C8 = &var_D0;
            r24 = *(r20 + r28);
            r26 = [r26 retain];
            var_110 = r26;
            if (([r24 performTransaction:r2] & 0x1) != 0x0) {
                    if (*(int8_t *)(var_C8 + 0x18) != 0x0) {
                            r20 = [[APMMeasurement monitor] retain];
                            r21 = [[r26 name] retain];
                            r23 = [sub_100197c2c() retain];
                            r24 = [[r26 parameters] retain];
                            r25 = [sub_10019809c() retain];
                            [r20 logWithLevel:0x7 messageCode:0x5a16 message:@"Event dropped. Event name, event params" context:r23 context:r25];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            [r21 release];
                            r0 = r20;
                    }
                    else {
                            r21 = *(r20 + r28);
                            var_150 = [r26 retain];
                            [r21 performTransaction:r2];
                            r0 = var_150;
                    }
                    [r0 release];
            }
            [var_110 release];
            _Block_object_dispose(&var_F0, 0x8);
            _Block_object_dispose(&var_D0, 0x8);
    }
    [var_90 release];
    r0 = r22;
    goto loc_10015c118;
}

-(void)maybeAddDebugAndRealtimeParameters:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [APMMeasurement monitor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isDebugModeEnabled];
    [r0 release];
    if (r22 != 0x0) {
            [r19 setRealtime:0x1];
            [r19 setDebug:0x1];
            r20 = [[APMMeasurement monitor] retain];
            r21 = [[r19 name] retain];
            r22 = [sub_100197c2c() retain];
            r23 = [[r19 parameters] retain];
            r24 = [sub_10019809c() retain];
            [r20 logWithLevel:0x7 messageCode:0x5a21 message:@"Debug mode is enabled. Marking event as debug and real-time. Event name, parameters" context:r22 context:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)removeUserAttribute:(void *)arg2 {
    r31 = r31 - 0x60;
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
            r21 = r20->_scheduler;
            var_28 = [r19 retain];
            [r21 scheduleOnWorkerQueueBlockID:@"APMMeasurement:2683" block:&var_50];
            r0 = var_28;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x5a22 message:@"Attempted to remove nil user property"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)setUserAttribute:(void *)arg2 {
    r31 = r31 - 0x60;
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
            r21 = r20->_scheduler;
            var_28 = [r19 retain];
            [r21 scheduleOnWorkerQueueBlockID:@"APMMeasurement:2727" block:&var_50];
            r0 = var_28;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x5a27 message:@"Attempted to set nil user property"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)removeUserAttributeOnWorkerQueue:(void *)arg2 {
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
    r23 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"removeUserAttributeOnWorkerQueue:"];
    r24 = [[APMMeasurement monitor] retain];
    r25 = [[r19 name] retain];
    r0 = sub_100197fe0();
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r24 logWithLevel:0x7 messageCode:0x5a23 message:@"Removing user property. Name" context:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    if (*(int8_t *)(int64_t *)&r23->_enabled != 0x0) {
            r23 = r23->_database;
            r25 = [[r19 name] retain];
            r24 = [r23 deleteUserAttributeWithName:r25 error:&var_58];
            r23 = [var_58 retain];
            [r25 release];
            r21 = [[APMMeasurement monitor] retain];
            r22 = [[r19 name] retain];
            r25 = [sub_100197fe0() retain];
            if (r23 != 0x0 && r24 == 0x0) {
                    [r21 logWithLevel:0x1 messageCode:0x5a25 message:@"Unable to remove user property. Name, error" context:r25 context:r23];
            }
            else {
                    [r21 logWithLevel:0x7 messageCode:0x5a26 message:@"User property removed. Name" context:r25];
            }
            [r23 release];
            [r25 release];
            [r22 release];
            r0 = r21;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x5a24 message:@"Analytics is disabled. User property not removed"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)setUserAttributeOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"setUserAttributeOnWorkerQueue:"];
    if (*(int8_t *)(int64_t *)&r20->_enabled != 0x0) {
            r21 = r20->_database;
            var_28 = [r19 retain];
            [r21 performTransaction:&var_50];
            r0 = var_28;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x5a29 message:@"Analytics is disabled. User property not set"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)userAttributeWithName:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
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
    if (r20 != 0x0) {
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            r0 = objc_retainBlock(&var_58);
            [r21->_scheduler scheduleOnWorkerQueueBlockID:@"APMMeasurement:2845" block:r0];
            [r0 release];
            [var_28 release];
            r0 = var_30;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a30 message:@"userAttributeWithName callback is nil"];
            r0 = r0;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(long long)setUserPropertyInDatabaseOnWorkerQueue:(void *)arg2 {
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
    r25 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"setUserPropertyInDatabaseOnWorkerQueue:"];
    r20 = [[APMMeasurement monitor] retain];
    r26 = [[r19 name] retain];
    r27 = [sub_100197fe0() retain];
    r28 = [[r19 value] retain];
    [r20 logWithLevel:0x7 messageCode:0x5a28 message:@"Setting user property. Name, value" context:r27 context:r28];
    [r28 release];
    [r27 release];
    [r26 release];
    [r20 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r20 = *(r25 + r22);
    r27 = [[r19 name] retain];
    r0 = [r20 containsUserAttributeWithName:r27 error:&var_58];
    r29 = &saved_fp;
    r28 = [r0 retain];
    r26 = [var_58 retain];
    [r27 release];
    if (r28 != 0x0 || r26 == 0x0) goto loc_10015e3a8;

loc_10015e320:
    r22 = [[APMMeasurement monitor] retain];
    r23 = [[r19 name] retain];
    r24 = [sub_100197fe0() retain];
    [r22 logWithLevel:0x1 messageCode:0x5a2a message:@"Unable to query existence of user property. Name, error" context:r24 context:r26];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = r26;
    goto loc_10015e5dc;

loc_10015e5dc:
    [r0 release];
    r21 = 0x0;
    goto loc_10015e75c;

loc_10015e75c:
    [r28 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10015e3a8:
    if (([r28 boolValue] & 0x1) != 0x0) goto loc_10015e4f4;

loc_10015e3bc:
    r27 = [*(r25 + r22) retain];
    r0 = [r19 retain];
    r20 = r0;
    r0 = [r0 isPublic];
    var_80 = r27;
    var_78 = r20;
    var_88 = r28;
    if (r0 == 0x0) goto loc_10015e430;

loc_10015e3f0:
    r0 = [r27 publicUserAttributeCount:&var_60];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == 0x0) goto loc_10015e4b4;

loc_10015e414:
    r0 = [r28 intValue];
    r8 = 0x100ba2008;
    goto loc_10015e498;

loc_10015e498:
    if (r0 < *(int32_t *)r8) {
            [r28 release];
            r27 = 0x1;
    }
    else {
            [r28 release];
            r27 = 0x0;
    }
    goto loc_10015e4c0;

loc_10015e4c0:
    r20 = var_78;
    [r20 release];
    [var_80 release];
    r28 = [var_60 retain];
    [r26 release];
    if ((r27 & 0x1) == 0x0) goto loc_10015e63c;

loc_10015e4ec:
    r26 = r28;
    r28 = var_88;
    goto loc_10015e4f4;

loc_10015e4f4:
    r27 = [*(r25 + r22) updateUserAttribute:r19 error:&var_68];
    r25 = [var_68 retain];
    [r26 release];
    r24 = [[APMMeasurement monitor] retain];
    r23 = [[r19 name] retain];
    r26 = [sub_100197fe0() retain];
    r22 = [[r19 value] retain];
    if (r25 == 0x0 || r27 != 0x0) goto loc_10015e5e8;

loc_10015e58c:
    [r24 logWithLevel:0x1 messageCode:0x5a2d message:@"Unable to set user property. Name, value, error" context:r26 context:r22 context:r25];
    [r25 release];
    [r22 release];
    [r26 release];
    [r23 release];
    r0 = r24;
    goto loc_10015e5dc;

loc_10015e5e8:
    [r24 logWithLevel:0x7 messageCode:0x5a2f message:@"User property set. Name, value" context:r26 context:r22];
    [r25 release];
    [r22 release];
    [r26 release];
    [r23 release];
    [r24 release];
    r21 = 0x1;
    goto loc_10015e75c;

loc_10015e63c:
    r24 = [[APMMeasurement monitor] retain];
    r0 = [r20 origin];
    r29 = r29;
    r25 = [r0 retain];
    if (r28 != 0x0) {
            [r24 logWithLevel:0x1 messageCode:0x5a2b message:@"Unable to query user property count. Origin, error" context:r25 context:r28];
            [r25 release];
            [r24 release];
            [r28 release];
    }
    else {
            r21 = [[r20 name] retain];
            r23 = [sub_100197fe0() retain];
            r22 = [[r20 value] retain];
            [r24 logWithLevel:0x4 messageCode:0x5a2c message:@"Unable to set user property. Reached limit on set user properties for origin. Origin, name, value" context:r25 context:r23 context:r22];
            [r22 release];
            [r23 release];
            [r21 release];
            [r25 release];
            [r24 release];
            sub_100194ce4(0x9);
    }
    r21 = 0x0;
    r28 = var_88;
    goto loc_10015e75c;

loc_10015e4b4:
    [r28 release];
    r27 = 0x0;
    goto loc_10015e4c0;

loc_10015e430:
    r0 = [r20 origin];
    r0 = [r0 retain];
    r9 = r27;
    r27 = r0;
    r0 = [r9 userAttributeCountForOrigin:r27 error:&var_60];
    r29 = r29;
    r28 = [r0 retain];
    [r27 release];
    if (r28 == 0x0) goto loc_10015e4b4;

loc_10015e480:
    r0 = [r28 intValue];
    r8 = 0x100ba200c;
    goto loc_10015e498;
}

-(void)userPropertiesIncludingInternal:(bool)arg2 callback:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (r3 != 0x0) {
            r0 = [r3 copy];
            var_30 = r0;
            r20 = [r0 retain];
            r0 = objc_retainBlock(&var_58);
            [r19->_scheduler scheduleOnWorkerQueueBlockID:@"APMMeasurement:2895" block:r0];
            [r0 release];
            [var_30 release];
            [r20 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a32 message:@"Unable to retrieve user properties. Callback is nil"];
            [r0 release];
    }
    return;
}

-(void)maxUserPropertiesForOrigin:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 length] != 0x0) {
            if (r20 != 0x0) {
                    r21 = [r20 copy];
                    r22 = [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
                    var_28 = r21;
                    r21 = [r21 retain];
                    dispatch_async(r22, &var_48);
                    [r22 release];
                    [var_28 release];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 logWithLevel:0x1 messageCode:0x5a36 message:@"MaxUserProperties callback cannot be nil. Origin" context:r19];
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            r21 = r0;
            [r0 logWithLevel:0x1 messageCode:0x5a35 message:@"Origin for querying MaxUserProperties cannot be nil"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)resetAnalyticsData {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"resetAnalyticsData"];
    if (([r19->_remoteConfig isResetAnalyticsDataEnabled] & 0x1) != 0x0) {
            [APMAnalytics loadTimestamp];
            [r19->_scheduler dispatchSyncOnWorkerQueueBlockID:@"APMMeasurement:2963" block:&var_40];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x5 messageCode:0x5a81 message:@"resetAnalyticsData API is disabled"];
            [r0 release];
    }
    return;
}

-(bool)bundleRawEvents {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"bundleRawEvents"];
    [r19->_database performTransaction:&var_60];
    r8 = *(int8_t *)(&var_30 + 0x18);
    if (r8 != 0x0) {
            r19->_suspendedUploadTimestamp = 0x0;
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)wipeoutAnalyticsDataAndResetComponents {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"wipeoutAnalyticsDataAndResetComponents"];
    r0 = @class(APMMeasurement);
    r0 = [r0 monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x3 messageCode:0x5a83 message:@"App ID has been changed. Resetting App Measurement data"];
    [r0 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r19 + r22);
    r0 = [r0 appIDFromGMP];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_previousGMPAppID));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [*(r19 + r22) clearValues];
    r0 = @class(APMMeasurement);
    r0 = [r0 monitor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 clearMonitoringData];
    [r0 release];
    r0 = r19->_database;
    if (r0 != 0x0) {
            [r0 reset];
            [r19->_remoteConfig reset];
            r0 = [APMSessionReporter alloc];
            r0 = [r0 initWithPersistedConfig:*(r19 + r22)];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionReporter));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    else {
            r0 = sub_1001979d0();
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            r0 = sub_100197b84(r0, &var_38);
            r22 = r0;
            r21 = [var_38 retain];
            if (r21 != 0x0 && r22 == 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x59e6 message:@"Failed to delete old database file. Error" context:r21];
                    [r0 release];
            }
            [r19 release];
            [r21 release];
    }
    return;
}

-(void *)createRawEventMetadataWithUserAttributes:(void *)arg2 {
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [APMPBMeasurementBundle alloc];
    r0 = [r0 initWithMessageInfo:0x0];
    r20 = r0;
    sub_1001a7bf8(r0, 0x8, *0x100e6cfc0);
    sub_1001a7850(r20, 0x0, *(int32_t *)0x100ba2050);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_identity));
    r0 = *(r22 + r27);
    r0 = [r0 appID];
    r29 = &saved_fp;
    sub_1001a7bf8(r20, 0xe, [r0 retain]);
    [r23 release];
    if (([*(r22 + r27) isFromAppStore] & 0x1) == 0x0) {
            sub_1001a7bf8(r20, 0xd, *0x100e6cfc8);
    }
    sub_1001a7bf8(r20, 0x16, [[*(r22 + r27) appInstanceID] retain]);
    [r23 release];
    sub_1001a7bf8(r20, 0x10, [[*(r22 + r27) appVersion] retain]);
    [r23 release];
    r0 = *(r22 + r27);
    r0 = [r0 appIDFromGMP];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 length];
    [r0 release];
    r0 = *(r22 + r27);
    if (r26 == 0x0) goto loc_10015fb18;

loc_10015fafc:
    r0 = [r0 appIDFromGMP];
    r29 = r29;
    r23 = [r0 retain];
    r1 = 0x1a;
    goto loc_10015fb68;

loc_10015fb68:
    sub_1001a7bf8(r20, r1, r23);
    [r23 release];
    goto loc_10015fb7c;

loc_10015fb7c:
    sub_1001a7978(r20, 0x11, [APMIdentity appMeasurementLibraryVersion]);
    sub_1001a7bf8(r20, 0x1d, [[*(r22 + r27) firebaseInstanceID] retain]);
    [r23 release];
    r0 = *(r22 + r27);
    r0 = [r0 appVersionMajor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r22 + r27);
            r0 = [r0 appVersionMajor];
            r29 = r29;
            r0 = [r0 retain];
            sub_1001a7850(r20, 0x1e, [r0 intValue]);
            [r23 release];
    }
    r0 = *(r22 + r27);
    r0 = [r0 appVersionMinor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r22 + r27);
            r0 = [r0 appVersionMinor];
            r29 = r29;
            r0 = [r0 retain];
            sub_1001a7850(r20, 0x1f, [r0 intValue]);
            [r23 release];
    }
    r0 = *(r22 + r27);
    r0 = [r0 appVersionRelease];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r22 + r27);
            r0 = [r0 appVersionRelease];
            r29 = r29;
            r0 = [r0 retain];
            sub_1001a7850(r20, 0x20, [r0 intValue]);
            [r23 release];
    }
    r8 = [*(r22 + r27) hasLimitedAdTracking];
    r0 = *(r22 + r27);
    if (r8 == 0x0) goto loc_10015fd80;

loc_10015fd1c:
    r0 = [r0 resettableDeviceID];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 release];
    r0 = *(r22 + r27);
    if (r24 == 0x0) goto loc_10015fd80;

loc_10015fd44:
    sub_1001a772c(r20, 0x15, [r0 limitedAdTracking]);
    r0 = *(r22 + r27);
    r0 = [r0 resettableDeviceID];
    r29 = r29;
    r22 = [r0 retain];
    r1 = 0x13;
    goto loc_10015fdc0;

loc_10015fdc0:
    sub_1001a7bf8(r20, r1, r22);
    [r22 release];
    goto loc_10015fdd4;

loc_10015fdd4:
    r0 = [APMEnvironmentInfo sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    sub_1001a7bf8(r20, 0xa, [[r0 deviceModel] retain]);
    [r23 release];
    sub_1001a7bf8(r20, 0x9, [[r22 deviceOSVersion] retain]);
    [r23 release];
    sub_1001a7850(r20, 0xc, [r22 timeZoneOffsetMinutes]);
    r0 = [r22 userDefaultLanguage];
    r29 = r29;
    sub_1001a7bf8(r20, 0xb, [r0 retain]);
    [r23 release];
    if ([r19 count] != 0x0) {
            var_130 = r22;
            var_128 = r20;
            r21 = [[NSMutableArray alloc] init];
            var_120 = r19;
            r0 = [r19 retain];
            r23 = r0;
            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r25 != 0x0) {
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r27 = @selector(addObject:);
                                    r0 = *(0x0 + r20 * 0x8);
                                    r0 = [r0 protoUserAttribute];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r21, r27);
                                    [r28 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r25 != 0x0);
            }
            [r23 release];
            r20 = var_128;
            sub_1001a8480(r20, 0x2, r21);
            [r21 release];
            r19 = var_120;
            r22 = var_130;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10015fd80:
    r0 = [r0 identifierForVendor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10015fdd4;

loc_10015fda4:
    r23 = @selector(identifierForVendor);
    r0 = *(r22 + r27);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r22 = [r0 retain];
    r1 = 0x14;
    goto loc_10015fdc0;

loc_10015fb18:
    r24 = @selector(length);
    r0 = [r0 appIDFromAdMob];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r24);
    [r0 release];
    if (r24 == 0x0) goto loc_10015fb7c;

loc_10015fb4c:
    r0 = *(r22 + r27);
    r0 = [r0 appIDFromAdMob];
    r29 = r29;
    r23 = [r0 retain];
    r1 = 0x24;
    goto loc_10015fb68;
}

-(bool)removeBundlesFromDatabaseWithIDs:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_database;
    r21 = [r0 retain];
    r19 = [r20 performTransaction:&var_50];
    [r0 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)hasDataToUpload {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r21 + r22);
    r0 = [r0 isQueuedBundleTableEmpty:&var_38];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_38 retain];
    if (r19 == 0x0) {
            asm { ccmp       x20, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100162ff4;

loc_100162f84:
    if ([r19 boolValue] == 0x0) goto loc_100163044;

loc_100162f9c:
    r0 = *(r21 + r22);
    r0 = [r0 isRawEventsTableEmpty:&var_40];
    r29 = r29;
    r22 = [r0 retain];
    r21 = [var_40 retain];
    [r20 release];
    if (r22 == 0x0) {
            asm { ccmp       x21, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & NE) {
            r23 = [r22 boolValue] ^ 0x1;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a4e message:@"Failed to check if raw events table is empty. Error" context:r21];
            [r0 release];
            r23 = 0x0;
    }
    [r22 release];
    goto loc_1001630a4;

loc_1001630a4:
    [r19 release];
    [r21 release];
    r0 = r23;
    return r0;

loc_100163044:
    r23 = 0x1;
    goto loc_100163048;

loc_100163048:
    r21 = r20;
    goto loc_1001630a4;

loc_100162ff4:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x5a4d message:@"Failed to check if queue table is empty. Error" context:r20];
    [r0 release];
    r23 = 0x0;
    goto loc_100163048;
}

-(void)fetchRemoteConfig {
    r31 = r31 - 0xa0;
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
    r19 = [APMIdentity appMeasurementLibraryVersion];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    r21 = *(r20 + r24);
    r22 = [[r20->_identity appInstanceID] retain];
    r0 = [r21 remoteConfigURLWithAppInstanceID:r22 platform:*0x100e6cfc0 SDKVersion:r19];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    if (r19 != 0x0) {
            objc_initWeak(&stack[-112], r20);
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x5a56 message:@"Fetching configuration from the server"];
            [r0 release];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            r0 = *(r20 + r25);
            r0 = [r0 configServerLastModifiedString];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 length];
            [r0 release];
            if (r23 != 0x0) {
                    r22 = [[*(r20 + r25) configServerLastModifiedString] retain];
                    r2 = &var_50;
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r22 release];
            }
            else {
                    r2 = 0x7;
                    r21 = 0x0;
            }
            *(int8_t *)(int64_t *)&r20->_isNetworkRequestPending = 0x1;
            [*(r20 + r24) networkTimeout];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_network));
            [*(r20 + r22) setTimeoutInterval:r2];
            [[r20->_scheduler workerQueue] retain];
            [*(r20 + r24) isNetworkBackgroundSessionEnabled];
            objc_copyWeak(&var_90 + 0x28, &stack[-112]);
            r0 = [r22 getURL:r19 headers:r21 queue:r23 usingBackgroundSession:r25 completionHandler:&var_90];
            [[r0 retain] release];
            [r23 release];
            objc_destroyWeak(&var_90 + 0x28);
            [r21 release];
            objc_destroyWeak(&stack[-112]);
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x5a55 message:@"Unable to get configuration. Invalid server URL."];
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(double)firstOpenTimestamp {
    r31 = r31 - 0x170;
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
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r20 + r21);
    r0 = [r0 userAttributesIncludingInternal:0x1 error:&var_F0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r22 = [var_F0 retain];
    if (r19 == 0x0) {
            asm { ccmp       x22, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100163378;

loc_100163308:
    if ([r19 count] == 0x0) goto loc_1001633bc;

loc_10016331c:
    r0 = *(r20 + r21);
    r0 = [r0 userAttributeWithName:@"_fot" error:&var_F8];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [var_F8 retain];
    [r22 release];
    if (r20 == 0x0) goto loc_100163408;

loc_100163360:
    [r20 lastSetTimestamp];
    v8 = v0;
    goto loc_100163548;

loc_100163548:
    [r20 release];
    r22 = r21;
    goto loc_100163554;

loc_100163554:
    var_68 = **___stack_chk_guard;
    [r19 release];
    r0 = [r22 release];
    if (**___stack_chk_guard != var_68) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100163408:
    var_150 = r21;
    stack[-344] = r20;
    var_128 = q0;
    r0 = [r19 retain];
    var_140 = r0;
    r24 = [r0 countByEnumeratingWithState:&var_138 objects:&stack[-248] count:0x10];
    if (r24 == 0x0) goto loc_10016353c;

loc_100163454:
    r25 = *var_128;
    goto loc_10016346c;

loc_10016346c:
    r22 = 0x0;
    goto loc_10016347c;

loc_10016347c:
    if (*var_128 != r25) {
            objc_enumerationMutation(var_140);
    }
    r27 = @selector(isEqual:);
    r23 = *(var_130 + r22 * 0x8);
    r0 = [r23 name];
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, r27);
    [r0 release];
    [r23 lastSetTimestamp];
    if ((r20 & 0x1) != 0x0) goto loc_100163528;

loc_1001634e4:
    if (*0x100ba2088 < d9) {
            asm { fcsel      d8, d8, d9, mi };
    }
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_10016347c;

loc_1001634f8:
    r24 = [var_140 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) goto loc_10016346c;

loc_10016353c:
    [var_140 release];
    goto loc_100163544;

loc_100163544:
    r21 = var_150;
    r20 = stack[-344];
    goto loc_100163548;

loc_100163528:
    [var_140 release];
    v8 = 0x0;
    goto loc_100163544;

loc_1001633bc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x1 messageCode:0x5a54 message:@"Unable to extract first open timestamp. Empty user properties"];
    goto loc_1001633f8;

loc_1001633f8:
    [r20 release];
    goto loc_100163554;

loc_100163378:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x1 messageCode:0x5a53 message:@"Unable to query current user properties. Error" context:r22];
    goto loc_1001633f8;
}

-(void)networkRemoteConfigFetchCompletionHandler:(void *)arg2 data:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0x120;
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
    r21 = self;
    r19 = [arg2 retain];
    var_F8 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [r19 statusCode];
    r27 = [[APMMeasurement monitor] retain];
    r0 = [NSNumber numberWithInteger:r23];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r27 logWithLevel:0x7 messageCode:0x5a57 message:@"Fetched configuration. Status code" context:r28];
    [r28 release];
    [r27 release];
    if (r23 != sign_extend_64(*(int32_t *)0x100ba1e34) && r23 != sign_extend_64(*(int32_t *)0x100ba1e30) && r23 != sign_extend_64(*(int32_t *)0x100ba1e44)) {
            if (r23 == sign_extend_64(*(int32_t *)0x100ba1e4c)) {
                    if (CPU_FLAGS & E) {
                            r28 = 0x1;
                    }
            }
    }
    else {
            r28 = 0x1;
    }
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r27 release];
    if ((r28 & 0x1) != 0x0) {
            var_100 = r22;
            r0 = [r19 allHeaderFields];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKeyedSubscript:@"Last-Modified"];
            r29 = r29;
            r28 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            [*(r21 + r22) setConfigServerLastModifiedString:r28];
            [r28 release];
            [r27 release];
            [*(r21 + r22) setLastFailedUploadTimestamp:r28];
            [*(r21 + r22) setLastBackoffTimestamp:r28];
            r27 = sign_extend_64(*(int32_t *)0x100ba1e4c);
            if (r23 != r27 && r23 != sign_extend_64(*(int32_t *)0x100ba1e44)) {
                    r25 = [[APMMeasurement monitor] retain];
                    r23 = [[NSNumber numberWithInteger:r23] retain];
                    r24 = [[NSNumber numberWithLongLong:[r19 expectedContentLength]] retain];
                    [r25 logWithLevel:0x7 messageCode:0x5a5d message:@"Successful fetched configuration from the server. Got network response. Code, size" context:r23 context:r24];
                    [r24 release];
                    [r23 release];
                    [r25 release];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_database));
                    [*(r21 + r20) performTransaction:&var_C0];
                    r22 = var_F8;
                    if ([r22 length] != 0x0) {
                            r24 = *(r21 + r20);
                            var_D0 = [r22 retain];
                            [r24 performTransaction:&var_F0];
                            [var_D0 release];
                    }
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r23 == r27) {
                            [r25 logWithLevel:0x3 messageCode:0x5a5a message:@"Configuration not found. Using default configuration"];
                    }
                    else {
                            r23 = [[NSNumber numberWithInteger:r23] retain];
                            [r25 logWithLevel:0x7 messageCode:0x5a5b message:@"Configuration has not been modified. Using the same configuration. Code" context:r23];
                            [r23 release];
                    }
                    [r25 release];
                    [r21->_database performTransaction:&var_90];
                    r22 = var_F8;
            }
            [r21 uploadDataOrRegisterAlarm];
            r0 = var_100;
    }
    else {
            r27 = [[APMMeasurement monitor] retain];
            r0 = [NSNumber numberWithInteger:r23];
            r29 = r29;
            r28 = [r0 retain];
            [r27 logWithLevel:0x7 messageCode:0x5a58 message:@"Unable to get the configuration from server. Network request failed. Code, Error" context:r28 context:r22];
            [r28 release];
            [r27 release];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
            [*(r21 + r27) setLastFailedUploadTimestamp:0x7];
            if (r23 == sign_extend_64(*(int32_t *)0x100ba1e54) || r23 == sign_extend_64(*(int32_t *)0x100ba1e50)) {
                    [*(r21 + r27) setLastBackoffTimestamp:0x7];
            }
            r25 = [[APMMeasurement monitor] retain];
            r23 = [[NSNumber numberWithInteger:r23] retain];
            [r25 logWithLevel:0x7 messageCode:0x5a59 message:@"Network fetch failed. Will retry later. Code, error" context:r23 context:r22];
            [r23 release];
            [r25 release];
            [r21 updateSchedule];
            r0 = r22;
            r22 = var_F8;
    }
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)filterPurchaseTransactions:(void *)arg2 callback:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 copy];
    r20 = [arg2 copy];
    [r22 release];
    r22 = self->_scheduler;
    var_40 = r19;
    r19 = [r19 retain];
    var_38 = r20;
    r20 = [r20 retain];
    [r22 scheduleOnWorkerQueueBlockID:@"APMMeasurement:4034" block:&var_68];
    [var_38 release];
    [var_40 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)swapBackgroundTaskWithNewTaskID:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    do {
            asm { ldaxr      x19, [x8] };
            asm { stlxr      w9, x2, [x8] };
    } while (r9 != 0x0);
    if (r19 != **_UIBackgroundTaskInvalid) {
            r20 = [[APMMeasurement monitor] retain];
            r21 = [[NSNumber numberWithUnsignedInteger:r19] retain];
            [r20 logWithLevel:0x7 messageCode:0x5a66 message:@"Cancelling background upload task. Task ID " context:r21];
            [r21 release];
            [r20 release];
            r0 = [APMAEU sharedApplication];
            r0 = [r0 retain];
            [r0 endBackgroundTask:r19];
            [r0 release];
    }
    return;
}

-(void)handleAppDidBecomeActiveEvent:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20->_remoteConfig blacklistInternal] != 0x0) {
            objc_initWeak(r29 - 0x28, r20);
            objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
            r0 = objc_retainBlock(&var_58);
            [r20->_scheduler scheduleOnWorkerQueueBlockID:@"APMMeasurement:4140" block:r0];
            [r0 release];
            objc_destroyWeak(&var_58 + 0x28);
            objc_destroyWeak(r29 - 0x28);
    }
    [r19 release];
    return;
}

-(void)handleAppWillEnterForegroundNotification:(void *)arg2 {
    [self terminateBackgroundTask];
    return;
}

-(void)terminateBackgroundTask {
    [self->_persistedConfig synchronizeToDisk];
    [self swapBackgroundTaskWithNewTaskID:**_UIBackgroundTaskInvalid];
    return;
}

-(void)handleAppWillResignActiveEvent:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_50 = d9;
    stack[-88] = d8;
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
    [r20->_persistedConfig synchronizeToDisk];
    if ([r20->_remoteConfig uploadWhenAppInBackgroundEnabled] != 0x0) {
            r0 = @class(APMMeasurement);
            r0 = [r0 monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x5a68 message:@"App will resign active state. Scheduling data upload"];
            [r0 release];
            objc_initWeak(&stack[-104], r20);
            [[APMAEU sharedApplication] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            r23 = [r24 beginBackgroundTaskWithName:@"APMAnalyticsMeasurementBackgroundTask" expirationHandler:&var_80];
            [r24 release];
            [r20 swapBackgroundTaskWithNewTaskID:r23];
            r22 = [[APMMeasurement monitor] retain];
            r23 = [[NSNumber numberWithUnsignedInteger:r23] retain];
            [r22 logWithLevel:0x7 messageCode:0x5a69 message:@"Background task started. Task ID" context:r23];
            [r23 release];
            [r22 release];
            objc_copyWeak(&var_B0 + 0x28, &stack[-104]);
            [APMAnalytics dispatchAsyncOnSerialQueue:&var_B0];
            objc_destroyWeak(&var_B0 + 0x28);
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r19 release];
    return;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 {
    r24 = [arg4 retain];
    r0 = [NSArray arrayWithObjects:&stack[-72] count:0x0];
    r22 = [r0 retain];
    [self GULNetwork_logWithLevel:arg2 messageCode:arg3 message:r24 contexts:r22];
    [r24 release];
    [r22 release];
    return;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 context:(void *)arg5 {
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
    r23 = arg5;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    if (r23 != 0x0) {
            r23 = [r23 retain];
            r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
    }
    else {
            r23 = [r23 retain];
            r0 = [NSArray arrayWithObjects:&stack[-104] count:0x0];
    }
    var_48 = **___stack_chk_guard;
    r24 = [r0 retain];
    [r22 GULNetwork_logWithLevel:r21 messageCode:r20 message:r19 contexts:r24];
    [r23 release];
    [r19 release];
    [r24 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 contexts:(void *)arg5 {
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
    r22 = arg5;
    r20 = arg3;
    r19 = [arg4 retain];
    r8 = arg2 - 0x3;
    if (r8 <= 0x4) {
            r21 = *(0x100ba20a0 + r8 * 0x8);
    }
    else {
            r21 = 0x3;
    }
    r22 = [r22 retain];
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:r21 messageCode:r20 message:r19 contexts:r22];
    [r22 release];
    [r19 release];
    [r0 release];
    return;
}

+(void)handleAppDidFinishLaunching:(void *)arg2 {
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
    r19 = [arg2 retain];
    [[[APMScreenViewReporter sharedInstance] retain] release];
    r0 = [r19 userInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[APMUserDefaults standardUserDefaults] retain];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 intValue];
            [r0 release];
            [r22 release];
            if (r24 > 0x8) {
                    r0 = [r19 userInfo];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"UIApplicationLaunchOptionsUserActivityDictionaryKey"];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    if ([r24 count] != 0x0) {
                            r0 = [r24 objectForKeyedSubscript:@"UIApplicationLaunchOptionsUserActivityKey"];
                            r29 = r29;
                            r25 = [r0 retain];
                            if (r25 != 0x0) {
                                    r0 = [APMMeasurement deepLinkFromUserActivity:r25];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 absoluteString];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r26 release];
                                    if ([r23 length] != 0x0) {
                                            [r20 setObject:r23 forKey:@"/google/measurement/deep_link"];
                                            r0 = [NSDate date];
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            [r0 timeIntervalSince1970];
                                            r0 = [NSNumber numberWithDouble:r23];
                                            r29 = r29;
                                            r27 = [r0 retain];
                                            [r20 setObject:r27 forKey:@"/google/measurement/deep_link_timestamp_seconds"];
                                            [r27 release];
                                            [r28 release];
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
                    [r24 release];
            }
            else {
                    r23 = 0x0;
            }
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
            r0 = [r21 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0 && [r23 length] == 0x0) {
                    r22 = [[r21 absoluteString] retain];
                    [r23 release];
                    [r20 setObject:r22 forKey:@"/google/measurement/deep_link"];
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    r24 = [[NSNumber numberWithDouble:r22] retain];
                    [r20 setObject:r24 forKey:@"/google/measurement/deep_link_timestamp_seconds"];
                    [r24 release];
                    [r0 release];
                    r23 = r22;
            }
            [r21 release];
            [r23 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(bool)canEventBeSampled:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = sub_1001a7b3c(arg2, 0x1);
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    if ([*(r20 + r21) isEventSamplingEnabled] == 0x0 || [*(r20 + r21) eventHasSamplingRate:r19] == 0x0) goto loc_100165db0;

loc_100165d50:
    if ([*(r20 + r21) samplingRateForEvent:r19] > 0x1) goto loc_100165dd0;

loc_100165d6c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x4 messageCode:0x5a72 message:@"Invalid sampling rate provided"];
    [r0 release];
    goto loc_100165db0;

loc_100165db0:
    r20 = 0x0;
    goto loc_100165db4;

loc_100165db4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100165dd0:
    r20 = 0x1;
    goto loc_100165db4;
}

-(bool)isEventBundledAfterRoll:(int)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = arc4random_uniform(arg2);
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(void *)identity {
    r0 = self->_identity;
    return r0;
}

-(void *)scheduler {
    r0 = self->_scheduler;
    return r0;
}

-(void *)database {
    r0 = self->_database;
    return r0;
}

-(bool)isNetworkRequestPending {
    r0 = *(int8_t *)(int64_t *)&self->_isNetworkRequestPending;
    return r0;
}

-(void *)sessionReporter {
    r0 = self->_sessionReporter;
    return r0;
}

-(bool)wasEnabledDuringInitialization {
    r0 = *(int8_t *)(int64_t *)&self->_wasEnabledDuringInitialization;
    return r0;
}

-(bool)isAnalyticsCollectionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isAnalyticsCollectionEnabled;
    return r0;
}

-(void)setIsAnalyticsCollectionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAnalyticsCollectionEnabled = arg2;
    return;
}

-(bool)isAnalyticsCollectionDeactivated {
    r0 = *(int8_t *)(int64_t *)&self->_isAnalyticsCollectionDeactivated;
    return r0;
}

-(void)setIsAnalyticsCollectionDeactivated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAnalyticsCollectionDeactivated = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_safelistedEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    objc_storeStrong((int64_t *)&self->_previousGMPAppID, 0x0);
    objc_storeStrong((int64_t *)&self->_uploadingBundleIDs, 0x0);
    objc_storeStrong((int64_t *)&self->_searchAdReporter, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionReporter, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_remoteConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_persistedConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_network, 0x0);
    objc_storeStrong((int64_t *)&self->_identity, 0x0);
    objc_storeStrong((int64_t *)&self->_database, 0x0);
    objc_storeStrong((int64_t *)&self->_audience, 0x0);
    objc_storeStrong((int64_t *)&self->_alarm, 0x0);
    objc_storeStrong((int64_t *)&self->_databaseName, 0x0);
    return;
}

-(void *)sampleEvents:(void *)arg2 error:(void * *)arg3 {
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
    r31 = r31 + 0xffffffffffffff80 - 0x530;
    r20 = arg3;
    r19 = self;
    var_598 = [arg2 retain];
    var_4F0 = [[NSMutableArray alloc] init];
    r28 = [[NSMutableDictionary alloc] init];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    var_588 = r8;
    r0 = *(r19 + r8);
    r0 = [r0 allEventAggregates:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_4C0 = r0;
    if (r0 == 0x0) goto loc_100167038;

loc_100165ec4:
    var_4F8 = r19;
    var_590 = r20;
    *(int128_t *)(&stack[-1111] + 0xff) = q0;
    *(int128_t *)(&stack[-1127] + 0xff) = q0;
    *(int128_t *)(&stack[-1143] + 0xff) = q0;
    *(int128_t *)(&stack[-1159] + 0xff) = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_450 = r1;
    r19 = objc_msgSend(var_4C0, r1);
    if (r19 != 0x0) {
            r24 = *var_368;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_368 != r24) {
                                    objc_enumerationMutation(var_4C0);
                            }
                            r22 = *(var_370 + r27 * 0x8);
                            r0 = [r22 name];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r22 name];
                                    r29 = r29;
                                    [r0 retain];
                                    [r28 setObject:r2 forKeyedSubscript:r3];
                                    [r23 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r19);
                    r19 = objc_msgSend(var_4C0, var_450);
            } while (r19 != 0x0);
    }
    *(int128_t *)(&stack[-1175] + 0xff) = q0;
    *(int128_t *)(&stack[-1191] + 0xff) = q0;
    *(int128_t *)(&stack[-1207] + 0xff) = q0;
    *(int128_t *)(&stack[-1223] + 0xff) = q0;
    r0 = [var_598 retain];
    var_4C8 = r0;
    r0 = objc_msgSend(r0, var_450);
    var_4A0 = r28;
    var_478 = r0;
    if (r0 == 0x0) goto loc_100166cd4;

loc_100166024:
    var_488 = *var_3A8;
    goto loc_100166048;

loc_100166048:
    r21 = 0x0;
    r26 = @selector(isEqual:);
    var_440 = r26;
    goto loc_100166184;

loc_100166184:
    if (*var_3A8 != var_488) {
            objc_enumerationMutation(var_4C8);
    }
    r19 = *(var_3B0 + r21 * 0x8);
    r0 = sub_1001a7b3c(r19, 0x1);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 length] == 0x0) goto loc_10016649c;

loc_1001661cc:
    var_460 = r21;
    var_458 = r25;
    var_468 = objc_msgSend(r25, r26);
    r22 = [r19 retain];
    r19 = [[NSMutableDictionary alloc] init];
    r0 = [APMPBEventParam class];
    r0 = sub_1001a80d8(r22, 0x0, r0);
    r29 = r29;
    r21 = [r0 retain];
    var_470 = r22;
    [r22 release];
    *(int128_t *)(&stack[-1047] + 0xff) = q0;
    *(int128_t *)(&stack[-1063] + 0xff) = q0;
    *(int128_t *)(&stack[-1079] + 0xff) = q0;
    *(int128_t *)(&stack[-1095] + 0xff) = q0;
    var_448 = r21;
    r28 = objc_msgSend(r21, var_450);
    if (r28 == 0x0) goto loc_1001663d8;

loc_100166294:
    r23 = *var_328;
    goto loc_10016629c;

loc_10016629c:
    r26 = 0x0;
    goto loc_1001662b0;

loc_1001662b0:
    if (*var_328 != r23) {
            objc_enumerationMutation(var_448);
    }
    r25 = *(var_330 + r26 * 0x8);
    r0 = sub_1001a7b3c(r25, 0x0);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r21 = var_440;
    if (objc_msgSend(r0, r21) == 0x0) goto loc_100166354;

loc_1001662fc:
    r0 = [NSNumber numberWithLongLong:sub_1001a78e8(r25, 0x2)];
    r29 = r29;
    [r0 retain];
    [r19 setObject:r2 forKeyedSubscript:r3];
    r0 = r20;
    goto loc_1001663a4;

loc_1001663a4:
    [r0 release];
    goto loc_1001663a8;

loc_1001663a8:
    [r22 release];
    r26 = r26 + 0x1;
    if (r26 < r28) goto loc_1001662b0;

loc_1001663bc:
    r28 = objc_msgSend(var_448, var_450);
    if (r28 != 0x0) goto loc_10016629c;

loc_1001663d8:
    [var_448 release];
    r19 = [[r19 autorelease] retain];
    if (var_468 == 0x0) goto loc_1001664d8;

loc_1001663f8:
    COND = [r19 count] > 0x1;
    r28 = var_4A0;
    r27 = @selector(objectForKeyedSubscript:);
    r25 = var_458;
    r0 = r19;
    if (!COND) {
            r20 = [sub_10019809c() retain];
            r21 = [[APMMeasurement monitor] retain];
            r0 = sub_100197c2c();
            r29 = r29;
            r22 = [r0 retain];
            [r21 logWithLevel:0x1 messageCode:0x5a78 message:@"Missing parameter(s) from an extra param event. Event name, parameters" context:r22 context:r20];
            [r22 release];
            [r21 release];
            [r20 release];
            r26 = var_440;
    }
    else {
            r21 = [objc_msgSend(r0, r27) retain];
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            r24 = [r0 longLongValue];
            [r0 release];
            r0 = objc_msgSend(r28, r27);
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 lastSampledComplexEventID];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            r26 = var_440;
            if (r22 == 0x0 || r24 != [r22 longLongValue]) {
                    r0 = objc_msgSend(r28, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 lastSamplingRate];
                    [r0 release];
                    if (r24 >= 0x2) {
                            sub_1001671c4(var_470, r24);
                    }
                    r0 = objc_msgSend(r28, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 lastExemptFromSampling];
                    [r0 release];
                    if (r24 != 0x0) {
                            sub_10016731c();
                    }
                    [var_4F0 addObject:var_470];
            }
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r21 = var_460;
    goto loc_100166c9c;

loc_100166c9c:
    [r25 release];
    r21 = r21 + 0x1;
    if (r21 < var_478) goto loc_100166184;

loc_100166cb4:
    r0 = objc_msgSend(var_4C8, var_450);
    var_478 = r0;
    if (r0 != 0x0) goto loc_100166048;

loc_100166cd4:
    [var_4C8 release];
    *(int128_t *)(&stack[-1303] + 0xff) = q0;
    *(int128_t *)(&stack[-1319] + 0xff) = q0;
    *(int128_t *)(&stack[-1335] + 0xff) = q0;
    *(int128_t *)(&stack[-1351] + 0xff) = q0;
    r0 = [r28 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, var_450);
    r25 = var_590;
    var_448 = r0;
    if (r0 == 0x0) goto loc_100167020;

loc_100166d2c:
    var_458 = *var_428;
    goto loc_100166d6c;

loc_100166d6c:
    r26 = 0x0;
    goto loc_100166dc4;

loc_100166dc4:
    if (*var_428 != var_458) {
            objc_enumerationMutation(r19);
    }
    r20 = *(var_430 + r26 * 0x8);
    r0 = *(var_4F8 + var_588);
    r0 = [r0 eventAggregatesWithName:r2 error:r3];
    r29 = r29;
    r28 = [r0 retain];
    if (r25 == 0x0 || r28 != 0x0) goto loc_100166e18;

loc_100167090:
    r21 = [[APMMeasurement monitor] retain];
    r20 = [sub_100197c2c() retain];
    [r21 logWithLevel:0x1 messageCode:0x5a6f message:@"Unable to query event aggregates to update database. Name, error" context:r20 context:*r25];
    [r20 release];
    r0 = r21;
    goto loc_100167148;

loc_100167148:
    [r0 release];
    [r19 release];
    r19 = 0x0;
    r28 = var_4A0;
    goto loc_10016715c;

loc_10016715c:
    var_78 = **___stack_chk_guard;
    [var_4C0 release];
    [r28 release];
    [var_4F0 release];
    [var_598 release];
    if (**___stack_chk_guard == var_78) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100166e18:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 lastBundledTimestamp];
    [r21 release];
    if (d8 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 lastBundledTimestamp];
            [r28 setLastBundledTimestamp:r2];
            [r21 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 lastSamplingRate];
    [r28 setLastSamplingRate:r2];
    [r21 release];
    r0 = objc_msgSend(r19, r23);
    r0 = [r0 retain];
    [[r0 lastSampledComplexEventID] retain];
    [r28 setLastSampledComplexEventID:r2];
    [r25 release];
    [r21 release];
    r0 = objc_msgSend(r19, r23);
    r0 = [r0 retain];
    [r0 lastExemptFromSampling];
    [r28 setLastExemptFromSampling:r2];
    [r21 release];
    r0 = objc_msgSend(r19, r23);
    r29 = r29;
    r0 = [r0 retain];
    [r0 lastBundledDay];
    objc_msgSend(r28, r27);
    [r20 release];
    r25 = var_590;
    r0 = *(var_4F8 + var_588);
    r0 = objc_msgSend(r0, r22);
    if (r25 == 0x0 || r0 != 0x0) goto loc_100166fb0;

loc_1001670fc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x5a70 message:@"Failed to update event aggregates after removing removing events due to sampling. Error" context:*r25];
    [r0 release];
    r0 = r28;
    goto loc_100167148;

loc_100166fb0:
    [r28 release];
    r26 = r26 + 0x1;
    if (r26 < var_448) goto loc_100166dc4;

loc_100166fc8:
    r0 = objc_msgSend(r19, var_450);
    r28 = var_4A0;
    var_448 = r0;
    if (r0 != 0x0) goto loc_100166d6c;

loc_100167020:
    [r19 release];
    r19 = [var_4F0 retain];
    goto loc_10016715c;

loc_1001664d8:
    r27 = @selector(objectForKeyedSubscript:);
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    r28 = var_4A0;
    r23 = var_4F8;
    r26 = var_440;
    r25 = var_458;
    if (r22 != 0x0) {
            r0 = objc_msgSend(r28, r27);
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 lastSampledComplexEventID];
            r29 = r29;
            r20 = [r0 retain];
            r21 = objc_msgSend(r22, r26);
            [r20 release];
            [r19 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = objc_msgSend(r28, r27);
                    r0 = [r0 retain];
                    [r0 setLastSampledComplexEventID:0x0];
                    [r0 release];
                    r0 = objc_msgSend(r28, r27);
                    r0 = [r0 retain];
                    [r0 setLastSamplingRate:0x1];
                    [r0 release];
                    r0 = objc_msgSend(r28, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    r19 = r0;
                    [r0 setLastExemptFromSampling:0x0];
                    [r19 release];
            }
    }
    else {
            r0 = objc_msgSend(r28, r27);
            r0 = [r0 retain];
            [r0 setLastSampledComplexEventID:0x0];
            [r0 release];
            r0 = objc_msgSend(r28, r27);
            r0 = [r0 retain];
            [r0 setLastSamplingRate:0x1];
            [r0 release];
            r0 = objc_msgSend(r28, r27);
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            [r0 setLastExemptFromSampling:0x0];
            [r19 release];
    }
    var_508 = @selector(analyticsAccountTimeZoneOffsetMinutes);
    var_510 = @selector(canEventBeSampled:);
    r24 = var_470;
    sub_1001a78e8(r24, 0x2);
    asm { scvtf      d0, x0 };
    asm { fdiv       d8, d0, d10 };
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfig));
    objc_msgSend(*(r23 + r20), var_508) * 0x3c;
    asm { scvtf      d9, w8 };
    d0 = d8 + d9;
    asm { fdiv       d0, d0, d11 };
    asm { fcvtzs     w19, d0 };
    if ((objc_msgSend(r23, var_510) & 0x1) == 0x0) goto loc_1001668f8;

loc_100166654:
    r21 = [*(r23 + r20) samplingRateForEvent:r25];
    if ([r23 isEventBundledAfterRoll:r21] == 0x0) goto loc_100166978;

loc_10016667c:
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    r23 = r21;
    [r0 setLastSamplingRate:r21];
    [r0 release];
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 lastSampledComplexEventID];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 != 0x0) {
            r0 = objc_msgSend(r28, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 setLastSampledComplexEventID:0x0];
            [r0 release];
    }
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    [r0 setLastBundledTimestamp:r25];
    [r0 release];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 setLastBundledDay:r19];
    [r0 release];
    sub_1001671c4(r24, r23);
    [var_4F0 addObject:r24];
    goto loc_100166968;

loc_100166968:
    r21 = var_460;
    goto loc_100166c94;

loc_100166c94:
    r0 = r22;
    goto loc_100166c98;

loc_100166c98:
    [r0 release];
    goto loc_100166c9c;

loc_100166978:
    var_448 = r21;
    r20 = [*(r23 + r20) isTimeZoneOffsetEnabled];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r20 == 0x0) goto loc_100166ab0;

loc_1001669ac:
    r24 = [r0 lastBundledDay];
    [r21 release];
    if (r24 == 0x0) {
            sub_1001a78e8(var_470, 0x3);
            asm { scvtf      d0, x0 };
            asm { fdiv       d0, d0, d10 };
            asm { fdiv       d0, d0, d11 };
            asm { fcvtzs     w24, d0 };
    }
    COND = r24 == r19;
    r24 = var_470;
    if (COND) goto loc_100166ad4;

loc_1001669f0:
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    [r0 setLastBundledTimestamp:r25];
    [r0 release];
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    [r0 setLastBundledDay:r19];
    [r0 release];
    r20 = var_448;
    sub_1001671c4(r24, r20);
    sub_10016731c();
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 setLastExemptFromSampling:0x1];
    [r0 release];
    [var_4F0 addObject:r24];
    r21 = var_460;
    goto loc_100166c5c;

loc_100166c5c:
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 setLastSamplingRate:r20];
    [r0 release];
    goto loc_100166c94;

loc_100166ad4:
    r0 = [APMPBEventParam class];
    r0 = sub_1001a80d8(r24, 0x0, r0);
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    r21 = objc_msgSend(r0, var_450);
    if (r21 == 0x0) goto loc_100166bbc;

loc_100166b38:
    r23 = 0x0;
    goto loc_100166b3c;

loc_100166b3c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r25 = *(0x0 + r23 * 0x8);
    r0 = sub_1001a7b3c(r25, 0x0);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ((objc_msgSend(r0, r26) & 0x1) != 0x0) goto loc_100166bcc;

loc_100166b88:
    [r24 release];
    r23 = r23 + 0x1;
    if (r23 < r21) goto loc_100166b3c;

loc_100166b9c:
    r21 = objc_msgSend(r19, var_450);
    if (r21 != 0x0) goto loc_100166b38;

loc_100166bbc:
    [r19 release];
    r25 = var_458;
    goto loc_100166c4c;

loc_100166c4c:
    [r19 release];
    r21 = var_460;
    r20 = var_448;
    goto loc_100166c5c;

loc_100166bcc:
    sub_1001a78e8(r25, 0x2);
    r0 = [NSNumber numberWithLongLong:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    [r19 release];
    r25 = var_458;
    if (r21 != 0x0) {
            r0 = objc_msgSend(r28, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 setLastSampledComplexEventID:r21];
            [r0 release];
            [r21 release];
    }
    goto loc_100166c4c;

loc_100166ab0:
    [r0 lastBundledTimestamp];
    [r21 release];
    if (Abs(d9 - d8) >= *0x100ba2080) goto loc_1001669f0;
    goto loc_100166ad4;

loc_1001668f8:
    [var_4F0 addObject:r24];
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    [r0 setLastBundledTimestamp:r25];
    [r0 release];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 setLastBundledDay:r19];
    [r0 release];
    goto loc_100166968;

loc_100166354:
    if (objc_msgSend(r22, r21) == 0x0) goto loc_1001663a8;

loc_10016636c:
    r0 = sub_1001a7b3c(r25, 0x1);
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:r3];
    }
    r0 = r25;
    goto loc_1001663a4;

loc_10016649c:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x5a73 message:@"Dropping event at sampling. Event has no name"];
    r0 = r0;
    goto loc_100166c98;

loc_100167038:
    if (*r20 == 0x0) goto loc_100165ec4;

loc_100167040:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x5a75 message:@"Unable to query all event aggregates for cache. error" context:*r20];
    [r0 release];
    r19 = 0x0;
    goto loc_10016715c;
}

@end