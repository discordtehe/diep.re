@implementation FBAdEventManager

-(void *)init {
    r20 = [[FBAdDatabaseManager sharedManager] retain];
    r19 = [self initWithDatabaseManager:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithDatabaseManager:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionId));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionStartTime));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_databaseManager, r21);
            r0 = [FBAdConcurrentArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventsInTransit));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.facebook.ads.serialTimerQueue", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dispatchTimerQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r20 setupDatabaseWithCallback:0x0];
            [r20 resetDispatchTimerWithTimeInterval:0x0];
            [r20 dispatchEventsImmediately];
            r0 = [FBAdBotDetector botDetector];
            r0 = [r0 retain];
            [r0 loadBotDetectionModule];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)urlSession {
    r0 = [FBAdURLSession sharedSession];
    return r0;
}

-(void)dealloc {
    r0 = [self dispatchTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)resetDispatchTimerWithTimeInterval:(double)arg2 {
    objc_initWeak(&saved_fp - 0x28, self);
    [[self dispatchTimerQueue] retain];
    objc_copyWeak(&var_58 + 0x20, &saved_fp - 0x28);
    dispatch_async(r20, &var_58);
    [r20 release];
    objc_destroyWeak(&var_58 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)migrateDatabaseV1ToV2:(struct sqlite3 *)arg2 {
    r0 = [self databaseManager];
    r0 = [r0 retain];
    [r0 insertWithStatementSync:"ALTER TABLE events ADD attempt BIGINT DEFAULT 1" withDatabase:arg2 withStatementCallback:0x0 withCompletionCallback:0x100ea9be8];
    [r0 release];
    return;
}

-(void)setupDatabaseWithCallback:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_retainBlock(&var_68);
    r21 = r0;
    r0 = objc_retainBlock(&var_90);
    r23 = [[self databaseManager] retain];
    var_98 = r20;
    r20 = [r20 retain];
    [r23 initializeDatabaseWithCompletionCallback:&var_C0 withDowngradeCallback:r21 withUpgradeCallback:r0];
    [r23 release];
    [var_98 release];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)tokenIdForToken:(void *)arg2 withCallback:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    r20 = [r21 retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r22 getDatabase:&var_58];
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)logEvent:(void *)arg2 withCallback:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    r20 = [r21 retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r22 getDatabase:&var_58];
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)logEventOfType:(void *)arg2 withPriority:(unsigned long long)arg3 withToken:(void *)arg4 withExtraData:(void *)arg5 {
    r23 = [arg2 retain];
    r20 = [arg4 retain];
    [self logEventOfType:r23 withPriority:arg3 withToken:r20 withExtraData:arg5 withCallback:0x0];
    [r20 release];
    [r23 release];
    return;
}

-(void)logEventOfType:(void *)arg2 withPriority:(unsigned long long)arg3 withToken:(void *)arg4 withExtraData:(void *)arg5 withCallback:(void *)arg6 {
    r24 = [arg2 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [arg6 retain];
    r22 = [r24 retain];
    var_48 = r20;
    r20 = [r20 retain];
    var_40 = r19;
    r19 = [r19 retain];
    [self tokenIdForToken:r21 withCallback:&var_78];
    [r21 release];
    [var_40 release];
    [var_48 release];
    [r24 release];
    [r19 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)logEventForWO:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 type];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_100a4de7c;

loc_100a4de70:
    r21 = @"IMPRESSION";
    goto loc_100a4deb4;

loc_100a4deb4:
    [r21 retain];
    r22 = [[FBAdBotDetector botDetector] retain];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r24 = [[r0 UUIDString] retain];
    [r22 performBotDetectionForEvent:r24 withEventType:r21 withBDSessionIds:0x0];
    [r24 release];
    [r0 release];
    [r22 release];
    [r21 release];
    goto loc_100a4df4c;

loc_100a4df4c:
    [r20 release];
    [r19 release];
    return;

loc_100a4de7c:
    if (([r20 isEqualToString:r2] & 0x1) != 0x0 || [r20 isEqualToString:r2] != 0x0) goto loc_100a4deac;
    goto loc_100a4df4c;

loc_100a4deac:
    r21 = @"CLICK";
    goto loc_100a4deb4;
}

-(void)logAdSelectionForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"ad_number_selected" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"ad_selection" withPriority:0x1 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logImpressionForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"impression" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"impression" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logImpressionMissForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"impression_miss" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logStoreClickForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"store_click" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"store" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logPreviewImpressionForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"preview_impression" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logLinkClickForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"link_click" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"open_link" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logSnapshotForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"native_view" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logVideoEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"video" withPriority:0x0 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logCloseEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"ad_closed" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"close" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logBrowserSessionEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"browser_session" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logAdCompleteEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"ad_complete" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"ad_complete" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logDeviceRotateEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"device_rotate" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logOffTargetClickEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"off_target_click" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"off_target_click" withPriority:0x1 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logUserReturnEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"user_return" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"user_return" withPriority:0x0 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logDebugEventWithSubtype:(void *)arg2 code:(long long)arg3 extraData:(void *)arg4 {
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
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r21 = [r20 shouldLogDebugEventWithSubtype:r22 code:arg3];
    [r22 release];
    if (r21 != 0x0) {
            r21 = [FBAdEvent alloc];
            r22 = [[r20 sessionId] retain];
            r23 = [[r20 sessionStartTime] retain];
            r21 = [r21 initWithType:@"debug" withPriority:0x1 withTokenId:0x0 withSessionId:r22 withSessionStartTime:r23 withExtraData:r19];
            [r23 release];
            [r22 release];
            [r20 logEvent:r21 withCallback:0x0];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)logUXFunnelEventForToken:(void *)arg2 extraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"ux_funnel" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logDSLEventForToken:(void *)arg2 extraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"dynamic_sdk_layer_event" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logAdReportingEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventOfType:@"x_out" withPriority:0x1 withToken:r21 withExtraData:arg3];
    [r21 release];
    return;
}

-(void)logShowAdCalledEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"show_ad_called" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"show_ad_called" withPriority:0x1 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logClickGuardEventForToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[FBAdEventManager sharedManager] retain];
    r20 = [[self funnelLoggingDataForEvent:@"clickguard_click" withToken:r21 withExtraData:r19] retain];
    [r19 release];
    [r22 logEventOfType:@"click_guard" withPriority:0x1 withToken:r21 withExtraData:r20];
    [r21 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)logTwoStepDialogWithToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"two_step_click" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"two_step_dialog" withPriority:0x1 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)logTwoStepCancelWithToken:(void *)arg2 withExtraData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self funnelLoggingDataForEvent:@"two_step_cancel_click" withToken:r21 withExtraData:arg3] retain];
    [self logEventOfType:@"two_step_cancel" withPriority:0x1 withToken:r21 withExtraData:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void *)funnelLoggingDataForAdEvent:(void *)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [FBAdFunnelLogging sharedFunnelLogger];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 funnelEventSubtypeForAdEvent:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    [r24 release];
    if (r22 != 0x0) {
            r0 = [r21 funnelLoggingDataForEvent:r22 withToken:r19 withExtraData:r20];
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)funnelLoggingDataForEvent:(void *)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [FBAdFunnelLogging sharedFunnelLogger];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 uxFunnelDataWithEventType:r19 forToken:r20];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [r21 dictionaryByAddingContentFromDictionary:r23];
                    r0 = [r0 retain];
            }
            else {
                    r0 = [r23 retain];
            }
            r22 = r0;
            [r23 release];
    }
    else {
            r22 = [r21 retain];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 autorelease];
    r0 = r22;
    return r0;
}

-(bool)shouldDispatchNow:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 priority];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)shouldLogDebugEventWithSubtype:(void *)arg2 code:(long long)arg3 {
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
    r19 = @class(FBAdConfigManager);
    r23 = [arg2 retain];
    r0 = [r19 sharedManager];
    r0 = [r0 retain];
    r19 = [[r0 additionalDebugBlackList] retain];
    [r0 release];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r22 = [r0 additionalDebugLoggingPercentage];
    [r0 release];
    r0 = [NSString stringWithFormat:@"%@:%ld"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r24 = [r19 containsObject:r20];
    r25 = [r23 isEqualToString:r2];
    [r23 release];
    if (r25 != 0x0) {
            if ((r24 & 0x1) == 0x0) {
                    r21 = [FBAdDebugLogging shouldLogCacheDebugEventsForCurrentSession];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = @selector(sharedManager);
            if (r24 != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 additionalDebugBlackListPercentage];
                    [r21 release];
                    asm { ucvtf      s0, x23 };
                    asm { ucvtf      s1, x22 };
                    asm { fdiv       s1, s1, s2 };
                    asm { fcvtzu     x22, s0 };
            }
            if (r22 != 0x0) {
                    if (r22 >= 0x63) {
                            r21 = 0x1;
                    }
                    else {
                            r0 = arc4random();
                            if (r22 >= r0 - ((r0 * 0x446f8657 >> 0x20) + (r0 - (r0 * 0x446f8657 >> 0x20)) / 0x2 >> 0x6) * 0x65) {
                                    if (CPU_FLAGS & NB) {
                                            r21 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)retryDispatch {
    [self resetDispatchTimerWithTimeInterval:r2];
    return;
}

-(void)dispatchEvents {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    [r0 unifiedLoggingImmediateDelay];
    [self resetDispatchTimerWithTimeInterval:r2];
    [r0 release];
    return;
}

-(void)dispatchEventsImmediately {
    [self setSendAttempts:[self sendAttempts] + 0x1];
    r0 = [self databaseManager];
    r0 = [r0 retain];
    [r0 getDatabase:&var_38];
    [r0 release];
    return;
}

-(bool)shouldPurgeOn413Response {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 shouldPurgeEventsAndTokensOn413Response];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)sendRequestInternal:(void *)arg2 withExtraData:(void *)arg3 onRetry:(void *)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [arg4 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            r24 = [r19 retain];
            [r21 addEntriesFromDictionary:r24];
            [r24 release];
    }
    r24 = [[r22 urlSession] retain];
    var_38 = r23;
    [r23 retain];
    [r24 requestWithURL:r20 HTTPMethod:@"POST" queryParameters:r21 responseHandler:&var_60];
    [r20 release];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r24 release];
    [var_38 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)isEventSuccessful:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 integerValue];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isEventRetriable:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 integerValue];
    if (r0 > 0xbb7) {
            if (CPU_FLAGS & A) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)insertEvent:(void *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [[self databaseManager] retain];
    var_38 = r22;
    r22 = [r22 retain];
    var_60 = r20;
    r20 = [r20 retain];
    [r21 insertWithStatementSync:"INSERT INTO events (eventId, tokenId, priority, type, time, sessionId, sessionStartTime, data, attempt) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);" withDatabase:arg3 withStatementCallback:&var_58 withCompletionCallback:&var_80];
    [r21 release];
    [var_60 release];
    [var_38 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)updateAttemptCountForEvent:(void *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg4 retain];
    [r21 attemptsCount];
    r24 = [[r21 eventId] retain];
    [r21 release];
    r21 = [[r24 UUIDString] retain];
    [r24 release];
    r23 = [[NSString stringWithFormat:@"UPDATE events SET attempt = %lu WHERE eventId = '%@';"] retain];
    r22 = [[self databaseManager] retain];
    r0 = objc_retainAutorelease(r23);
    r24 = [r0 UTF8String];
    var_48 = r20;
    r20 = [r20 retain];
    [r22 insertWithStatementSync:r24 withDatabase:arg3 withStatementCallback:0x0 withCompletionCallback:&var_68];
    [r22 release];
    [var_48 release];
    [r20 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)removeAllOrphanedTokensWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
    r21 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    r20 = [r21 retain];
    [r22 getDatabase:&var_58];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)removeAllOrphanedEventsWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
    r21 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    r20 = [r21 retain];
    [r22 getDatabase:&var_58];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)cleanupEventsSync:(void *)arg2 withDatabase:(struct sqlite3 *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            var_170 = r21;
            var_168 = r20;
            r0 = [NSMutableString stringWithFormat:@"DELETE FROM events WHERE "];
            r29 = r29;
            r22 = [r0 retain];
            var_110 = q0;
            var_160 = r19;
            r0 = [r19 retain];
            r23 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r3 = &stack[-240];
            var_158 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r25 = r0;
                    r19 = 0x0;
                    r21 = *var_110;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*var_110 != r21) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r26 = *(var_118 + r24 * 0x8);
                                    if ((r19 & 0x1) != 0x0) {
                                            [r22 appendString:r2];
                                    }
                                    [r22 appendFormat:r2];
                                    r24 = r24 + 0x1;
                                    r19 = 0x1;
                            } while (r24 < r25);
                            r3 = &stack[-240];
                            r0 = objc_msgSend(r23, var_158);
                            r25 = r0;
                            r19 = 0x1;
                    } while (r0 != 0x0);
            }
            [r23 release];
            r20 = [[var_170 databaseManager] retain];
            r0 = objc_retainAutorelease(r22);
            [r20 deleteWithStatementSync:[r0 UTF8String] withDatabase:r3 withCallback:&var_150];
            [r20 release];
            [r0 release];
            r19 = var_160;
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeAllOrphanedTokensSyncWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
    r21 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    var_30 = r21;
    r21 = [r21 retain];
    [r22 queryWithStatementSync:"SELECT * FROM tokens WHERE NOT EXISTS (SELECT * FROM events WHERE tokens.tokenId = events.tokenId)" withDatabase:arg2 withCallback:&var_58];
    [r22 release];
    [var_30 release];
    [r21 release];
    return;
}

-(void)removeAllOrphanedEventsSyncWithDatabase:(struct sqlite3 *)arg2 withCallback:(void *)arg3 {
    r21 = [arg3 retain];
    r22 = [[self databaseManager] retain];
    var_30 = r21;
    r21 = [r21 retain];
    [r22 queryWithStatementSync:"SELECT * FROM events WHERE NOT EXISTS (SELECT * FROM tokens WHERE tokens.tokenId = events.tokenId)" withDatabase:arg2 withCallback:&var_58];
    [r22 release];
    [var_30 release];
    [r21 release];
    return;
}

-(void)queryEventsSyncWithStatement:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r22 = [arg4 retain];
    r21 = [[self databaseManager] retain];
    var_38 = r22;
    r22 = [r22 retain];
    [r21 deserializeWithStatementSync:arg2 withDatabase:arg3 withDeserializeCallback:0x100ea95b8 withCallback:&var_58];
    [r21 release];
    [var_38 release];
    [r22 release];
    return;
}

-(void)queryTokensSyncWithStatement:(char *)arg2 withDatabase:(struct sqlite3 *)arg3 withCallback:(void *)arg4 {
    r22 = [arg4 retain];
    r21 = [[self databaseManager] retain];
    var_38 = r22;
    r22 = [r22 retain];
    [r21 deserializeWithStatementSync:arg2 withDatabase:arg3 withDeserializeCallback:0x100ea9548 withCallback:&var_58];
    [r21 release];
    [var_38 release];
    [r22 release];
    return;
}

-(double)sessionTime {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    r0 = [self sessionStartTime];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [r20 release];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventsInTransit, 0x0);
    objc_storeStrong((int64_t *)&self->_dispatchTimerQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_dispatchTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_databaseManager, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionStartTime, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionId, 0x0);
    return;
}

-(void *)sessionId {
    r0 = self->_sessionId;
    return r0;
}

-(void)setSessionId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionId, arg2);
    return;
}

-(void)setSessionStartTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionStartTime, arg2);
    return;
}

-(void *)sessionStartTime {
    r0 = self->_sessionStartTime;
    return r0;
}

-(void)setDatabaseManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_databaseManager, arg2);
    return;
}

-(void *)databaseManager {
    r0 = self->_databaseManager;
    return r0;
}

-(void)setDispatchTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dispatchTimer, arg2);
    return;
}

-(void *)dispatchTimer {
    r0 = self->_dispatchTimer;
    return r0;
}

-(void)setDispatchTimerQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dispatchTimerQueue, arg2);
    return;
}

-(void *)dispatchTimerQueue {
    r0 = self->_dispatchTimerQueue;
    return r0;
}

-(void *)eventsInTransit {
    r0 = self->_eventsInTransit;
    return r0;
}

-(void)setEventsInTransit:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eventsInTransit, arg2);
    return;
}

-(void)setSendAttempts:(unsigned long long)arg2 {
    self->_sendAttempts = arg2;
    return;
}

-(unsigned long long)sendAttempts {
    r0 = self->_sendAttempts;
    return r0;
}

+(void *)sharedManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea9c88);
    if (*qword_1011dda60 != -0x1) {
            dispatch_once(0x1011dda60, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dda68);
    [r19 release];
    r0 = r20;
    return r0;
}

+(char *)tokenTableString {
    return "CREATE TABLE tokens(                                                  tokenId TEXT PRIMARY KEY NOT NULL,                                                  token TEXT                                              );";
}

+(char *)eventTableString {
    return "CREATE TABLE events(                                                 eventId TEXT PRIMARY KEY NOT NULL,                                                 tokenId TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT,                                    …";
}

@end