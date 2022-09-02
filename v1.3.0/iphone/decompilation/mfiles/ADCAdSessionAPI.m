@implementation ADCAdSessionAPI

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)interstitialAvailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x100;
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r23 = [[AdColonyInterstitial alloc] initSafeWithSessionID:r20 andVideoFilepath:r22];
                            r0 = @class(ADCMessage);
                            r0 = [r0 stringValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r9 = [r0 retain];
                            var_E0 = r9;
                            if (r9 != 0x0) {
                                    [r23 setAdID:r9];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCAdSessionAPI interstitialAvailable:]" line:0x8d withFormat:@"No ad id supplied"];
                            }
                            r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    [r23 setCreativeID:r24];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCAdSessionAPI interstitialAvailable:]" line:0x95 withFormat:@"No creative id supplied"];
                            }
                            r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"ias"];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    r27 = [[ADCAvidViewabilityMonitor alloc] initWithDictionary:r26 session:r21 interstitialAd:r23];
                                    [r21 setAvidViewabilityMonitor:r27];
                                    [r27 release];
                            }
                            [r21 setInterstitialAd:r23];
                            r27 = [[r21 interstitialAd] retain];
                            r0 = @class(ADCMessage);
                            r0 = [r0 numberValueFromMessage:r2 withKey:r3];
                            r0 = [r0 retain];
                            [r27 setIapEnabled:[r0 boolValue]];
                            [r0 release];
                            [r27 release];
                            r0 = [r21 requestSuccess];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    var_B8 = [r21 retain];
                                    var_B0 = [r23 retain];
                                    dispatch_async(*__dispatch_main_q, &var_D8);
                                    [var_B0 release];
                                    [var_B8 release];
                            }
                            [r26 release];
                            [r24 release];
                            r0 = var_E0;
                    }
                    else {
                            r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:&var_78 count:0x2] retain];
                            r24 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x2 userInfo:r23];
                            r0 = [r21 requestFailure];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    var_88 = [r21 retain];
                                    var_80 = [r24 retain];
                                    dispatch_async(*__dispatch_main_q, &var_A8);
                                    [var_80 release];
                                    [var_88 release];
                            }
                            r0 = r24;
                    }
                    [r0 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI interstitialAvailable:]" line:0x74 withFormat:@"Bad ad_session_id %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI interstitialAvailable:]" line:0x6f withFormat:@"Invalid ad session id"];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialUnavailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    r23 = [[r21 zoneID] retain];
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Interstitial ad request failed in zone: %@"];
                    [r23 release];
                    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
                    r23 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x2 userInfo:[r0 retain]];
                    var_68 = [r21 retain];
                    var_60 = r23;
                    [r23 retain];
                    dispatch_async(*__dispatch_main_q, &var_88);
                    [var_60 release];
                    [var_68 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI interstitialUnavailable:]" line:0xb4 withFormat:@"Bad ad_session_id %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI interstitialUnavailable:]" line:0xaf withFormat:@"Invalid ad session id"];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)adViewAvailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r21] retain];
            [r0 release];
            if (r22 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI adViewAvailable:]" line:0xd2 withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI adViewAvailable:]" line:0xcd withFormat:@"Nil ad session id provided to AdSession.ad_view_available."];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adViewUnavailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r21] retain];
            [r0 release];
            if (r22 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI adViewUnavailable:]" line:0xe2 withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI adViewUnavailable:]" line:0xdd withFormat:@"Nil ad session id provided to AdSession.ad_view_available."];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdViewAvailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    if (r25 != 0x0) {
                                            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            var_120 = r0;
                                            if (r0 != 0x0) {
                                                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    var_128 = r0;
                                                    if (r0 != 0x0) {
                                                            var_A8 = &var_B0;
                                                            r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            *(int8_t *)(var_A8 + 0x20) = [r0 boolValue];
                                                            [r0 release];
                                                            r8 = var_A8;
                                                            if (*(int8_t *)(r8 + 0x20) != 0x0) {
                                                                    r0 = @class(ADCMessage);
                                                                    r0 = [r0 stringValueFromMessage:r2 withKey:r3];
                                                                    r0 = [r0 retain];
                                                                    *(var_A8 + 0x48) = r0;
                                                                    [r0 release];
                                                                    r0 = @class(ADCMessage);
                                                                    r0 = [r0 stringValueFromMessage:r2 withKey:r3];
                                                                    r0 = [r0 retain];
                                                                    *(var_A8 + 0x50) = r0;
                                                                    [r0 release];
                                                                    r0 = @class(ADCMessage);
                                                                    r0 = [r0 stringValueFromMessage:r2 withKey:r3];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    *(var_A8 + 0x58) = r0;
                                                                    [r0 release];
                                                            }
                                                            else {
                                                                    *(int128_t *)(r8 + 0x48) = 0x0;
                                                                    *(int128_t *)(r8 + 0x50) = 0x0;
                                                                    *(r8 + 0x58) = 0x0;
                                                            }
                                                            r0 = [r20 containerForAdSessionID:r21 isFullscreen:0x0];
                                                            r27 = var_128;
                                                            r26 = var_120;
                                                            r28 = [r0 retain];
                                                            if (r28 != 0x0) {
                                                                    var_F8 = [r28 retain];
                                                                    var_F0 = [r22 retain];
                                                                    var_E8 = [r24 retain];
                                                                    var_E0 = [r27 retain];
                                                                    var_D8 = [r25 retain];
                                                                    var_D0 = [r26 retain];
                                                                    var_C8 = [r19 retain];
                                                                    var_C0 = [r23 retain];
                                                                    dispatch_async(*__dispatch_main_q, &var_118);
                                                                    [var_C0 release];
                                                                    [var_C8 release];
                                                                    [var_D0 release];
                                                                    [var_D8 release];
                                                                    [var_E0 release];
                                                                    [var_E8 release];
                                                                    [var_F0 release];
                                                                    [var_F8 release];
                                                            }
                                                            else {
                                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0x13f withFormat:@"No container registered for session id: %@"];
                                                            }
                                                            [r28 release];
                                                            _Block_object_dispose(&var_B0, 0x8);
                                                    }
                                                    else {
                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0x110 withFormat:@"Nil description provided to AdSession.ad_view_available."];
                                                            r27 = var_128;
                                                            r26 = var_120;
                                                    }
                                                    [r27 release];
                                            }
                                            else {
                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0x10a withFormat:@"Nil description provided to AdSession.ad_view_available."];
                                                    r26 = var_120;
                                            }
                                            [r26 release];
                                    }
                                    else {
                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0x104 withFormat:@"Nil title provided to AdSession.ad_view_available."];
                                    }
                                    [r25 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0xfe withFormat:@"Nil advertiser name provided to AdSession.ad_view_available."];
                            }
                            [r24 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0xf8 withFormat:@"Nil module id provided to AdSession.ad_view_available."];
                    }
                    [r23 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0xf2 withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewAvailable:]" line:0xed withFormat:@"Nil ad session id provided to AdSession.ad_view_available."];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdViewUnavailable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r23 = [[NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2] retain];
                    r24 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r23];
                    r0 = [r22 requestFailure];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            var_78 = [r22 retain];
                            var_70 = [r24 retain];
                            dispatch_async(*__dispatch_main_q, &var_98);
                            [var_70 release];
                            [var_78 release];
                    }
                    [r24 release];
                    [r23 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewUnavailable:]" line:0x14e withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdViewUnavailable:]" line:0x149 withFormat:@"Nil ad session id provided to AdSession.ad_view_unavailable"];
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)launchInterstitialForSession:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    var_B8 = [r0 nextNativeMessageID];
    [r0 release];
    r0 = [r19 options];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 options];
            r0 = [r0 retain];
            r25 = [r0 boolOptionForKey:@"pre_popup"];
            [r0 release];
            r0 = [r19 options];
            r29 = r29;
            r0 = [r0 retain];
            var_C4 = [r0 boolOptionForKey:@"post_popup"];
            [r0 release];
    }
    else {
            var_C4 = 0x0;
            r25 = 0x0;
    }
    r0 = [r19 identifier];
    r29 = r29;
    r0 = [r0 retain];
    var_C0 = r0;
    if (r0 != 0x0) {
            r0 = [r19 identifier];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_D8 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 identifier];
                    r29 = r29;
                    r26 = [r0 retain];
                    var_C8 = 0x1;
                    var_CC = 0x1;
            }
            else {
                    r26 = @"";
                    var_CC = 0x0;
                    var_C8 = 0x1;
            }
    }
    else {
            var_CC = 0x0;
            var_C8 = 0x0;
            r26 = @"";
    }
    r0 = [r19 zoneID];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r0 = [r19 zoneID];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_E0 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 zoneID];
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = 0x1;
                    r28 = 0x1;
            }
            else {
                    r28 = 0x0;
                    r21 = @"";
                    r22 = 0x1;
            }
    }
    else {
            r22 = 0x0;
            r28 = 0x0;
            r21 = @"";
    }
    r23 = @class(NSNumber);
    r23 = [[r23 numberWithUnsignedInteger:[r19 requestType]] retain];
    r25 = [[NSNumber numberWithBool:r25] retain];
    r20 = [[NSNumber numberWithBool:var_C4] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r24 = [r0 retain];
    [r20 release];
    [r25 release];
    [r23 release];
    if (r28 != 0x0) {
            [r21 release];
    }
    if (r22 != 0x0) {
            [var_E0 release];
    }
    [r27 release];
    if (var_CC != 0x0) {
            [r26 release];
    }
    if (var_C8 != 0x0) {
            [var_D8 release];
    }
    var_58 = **___stack_chk_guard;
    [var_C0 release];
    r20 = [[ADCMessage nativeMessageWithType:@"AdSession.launch_ad_unit" identifier:var_B8 contents:r24] retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 sendMessage:r20];
    [r0 release];
    [r20 release];
    [r24 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)startFullscreenAd:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x110;
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
    r26 = self;
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    objc_storeStrong((int64_t *)&r26->_messageContextForBackgrounding, r2);
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"module_id"];
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            r23 = [[ADCNativeLayer sharedLayer] retain];
                            r0 = [r23 moduleForIdentifier:[r27 unsignedIntegerValue]];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r23 release];
                            if (r28 != 0x0) {
                                    r0 = [AdColony sharedInstance];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 containerForAdSessionID:r21 isFullscreen:0x1];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r23 release];
                                    if (r24 != 0x0) {
                                            var_E0 = r27;
                                            var_D8 = r24;
                                            var_E8 = r28;
                                            r0 = [UIDevice currentDevice];
                                            r0 = [r0 retain];
                                            var_F0 = r0;
                                            r0 = [r0 systemVersion];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r27 = r0;
                                            if ([r0 compare:r2 options:r3] != -0x1) {
                                                    r0 = [UIDevice currentDevice];
                                                    r0 = [r0 retain];
                                                    r24 = r0;
                                                    r0 = [r0 systemVersion];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r28 = [r0 compare:r2 options:r3];
                                                    [r0 release];
                                                    [r24 release];
                                                    [r27 release];
                                                    [var_F0 release];
                                                    COND = r28 != -0x1;
                                                    r28 = var_E8;
                                                    r27 = var_E0;
                                                    if (!COND) {
                                                            r0 = @class(AVAudioSession);
                                                            r0 = [r0 sharedInstance];
                                                            r0 = [r0 retain];
                                                            r23 = r0;
                                                            r0 = [r0 category];
                                                            r0 = [r0 retain];
                                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentCategory));
                                                            r8 = *(r26 + r9);
                                                            *(r26 + r9) = r0;
                                                            [r8 release];
                                                            [r23 release];
                                                            r0 = @class(AVAudioSession);
                                                            r0 = [r0 sharedInstance];
                                                            r0 = [r0 retain];
                                                            r26->_currentOptions = [r0 categoryOptions];
                                                            [r0 release];
                                                            r0 = @class(AVAudioSession);
                                                            r0 = [r0 sharedInstance];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 setCategory:**_AVAudioSessionCategoryPlayback withOptions:0x1 error:0x0];
                                                            [r0 release];
                                                    }
                                            }
                                            else {
                                                    [r27 release];
                                                    [var_F0 release];
                                                    r28 = var_E8;
                                                    r27 = var_E0;
                                            }
                                            r0 = [AVAudioSession sharedInstance];
                                            r0 = [r0 retain];
                                            [r0 setActive:0x1 error:0x0];
                                            [r0 release];
                                            if (([NSThread isMainThread] & 0x1) != 0x0) {
                                                    var_70 = [r22 retain];
                                                    var_68 = [r28 retain];
                                                    r24 = var_D8;
                                                    var_60 = [r24 retain];
                                                    [r20 retain];
                                                    sub_1001d4554(&var_90);
                                                    [r23 release];
                                                    [var_60 release];
                                                    [var_68 release];
                                                    r0 = var_70;
                                            }
                                            else {
                                                    var_B0 = [r22 retain];
                                                    var_A8 = [r28 retain];
                                                    r24 = var_D8;
                                                    var_A0 = [r24 retain];
                                                    var_98 = [r20 retain];
                                                    dispatch_sync(*__dispatch_main_q, &var_D0);
                                                    [var_98 release];
                                                    [var_A0 release];
                                                    [var_A8 release];
                                                    r0 = var_B0;
                                            }
                                            [r0 release];
                                    }
                                    else {
                                            [r26 onSessionError:r22];
                                    }
                                    [r24 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI startFullscreenAd:]" line:0x18e withFormat:@"Bad module_id: %@"];
                                    [r26 onSessionError:r22];
                            }
                            [r28 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI startFullscreenAd:]" line:0x189 withFormat:@"Invalid module id"];
                    }
                    [r27 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI startFullscreenAd:]" line:0x183 withFormat:@"Bad ad_session_id %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI startFullscreenAd:]" line:0x17d withFormat:@"Invalid session id"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)finishFullscreenAdDelayed {
    [self finishFullscreenAd:[[ADCMessage alloc] initFromDict:self->_delayedFinishFullscreenAdDict]];
    r20 = [[NSNotificationCenter defaultCenter] retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [[r0 sessionAPI] retain];
    [r20 removeObserver:r2 name:r3 object:r4];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)finishFullscreenAd:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1f0;
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
    r19 = r2;
    r23 = self;
    [self stopRingerSwitchDetection];
    if ([ADCSystemAPI isShowingStoreView] == 0x0) goto loc_1001d5c60;

loc_1001d5bc4:
    r0 = [r19 dict];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_delayedFinishFullscreenAdDict));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r19 release];
    return;

loc_1001d5c60:
    r24 = [r19 retain];
    r22 = [[AdColony sharedInstance] retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_messageContextForBackgrounding));
    r0 = *(r23 + r8);
    *(r23 + r8) = 0x0;
    [r0 release];
    r0 = [ADCMessage stringValueFromMessage:r24 withKey:@"id"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001d5e48;

loc_1001d5cd4:
    r0 = [r22 sessionFromID];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r21];
    r29 = r29;
    r25 = [r0 retain];
    [r20 release];
    if (r25 == 0x0) goto loc_1001d5e80;

loc_1001d5d1c:
    var_198 = r25;
    var_190 = r22;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 containerForAdSessionID:r21 isFullscreen:0x1] retain];
    [r0 release];
    r0 = @class(ADCMessage);
    var_188 = r24;
    r0 = [r0 numberValueFromMessage:r24 withKey:@"is_display_module"];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if ((r24 & 0x1) == 0x0) {
            r27 = [[ADCMessage numberValueFromMessage:var_188 withKey:@"container_id"] retain];
            r20 = [[AdColony sharedInstance] retain];
            r0 = [r20 containerForAdSessionID:r21 isFullscreen:[r27 boolValue]];
            r29 = r29;
            r22 = [r0 retain];
            [r25 release];
            [r20 release];
            if (r22 != 0x0) {
                    [r22 unbindObjects];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI finishFullscreenAd:]" line:0x202 withFormat:@"No container found for session: %@. Cannot unbind views"];
            }
            [r27 release];
            r25 = r22;
    }
    r26 = [var_198 retain];
    var_80 = r26;
    var_78 = [var_190 retain];
    r19 = [r25 retain];
    var_70 = r19;
    r20 = objc_retainBlock(r29 - 0xa0);
    r0 = [NSThread isMainThread];
    var_1A8 = r20;
    var_1A0 = r19;
    if (r0 != 0x0) {
            var_B8 = [r26 retain];
            var_B0 = [r19 retain];
            var_A8 = [r20 retain];
            sub_1001d6be0(r29 - 0xd8);
            var_1B0 = 0x0;
            var_1AC = 0x1;
    }
    else {
            var_F0 = [r26 retain];
            var_E8 = [r19 retain];
            var_E0 = [r20 retain];
            dispatch_sync(*__dispatch_main_q, &var_110);
            var_1B0 = 0x1;
            var_1AC = 0x0;
    }
    r0 = [ADCMessage dictionaryValueFromMessage:var_188 withKey:@"v4iap"];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0 || [r27 count] == 0x0) goto loc_1001d632c;

loc_1001d607c:
    r19 = @selector(objectForKeyedSubscript:);
    r0 = objc_msgSend(r27, r19);
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = objc_msgSend(r27, r19);
            r29 = r29;
    }
    else {
            r0 = [NSArray arrayWithObjects:r29 - 0x68 count:0x0];
            r29 = r29;
    }
    r25 = @selector(count);
    r22 = [r0 retain];
    [r20 release];
    if (objc_msgSend(r22, r25) == 0x0) goto loc_1001d6324;

loc_1001d6100:
    var_1C8 = r22;
    r25 = [[r22 firstObject] retain];
    r0 = objc_msgSend(r27, r19);
    r29 = r29;
    r28 = [r0 retain];
    [ADCInterstitialAdSession class];
    if ([r26 isKindOfClass:r2] == 0x0) goto loc_1001d622c;

loc_1001d6174:
    r0 = [r26 retain];
    r26 = r0;
    r0 = [r0 interstitialAd];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 iapOpportunity];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_1001d6308;

loc_1001d61c0:
    var_128 = [r26 retain];
    var_120 = [r25 retain];
    var_118 = [r28 retain];
    dispatch_async(*__dispatch_main_q, &var_148);
    [var_118 release];
    [var_120 release];
    r0 = var_128;
    goto loc_1001d6304;

loc_1001d6304:
    [r0 release];
    goto loc_1001d6308;

loc_1001d6308:
    [r26 release];
    goto loc_1001d6310;

loc_1001d6310:
    [r28 release];
    [r25 release];
    r22 = var_1C8;
    goto loc_1001d6324;

loc_1001d6324:
    [r22 release];
    goto loc_1001d632c;

loc_1001d632c:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 compare:r2 options:r3] == -0x1) goto loc_1001d6448;

loc_1001d6390:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 compare:r2 options:r3];
    [r0 release];
    [r22 release];
    [r25 release];
    [r26 release];
    if (r24 != -0x1) goto loc_1001d6458;

loc_1001d63fc:
    r0 = [AVAudioSession sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setCategory:r23->_currentCategory withOptions:r23->_currentOptions error:0x0];
    r0 = r0;
    goto loc_1001d6454;

loc_1001d6454:
    [r0 release];
    goto loc_1001d6458;

loc_1001d6458:
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x68 count:0x0] retain];
    r24 = var_188;
    r23 = [[r24 messageReplyWithDict:r22] retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    [r20 release];
    [r27 release];
    if (var_1B0 != 0x0) {
            [var_E0 release];
            [var_E8 release];
            [var_F0 release];
    }
    r25 = var_198;
    r22 = var_190;
    if (var_1AC != 0x0) {
            [var_A8 release];
            [var_B0 release];
            [var_B8 release];
    }
    [var_1A8 release];
    [var_70 release];
    [var_78 release];
    [var_80 release];
    [var_1A0 release];
    goto loc_1001d6568;

loc_1001d6568:
    [r25 release];
    goto loc_1001d6570;

loc_1001d6570:
    [r21 release];
    [r22 release];
    [r24 release];
    return;

loc_1001d6448:
    [r25 release];
    r0 = r26;
    goto loc_1001d6454;

loc_1001d622c:
    r22 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r26, r22) == 0x0) goto loc_1001d6310;

loc_1001d6250:
    r0 = [r26 retain];
    r26 = r0;
    r0 = [r0 nativeAd];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 iapOpportunity];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_1001d6308;

loc_1001d629c:
    var_160 = [r26 retain];
    var_158 = [r25 retain];
    var_150 = [r28 retain];
    dispatch_async(*__dispatch_main_q, &var_180);
    [var_150 release];
    [var_158 release];
    r0 = var_160;
    goto loc_1001d6304;

loc_1001d5e80:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI finishFullscreenAd:]" line:0x1f8 withFormat:@"Bad ad_session_id %@"];
    goto loc_1001d6568;

loc_1001d5e48:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI finishFullscreenAd:]" line:0x1f3 withFormat:@"Invalid session id"];
    goto loc_1001d6570;
}

-(void)audioStarted:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    [r21 setIsAudioPlaying:0x1];
                    [ADCInterstitialAdSession class];
                    if ([r21 isKindOfClass:r2] != 0x0) {
                            r0 = [r21 retain];
                            r22 = r0;
                            r0 = [r0 interstitialAd];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 audioStart];
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            if (r0 != 0x0) {
                                    var_38 = [r22 retain];
                                    dispatch_async(*__dispatch_main_q, &var_58);
                                    [var_38 release];
                            }
                            [r22 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI audioStarted:]" line:0x271 withFormat:@"Bad ad_session_id %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI audioStarted:]" line:0x26c withFormat:@"Invalid session id"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)audioStopped:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    [r21 setIsAudioPlaying:0x0];
                    [ADCInterstitialAdSession class];
                    if ([r21 isKindOfClass:r2] != 0x0) {
                            r0 = [r21 retain];
                            r22 = r0;
                            r0 = [r0 interstitialAd];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 audioStop];
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            if (r0 != 0x0) {
                                    var_38 = [r22 retain];
                                    dispatch_async(*__dispatch_main_q, &var_58);
                                    [var_38 release];
                            }
                            [r22 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI audioStopped:]" line:0x28b withFormat:@"Bad ad_session_id %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI audioStopped:]" line:0x286 withFormat:@"Invalid session id"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)hasAudio:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 outputVolume];
            v8 = v0;
            [r0 release];
            if (s8 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r23 = 0x1;
                    }
            }
            r0 = [ADCNativeLayer sharedLayer];
            r29 = r29;
            r21 = [r0 retain];
            r8 = @"";
            if ([r20 isKindOfClass:[NSString class]] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"";
                    }
                    else {
                            r8 = r20;
                    }
            }
            r22 = [[NSNumber numberWithBool:r23] retain];
            r23 = [[NSNumber numberWithFloat:r23] retain];
            r24 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r21 sendMessage:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI hasAudio:]" line:0x2a0 withFormat:@"Invalid session id"];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)destroy:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    [r22 setNativeModule:0x0];
                    [r22 setFullscreenModule:0x0];
                    [r20 removeSession:r22];
                    r23 = [[ADCNativeLayer sharedLayer] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0] retain];
                    r25 = [[r19 messageReplyWithDict:r24] retain];
                    [r23 sendMessage:r25];
                    [r25 release];
                    [r24 release];
                    [r23 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI destroy:]" line:0x2ba withFormat:@"Bad ad_session_id %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI destroy:]" line:0x2b5 withFormat:@"Invalid session id"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)expiring:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
            if (r22 != 0x0) {
                    [ADCInterstitialAdSession class];
                    if ([r22 isKindOfClass:r2] != 0x0) {
                            r0 = [r22 retain];
                            r23 = r0;
                            r0 = [r0 interstitialAd];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setExpired:0x1];
                            [r0 release];
                            if (([NSThread isMainThread] & 0x1) != 0x0) {
                                    var_48 = [r23 retain];
                                    sub_1001d87bc(&var_68);
                                    [r20 removeSession:r24];
                                    r24 = [[r24 zoneID] retain];
                                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Interstitial ad expiring in zone: %@"];
                                    [r24 release];
                                    r0 = var_48;
                            }
                            else {
                                    var_70 = [r23 retain];
                                    dispatch_sync(*__dispatch_main_q, &var_90);
                                    [r20 removeSession:r24];
                                    r24 = [[r24 zoneID] retain];
                                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Interstitial ad expiring in zone: %@"];
                                    [r24 release];
                                    r0 = var_70;
                            }
                            [r0 release];
                            [r23 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI expiring:]" line:0x2d0 withFormat:@"Bad ad_session_id %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI expiring:]" line:0x2cb withFormat:@"Invalid session id"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)iapEvent:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001d8bfc;

loc_1001d8a30:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r21 == 0x0) goto loc_1001d8c34;

loc_1001d8a9c:
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"v4iap"];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1001d8ca8;

loc_1001d8ac8:
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001d8c70;

loc_1001d8aec:
    [NSArray class];
    if (([r23 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1001d8c70;

loc_1001d8b20:
    r24 = [r23 retain];
    r25 = [[r22 objectForKeyedSubscript:r2] retain];
    if (r25 == 0x0) goto loc_1001d8ce0;

loc_1001d8b50:
    r28 = @selector(isKindOfClass:);
    r26 = [r25 integerValue];
    [ADCNativeAdSession class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001d8d18;

loc_1001d8b88:
    [[r21 retain] retain];
    var_60 = [r24 retain];
    dispatch_async(*__dispatch_main_q, &var_88);
    [var_60 release];
    [r0 release];
    r0 = r27;
    goto loc_1001d8da0;

loc_1001d8da0:
    [r0 release];
    goto loc_1001d8da4;

loc_1001d8da4:
    [r25 release];
    [r24 release];
    goto loc_1001d8db4;

loc_1001d8db4:
    [r23 release];
    goto loc_1001d8dbc;

loc_1001d8dbc:
    [r22 release];
    goto loc_1001d8dc4;

loc_1001d8dc4:
    [r21 release];
    goto loc_1001d8dcc;

loc_1001d8dcc:
    [r20 release];
    [r19 release];
    return;

loc_1001d8d18:
    r28 = @selector(isKindOfClass:);
    [ADCInterstitialAdSession class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001d8da4;

loc_1001d8d3c:
    var_A0 = [r21 retain];
    var_98 = [r24 retain];
    dispatch_async(*__dispatch_main_q, &var_C0);
    [var_98 release];
    r0 = var_A0;
    goto loc_1001d8da0;

loc_1001d8ce0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI iapEvent:]" line:0x301 withFormat:@"No engagement type provided to AdSession.iap_event"];
    goto loc_1001d8da4;

loc_1001d8c70:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI iapEvent:]" line:0x2fa withFormat:@"Invalid set of product ids sent to AdSession.iap_event"];
    goto loc_1001d8db4;

loc_1001d8ca8:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI iapEvent:]" line:0x2f4 withFormat:@"No v4iap info provided to AdSession.iap_event"];
    goto loc_1001d8dbc;

loc_1001d8c34:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI iapEvent:]" line:0x2ee withFormat:@"Bad ad_session_id %@"];
    goto loc_1001d8dc4;

loc_1001d8bfc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI iapEvent:]" line:0x2e9 withFormat:@"Invalid session id"];
    goto loc_1001d8dcc;
}

-(void)nativeAdStarted:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [r22 nativeAd];
                    r0 = [r0 retain];
                    [r0 setStarted:0x1];
                    [r0 release];
                    var_38 = [r22 retain];
                    dispatch_async(*__dispatch_main_q, &var_58);
                    r23 = [[r23 zoneID] retain];
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Native ad started playing in zone: %@"];
                    [r23 release];
                    [var_38 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdStarted:]" line:0x322 withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdStarted:]" line:0x31d withFormat:@"Nil ad session id provided to AdSession.native_ad_started"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdFinished:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [r22 nativeAd];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 finished];
                    [r0 release];
                    if ((r25 & 0x1) == 0x0) {
                            r0 = [r22 nativeAd];
                            r0 = [r0 retain];
                            [r0 setFinished:0x1];
                            [r0 release];
                            var_48 = [r22 retain];
                            dispatch_async(*__dispatch_main_q, &var_68);
                            r23 = [[r23 zoneID] retain];
                            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Native ad finished playing in zone: %@"];
                            [r23 release];
                            [var_48 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdFinished:]" line:0x33b withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdFinished:]" line:0x336 withFormat:@"Nil ad session id provided to AdSession.native_ad_finished"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdMuted:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"muted"];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            var_50 = [r22 retain];
                            var_48 = [r23 retain];
                            dispatch_async(*__dispatch_main_q, &var_70);
                            [r25 intValue];
                            r24 = [[r24 zoneID] retain];
                            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Native ad muted: %d in zone: %@"];
                            [r24 release];
                            [var_48 release];
                            [var_50 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdMuted:]" line:0x35d withFormat:@"No muted parameter supplied to AdSession.native_ad_muted"];
                    }
                    [r23 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdMuted:]" line:0x357 withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdMuted:]" line:0x352 withFormat:@"Nil ad session id provided to AdSession.native_ad_muted"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdEngagement:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r20 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    [ADCNativeAdSession class];
                    if ([r22 isKindOfClass:r2] != 0x0) {
                            r0 = [r22 nativeAd];
                            r0 = [r0 retain];
                            [r0 onEngagement];
                            [r0 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdEngagement:]" line:0x37d withFormat:@"No session registered with id: %@"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI nativeAdEngagement:]" line:0x378 withFormat:@"Nil ad session id provided to AdSession.native_ad_engagement"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)expanded:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    [ADCNativeAdSession class];
                    if ([r21 isKindOfClass:r2] != 0x0) {
                            r0 = [r21 nativeAd];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setOpened:0x1];
                            [r0 release];
                    }
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCAdSessionAPI expanded:]" line:0x3ae withFormat:@"Ad opened set"];
                    r22 = [[ADCNativeLayer sharedLayer] retain];
                    r23 = [[NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0] retain];
                    r24 = [[r19 messageReplyWithDict:r23] retain];
                    [r22 sendMessage:r24];
                    [r24 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI expanded:]" line:0x3a5 withFormat:@"No session registered with id: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI expanded:]" line:0x3a0 withFormat:@"Nil ad session id provided to AdSession.native_ad_engagement"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)destroyNativeAdView:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[ADCMessage numberValueFromMessage:r19 withKey:@"container_id"] retain];
            r23 = [[AdColony sharedInstance] retain];
            r0 = [r23 containerForAdSessionID:r20 isFullscreen:[r21 boolValue]];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    [r22 unbindObjects];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI destroyNativeAdView:]" line:0x393 withFormat:@"No container found for session: %@. Cannot unbind views"];
            }
            r23 = [[ADCNativeLayer sharedLayer] retain];
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r23 sendMessage:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI destroyNativeAdView:]" line:0x38c withFormat:@"Invalid session id"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)leftApplication:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001da3a4;

loc_1001da268:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r21 == 0x0) goto loc_1001da3dc;

loc_1001da2d0:
    [ADCNativeAdSession class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001da418;

loc_1001da304:
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 nativeAd];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 leftApplication];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1001da4dc;

loc_1001da350:
    var_38 = [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    r0 = var_38;
    goto loc_1001da4d8;

loc_1001da4d8:
    [r0 release];
    goto loc_1001da4dc;

loc_1001da4dc:
    [r22 release];
    goto loc_1001da4e4;

loc_1001da4e4:
    [r21 release];
    goto loc_1001da4ec;

loc_1001da4ec:
    [r20 release];
    [r19 release];
    return;

loc_1001da418:
    r23 = @selector(isKindOfClass:);
    [ADCInterstitialAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001da4e4;

loc_1001da43c:
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 interstitialAd];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 leftApplication];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1001da4dc;

loc_1001da488:
    var_60 = [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    r0 = var_60;
    goto loc_1001da4d8;

loc_1001da3dc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI leftApplication:]" line:0x3bc withFormat:@"No session registered with id: %@"];
    goto loc_1001da4e4;

loc_1001da3a4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI leftApplication:]" line:0x3b7 withFormat:@"Nil ad session id provided to AdSession.left_application"];
    goto loc_1001da4ec;
}

-(void)click:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001da784;

loc_1001da648:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r21 == 0x0) goto loc_1001da7bc;

loc_1001da6b0:
    [ADCNativeAdSession class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001da7f8;

loc_1001da6e4:
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 nativeAd];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 click];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1001da8bc;

loc_1001da730:
    var_38 = [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    r0 = var_38;
    goto loc_1001da8b8;

loc_1001da8b8:
    [r0 release];
    goto loc_1001da8bc;

loc_1001da8bc:
    [r22 release];
    goto loc_1001da8c4;

loc_1001da8c4:
    [r21 release];
    goto loc_1001da8cc;

loc_1001da8cc:
    [r20 release];
    [r19 release];
    return;

loc_1001da7f8:
    r23 = @selector(isKindOfClass:);
    [ADCInterstitialAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001da8c4;

loc_1001da81c:
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 interstitialAd];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 click];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1001da8bc;

loc_1001da868:
    var_60 = [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    r0 = var_60;
    goto loc_1001da8b8;

loc_1001da7bc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI click:]" line:0x3db withFormat:@"No session registered with id: %@"];
    goto loc_1001da8c4;

loc_1001da784:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI click:]" line:0x3d6 withFormat:@"Nil ad session id provided to AdSession.click"];
    goto loc_1001da8cc;
}

-(void)changeOrientation:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r23 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 containerForAdSessionID:r20 isFullscreen:0x1];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"orientation"];
                            r29 = r29;
                            r23 = [r0 retain];
                            if (r23 != 0x0) {
                                    r8 = [r23 integerValue];
                                    if ((r8 & 0xffffffff80000000) == 0x0) {
                                            [r22 setSupportedInterfaceOrientations:r8];
                                    }
                            }
                            [[[r22 presentingViewController] retain] retain];
                            var_60 = [r22 retain];
                            dispatch_async(*__dispatch_main_q, &var_88);
                            r25 = [[ADCNativeLayer sharedLayer] retain];
                            r26 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0] retain];
                            r27 = [[r19 messageReplyWithDict:r26] retain];
                            [r25 sendMessage:r27];
                            [r27 release];
                            [r26 release];
                            [r25 release];
                            [var_60 release];
                            [r0 release];
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            [r23 onSessionError:r21];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI changeOrientation:]" line:0x3fa withFormat:@"No session registered with id: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI changeOrientation:]" line:0x3f5 withFormat:@"Nil ad session id provided to AdSession.click"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setSupportedOrientations:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 containerForAdSessionID:r20 isFullscreen:0x1];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"orientation"];
                            r29 = r29;
                            r23 = [r0 retain];
                            if (r23 != 0x0) {
                                    r8 = [r23 integerValue];
                                    if ((r8 & 0xffffffff80000000) == 0x0) {
                                            [r22 setSupportedInterfaceOrientations:r8];
                                    }
                            }
                            r24 = [[ADCNativeLayer sharedLayer] retain];
                            r25 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0] retain];
                            r26 = [[r19 messageReplyWithDict:r25] retain];
                            [r24 sendMessage:r26];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            [r23 onSessionError:r21];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI setSupportedOrientations:]" line:0x423 withFormat:@"No session registered with id: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI setSupportedOrientations:]" line:0x41e withFormat:@"Nil ad session id provided to AdSession.click"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setFullscreenModuleID:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"fullscreen_module_id"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r25 = [[ADCNativeLayer sharedLayer] retain];
                            r23 = [[r25 moduleForIdentifier:[r22 unsignedIntegerValue]] retain];
                            [r25 release];
                            [r21 setFullscreenModule:r23];
                            r24 = [[ADCNativeLayer sharedLayer] retain];
                            r25 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0] retain];
                            r26 = [[r19 messageReplyWithDict:r25] retain];
                            [r24 sendMessage:r26];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI setFullscreenModuleID:]" line:0x442 withFormat:@"No session registered with id: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI setFullscreenModuleID:]" line:0x43d withFormat:@"Nil ad session id provided to AdSession.click"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)onSessionError:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 nextNativeMessageID];
    [r0 release];
    [ADCInterstitialAdSession class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1001db5a4;

loc_1001db58c:
    r0 = [r19 fullscreenModule];
    r29 = r29;
    goto loc_1001db5dc;

loc_1001db5dc:
    r0 = [r0 retain];
    r22 = [r0 originNumber];
    [r0 release];
    goto loc_1001db604;

loc_1001db604:
    r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    r0 = [r19 identifier];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r24 = @selector(isKindOfClass:);
            r0 = [r19 identifier];
            r29 = r29;
            r27 = [r0 retain];
            [NSString class];
            if (objc_msgSend(r27, r24) != 0x0) {
                    r0 = [r19 identifier];
                    r29 = r29;
                    r23 = [r0 retain];
                    r28 = 0x1;
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
                    r23 = @"";
                    r28 = 0x1;
            }
    }
    else {
            r28 = 0x0;
            r20 = 0x0;
            r23 = @"";
    }
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] retain];
    r0 = [ADCMessage nativeMessageWithType:@"AdSession.on_error" identifier:r21 contents:r24];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    if (r20 != 0x0) {
            [r23 release];
    }
    if (r28 != 0x0) {
            [r27 release];
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r22 release];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 sendMessage:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001db5a4:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r19, r24) == 0x0) goto loc_1001db600;

loc_1001db5c8:
    r0 = [r19 nativeModule];
    r29 = r29;
    goto loc_1001db5dc;

loc_1001db600:
    r22 = 0x0;
    goto loc_1001db604;
}

-(void)onFullscreenAdStarted:(void *)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    r19 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r21 = @selector(sharedLayer);
            r0 = objc_msgSend(@class(ADCNativeLayer), r21);
            r0 = [r0 retain];
            r23 = [r0 nextNativeMessageID];
            [r0 release];
            r24 = @class(ADCMessage);
            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r25 = *(r28 + 0xfc0);
            r0 = [r20 fullscreenModule];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r25 numberWithUnsignedInteger:[r0 originNumber]];
            r29 = r29;
            r25 = [r0 retain];
            r0 = *(r28 + 0xfc0);
            asm { fcvtzs     w2, d9 };
            r27 = @selector(numberWithInt:);
            r0 = objc_msgSend(r0, r27);
            r26 = [r0 retain];
            r0 = *(r28 + 0xfc0);
            asm { fcvtzs     w2, d8 };
            r27 = [objc_msgSend(r0, r27) retain];
            r28 = [[NSDictionary dictionaryWithObjects:&var_88 forKeys:&var_A8 count:0x4] retain];
            r23 = [[r24 nativeMessageWithType:@"AdSession.on_fullscreen_ad_started" identifier:r23 contents:r28] retain];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r22 release];
            r0 = objc_msgSend(@class(ADCNativeLayer), r21);
            r0 = [r0 retain];
            [r0 sendMessage:r23];
            [r0 release];
            [r23 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI onFullscreenAdStarted:size:]" line:0x496 withFormat:@"No session has been registered"];
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)onRequestClose:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 fullscreenModule];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [ADCNativeLayer sharedLayer];
                    r0 = [r0 retain];
                    r23 = [r0 nextNativeMessageID];
                    [r0 release];
                    r0 = [NSNumber numberWithUnsignedInteger:[r21 originNumber]];
                    r29 = r29;
                    r25 = [r0 retain];
                    r26 = @"";
                    if (r19 != 0x0) {
                            r26 = @"";
                            [NSString class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r26 = @"";
                                    }
                                    else {
                                            r26 = r19;
                                    }
                            }
                    }
                    r26 = [[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] retain];
                    r23 = [[ADCMessage nativeMessageWithType:@"AdSession.on_request_close" identifier:r23 contents:r26] retain];
                    [r26 release];
                    [r25 release];
                    r0 = @class(ADCNativeLayer);
                    r0 = [r0 sharedLayer];
                    r0 = [r0 retain];
                    [r0 sendMessage:r23];
                    [r0 release];
                    [r23 release];
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)onSessionRequest:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r19 = [arg2 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    var_B8 = [r0 nextNativeMessageID];
    [r0 release];
    r24 = [NSMutableDictionary new];
    r0 = [r19 options];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 options];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getOptions];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            [r22 release];
            r24 = r23;
    }
    r0 = [r19 identifier];
    r29 = r29;
    r0 = [r0 retain];
    var_C0 = r0;
    if (r0 != 0x0) {
            r0 = [r19 identifier];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_D8 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 identifier];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_C8 = 0x1;
            }
            else {
                    var_C8 = 0x0;
                    r8 = @"";
            }
            var_C4 = 0x1;
    }
    else {
            var_C8 = 0x0;
            r8 = @"";
    }
    var_D0 = r8;
    r0 = [r19 zoneID];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r0 = [r19 zoneID];
            r29 = r29;
            r25 = [r0 retain];
            [NSString class];
            if ([r25 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 zoneID];
                    r29 = r29;
                    r22 = [r0 retain];
                    r21 = 0x1;
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
                    r22 = @"";
                    r21 = 0x1;
            }
    }
    else {
            r21 = 0x0;
            r23 = 0x0;
            r22 = @"";
    }
    r20 = [[NSNumber numberWithUnsignedInteger:[r19 requestType]] retain];
    r28 = r24;
    r0 = [NSDictionary dictionaryWithObjects:&var_88 forKeys:&var_A8 count:0x4];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 mutableCopy];
    [r0 release];
    [r20 release];
    if (r23 != 0x0) {
            [r22 release];
    }
    if (r21 != 0x0) {
            [r25 release];
    }
    [r27 release];
    r21 = r28;
    if (var_C8 != 0x0) {
            [var_D0 release];
    }
    if (var_C4 != 0x0) {
            [var_D8 release];
    }
    [var_C0 release];
    r2 = [ADCNativeAdSession class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = @class(NSNumber);
            r23 = [r19 retain];
            [r19 size];
            r20 = [[r20 numberWithDouble:r2] retain];
            r2 = r20;
            [r26 setObject:r2 forKeyedSubscript:@"width"];
            [r20 release];
            r20 = @class(NSNumber);
            [r19 size];
            [r23 release];
            r21 = r28;
            r0 = [r20 numberWithDouble:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r26 setObject:r20 forKeyedSubscript:@"height"];
            [r20 release];
    }
    var_68 = **___stack_chk_guard;
    r20 = [[ADCMessage nativeMessageWithType:@"AdSession.on_request" identifier:var_B8 contents:r26] retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 sendMessage:r20];
    [r0 release];
    [r20 release];
    [r26 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)onSilentSwitchChanged:(void *)arg2 silent:(bool)arg3 {
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
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1001dc358;

loc_1001dc308:
    [ADCInterstitialAdSession class];
    r0 = [r19 isKindOfClass:r2];
    var_8C = r20;
    if (r0 == 0x0) goto loc_1001dc394;

loc_1001dc340:
    r0 = [r19 fullscreenModule];
    r29 = r29;
    goto loc_1001dc3cc;

loc_1001dc3cc:
    r0 = [r0 retain];
    r22 = [r0 originNumber];
    [r0 release];
    goto loc_1001dc3f4;

loc_1001dc3f4:
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    var_98 = [r0 nextNativeMessageID];
    [r0 release];
    r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    r0 = [r19 identifier];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r24 = @selector(isKindOfClass:);
            r0 = [r19 identifier];
            r29 = r29;
            r27 = [r0 retain];
            [NSString class];
            var_A8 = r27;
            if (objc_msgSend(r27, r24) != 0x0) {
                    r0 = [r19 identifier];
                    r29 = r29;
                    r23 = [r0 retain];
                    r28 = 0x1;
                    r27 = 0x1;
            }
            else {
                    r27 = 0x0;
                    r23 = @"";
                    r28 = 0x1;
            }
    }
    else {
            r28 = 0x0;
            r27 = 0x0;
            r23 = @"";
    }
    r24 = [[NSNumber numberWithBool:var_8C] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    r0 = [ADCMessage nativeMessageWithType:@"AdSession.on_silent_switch_changed" identifier:var_98 contents:r25];
    r29 = r29;
    r20 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r27 != 0x0) {
            [r23 release];
    }
    if (r28 != 0x0) {
            [var_A8 release];
    }
    [r26 release];
    [r22 release];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 sendMessage:r20];
    [r0 release];
    [r20 release];
    goto loc_1001dc624;

loc_1001dc624:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001dc394:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r19, r24) == 0x0) goto loc_1001dc3f0;

loc_1001dc3b8:
    r0 = [r19 nativeModule];
    r29 = r29;
    goto loc_1001dc3cc;

loc_1001dc3f0:
    r22 = 0x0;
    goto loc_1001dc3f4;

loc_1001dc358:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:r5 line:0x4a8 withFormat:@"No session has been registered during %s"];
    goto loc_1001dc624;
}

-(void)startRingerSwitchDetection:(void *)arg2 {
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
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 ringerSwitchDetectionEnabled];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [ADCMuteSwitchDetector sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 started];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r21 = [[ADCMuteSwitchDetector sharedInstance] retain];
                    var_38 = [r19 retain];
                    [r21 setSilentNotify:&var_58];
                    [r21 release];
                    r0 = @class(ADCMuteSwitchDetector);
                    r0 = [r0 sharedInstance];
                    r0 = [r0 retain];
                    [r0 start];
                    [r0 release];
                    [var_38 release];
            }
    }
    [r19 release];
    return;
}

-(void)adSession:(void *)arg2 onExposureChange:(float)arg3 volume:(float)arg4 isFullscreen:(bool)arg5 {
    r31 = r31 - 0xd0;
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
    r25 = arg3;
    v8 = v1;
    v9 = v0;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            if ((r25 & 0x1) != 0x0) {
                    r0 = [r19 fullscreenModule];
                    r29 = r29;
            }
            else {
                    r0 = [r19 nativeModule];
                    r29 = r29;
            }
            r26 = [r0 retain];
            var_C0 = r26;
            r0 = [ADCNativeLayer sharedLayer];
            r0 = [r0 retain];
            r22 = [r0 nextNativeMessageID];
            [r0 release];
            r23 = @class(NSNumber);
            r23 = [[r23 numberWithUnsignedInteger:[r26 originNumber]] retain];
            r2 = r25;
            r25 = [[NSNumber numberWithBool:r2] retain];
            r26 = [[r19 identifier] retain];
            r27 = [[NSNumber numberWithFloat:r2] retain];
            r28 = [[NSNumber numberWithFloat:r2] retain];
            r20 = [[NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_B8 count:0x5] retain];
            r22 = [[ADCMessage nativeMessageWithType:@"AdContainer.on_exposure_change" identifier:r22 contents:r20] retain];
            [r20 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r23 release];
            r0 = [ADCNativeLayer sharedLayer];
            r0 = [r0 retain];
            [r0 sendMessage:r22];
            [r0 release];
            [r22 release];
            [var_C0 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdSessionAPI adSession:onExposureChange:volume:isFullscreen:]" line:0x4c2 withFormat:@"No session has been registered"];
    }
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)setPresenter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presenter, arg2);
    return;
}

-(void)stopRingerSwitchDetection {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 ringerSwitchDetectionEnabled];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [ADCMuteSwitchDetector sharedInstance];
            r0 = [r0 retain];
            [r0 stop];
            [r0 release];
    }
    return;
}

-(void *)presenter {
    r0 = self->_presenter;
    return r0;
}

-(void)registerHandlers {
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(startFullscreenAd:) forMessageType:@"AdSession.start_fullscreen_ad"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(finishFullscreenAd:) forMessageType:@"AdSession.finish_fullscreen_ad"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(interstitialAvailable:) forMessageType:@"AdSession.interstitial_available"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(interstitialUnavailable:) forMessageType:@"AdSession.interstitial_unavailable"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(adViewAvailable:) forMessageType:@"AdSession.ad_view_available"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(adViewUnavailable:) forMessageType:@"AdSession.ad_view_unavailable"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdViewAvailable:) forMessageType:@"AdSession.native_ad_view_available"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdViewUnavailable:) forMessageType:@"AdSession.native_ad_view_unavailable"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(destroy:) forMessageType:@"AdSession.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(expiring:) forMessageType:@"AdSession.expiring"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(iapEvent:) forMessageType:@"AdSession.iap_event"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(audioStarted:) forMessageType:@"AdSession.audio_started"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(audioStopped:) forMessageType:@"AdSession.audio_stopped"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(hasAudio:) forMessageType:@"AdSession.has_audio"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdMuted:) forMessageType:@"AdSession.native_ad_muted"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(destroyNativeAdView:) forMessageType:@"AdSession.destroy_native_ad_view"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdStarted:) forMessageType:@"AdSession.native_ad_view_started"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdFinished:) forMessageType:@"AdSession.native_ad_view_finished"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(nativeAdEngagement:) forMessageType:@"AdSession.native_engagement"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(expanded:) forMessageType:@"AdSession.expanded"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(leftApplication:) forMessageType:@"AdSession.left_application"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(click:) forMessageType:@"AdSession.click"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(setSupportedOrientations:) forMessageType:@"AdSession.set_supported_orientations"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(changeOrientation:) forMessageType:@"AdSession.change_orientation"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(setFullscreenModuleID:) forMessageType:@"AdSession.set_fullscreen_module_id"];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presenter, 0x0);
    objc_storeStrong((int64_t *)&self->_messageContextForBackgrounding, 0x0);
    objc_storeStrong((int64_t *)&self->_delayedFinishFullscreenAdDict, 0x0);
    objc_storeStrong((int64_t *)&self->_currentCategory, 0x0);
    return;
}

@end