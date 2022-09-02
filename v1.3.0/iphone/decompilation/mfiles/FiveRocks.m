@implementation FiveRocks

+(void)applicationDidRegisterForRemoteNotificationsWithDeviceToken:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 applicationDidRegisterForRemoteNotificationsWithDeviceToken:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)setAnalyticsApiKey:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 set_analyticsApiKey:r19];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 updateDeviceTokenAndUserInfo];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 sendAllQueuedEvents];
    [r0 release];
    [r19 release];
    return;
}

+(void)endSession {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 endSession];
    [r0 release];
    return;
}

+(void)startSession:(void *)arg2 withAppKey:(void *)arg3 withSdkApiKey:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 == 0x0) goto loc_10092f474;

loc_10092f308:
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == r19) goto loc_10092f46c;

loc_10092f334:
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10092f384;

loc_10092f368:
    r0 = [r19 length];
    if (r20 == 0x0 || r0 == 0x0) goto loc_10092f46c;

loc_10092f388:
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == r20) goto loc_10092f464;

loc_10092f3a8:
    r26 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r20, r26) == 0x0) goto loc_10092f3e4;

loc_10092f3c8:
    r0 = [r20 length];
    if (r21 == 0x0 || r0 == 0x0) goto loc_10092f464;

loc_10092f3e8:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == r21) goto loc_10092f45c;

loc_10092f408:
    r26 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r21, r26) == 0x0) goto loc_10092f4a4;

loc_10092f428:
    r25 = [r21 length];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) goto loc_10092f4bc;

loc_10092f474:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10092f4bc:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 startSession:r19 withAppKey:r20 withSdkApiKey:r21];
    goto loc_10092f46c;

loc_10092f46c:
    [r22 release];
    goto loc_10092f474;

loc_10092f4a4:
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_10092f4bc;

loc_10092f45c:
    [r24 release];
    goto loc_10092f464;

loc_10092f464:
    [r23 release];
    goto loc_10092f46c;

loc_10092f3e4:
    if (r21 == 0x0) goto loc_10092f464;
    goto loc_10092f3e8;

loc_10092f384:
    if (r20 == 0x0) goto loc_10092f46c;
}

+(void)applicationDidFinishLaunchingWithOptions:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:**_UIApplicationLaunchOptionsRemoteNotificationKey];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            [r0 release];
            if (r19 != r0) {
                    [FiveRocks applicationDidReceiveRemoteNotification:r19 pushClicked:0x1];
            }
    }
    [r19 release];
    return;
}

+(void)applicationDidReceiveRemoteNotification:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 applicationState];
    [r0 release];
    if (r21 == 0x1) {
            if (CPU_FLAGS & E) {
                    r3 = 0x1;
            }
    }
    [FiveRocks applicationDidReceiveRemoteNotification:r19 pushClicked:r3];
    [r19 release];
    return;
}

+(void *)getFiveRocksSDKVersion {
    r0 = [Tapjoy getVersion];
    return r0;
}

+(void)setDebugEnabled:(bool)arg2 {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 setBDebugLogEnabled:arg2];
    [r0 release];
    return;
}

+(void)setSecureTransportEnabled:(bool)arg2 {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 setBSecureTransportEnabled:arg2];
    [r0 release];
    return;
}

+(void)setFiveRocksNetworkTimeout:(double)arg2 {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 setTimeout:arg2];
    [r0 release];
    return;
}

+(void)setAppDataVersion:(void *)arg2 {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 == 0x0) goto loc_100930148;

loc_1009300a8:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r19) goto loc_100930130;

loc_1009300d0:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [r19 length];
            [r21 release];
            if (r22 == 0x0) {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r0 = [r0 FRAppProperties];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:r2];
                    [r23 release];
                    [r21 release];
                    objc_msgSend(r20, r22);
            }
            else {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 FRAppProperties];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKeyedSubscript:@"data_ver"];
                    [r0 release];
                    [r23 release];
                    [r20 setObject:r2 forKey:r3];
            }
    }
    else {
            [r21 release];
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 FRAppProperties];
            r0 = [r0 retain];
            [r0 setObject:r19 forKeyedSubscript:@"data_ver"];
            [r0 release];
            [r23 release];
            [r20 setObject:r2 forKey:r3];
    }
    goto loc_100930234;

loc_100930234:
    [r20 release];
    [r19 release];
    return;

loc_100930130:
    [r21 release];
    goto loc_100930148;

loc_100930148:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 FRAppProperties];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r23 release];
    [r21 release];
    objc_msgSend(r20, r22);
    goto loc_100930234;
}

+(void)setUserLevel:(int)arg2 {
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
    r20 = arg2;
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r21 = [[NSNumber numberWithInt:r20] retain];
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r21 forKeyedSubscript:@"user_level"];
            [r0 release];
            [r23 release];
            [r21 release];
            [[NSNumber numberWithInt:r20] retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    else {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r2];
            [r22 release];
            [r21 release];
            objc_msgSend(r19, r20);
    }
    [r19 release];
    return;
}

+(void)setUserId:(void *)arg2 {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 == 0x0) goto loc_1009303b4;

loc_100930314:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r19) goto loc_10093039c;

loc_10093033c:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [r19 length];
            [r21 release];
            if (r22 == 0x0) {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r0 = [r0 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:r2];
                    [r23 release];
                    [r21 release];
                    objc_msgSend(r20, r22);
            }
            else {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKeyedSubscript:@"user_id"];
                    [r0 release];
                    [r23 release];
                    [r20 setObject:r2 forKey:r3];
            }
    }
    else {
            [r21 release];
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r19 forKeyedSubscript:@"user_id"];
            [r0 release];
            [r23 release];
            [r20 setObject:r2 forKey:r3];
    }
    goto loc_1009304a0;

loc_1009304a0:
    [r20 release];
    [r19 release];
    return;

loc_10093039c:
    [r21 release];
    goto loc_1009303b4;

loc_1009303b4:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 FRUserProperties];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r23 release];
    [r21 release];
    objc_msgSend(r20, r22);
    goto loc_1009304a0;
}

+(void)applicationDidReceiveRemoteNotification:(void *)arg2 pushClicked:(bool)arg3 {
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
    r22 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10092fd88;

loc_10092f818:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r20 == r0) goto loc_10092fd88;

loc_10092f848:
    [NSString class];
    r1 = @selector(isKindOfClass:);
    var_C0 = r1;
    if ((objc_msgSend(r20, r1) & 0x1) == 0x0) goto loc_10092f890;

loc_10092f87c:
    var_CC = r22;
    r26 = [r20 retain];
    goto loc_10092f8b4;

loc_10092f8b4:
    var_C8 = @selector(null);
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r26 == r22) goto loc_10092f920;

loc_10092f8d8:
    [NSString class];
    if ((objc_msgSend(r26, var_C0) & 0x1) == 0x0) goto loc_10092f928;

loc_10092f8fc:
    r21 = [r26 length];
    [r22 release];
    if (r21 != 0x0) goto loc_10092f930;

loc_10092fd80:
    [r26 release];
    goto loc_10092fd88;

loc_10092fd88:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10092f930:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    var_B0 = r26;
    r0 = [r0 pushIds];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r26 = r0;
            r21 = [[r0 pushIds] retain];
            r0 = objc_msgSend(@class(NSNull), var_C8);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r26 release];
            [r25 release];
            [r22 release];
            if (r21 == r0) {
                    r22 = [[NSMutableDictionary dictionary] retain];
                    r0 = [FiveRocks sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setPushIds:r22];
                    [r0 release];
                    [r22 release];
            }
    }
    else {
            [r25 release];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            r0 = [FiveRocks sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setPushIds:r22];
            [r0 release];
            [r22 release];
    }
    r23 = @selector(objectForKey:);
    r25 = [[NSDate date] retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 pushIds];
    r0 = [r0 retain];
    [r0 setObject:r25 forKeyedSubscript:var_B0];
    [r0 release];
    [r26 release];
    [r25 release];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r2 = 0x1;
    [r0 updatePushIds:r2];
    [r0 release];
    var_D8 = [[FiveRocks sharedInstance] retain];
    r25 = @class(NSMutableDictionary);
    r21 = @class(NSNumber);
    r0 = @class(NSDate);
    r0 = [r0 date];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r22 = [[r21 numberWithDouble:r2] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-176] forKeys:&var_A8 count:0x1] retain];
    r27 = [[NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4] retain];
    r21 = [[r25 dictionaryWithDictionary:r27] retain];
    [var_D8 trackEventInfo:r21 withError:0x0];
    [r21 release];
    [r27 release];
    [r26 release];
    [r22 release];
    [r28 release];
    [var_D8 release];
    r0 = objc_msgSend(r19, r23);
    r29 = r29;
    r22 = [r0 retain];
    r26 = var_B0;
    r1 = var_C8;
    if (r22 != 0x0) {
            r0 = objc_msgSend(@class(NSNull), r1);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r22 != r0) {
                    [NSString class];
                    if ((objc_msgSend(r22, var_C0) & 0x1) != 0x0) {
                            r0 = [r22 retain];
                    }
                    else {
                            r0 = [r22 description];
                            r0 = [r0 retain];
                    }
                    r21 = r0;
                    if (var_CC != 0x0) {
                            [TJSystemPlacement showPushContent:r21 withId:r26];
                    }
                    [r21 release];
            }
    }
    r0 = r22;
    goto loc_10092fd7c;

loc_10092fd7c:
    [r0 release];
    goto loc_10092fd80;

loc_10092f928:
    [r22 release];
    goto loc_10092f930;

loc_10092f920:
    r0 = r26;
    goto loc_10092fd7c;

loc_10092f890:
    r0 = [r20 description];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_10092fd80;

loc_10092f8b0:
    var_CC = r22;
    goto loc_10092f8b4;
}

+(void *)getInternalUserTagList {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRUserTags] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setUserFriendCount:(int)arg2 {
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
    r20 = arg2;
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r21 = [[NSNumber numberWithInt:r20] retain];
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r21 forKeyedSubscript:@"friend_count"];
            [r0 release];
            [r23 release];
            [r21 release];
            [[NSNumber numberWithInt:r20] retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    else {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r2];
            [r22 release];
            [r21 release];
            objc_msgSend(r19, r20);
    }
    [r19 release];
    return;
}

+(void *)getUserTags {
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
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 FRUserTags];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 FRUserTags] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            if (r24 == r0) {
                    if (CPU_FLAGS & E) {
                            r26 = 0x1;
                    }
            }
            [r0 release];
            [r24 release];
            [r23 release];
    }
    else {
            r26 = 0x1;
    }
    [r22 release];
    [r19 release];
    if (r26 != 0x0) {
            r20 = [[NSMutableSet set] retain];
    }
    else {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r21 = [[r0 FRUserTags] retain];
            r20 = [[NSMutableSet setWithArray:r21] retain];
            [r21 release];
            [r0 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void)setUserCohortVariable:(int)arg2 value:(void *)arg3 {
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
    r19 = [arg3 retain];
    r8 = arg2 - 0x1;
    if (r8 < 0x5) goto loc_100930994;

loc_100930970:
    [TJCLog logWithLevel:0x3 format:@"setUserCohortVariable: index should be in range of 1 to 5"];
    goto loc_100930c04;

loc_100930c04:
    [r19 release];
    return;

loc_100930994:
    if (r8 > 0x4) goto loc_1009309cc;

loc_10093099c:
    switch (sign_extend_64(*(int32_t *)(0x100930cb4 + r8 * 0x4)) + 0x100930cb4) {
        case 0:
            r20 = @"uv1";
            [r20 retain];
            r21 = @"FiverocksUserVariable1";
            break;
        case 1:
            r20 = @"uv2";
            [r20 retain];
            r21 = @"FiverocksUserVariable2";
            break;
        case 2:
            r20 = @"uv3";
            [r20 retain];
            r21 = @"FiverocksUserVariable3";
            break;
        case 3:
            r20 = @"uv4";
            [r20 retain];
            r21 = @"FiverocksUserVariable4";
            break;
        case 4:
            r20 = @"uv5";
            [r20 retain];
            r21 = @"FiverocksUserVariable5";
            break;
    }
    [r21 retain];
    goto loc_100930a4c;

loc_100930a4c:
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = r29;
    r22 = [r0 retain];
    if (r19 == 0x0) goto loc_100930b10;

loc_100930a70:
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == r19) goto loc_100930af8;

loc_100930a98:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r24 = [r19 length];
            [r23 release];
            if (r24 == 0x0) {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r0 = [r0 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:r2];
                    [r25 release];
                    [r23 release];
                    objc_msgSend(r22, r24);
            }
            else {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKeyedSubscript:r20];
                    [r0 release];
                    [r25 release];
                    [r22 setObject:r2 forKey:r3];
            }
    }
    else {
            [r23 release];
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r19 forKeyedSubscript:r20];
            [r0 release];
            [r25 release];
            [r22 setObject:r2 forKey:r3];
    }
    goto loc_100930bec;

loc_100930bec:
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100930c04;

loc_100930af8:
    [r23 release];
    goto loc_100930b10;

loc_100930b10:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 FRUserProperties];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r25 release];
    [r23 release];
    objc_msgSend(r22, r24);
    goto loc_100930bec;

loc_1009309cc:
    r20 = 0x0;
    r21 = 0x0;
    goto loc_100930a4c;
}

+(void)showFRPlacementContent:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 showPlacementContent:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)closeFRPlacementContent {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 closePlacementContent];
    [r0 release];
    return;
}

+(void)setUserTags:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100931154;

loc_100930f50:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100931154;

loc_100930f80:
    r0 = [NSMutableArray arrayWithCapacity:[r19 count]];
    r29 = r29;
    r20 = [r0 retain];
    r0 = [r19 retain];
    var_120 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 == 0x0) goto loc_100931134;

loc_100931004:
    var_138 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_100931020;

loc_100931020:
    r22 = 0x0;
    goto loc_100931038;

loc_100931038:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r27 = @selector(length);
    r23 = *(0x0 + r22 * 0x8);
    r28 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r0 = [r23 stringByTrimmingCharactersInSet:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r28 release];
    if (objc_msgSend(r23, r27) == 0x0 || [r23 length] > 0xc8) goto loc_1009310e0;

loc_1009310bc:
    [r20 addObject:r2];
    if ([r20 count] > 0xc7) goto loc_10093112c;

loc_1009310e0:
    [r23 release];
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_100931038;

loc_1009310f4:
    r24 = objc_msgSend(var_120, var_138);
    if (r24 != 0x0) goto loc_100931020;

loc_100931134:
    [var_120 release];
    if ([r20 count] != 0x0) goto loc_100931158;

loc_10093114c:
    [r20 release];
    goto loc_100931154;

loc_100931154:
    r20 = 0x0;
    goto loc_100931158;

loc_100931158:
    var_58 = **___stack_chk_guard;
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 setFRUserTags:r20];
    [r0 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r20 forKey:@"FiverocksUserTags"];
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10093112c:
    [r23 release];
    goto loc_100931134;
}

+(void)dismissPlacementContent:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 dismissPlacementContent:r19];
    [r0 release];
    [r19 release];
    return;
}

+(bool)isCurrentPlacementContentInterstitial {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 currentPlacementContent] retain];
    [FRInterstitialContent class];
    r21 = [r20 isKindOfClass:r2];
    [r20 release];
    [r0 release];
    r0 = r21;
    return r0;
}

+(bool)hasCurrentPlacementContent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 currentPlacementContent];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isCurrentPlacementContentContextual {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 currentPlacementContent] retain];
    [FRContextualContent class];
    r21 = [r20 isKindOfClass:r2];
    [r20 release];
    [r0 release];
    r0 = r21;
    return r0;
}

+(void *)getActionIds {
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
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 updateActionIds];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 actionIds];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1009317d0;

loc_100931690:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 actionIds] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r24 == r25) goto loc_1009317b8;

loc_1009316e4:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 actionIds];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 count];
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (r27 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 actionIds];
            r0 = [r0 retain];
            r21 = [[r0 allKeys] retain];
            [r0 release];
            [r19 release];
    }
    else {
            r21 = 0x0;
    }
    goto loc_1009317e4;

loc_1009317e4:
    r0 = [r21 autorelease];
    return r0;

loc_1009317b8:
    [r25 release];
    [r24 release];
    [r23 release];
    goto loc_1009317d0;

loc_1009317d0:
    [r20 release];
    [r19 release];
    r21 = 0x0;
    goto loc_1009317e4;
}

+(void)trackException:(void *)arg2 withError:(void * *)arg3 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r19) {
                    r21 = [[r19 name] retain];
                    r22 = [[r19 reason] retain];
                    r23 = [[r19 userInfo] retain];
                    r0 = [r19 callStackSymbols];
                    r0 = [r0 retain];
                    r27 = [[r0 componentsJoinedByString:@"\n"] retain];
                    r25 = [[NSString stringWithFormat:@"%@\n%@\n%@\n%@"] retain];
                    [FiveRocks trackExceptionWithDescription:r25 withError:r20];
                    [r25 release];
                    [r27 release];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    [r21 release];
            }
            else {
                    if (r20 != 0x0) {
                            *r20 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:0x0] retain] autorelease];
                    }
            }
    }
    else {
            if (r20 != 0x0) {
                    *r20 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:0x0] retain] autorelease];
            }
    }
    [r19 release];
    return;
}

+(void)trackExceptionWithDescription:(void *)arg2 withError:(void * *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1009325fc;

loc_10093257c:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r19) goto loc_1009325f4;

loc_1009325a4:
    r2 = [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [r19 length];
            [r21 release];
            if (r22 == 0x0) {
                    if (r20 != 0x0) {
                            *r20 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:0x0] retain] autorelease];
                    }
            }
            else {
                    r21 = [[FiveRocks sharedInstance] retain];
                    r23 = @class(NSMutableDictionary);
                    r24 = @class(NSNumber);
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 timeIntervalSince1970];
                    asm { frintm     d0, d0 };
                    r24 = [[r24 numberWithDouble:r2] retain];
                    r25 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
                    r23 = [[r23 dictionaryWithDictionary:r25] retain];
                    [r21 trackEventInfo:r23 withError:r20];
                    [r23 release];
                    [r25 release];
                    [r24 release];
                    [r22 release];
                    [r21 release];
            }
    }
    else {
            [r21 release];
            r21 = [[FiveRocks sharedInstance] retain];
            r23 = @class(NSMutableDictionary);
            r24 = @class(NSNumber);
            r0 = [NSDate date];
            r0 = [r0 retain];
            r22 = r0;
            [r0 timeIntervalSince1970];
            asm { frintm     d0, d0 };
            r24 = [[r24 numberWithDouble:r2] retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
            r23 = [[r23 dictionaryWithDictionary:r25] retain];
            [r21 trackEventInfo:r23 withError:r20];
            [r23 release];
            [r25 release];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    goto loc_100932798;

loc_100932798:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1009325f4:
    [r21 release];
    goto loc_1009325fc;

loc_1009325fc:
    if (r20 != 0x0) {
            *r20 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:0x0] retain] autorelease];
    }
    goto loc_100932798;
}

+(void)trackUsageStat:(void *)arg2 {
    r0 = [arg2 dictionaryToSend];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    r22 = @class(NSNumber);
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    [[r22 numberWithDouble:r2] retain];
    objc_msgSend(r19, r20);
    [r22 release];
    [r21 release];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 trackEventInfo:r19 withError:0x0];
    [r0 release];
    [r19 release];
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 withError:(void * *)arg6 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [FiveRocks trackEvent:r19 category:r20 parameter1:r21 parameter2:arg5 values:0x0 withError:arg6];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value:(long long)arg6 withError:(void * *)arg7 {
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
    var_48 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [[NSNumber numberWithLong:arg6] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
    r26 = [r0 retain];
    [FiveRocks trackEvent:r19 category:r20 parameter1:r21 parameter2:r22 values:r26 withError:arg7];
    [r26 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 withError:(void * *)arg8 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    [FiveRocks trackEvent:r19 category:r20 parameter1:r21 parameter2:r22 value1name:arg6 value1:arg7 value2name:q0 value2:stack[-120] value3name:q0 value3:stack[-104] withError:arg8];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 value2name:(void *)arg8 value2:(long long)arg9 withError:(void * *)arg10 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    [FiveRocks trackEvent:r19 category:r20 parameter1:r21 parameter2:r22 value1name:r23 value1:arg7 value2name:arg8 value2:arg9 value3name:0x0 value3:0x0 withError:arg10];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 value2name:(void *)arg8 value2:(long long)arg9 value3name:(void *)arg10 value3:(long long)arg11 withError:(void * *)arg12 {
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
    r27 = arg7;
    var_60 = arg12;
    var_70 = arg11;
    var_68 = arg9;
    var_58 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg8 retain];
    r25 = [arg10 retain];
    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if (r23 == 0x0) goto loc_100932fec;

loc_100932f28:
    r0 = [NSNull null];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == r23) goto loc_100932fe4;

loc_100932f50:
    [NSString class];
    if (([r23 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100932fa0;

loc_100932f7c:
    r19 = [r23 length];
    [r28 release];
    if (r19 != 0x0) goto loc_100932fa8;

loc_100932fec:
    if (r24 == 0x0) goto loc_1009330b4;

loc_100932ff0:
    r0 = [NSNull null];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == r24) goto loc_1009330ac;

loc_100933018:
    [NSString class];
    if (([r24 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100933068;

loc_100933044:
    r19 = [r24 length];
    [r28 release];
    if (r19 != 0x0) goto loc_100933070;

loc_1009330b4:
    if (r25 == 0x0) goto loc_10093317c;

loc_1009330b8:
    r0 = [NSNull null];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == r25) goto loc_100933174;

loc_1009330e0:
    [NSString class];
    if (([r25 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100933130;

loc_10093310c:
    r19 = [r25 length];
    [r28 release];
    if (r19 != 0x0) goto loc_100933138;

loc_10093317c:
    [FiveRocks trackEvent:var_58 category:r20 parameter1:r21 parameter2:r22 values:r26 withError:var_60];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [var_58 release];
    return;

loc_100933138:
    r28 = [[NSNumber numberWithLongLong:var_70] retain];
    [r26 setObject:r28 forKeyedSubscript:r25];
    goto loc_100933174;

loc_100933174:
    [r28 release];
    goto loc_10093317c;

loc_100933130:
    [r28 release];
    goto loc_100933138;

loc_100933070:
    r0 = [NSNumber numberWithLongLong:var_68];
    r29 = r29;
    r28 = [r0 retain];
    [r26 setObject:r28 forKeyedSubscript:r24];
    goto loc_1009330ac;

loc_1009330ac:
    [r28 release];
    goto loc_1009330b4;

loc_100933068:
    [r28 release];
    goto loc_100933070;

loc_100932fa8:
    r0 = [NSNumber numberWithLongLong:r27];
    r29 = r29;
    r28 = [r0 retain];
    [r26 setObject:r28 forKeyedSubscript:r23];
    goto loc_100932fe4;

loc_100932fe4:
    [r28 release];
    goto loc_100932fec;

loc_100932fa0:
    [r28 release];
    goto loc_100932fa8;
}

+(void)trackPurchase:(void *)arg2 currencyCode:(void *)arg3 price:(double)arg4 campaignId:(void *)arg5 transactionId:(void *)arg6 withError:(void * *)arg7 {
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
    r29 = &saved_fp;
    r26 = arg6;
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r28 = [arg5 retain];
    if (r19 == 0x0) goto loc_100931990;

loc_100931904:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r19) goto loc_100931988;

loc_100931930:
    r2 = [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100931a1c;

loc_100931964:
    r23 = [r19 length];
    [r21 release];
    if (r23 != 0x0) goto loc_100931a24;

loc_100931990:
    if (r26 != 0x0) {
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            *r26 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:r23] retain] autorelease];
            [r23 release];
    }
    goto loc_100932130;

loc_100932130:
    var_68 = **___stack_chk_guard;
    [r28 release];
    [r25 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100931a24:
    var_B8 = r25;
    var_D0 = r28;
    if (r20 == 0x0) goto loc_100931aa4;

loc_100931a30:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r20) goto loc_100931a9c;

loc_100931a54:
    r22 = @selector(isKindOfClass:);
    r2 = [NSString class];
    if ((objc_msgSend(r20, r22) & 0x1) != 0x0) {
            r23 = [r20 length];
            [r21 release];
            if (r23 == 0x0) {
                    [@"XXX" retain];
                    [r20 release];
                    r20 = @"XXX";
            }
    }
    else {
            [r21 release];
    }
    goto loc_100931acc;

loc_100931acc:
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r21 = *(r28 + 0xf98);
    r23 = @class(NSNumber);
    var_D8 = r0;
    [r0 timeIntervalSince1970];
    d0 = d0 * *0x100b9b058;
    asm { frintm     d0, d0 };
    r23 = [[r23 numberWithDouble:r2] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_A8 count:0x3] retain];
    var_C0 = [[r21 dictionaryWithDictionary:r25] retain];
    [r25 release];
    [r23 release];
    r0 = *(r28 + 0xf98);
    r0 = [r0 dictionaryWithCapacity:0x5];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 setObject:r19 forKeyedSubscript:@"product_id"];
    if (var_B8 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != var_B8) {
                    r22 = @selector(isKindOfClass:);
                    [NSString class];
                    if (objc_msgSend(var_B8, r22) != 0x0 && [var_B8 length] == 0x0) {
                            [r21 release];
                    }
                    else {
                            r22 = @selector(isKindOfClass:);
                            [NSString class];
                            r28 = objc_msgSend(var_B8, r22);
                            [r21 release];
                            if (r28 != 0x0) {
                                    [r25 setObject:var_B8 forKeyedSubscript:@"campaign_id"];
                            }
                    }
            }
            else {
                    [r21 release];
            }
    }
    [r25 setObject:r20 forKeyedSubscript:@"product_price_currency"];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    [r25 setObject:r21 forKeyedSubscript:@"product_price"];
    [r21 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if ([r0 compare:@"7.0" options:0x40] == -0x1 || var_D0 == 0x0) goto loc_100931e0c;

loc_100931d84:
    r0 = [NSNull null];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == var_D0) goto loc_100931e04;

loc_100931dac:
    r22 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(var_D0, r22) == 0x0) goto loc_100931e14;

loc_100931dd0:
    r22 = [var_D0 length];
    [r27 release];
    [r28 release];
    [r21 release];
    if (r22 != 0x0) goto loc_100931e2c;

loc_100931f28:
    var_C8 = @selector(numberWithDouble:);
    [var_C0 setObject:r2 forKeyedSubscript:r3];
    [*(&@class(MCPromoSystemNotificationCenter) + 0xb88) increasePurchaseCount:var_D8 currency:r20 price:0x3];
    r0 = *(&@class(MCPromoSystemNotificationCenter) + 0xb88);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 trackEventInfo:var_C0 withError:r26];
    [r0 release];
    r0 = *(&@class(MCPromoSystemNotificationCenter) + 0xb88);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 sendAllQueuedEvents];
    [r0 release];
    [objc_msgSend(@class(NSNumber), var_C8) retain];
    r0 = *(&@class(MCPromoSystemNotificationCenter) + 0xb88);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 FRUserPropertiesPurchase];
    r0 = [r0 retain];
    objc_msgSend(r0, r23);
    [r27 release];
    [r24 release];
    [r21 release];
    r0 = *(r28 + 0xb88);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r0 = [r0 purchaseLastAt];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    [objc_msgSend(r27, var_C8) retain];
    r0 = *(r28 + 0xb88);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r0 = objc_msgSend(r0, r26);
    r0 = [r0 retain];
    objc_msgSend(r0, r23);
    [r26 release];
    [r28 release];
    [r27 release];
    [r24 release];
    [r21 release];
    [r25 release];
    [var_C0 release];
    [var_D8 release];
    r25 = var_B8;
    r28 = var_D0;
    goto loc_100932130;

loc_100931e2c:
    [r25 setObject:var_D0 forKeyedSubscript:@"transaction_id"];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 appStoreReceiptURL];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    r22 = [r21 checkResourceIsReachableAndReturnError:&var_B0];
    r24 = [var_B0 retain];
    if (r22 != 0x0) {
            r0 = [NSData dataWithContentsOfURL:r21];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 base64EncodedStringWithOptions:0x0];
            r29 = r29;
            r28 = [r0 retain];
            [r25 setObject:r28 forKeyedSubscript:@"receipt"];
            [r28 release];
            [r27 release];
    }
    r0 = r24;
    goto loc_100931f1c;

loc_100931f1c:
    [r0 release];
    [r21 release];
    goto loc_100931f28;

loc_100931e14:
    [r27 release];
    [r28 release];
    [r21 release];
    goto loc_100931e2c;

loc_100931e04:
    [r27 release];
    goto loc_100931e0c;

loc_100931e0c:
    r0 = r28;
    goto loc_100931f1c;

loc_100931a9c:
    [r21 release];
    goto loc_100931aa4;

loc_100931aa4:
    [@"XXX" retain];
    [r20 release];
    r20 = @"XXX";
    goto loc_100931acc;

loc_100931a1c:
    [r21 release];
    goto loc_100931a24;

loc_100931988:
    [r21 release];
    goto loc_100931990;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 values:(void *)arg6 withError:(void * *)arg7 {
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
    r29 = &saved_fp;
    r24 = arg7;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r28 = [arg6 retain];
    if (r19 == 0x0) goto loc_10093338c;

loc_100933300:
    r0 = [NSNull null];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == r19) goto loc_100933384;

loc_10093332c:
    r2 = [NSString class];
    r1 = @selector(isKindOfClass:);
    var_128 = r1;
    if ((objc_msgSend(r19, r1) & 0x1) == 0x0) goto loc_100933418;

loc_100933360:
    r20 = [r19 length];
    [r26 release];
    if (r20 != 0x0) goto loc_100933420;

loc_10093338c:
    if (r24 != 0x0) {
            r26 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
            *r24 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x3 userInfo:r26] retain] autorelease];
            [r26 release];
    }
    goto loc_100933a50;

loc_100933a50:
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r22 release];
    [r21 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100933420:
    var_130 = r27;
    var_118 = r28;
    if (r21 == 0x0) goto loc_1009334c0;

loc_10093342c:
    r0 = [NSNull null];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == r21) goto loc_100933470;

loc_10093344c:
    r2 = [NSString class];
    if ((objc_msgSend(r21, var_128) & 0x1) == 0x0) goto loc_1009334d8;

loc_100933470:
    r20 = 0x1;
    if (r22 == 0x0) goto loc_1009334c8;

loc_100933478:
    r0 = [NSNull null];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != r22) {
            r2 = [NSString class];
            r27 = objc_msgSend(r22, var_128) ^ 0x1;
    }
    else {
            r27 = 0x0;
    }
    [r26 release];
    if ((r20 & 0x1) == 0x0) goto loc_100933578;

loc_1009334f4:
    [r28 release];
    if ((r27 & 0x1) != 0x0) goto loc_10093357c;

loc_100933500:
    r27 = var_130;
    r28 = var_118;
    if (r28 == 0x0) goto loc_10093367c;

loc_10093350c:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r28) goto loc_10093367c;

loc_100933530:
    if ([r28 count] < 0x4) goto loc_1009335c0;

loc_100933548:
    if (r24 == 0x0) goto loc_100933a50;

loc_10093354c:
    r0 = [NSError errorWithDomain:@"FiverocksErrorDomain" code:0x5 userInfo:0x0];
    goto loc_1009335b0;

loc_1009335b0:
    *r24 = [[r0 retain] autorelease];
    goto loc_100933a50;

loc_1009335c0:
    d0 = *0x100b9b490;
    [r28 enumerateKeysAndObjectsUsingBlock:&var_E0];
    if (*(int8_t *)(&var_B8 + 0x18) == 0x0) goto loc_100933670;

loc_100933628:
    if (r24 != 0x0) {
            *r24 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x6 userInfo:0x0] retain] autorelease];
    }
    _Block_object_dispose(&var_B8, 0x8);
    goto loc_100933a50;

loc_100933670:
    _Block_object_dispose(&var_B8, 0x8);
    goto loc_10093367c;

loc_10093367c:
    r23 = &@class(MCConfigurationData);
    r26 = @class(NSMutableDictionary);
    r27 = @class(NSNumber);
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r27 = [[r27 numberWithDouble:r2] retain];
    r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x98 count:0x3] retain];
    r0 = [r26 dictionaryWithDictionary:r20];
    r29 = r29;
    r26 = [r0 retain];
    [r20 release];
    [r27 release];
    [r28 release];
    r27 = var_130;
    r28 = r23;
    r23 = r26;
    if (r27 == 0x0) goto loc_100933824;

loc_100933788:
    r0 = *(r28 + 0x530);
    r0 = [r0 null];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == r27) goto loc_1009337f0;

loc_1009337a8:
    [NSString class];
    if ((objc_msgSend(r27, var_128) & 0x1) != 0x0) {
            r20 = [r27 length];
            [r26 release];
            if (r20 != 0x0) {
                    [r23 setObject:r27 forKeyedSubscript:@"category"];
            }
    }
    else {
            [r26 release];
            [r23 setObject:r27 forKeyedSubscript:@"category"];
    }
    goto loc_100933824;

loc_100933824:
    if (r21 == 0x0) goto loc_1009338c4;

loc_100933828:
    r0 = *(r28 + 0x530);
    r0 = [r0 null];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == r21) goto loc_100933890;

loc_100933848:
    [NSString class];
    if ((objc_msgSend(r21, var_128) & 0x1) != 0x0) {
            r20 = [r21 length];
            [r26 release];
            if (r20 != 0x0) {
                    [r23 setObject:r21 forKeyedSubscript:@"p1"];
            }
    }
    else {
            [r26 release];
            [r23 setObject:r21 forKeyedSubscript:@"p1"];
    }
    goto loc_1009338c4;

loc_1009338c4:
    if (r22 != 0x0) {
            r0 = *(r28 + 0x530);
            r0 = [r0 null];
            r29 = r29;
            r26 = [r0 retain];
            if (r26 != r22) {
                    [NSString class];
                    if ((objc_msgSend(r22, var_128) & 0x1) != 0x0) {
                            r20 = [r22 length];
                            [r26 release];
                            if (r20 != 0x0) {
                                    [r23 setObject:r22 forKeyedSubscript:@"p2"];
                            }
                    }
                    else {
                            [r26 release];
                            [r23 setObject:r22 forKeyedSubscript:@"p2"];
                    }
            }
            else {
                    [r26 release];
            }
    }
    goto loc_100933960;

loc_100933960:
    if (var_118 != 0x0) {
            r0 = *(r28 + 0x530);
            r0 = [r0 null];
            r29 = r29;
            r20 = [r0 retain];
            r0 = var_118;
            if (r20 != r0) {
                    r25 = [r0 count];
                    [r20 release];
                    if (r25 != 0x0) {
                            [r23 setObject:var_118 forKeyedSubscript:@"values"];
                    }
            }
            else {
                    [r20 release];
            }
    }
    r20 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    [r23 retain];
    dispatch_async(r20, &var_110);
    [r20 release];
    [r23 release];
    [r24 release];
    r28 = var_118;
    goto loc_100933a50;

loc_100933890:
    [r26 release];
    if (r22 != 0x0) {
            r0 = *(r28 + 0x530);
            r0 = [r0 null];
            r29 = r29;
            r26 = [r0 retain];
            if (r26 != r22) {
                    [NSString class];
                    if ((objc_msgSend(r22, var_128) & 0x1) != 0x0) {
                            r20 = [r22 length];
                            [r26 release];
                            if (r20 != 0x0) {
                                    [r23 setObject:r22 forKeyedSubscript:@"p2"];
                            }
                    }
                    else {
                            [r26 release];
                            [r23 setObject:r22 forKeyedSubscript:@"p2"];
                    }
            }
            else {
                    [r26 release];
            }
    }
    goto loc_100933960;

loc_1009337f0:
    [r26 release];
    if (r21 != 0x0) goto loc_100933828;
    goto loc_1009338c4;

loc_10093357c:
    r27 = var_130;
    r28 = var_118;
    if (r24 == 0x0) goto loc_100933a50;

loc_100933588:
    r0 = [NSError errorWithDomain:@"FiverocksErrorDomain" code:0x4 userInfo:0x0];
    goto loc_1009335b0;

loc_100933578:
    if (r27 == 0x0) goto loc_100933500;
    goto loc_10093357c;

loc_1009334c8:
    if (r20 != 0x0) {
            [r28 release];
    }
    goto loc_100933500;

loc_1009334d8:
    [r28 release];
    goto loc_10093357c;

loc_1009334c0:
    r20 = 0x0;
    if (r22 != 0x0) goto loc_100933478;
    goto loc_1009334c8;

loc_100933418:
    [r26 release];
    goto loc_100933420;

loc_100933384:
    [r26 release];
    goto loc_10093338c;
}

+(bool)isFirstRun {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = [r0 boolForKey:@"bFiverocksRunBefore"];
    [r0 release];
    if ((r19 & 0x1) == 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            [r0 setBool:0x1 forKey:@"bFiverocksRunBefore"];
            [r0 release];
    }
    r0 = r19 ^ 0x1;
    return r0;
}

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    objc_sync_enter(self);
    r20 = *0x1011dc178;
    r19 = [self retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011dc178, 0x100ea2958);
    }
    objc_retainAutoreleaseReturnValue(*0x1011dc180);
    objc_sync_exit(r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setTimeout:r2];
            [r19 setBDebugLogEnabled:0x0];
            [r19 setBSecureTransportEnabled:0x0];
            [r19 setPurchaseTotalCount:0x0];
            [r19 setPurchaseTotalPrice:0x0];
            [r19 setPurchaseLastPrice:0x0];
            [r19 setSessionTotalCount:0x0];
            [r19 setSessionTotalLength:0x0];
            [r19 setSessionLastLength:0x0];
            [r19 setEventSeqNo:0x0];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setPrevEvent:r22];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRPlacementContentCalls:r22];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRUserProperties:r22];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRUserPropertiesPurchase:r22];
            [r22 release];
            r24 = [[r19 FRUserPropertiesPurchase] retain];
            r0 = [r19 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r24 forKeyedSubscript:@"purchase"];
            [r0 release];
            [r24 release];
            r24 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRUserPropertiesSession:r24];
            [r24 release];
            r24 = [[r19 FRUserPropertiesSession] retain];
            r0 = [r19 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r24 forKeyedSubscript:@"session"];
            [r0 release];
            [r24 release];
            [r19 setFRUserTags:0x0];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRAppProperties:r22];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setFRTimedEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRQueuedAppEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRQueuedCampaignEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRQueuedCustomEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRQueuedUsagesEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRSendingAppEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRSendingCampaignEvents:r22];
            [r22 release];
            r22 = [[NSMutableArray array] retain];
            [r19 setFRSendingCustomEvents:r22];
            [r22 release];
            r20 = [[NSMutableArray array] retain];
            [r19 setFRSendingUsagesEvents:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)refreshIDFA {
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
    r22 = self;
    r19 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r20 = [[r0 getAdvertisingIdentifier] retain];
    [r0 release];
    [r21 release];
    r21 = [[r19 stringForKey:@"FiverocksIDFA"] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 util];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isAdTrackingEnabled];
    [r0 release];
    [r23 release];
    if (r20 == 0x0) goto loc_100939448;

loc_1009393bc:
    r0 = [NSNull null];
    r29 = r29;
    r27 = [r0 retain];
    if (r20 == r27) goto loc_100939440;

loc_1009393e8:
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1009394c4;

loc_10093941c:
    r24 = [r20 length];
    [r27 release];
    if (r24 != 0x0) goto loc_1009394cc;

loc_100939448:
    if (r21 == 0x0) goto loc_1009396f4;

loc_10093944c:
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r21 == r23) goto loc_100939618;

loc_100939474:
    [NSString class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100939620;

loc_1009394a0:
    r24 = [r21 length];
    [r23 release];
    if (r24 != 0x0) goto loc_100939628;

loc_1009396f4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100939628:
    r0 = [r22 FRUserProperties];
    r0 = [r0 retain];
    [r0 setObject:r21 forKeyedSubscript:@"idfa"];
    [r0 release];
    r25 = [[NSNumber numberWithBool:r2] retain];
    r0 = [r22 FRUserProperties];
    r0 = [r0 retain];
    [r0 setObject:r25 forKeyedSubscript:@"idfa_optout"];
    [r0 release];
    r0 = r25;
    goto loc_1009396c8;

loc_1009396c8:
    [r0 release];
    goto loc_1009396f4;

loc_100939620:
    [r23 release];
    goto loc_100939628;

loc_100939618:
    r0 = r23;
    goto loc_1009396c8;

loc_1009394cc:
    r0 = [r22 FRUserProperties];
    r0 = [r0 retain];
    [r0 setObject:r20 forKeyedSubscript:@"idfa"];
    [r0 release];
    r26 = [[NSNumber numberWithBool:r26 ^ 0x1] retain];
    r0 = [r22 FRUserProperties];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setObject:r26 forKeyedSubscript:@"idfa_optout"];
    [r0 release];
    [r26 release];
    [r19 setObject:r2 forKey:r3];
    if (r21 == 0x0) goto loc_1009396d8;

loc_100939594:
    r23 = [[NSNull null] retain];
    if (r21 == r23) goto loc_1009396d0;

loc_1009395b8:
    [NSString class];
    if (objc_msgSend(r21, r25) == 0x0 || [r21 length] != 0x0) goto loc_1009395f0;

loc_1009396d0:
    [r23 release];
    goto loc_1009396d8;

loc_1009396d8:
    [r19 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
    goto loc_1009396f4;

loc_1009395f0:
    r22 = [r20 isEqualToString:r2];
    [r23 release];
    if ((r22 & 0x1) == 0x0) {
            [r19 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
    }
    goto loc_1009396f4;

loc_1009394c4:
    [r27 release];
    goto loc_1009394cc;

loc_100939440:
    [r27 release];
    goto loc_100939448;
}

-(void)endSession {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r21 = self;
    if ([self bSessionStarted] != 0x0) {
            r0 = [r21 FRTimedEvents];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 valueForKey:@"session"];
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            if (r19 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r19 != r0) {
                            r20 = [[NSDate date] retain];
                            r2 = @"start";
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 doubleValue];
                            [r0 release];
                            [r20 timeIntervalSince1970];
                            v8 = v0;
                            [r21 sessionTotalLength];
                            [r21 setSessionTotalLength:r2];
                            r25 = @class(NSNumber);
                            [r21 sessionTotalLength];
                            asm { frintm     d0, d0 };
                            [[r25 numberWithDouble:r2] retain];
                            r0 = [r21 FRUserPropertiesSession];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setObject:r2 forKeyedSubscript:r3];
                            [r27 release];
                            [r26 release];
                            if (d9 < d10) {
                                    r25 = @selector(setObject:forKeyedSubscript:);
                                    r24 = @selector(numberWithDouble:);
                                    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
                                    asm { frintm     d0, d10 };
                                    r0 = objc_msgSend(r0, r24);
                                    [r0 retain];
                                    objc_msgSend(r19, r25);
                                    [r26 release];
                                    r0 = *(r28 + 0xfc0);
                                    asm { frintm     d0, d8 };
                                    [objc_msgSend(r0, r24) retain];
                                    objc_msgSend(r19, r25);
                                    [r24 release];
                                    [r19 removeObjectForKey:@"start"];
                                    [r21 trackEventInfo:r19 withError:0x0];
                                    [r21 setSessionLastLength:r19];
                                    [r21 setSessionLastAt:r20];
                                    r0 = [NSUserDefaults standardUserDefaults];
                                    [r0 retain];
                                    objc_msgSend(r21, r23);
                                    asm { frintm     d0, d0 };
                                    [r24 setDouble:r2 forKey:r3];
                                    [r21 sessionLastLength];
                                    asm { frintm     d0, d0 };
                                    objc_msgSend(r24, r23);
                                    r0 = [r21 sessionLastAt];
                                    r29 = r29;
                                    [r0 retain];
                                    [r24 setObject:r2 forKey:r3];
                                    [r23 release];
                                    [r24 release];
                            }
                            r0 = [r21 FRTimedEvents];
                            r0 = [r0 retain];
                            [r0 removeObjectForKey:@"session"];
                            [r0 release];
                            [r21 setBSessionStarted:0x0];
                            r0 = [r21 FRQueuedEventsSender];
                            r0 = [r0 retain];
                            [r0 invalidate];
                            [r0 release];
                            [r21 sendAllQueuedEvents];
                            [r20 release];
                    }
            }
            [r19 release];
    }
    return;
}

-(void)trackEventInfo:(void *)arg2 withError:(void * *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 compare:@"5.0" options:0x40];
    [r0 release];
    [r22 release];
    if (r24 == -0x1) goto loc_10093405c;

loc_100933dc0:
    [r20 updatePushIds:0x0];
    r0 = [r19 objectForKeyedSubscript:@"type"];
    r29 = r29;
    [r0 retain];
    r0 = [r20 retain];
    r24 = r0;
    objc_sync_enter(r0);
    r1 = @selector(isEqualToString:);
    var_100 = r22;
    var_F8 = r1;
    if ((objc_msgSend(r22, r1) & 0x1) != 0x0) goto loc_1009343e0;

loc_100933e30:
    [r24 setEventSeqNo:[r24 eventSeqNo] + 0x1];
    r20 = [[NSNumber numberWithInteger:[r24 eventSeqNo]] retain];
    [r19 setObject:r20 forKeyedSubscript:@"event_seq"];
    [r20 release];
    r0 = [r24 prevEvent];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1009340b8;

loc_100933f00:
    r0 = [r24 prevEvent];
    r0 = [r0 retain];
    r28 = r0;
    r20 = [[r0 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r20 == r21) goto loc_100934098;

loc_100933f5c:
    var_118 = r28;
    r0 = [r24 prevEvent];
    r0 = [r0 retain];
    var_120 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r28 = [r0 retain];
    [NSString class];
    if ([r28 isKindOfClass:r2] != 0x0) {
            r0 = [r24 prevEvent];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 valueForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            var_128 = [r0 length];
            [r0 release];
            [r22 release];
            [r28 release];
            [var_120 release];
            [r21 release];
            [r20 release];
            [var_118 release];
            [r27 release];
            [r26 release];
            r22 = @selector(setObject:forKeyedSubscript:);
            r27 = @selector(objectForKeyedSubscript:);
            if (var_128 != 0x0) {
                    r0 = [NSDictionary dictionaryWithDictionary:[[r24 prevEvent] retain]];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r19, r22);
                    [r21 release];
                    [r20 release];
            }
    }
    else {
            r22 = @selector(setObject:forKeyedSubscript:);
            [r28 release];
            [var_120 release];
            [r21 release];
            [r20 release];
            [var_118 release];
            [r27 release];
            [r26 release];
            r27 = @selector(objectForKeyedSubscript:);
            r0 = [NSDictionary dictionaryWithDictionary:[[r24 prevEvent] retain]];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r22);
            [r21 release];
            [r20 release];
    }
    goto loc_10093416c;

loc_10093416c:
    r0 = [r24 prevEvent];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    [r20 release];
    [objc_msgSend(r19, r27) retain];
    r0 = [r24 prevEvent];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    [r21 release];
    [r20 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100934330;

loc_100934220:
    r21 = [objc_msgSend(r19, r27) retain];
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r21 == r23) goto loc_100934318;

loc_100934268:
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r26 = [r0 retain];
    [NSString class];
    if ([r26 isKindOfClass:r2] != 0x0) {
            r0 = objc_msgSend(r19, r27);
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 length];
            [r0 release];
            [r26 release];
            [r23 release];
            [r21 release];
            [r20 release];
            r27 = @selector(objectForKeyedSubscript:);
            if (r22 == 0x0) {
                    r0 = [r24 prevEvent];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 removeObjectForKey:r2];
            }
            else {
                    r20 = [objc_msgSend(r19, r27) retain];
                    r0 = [r24 prevEvent];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKeyedSubscript:r3];
                    [r21 release];
            }
    }
    else {
            [r26 release];
            [r23 release];
            [r21 release];
            [r20 release];
            r20 = [objc_msgSend(r19, r27) retain];
            r0 = [r24 prevEvent];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setObject:r2 forKeyedSubscript:r3];
            [r21 release];
    }
    goto loc_1009343d8;

loc_1009343d8:
    [r20 release];
    goto loc_1009343e0;

loc_1009343e0:
    [r24 refreshIDFA];
    objc_sync_exit(r24);
    [r24 release];
    r20 = [[r24 FRUserProperties] retain];
    r22 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
    [r20 release];
    r0 = [r24 retain];
    r24 = r0;
    objc_sync_enter(r0);
    r28 = var_100;
    r0 = [r24 FRUserTags];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100934548;

loc_100934488:
    r23 = [[r24 FRUserTags] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r21 release];
    if (r23 == r0) goto loc_100934550;

loc_1009344dc:
    r20 = [[r24 FRUserTags] retain];
    r0 = [NSArray arrayWithArray:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r22 setObject:r21 forKeyedSubscript:@"tags"];
    [r21 release];
    r0 = r20;
    goto loc_10093454c;

loc_10093454c:
    [r0 release];
    goto loc_100934550;

loc_100934550:
    r0 = [r24 FRUserPropertiesPurchase];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 != 0x0) {
            r20 = [[r24 FRUserPropertiesPurchase] retain];
            r0 = [NSDictionary dictionaryWithDictionary:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r22 setObject:r21 forKeyedSubscript:@"purchase"];
            [r21 release];
            [r20 release];
    }
    else {
            [r22 removeObjectForKey:r2];
    }
    r25 = @selector(count);
    r0 = [r24 FRUserPropertiesSession];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r25);
    [r0 release];
    if (r23 != 0x0) {
            r0 = [NSDictionary dictionaryWithDictionary:[[r24 FRUserPropertiesSession] retain]];
            r29 = r29;
            [r0 retain];
            [r22 setObject:r2 forKeyedSubscript:r3];
            [r21 release];
            [r20 release];
    }
    else {
            [r22 removeObjectForKey:@"session"];
    }
    objc_sync_exit(r24);
    [r24 release];
    objc_msgSend(r19, r27);
    r21 = @class(NSDictionary);
    [[r21 dictionaryWithDictionary:[[r24 FRAppProperties] retain]] retain];
    objc_msgSend(r19, r27);
    [r21 release];
    [r20 release];
    r0 = [NSDictionary dictionaryWithDictionary:[[r24 FRInfoDictionary] retain]];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r19, r27);
    [r21 release];
    [r20 release];
    if ([FRSNTP isActive] != 0x0) {
            r27 = @selector(setObject:forKeyedSubscript:);
            r2 = @"time";
            [[r19 objectForKeyedSubscript:r2] retain];
            r23 = @class(NSNumber);
            r0 = @class(FRSNTP);
            r0 = [r0 networkTime];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            asm { frintm     d0, d0 };
            r0 = [r23 numberWithDouble:r2];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r27);
            [r23 release];
            [r21 release];
            objc_msgSend(r19, r27);
            [r20 release];
    }
    if (objc_msgSend(r28, var_F8) == 0x0) goto loc_1009349a0;

loc_1009348c4:
    r0 = [r24 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r20 FRQueuedAppEvents];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    r0 = [r20 FRQueuedAppEvents];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r25);
    [r0 release];
    if (r23 < 0x65) goto loc_100934c70;

loc_100934950:
    r21 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    r1 = r29 - 0x78;
    goto loc_100934a90;

loc_100934a90:
    dispatch_async(r21, r1);
    r0 = r21;
    goto loc_100934c6c;

loc_100934c6c:
    [r0 release];
    goto loc_100934c70;

loc_100934c70:
    if ([r24 bDebugLogEnabled] != 0x0) {
            [r24 sendAllQueuedEvents];
    }
    [r22 release];
    [r28 release];
    goto loc_100934ca4;

loc_100934ca4:
    [r19 release];
    return;

loc_1009349a0:
    if (objc_msgSend(r28, var_F8) == 0x0) goto loc_100934aa0;

loc_1009349b8:
    r0 = [r24 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r20 FRQueuedCampaignEvents];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    r0 = [r20 FRQueuedCampaignEvents];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r25);
    [r0 release];
    if (r23 < 0x65) goto loc_100934c70;

loc_100934a44:
    r21 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    r1 = &var_A0;
    goto loc_100934a90;

loc_100934aa0:
    objc_msgSend(r28, var_F8);
    r0 = [r24 retain];
    r23 = r0;
    objc_sync_enter(r0);
    if (r20 == 0x0) goto loc_100934b98;

loc_100934acc:
    r0 = [r23 FRQueuedCustomEvents];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    objc_sync_exit(r23);
    [r23 release];
    r0 = [r23 FRQueuedCustomEvents];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r21 < 0x65) goto loc_100934c70;

loc_100934b48:
    r20 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    r1 = &var_C8;
    goto loc_100934c60;

loc_100934c60:
    dispatch_async(r20, r1);
    r0 = r20;
    goto loc_100934c6c;

loc_100934b98:
    r0 = [r23 FRQueuedUsagesEvents];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    objc_sync_exit(r23);
    [r23 release];
    r0 = [r23 FRQueuedUsagesEvents];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r21 < 0x65) goto loc_100934c70;

loc_100934c14:
    r20 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    r1 = &var_F0;
    goto loc_100934c60;

loc_100934548:
    r0 = r21;
    goto loc_10093454c;

loc_100934318:
    [r21 release];
    [r21 release];
    [r20 release];
    goto loc_100934330;

loc_100934330:
    r0 = [r24 prevEvent];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 removeObjectForKey:r2];
    goto loc_1009343d8;

loc_100934098:
    [r20 release];
    [r20 release];
    [r28 release];
    [r27 release];
    goto loc_1009340b8;

loc_1009340b8:
    r22 = @selector(setObject:forKeyedSubscript:);
    [r26 release];
    r27 = @selector(objectForKeyedSubscript:);
    goto loc_10093416c;

loc_10093405c:
    if (r21 != 0x0) {
            *r21 = [[[NSError errorWithDomain:@"FiverocksErrorDomain" code:0x0 userInfo:0x0] retain] autorelease];
    }
    goto loc_100934ca4;
}

-(void)applicationDidRegisterForRemoteNotificationsWithDeviceToken:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r21 = [[NSMutableString stringWithCapacity:[r0 length] << 0x1] retain];
    r0 = objc_retainAutorelease(r0);
    r23 = r0;
    r24 = [r0 bytes];
    for (r27 = 0x0; [r23 length] > r27; r27 = r27 + 0x1) {
            [r21 appendFormat:r2];
    }
    [r20 saveRemoteNotificationsDeviceToken:r21];
    [r20 updateDeviceTokenAndUserInfo];
    [r21 release];
    [r23 release];
    return;
}

-(void)saveRemoteNotificationsDeviceToken:(void *)arg2 {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringForKey:@"FiverocksPushTokenDevice"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093baf8;

loc_10093baa0:
    r22 = [[NSNull null] retain];
    if (r21 == r22) goto loc_10093baf0;

loc_10093bac8:
    r23 = [r21 isEqualToString:r2];
    [r22 release];
    if ((r23 & 0x1) == 0x0) {
            [r20 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
            [r20 setObject:r2 forKey:r3];
    }
    goto loc_10093bb30;

loc_10093bb30:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10093baf0:
    [r22 release];
    goto loc_10093baf8;

loc_10093baf8:
    [r20 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
    [r20 setObject:r2 forKey:r3];
    goto loc_10093bb30;
}

-(void)updateDeviceTokenAndUserInfo {
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
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 compare:@"5.0" options:0x40];
    [r0 release];
    [r19 release];
    if (r21 == -0x1 || [r20 bSessionStarted] == 0x0) goto loc_10093b77c;

loc_10093b34c:
    r0 = [r20 _analyticsApiKey];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_10093b77c;

loc_10093b370:
    r24 = [[r20 _analyticsApiKey] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r24 == r25) goto loc_10093b458;

loc_10093b3b4:
    r0 = [r20 _analyticsApiKey];
    r29 = r29;
    r27 = [r0 retain];
    [NSString class];
    if ([r27 isKindOfClass:r2] == 0x0) goto loc_10093b4a4;

loc_10093b400:
    r0 = [r20 _analyticsApiKey];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 length];
    [r0 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r19 release];
    if (r20 != 0x0) goto loc_10093b4c4;

loc_10093b77c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10093b4c4:
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 boolForKey:@"FiverocksPushTokenShouldSend"] == 0x0) goto loc_10093b774;

loc_10093b4fc:
    r0 = [r19 stringForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10093b774;

loc_10093b528:
    r25 = [[r19 stringForKey:r2] retain];
    r0 = @class(NSNull);
    r0 = [r0 null];
    r29 = r29;
    r21 = [r0 retain];
    if (r25 == r21) goto loc_10093b60c;

loc_10093b568:
    r23 = @selector(isKindOfClass:);
    r0 = [r19 stringForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    [NSString class];
    if (objc_msgSend(r26, r23) == 0x0) goto loc_10093b61c;

loc_10093b5ac:
    r0 = [r19 stringForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    [r26 release];
    [r21 release];
    [r25 release];
    [r20 release];
    if (r22 != 0x0) goto loc_10093b63c;

loc_10093b774:
    [r19 release];
    goto loc_10093b77c;

loc_10093b63c:
    r20 = [[r19 stringForKey:r2] retain];
    r22 = [[NSString stringWithFormat:@"%@%@"] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r23 = [[FiveRocks buildFRURLRequest:@"https://rpc.tapjoy.com/" path:r22 parameters:r24] retain];
    [r24 release];
    [r22 release];
    r22 = [[NSOperationQueue mainQueue] retain];
    [NSURLConnection sendAsynchronousRequest:r23 queue:r22 completionHandler:0x100ea29d8];
    [r22 release];
    r0 = r23;
    goto loc_10093b768;

loc_10093b768:
    [r0 release];
    [r20 release];
    goto loc_10093b774;

loc_10093b61c:
    [r26 release];
    [r21 release];
    [r25 release];
    [r20 release];
    goto loc_10093b63c;

loc_10093b60c:
    [r21 release];
    r0 = r25;
    goto loc_10093b768;

loc_10093b4a4:
    [r27 release];
    [r25 release];
    [r24 release];
    [r19 release];
    goto loc_10093b4c4;

loc_10093b458:
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            [r19 release];
    }
    else {
            __stack_chk_fail();
    }
    return;
}

-(void)updatePushIds:(bool)arg2 {
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
    r25 = arg2;
    r21 = self;
    r0 = [self pushIds];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_10093c550;

loc_10093c298:
    r20 = [[r21 pushIds] retain];
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r20 == r23) goto loc_10093c540;

loc_10093c2d8:
    r0 = [r21 pushIds];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 count];
    [r0 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (r27 == 0x0) goto .l1;

loc_10093c328:
    r26 = @selector(count);
    r19 = [[NSDate date] retain];
    r0 = [NSMutableArray array];
    r29 = r29;
    r20 = [r0 retain];
    r27 = [r21 pushIds];
    r28 = [r27 retain];
    r23 = [r19 retain];
    var_60 = r23;
    r24 = [r20 retain];
    var_58 = r24;
    [r27 enumerateKeysAndObjectsUsingBlock:&var_80];
    [r28 release];
    if (objc_msgSend(r24, r26) != 0x0 || r25 != 0x0) {
            r26 = @selector(count);
            r0 = [r21 pushIds];
            r0 = [r0 retain];
            [r0 removeObjectsForKeys:r24];
            [r0 release];
            r25 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = [r21 pushIds];
            r29 = r29;
            r0 = [r0 retain];
            r26 = objc_msgSend(r0, r26);
            [r0 release];
            if (r26 != 0x0) {
                    r0 = [r21 pushIds];
                    r0 = [r0 retain];
                    r26 = r0;
                    r27 = [[r0 allKeys] retain];
                    r0 = [r21 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 setObject:r27 forKeyedSubscript:@"push"];
                    [r0 release];
                    [r27 release];
                    [r26 release];
                    [[r21 pushIds] retain];
                    [r25 setObject:r2 forKey:r3];
                    [r22 release];
            }
            else {
                    [r21 setPushIds:0x0];
                    r0 = [r21 FRUserProperties];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:r2];
                    [r22 release];
                    objc_msgSend(r25, r21);
            }
            [r25 release];
    }
    [var_58 release];
    [var_60 release];
    [r24 release];
    r0 = r23;
    goto loc_10093c600;

loc_10093c600:
    [r0 release];
    return;

.l1:
    return;

loc_10093c540:
    [r23 release];
    [r20 release];
    goto loc_10093c550;

loc_10093c550:
    r0 = r19;
    goto loc_10093c600;
}

-(bool)updateFQ {
    r31 = r31 - 0x80;
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
    r20 = [[NSCalendar currentCalendar] retain];
    r22 = [[NSCalendar currentCalendar] retain];
    r23 = [[NSDate date] retain];
    r19 = [[r22 components:0x1c fromDate:r23] retain];
    r25 = [[r20 dateFromComponents:r19] retain];
    [r19 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r24 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = [r21 FQLastUpdateDate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r19 = [[r21 FQLastUpdateDate] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            [r23 release];
            if (r19 != r0) {
                    r20 = 0x0;
            }
            else {
                    r0 = [r24 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 release];
                    if (r20 != 0x0) {
                            r0 = [r24 objectForKey:r2];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r21 setFQLastUpdateDate:r19];
                            [r19 release];
                            r20 = 0x1;
                    }
            }
    }
    else {
            [r23 release];
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 release];
            if (r20 != 0x0) {
                    r0 = [r24 objectForKey:r2];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r21 setFQLastUpdateDate:r19];
                    [r19 release];
                    r20 = 0x1;
            }
    }
    r0 = [r21 FQLastUpdateDate];
    r29 = r29;
    r19 = [r0 retain];
    r23 = [r25 isEqualToDate:r19] ^ 0x1;
    [r19 release];
    if (((r20 | r23) & 0x1) != 0x0) {
            var_70 = r24;
            var_68 = r25;
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r24 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 unsignedIntegerValue];
                    [r0 release];
            }
            else {
                    r24 = 0x0;
            }
            r0 = [r21 FQLastUpdateDate];
            r29 = r29;
            r19 = [r0 retain];
            [r25 timeIntervalSinceDate:r19];
            [r19 release];
            r8 = 0x100ba2000;
            asm { fdiv       d0, d8, d0 };
            asm { fcvtzs     w8, d0 };
            if (r8 < 0x0) {
                    asm { cneg       w9, w8, mi };
            }
            if (r9 > 0x1d) {
                    r8 = 0x0;
            }
            else {
                    if (0x100ba2000 >= 0x1) {
                            r8 = r24 << 0x100ba2000;
                    }
                    else {
                            r8 = 0x100ba2000;
                            asm { neg        w8, w8 };
                            r8 = r24 >> r8;
                    }
            }
            r24 = r8 | 0x1;
            asm { cnt        v0.8b, v0.8b };
            asm { uaddlv     h0, v0.8b };
            [r21 setFQ7:s0];
            asm { cnt        v0.8b, v0.8b };
            asm { uaddlv     h0, v0.8b };
            [r21 setFQ30:s0];
            r0 = [r21 FQ7];
            r8 = 0x7;
            if (r0 < 0x7) {
                    if (!CPU_FLAGS & B) {
                            r8 = 0x7;
                    }
                    else {
                            r8 = r0;
                    }
            }
            if (r8 > 0x1) {
                    asm { csinc      x2, x8, xzr, hi };
            }
            [r21 setFQ7:@"FiverocksFQDatesBits"];
            r0 = [r21 FQ30];
            r8 = 0x1e;
            if (r0 < 0x1e) {
                    if (!CPU_FLAGS & B) {
                            r8 = 0x1e;
                    }
                    else {
                            r8 = r0;
                    }
            }
            if (r8 > 0x1) {
                    asm { csinc      x2, x8, xzr, hi };
            }
            [r21 setFQ30:@"FiverocksFQDatesBits"];
            r19 = [[NSNumber numberWithInteger:[r21 FQ7]] retain];
            r0 = [r21 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r19 forKeyedSubscript:@"fq7"];
            [r0 release];
            [r19 release];
            r19 = [[NSNumber numberWithInteger:[r21 FQ30]] retain];
            r0 = [r21 FRUserProperties];
            r0 = [r0 retain];
            [r0 setObject:r19 forKeyedSubscript:@"fq30"];
            [r0 release];
            [r19 release];
            [r21 setFQLastUpdateDate:var_68];
            r20 = [[r21 FQLastUpdateDate] retain];
            [var_70 setObject:r20 forKey:@"FiverocksFQLastUpdate"];
            [r20 release];
            r20 = [[NSNumber numberWithUnsignedInteger:r24] retain];
            r24 = var_70;
            [r24 setObject:r20 forKey:@"FiverocksFQDatesBits"];
            [r20 release];
            r25 = var_68;
    }
    [r24 release];
    [r25 release];
    r0 = r23;
    return r0;
}

-(void)startSession:(void *)arg2 withAppKey:(void *)arg3 withSdkApiKey:(void *)arg4 {
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
    r29 = &saved_fp;
    r24 = self;
    r25 = [arg2 retain];
    r26 = [arg3 retain];
    r28 = [arg4 retain];
    if (([r24 bSessionStarted] & 0x1) != 0x0) goto loc_10093aa34;

loc_100939e9c:
    var_128 = r26;
    stack[-304] = r25;
    var_130 = r28;
    [r24 updatePushIds:[r24 updateFQ]];
    r0 = dispatch_get_global_queue(0xfffffffffffffffe, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, 0x100ea2998);
    [r19 release];
    [r24 setFREnabledPlacements:0x0];
    [r24 set_sdkApiKey:r28];
    [r24 set_appId:r25];
    [r24 set_appKey:r26];
    r0 = [NSUserDefaults standardUserDefaults];
    var_134 = r20;
    r0 = [r0 retain];
    var_108 = r0;
    r0 = [r0 stringForKey:@"FiveRocksAppId"];
    r29 = r29;
    r0 = [r0 retain];
    var_110 = r0;
    if (r0 == 0x0) goto loc_10093a02c;

loc_100939f90:
    r0 = [NSNull null];
    r29 = r29;
    r19 = [r0 retain];
    if (var_110 == r19) goto loc_10093a024;

loc_100939fbc:
    [NSString class];
    if ([var_110 isKindOfClass:r2] == 0x0 || [var_110 length] != 0x0) goto loc_100939ffc;

loc_10093a024:
    [r19 release];
    goto loc_10093a02c;

loc_10093a02c:
    [var_108 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
    r2 = r25;
    [var_108 setObject:r2 forKey:r3];
    goto loc_10093a064;

loc_10093a064:
    [r24 setBSessionStarted:0x1];
    [r24 setSessionTotalCount:[r24 sessionTotalCount] + 0x1];
    r19 = [[NSNumber numberWithUnsignedInteger:[r24 sessionTotalCount]] retain];
    r0 = [r24 FRUserPropertiesSession];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setObject:r19 forKeyedSubscript:@"total_count"];
    [r0 release];
    [r19 release];
    [r24 sessionTotalLength];
    if (d0 > 0x0) {
            var_100 = @selector(setObject:forKeyedSubscript:);
            [r24 sessionTotalLength];
            asm { frintm     d0, d0 };
            r19 = [[r21 numberWithDouble:r2] retain];
            r0 = objc_msgSend(r24, r20);
            r29 = r29;
            r0 = [r0 retain];
            r2 = r19;
            objc_msgSend(r0, var_100);
            [r21 release];
            [r19 release];
    }
    [r24 sessionLastLength];
    if (d0 > 0x0) {
            var_100 = @selector(setObject:forKeyedSubscript:);
            [r24 sessionLastLength];
            asm { frintm     d0, d0 };
            r19 = [[r21 numberWithDouble:r2] retain];
            r0 = objc_msgSend(r24, r20);
            r29 = r29;
            r0 = [r0 retain];
            r2 = r19;
            objc_msgSend(r0, var_100);
            [r21 release];
            [r19 release];
    }
    r0 = [r24 sessionLastAt];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093a34c;

loc_10093a25c:
    r22 = [[r24 sessionLastAt] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r22 == r0) goto loc_10093a354;

loc_10093a2b0:
    var_100 = @selector(setObject:forKeyedSubscript:);
    r20 = @selector(FRUserPropertiesSession);
    r21 = @class(NSNumber);
    r0 = [r24 sessionLastAt];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    d0 = d0 * *0x100b9b058;
    asm { frintm     d0, d0 };
    r21 = [[r21 numberWithDouble:r2] retain];
    r0 = objc_msgSend(r24, r20);
    r29 = r29;
    r0 = [r0 retain];
    r2 = r21;
    objc_msgSend(r0, var_100);
    [r20 release];
    [r21 release];
    r0 = r19;
    goto loc_10093a350;

loc_10093a350:
    [r0 release];
    goto loc_10093a354;

loc_10093a354:
    if (([FiveRocks isFirstRun] & 0x1) != 0x0) {
            r22 = @class(NSMutableDictionary);
            r21 = @class(NSNumber);
            r20 = @selector(date);
            r0 = objc_msgSend(@class(NSDate), r20);
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            [r0 timeIntervalSince1970];
            d0 = d0 * *0x100b9b058;
            asm { frintm     d0, d0 };
            r21 = [[r21 numberWithDouble:r2] retain];
            r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x98 count:0x3] retain];
            r0 = [r22 dictionaryWithDictionary:r23];
            r29 = r29;
            r22 = [r0 retain];
            [r24 trackEventInfo:r22 withError:0x0];
            [r22 release];
            [r23 release];
            [r21 release];
            [r19 release];
    }
    else {
            r20 = @selector(date);
    }
    var_118 = @selector(sessionTotalCount);
    var_100 = @selector(setObject:forKeyedSubscript:);
    r0 = objc_msgSend(@class(NSDate), r20);
    r0 = [r0 retain];
    var_140 = r0;
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    [[r19 numberWithDouble:r2] retain];
    [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r0 = [r27 dictionaryWithDictionary:r2];
    [r0 retain];
    r0 = [r24 FRTimedEvents];
    r0 = [r0 retain];
    objc_msgSend(r0, var_100);
    [r20 release];
    [r27 release];
    [r26 release];
    [r22 release];
    [var_140 release];
    r0 = objc_msgSend(@class(NSDate), r28);
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    asm { frintm     d0, d0 };
    r21 = [objc_msgSend(r26, r25) retain];
    r23 = [objc_msgSend(@class(NSDictionary), r23) retain];
    r26 = var_108;
    r28 = [objc_msgSend(r22, r19) retain];
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = *(r27 + 0xf98);
    r0 = [r0 dictionary];
    r29 = r29;
    r20 = [r0 retain];
    [r26 setInteger:objc_msgSend(r24, var_118) forKey:@"FiverocksSessionTotalCount"];
    if (var_134 != 0x0) {
            r0 = [r26 objectForKey:@"FiverocksFQLastFQ7"];
            r0 = [r0 retain];
            [r0 integerValue];
            [r0 release];
            [r24 FQ7];
            [[NSString stringWithFormat:@"fq7_%d_%d"] retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r25 release];
            r22 = [[NSNumber numberWithInteger:[r24 FQ7]] retain];
            r26 = var_108;
            [r26 setObject:r22 forKey:@"FiverocksFQLastFQ7"];
            [r22 release];
            r0 = [r26 objectForKey:@"FiverocksFQLastFQ30"];
            r0 = [r0 retain];
            [r0 integerValue];
            [r0 release];
            [r24 FQ30];
            [[NSString stringWithFormat:@"fq30_%d_%d"] retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r21 release];
            r0 = [NSNumber numberWithInteger:[r24 FQ30]];
            r29 = r29;
            r19 = [r0 retain];
            [r26 setObject:r19 forKey:@"FiverocksFQLastFQ30"];
            [r19 release];
    }
    if ([r20 count] != 0x0) {
            [r28 setObject:r2 forKeyedSubscript:r3];
    }
    [r24 trackEventInfo:r28 withError:0x0];
    [r24 updateDeviceTokenAndUserInfo];
    [r24 sendAllQueuedEvents];
    r19 = [[NSTimer scheduledTimerWithTimeInterval:r24 target:@selector(sendAllQueuedEvents) selector:0x0 userInfo:0x1 repeats:r6] retain];
    [r24 setFRQueuedEventsSender:r19];
    [r19 release];
    [TJUsageTracking checkReport];
    [r20 release];
    [r28 release];
    [var_110 release];
    [r26 release];
    r26 = var_128;
    r25 = stack[-304];
    r28 = var_130;
    goto loc_10093aa34;

loc_10093aa34:
    var_68 = **___stack_chk_guard;
    [r28 release];
    [r26 release];
    [r25 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10093a34c:
    r0 = r21;
    goto loc_10093a350;

loc_100939ffc:
    r2 = r25;
    r20 = [var_110 isEqualToString:r2];
    [r19 release];
    if ((r20 & 0x1) == 0x0) {
            [var_108 setBool:0x1 forKey:@"FiverocksPushTokenShouldSend"];
            r2 = r25;
            [var_108 setObject:r2 forKey:r3];
    }
    goto loc_10093a064;
}

-(void)updateActionIds {
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
    r0 = [self actionIds];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093cb04;

loc_10093c82c:
    r23 = [[r19 actionIds] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_10093caf4;

loc_10093c86c:
    r0 = [r19 actionIds];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 count];
    [r0 release];
    [r24 release];
    [r23 release];
    [r21 release];
    if (r26 == 0x0) goto .l1;

loc_10093c8bc:
    r22 = @selector(count);
    r23 = [[NSCalendar currentCalendar] retain];
    r24 = [[NSCalendar currentCalendar] retain];
    r25 = [[NSDate date] retain];
    r26 = [[r24 components:0x1c fromDate:r25] retain];
    r21 = [[r23 dateFromComponents:r26] retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r0 = [NSMutableArray array];
    r29 = r29;
    r23 = [r0 retain];
    r26 = [r19 actionIds];
    r27 = [r26 retain];
    r24 = [r21 retain];
    var_60 = r24;
    r25 = [r23 retain];
    var_58 = r25;
    [r26 enumerateKeysAndObjectsUsingBlock:&var_80];
    [r27 release];
    if (objc_msgSend(r25, r22) != 0x0) {
            r0 = [r19 actionIds];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeObjectsForKeys:r25];
            [r0 release];
    }
    r22 = @selector(count);
    r26 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = [r19 actionIds];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    if (r22 != 0x0) {
            [[r19 actionIds] retain];
            [r26 setObject:r2 forKey:r3];
            [r20 release];
    }
    else {
            [r19 setActionIds:0x0];
            [r26 removeObjectForKey:r2];
    }
    [r26 release];
    [var_58 release];
    [var_60 release];
    [r25 release];
    r0 = r24;
    goto loc_10093cb7c;

loc_10093cb7c:
    [r0 release];
    return;

.l1:
    return;

loc_10093caf4:
    [r24 release];
    [r23 release];
    goto loc_10093cb04;

loc_10093cb04:
    r0 = r21;
    goto loc_10093cb7c;
}

-(void)showPlacementContent:(void *)arg2 {
    r31 = r31 - 0x70;
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
    if ([r0 didExpired] != 0x0) {
            r0 = [r19 placement];
            r29 = r29;
            r22 = [r0 retain];
            [TJCLog logWithLevel:0x4 format:@"'%@' placementContent expired"];
            [r22 release];
            [r19 release];
            r19 = 0x0;
    }
    r0 = [r20 currentPlacementContent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 dismiss];
    [r0 release];
    [r20 setCurrentPlacementContent:r2];
    if (r19 == 0x0) goto loc_10093d3cc;

loc_10093d344:
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r19 == r22) goto loc_10093d3c4;

loc_10093d36c:
    r23 = [r19 hasContent];
    [r22 release];
    if (r23 != 0x0) {
            [r20 setCurrentPlacementContent:r2];
            [r19 show];
            [r20 sendShowEvent:r19];
    }
    else {
            r0 = [r19 _delegate];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 _delegate];
                    r0 = [r0 retain];
                    r21 = [r0 respondsToSelector:@selector(didDismissPlacementContent:)];
                    [r0 release];
                    [r20 release];
                    if (r21 != 0x0) {
                            r19 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_58);
                            [r19 release];
                    }
            }
    }
    goto loc_10093d48c;

loc_10093d48c:
    [r19 release];
    return;

loc_10093d3c4:
    [r22 release];
    goto loc_10093d3cc;

loc_10093d3cc:
    r0 = [r19 _delegate];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 _delegate];
            r0 = [r0 retain];
            r21 = [r0 respondsToSelector:@selector(didDismissPlacementContent:)];
            [r0 release];
            [r20 release];
            if (r21 != 0x0) {
                    r19 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_58);
                    [r19 release];
            }
    }
    goto loc_10093d48c;
}

-(void)addNoMoreTodayPlacementContent:(void *)arg2 {
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
    r0 = [arg2 retain];
    r28 = r0;
    r0 = [r0 meta];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10093d110;

loc_10093cdc8:
    r22 = [[r28 meta] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r22 == r24) goto loc_10093cff0;

loc_10093ce0c:
    r0 = [r28 meta];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_10093cfe8;

loc_10093ce4c:
    var_58 = r28;
    r0 = [r28 meta];
    r0 = [r0 retain];
    r28 = r0;
    r19 = [[r0 valueForKey:r2] retain];
    var_60 = @selector(null);
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    r28 = var_58;
    if (r19 == r0) goto loc_10093d118;

loc_10093ceec:
    r0 = [r28 meta];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 valueForKey:r2];
    r21 = var_60;
    r20 = [r0 retain];
    [r19 release];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 actionIds];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r26 = r0;
            r19 = [[r0 actionIds] retain];
            r0 = objc_msgSend(@class(NSNull), r21);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            [r26 release];
            [r25 release];
            [r24 release];
            if (r19 == r0) {
                    r19 = [[NSMutableDictionary dictionary] retain];
                    r0 = @class(FiveRocks);
                    r0 = [r0 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setActionIds:r19];
                    [r0 release];
                    [r19 release];
            }
    }
    else {
            [r25 release];
            [r24 release];
            r19 = [[NSMutableDictionary dictionary] retain];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setActionIds:r19];
            [r0 release];
            [r19 release];
    }
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = [[r0 actionIds] retain];
    r19 = [[NSDate date] retain];
    [r23 setObject:r19 forKey:r20];
    [r19 release];
    [r23 release];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 updateActionIds];
    r0 = r0;
    goto loc_10093d10c;

loc_10093d10c:
    [r0 release];
    goto loc_10093d110;

loc_10093d110:
    [r20 release];
    goto loc_10093d118;

loc_10093d118:
    [r28 release];
    return;

loc_10093cfe8:
    [r25 release];
    goto loc_10093cff0;

loc_10093cff0:
    [r24 release];
    r0 = r22;
    goto loc_10093d10c;
}

-(void)closePlacementContent {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self currentPlacementContent];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 currentPlacementContent] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r21 release];
            if (r22 != r0) {
                    r0 = [r19 currentPlacementContent];
                    r0 = [r0 retain];
                    r0 = [r0 _delegate];
                    r29 = r29;
                    objc_initWeak(&stack[-72], [r0 retain]);
                    [r22 release];
                    [r21 release];
                    r0 = objc_loadWeakRetained(&stack[-72]);
                    r21 = r0;
                    if (r21 != 0x0) {
                            r0 = objc_loadWeakRetained(&stack[-72]);
                            r23 = [r0 respondsToSelector:@selector(didClosePlacementContent:)];
                            [r0 release];
                            [r21 release];
                            if (r23 != 0x0) {
                                    r0 = [r19 currentPlacementContent];
                                    r0 = [r0 retain];
                                    r0 = [r0 placement];
                                    r29 = r29;
                                    objc_initWeak(&stack[-80], [r0 retain]);
                                    [r22 release];
                                    [r21 release];
                                    objc_copyWeak(&var_70 + 0x20, &stack[-72]);
                                    objc_copyWeak(&var_70 + 0x28, &stack[-80]);
                                    dispatch_async(*__dispatch_main_q, &var_70);
                                    objc_destroyWeak(&var_70 + 0x28);
                                    objc_destroyWeak(&var_70 + 0x20);
                                    objc_destroyWeak(&stack[-80]);
                            }
                    }
                    r20 = [[r19 currentPlacementContent] retain];
                    [r19 dismissPlacementContent:r20];
                    [r20 release];
                    objc_destroyWeak(&stack[-72]);
            }
    }
    else {
            [r21 release];
    }
    return;
}

-(void)dismissPlacementContent:(void *)arg2 {
    r31 = r31 - 0x110;
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
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r26 = [[r0 placement] retain];
    [r19 dismiss];
    r0 = [r23 currentPlacementContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) {
            [r23 setCurrentPlacementContent:0x0];
    }
    r0 = [r23 FRTimedEvents];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 valueForKey:@"view"];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    if (r21 == 0x0) goto loc_10093e1f0;

loc_10093da30:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r21 == r0) goto loc_10093e1f0;

loc_10093da60:
    var_F8 = r26;
    r0 = [r21 objectForKeyedSubscript:@"start"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r0 release];
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    d9 = d0 * *0x100b9b058;
    [r0 release];
    if (d8 >= d9) goto loc_10093dc60;

loc_10093dae8:
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    asm { frintm     d0, d9 };
    r0 = [r0 numberWithDouble:r2];
    [r0 retain];
    [r21 setObject:r2 forKeyedSubscript:r3];
    [r27 release];
    r0 = *(r20 + 0xfc0);
    asm { frintm     d0, d8 };
    [objc_msgSend(r0, r26) retain];
    objc_msgSend(r21, r25);
    [r20 release];
    [r21 removeObjectForKey:@"start"];
    r0 = [r19 meta];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_10093dc40;

loc_10093dbb4:
    r28 = [[r19 meta] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    [r27 release];
    if (r28 == r0) goto loc_10093dc48;

loc_10093dc08:
    r0 = [r19 meta];
    r29 = r29;
    r20 = [r0 retain];
    [r21 setObject:r20 forKeyedSubscript:@"meta"];
    r0 = r20;
    goto loc_10093dc44;

loc_10093dc44:
    [r0 release];
    goto loc_10093dc48;

loc_10093dc48:
    r3 = 0x0;
    [r23 trackEventInfo:r21 withError:r3];
    goto loc_10093dc60;

loc_10093dc60:
    r0 = [r23 FRTimedEvents];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"view"];
    [r0 release];
    r0 = [r19 url];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10093de78;

loc_10093dcb8:
    r25 = [[r19 url] retain];
    r0 = @class(NSNull);
    r0 = [r0 null];
    r29 = r29;
    r26 = [r0 retain];
    if (r25 == r26) goto loc_10093dd8c;

loc_10093dcf0:
    r0 = [r19 url];
    r29 = r29;
    r27 = [r0 retain];
    [NSString class];
    if ([r27 isKindOfClass:r2] == 0x0) goto loc_10093dd9c;

loc_10093dd34:
    r0 = [r19 url];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 length];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    if (r28 != 0x0) goto loc_10093ddbc;

loc_10093de80:
    r0 = [r19 rewardRequest];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10093dfc8;

loc_10093dea8:
    r24 = [[r19 rewardRequest] retain];
    r0 = @class(NSNull);
    r0 = [r0 null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r24 == r0) goto loc_10093dfd0;

loc_10093def4:
    r0 = [r19 _delegate];
    r29 = r29;
    r23 = [r0 retain];
    r26 = var_F8;
    if (r23 == 0x0) goto loc_10093e1f0;

loc_10093df1c:
    r0 = [r19 _delegate];
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(didDismissPlacementContent:rewardRequestForRewardId:name:quantity:token:), r3, r4, r5, r6];
    [r0 release];
    [r23 release];
    if (r20 == 0x0) goto loc_10093e1f0;

loc_10093df60:
    var_70 = [r19 retain];
    var_68 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_90);
    [var_68 release];
    r0 = var_70;
    goto loc_10093e1ec;

loc_10093e1ec:
    [r0 release];
    goto loc_10093e1f0;

loc_10093e1f0:
    [r21 release];
    [r26 release];
    [r19 release];
    return;

loc_10093dfd0:
    r0 = [r19 purchaseRequest];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10093e114;

loc_10093dff4:
    r24 = [[r19 purchaseRequest] retain];
    r0 = @class(NSNull);
    r0 = [r0 null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r24 == r0) goto loc_10093e124;

loc_10093e048:
    r0 = [r19 _delegate];
    r29 = r29;
    r23 = [r0 retain];
    r26 = var_F8;
    if (r23 == 0x0) goto loc_10093e1f0;

loc_10093e068:
    r0 = [r19 _delegate];
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(didDismissPlacementContent:purchaseRequestForProductId:withCampaignId:), r3, r4];
    [r0 release];
    [r23 release];
    if (r20 == 0x0) goto loc_10093e1f0;

loc_10093e0ac:
    var_A0 = [r19 retain];
    var_98 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_C0);
    [var_98 release];
    r0 = var_A0;
    goto loc_10093e1ec;

loc_10093e124:
    r0 = [r19 _delegate];
    r29 = r29;
    r23 = [r0 retain];
    r26 = var_F8;
    if (r23 == 0x0) goto loc_10093e1f0;

loc_10093e144:
    r0 = [r19 _delegate];
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(didDismissPlacementContent:)];
    [r0 release];
    [r23 release];
    if (r20 == 0x0) goto loc_10093e1f0;

loc_10093e188:
    var_D0 = [r19 retain];
    var_C8 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_F0);
    [var_C8 release];
    r0 = var_D0;
    goto loc_10093e1ec;

loc_10093e114:
    [r23 release];
    goto loc_10093e124;

loc_10093dfc8:
    [r23 release];
    goto loc_10093dfd0;

loc_10093ddbc:
    r24 = [[r19 url] retain];
    r23 = [[NSURL URLWithString:r24] retain];
    [r24 release];
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 canOpenURL:r23];
    [r0 release];
    if (r20 == 0x0) goto loc_10093de78;

loc_10093de48:
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    [r0 openURL:r2];
    r0 = r20;
    goto loc_10093de74;

loc_10093de74:
    [r0 release];
    goto loc_10093de78;

loc_10093de78:
    [r23 release];
    goto loc_10093de80;

loc_10093dd9c:
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    goto loc_10093ddbc;

loc_10093dd8c:
    [r26 release];
    r0 = r25;
    goto loc_10093de74;

loc_10093dc40:
    r0 = r27;
    goto loc_10093dc44;
}

-(void)sendAllQueuedEvents {
    r0 = dispatch_get_global_queue(0xfffffffffffffffe, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)sendShowEvent:(void *)arg2 {
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
    var_100 = [arg2 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    var_F8 = r0;
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r27 = [[r22 numberWithDouble:r2] retain];
    r28 = [[*(&@class(MCConfigurationData) + 0x18) dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r0 = [r21 dictionaryWithDictionary:r2];
    var_108 = [r0 retain];
    [r28 release];
    [r27 release];
    r21 = var_F8;
    objc_msgSend(r21, r24);
    asm { frintm     d0, d0 };
    r24 = [objc_msgSend(r28, r25) retain];
    r25 = [objc_msgSend(*(r19 + 0x18), r22) retain];
    r19 = var_100;
    r0 = objc_msgSend(r27, r26);
    r23 = r20;
    r22 = [r0 retain];
    [r25 release];
    [r24 release];
    r20 = var_108;
    r0 = [r19 meta];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100940364;

loc_100940298:
    r26 = [[r19 meta] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    if (r26 == r0) goto loc_10094036c;

loc_1009402ec:
    r26 = [[r19 meta] retain];
    [r20 setObject:r26 forKeyedSubscript:@"meta"];
    [r26 release];
    r0 = [r19 meta];
    r29 = r29;
    r24 = [r0 retain];
    [r22 setObject:r24 forKeyedSubscript:@"meta"];
    r0 = r24;
    goto loc_100940368;

loc_100940368:
    [r0 release];
    goto loc_10094036c;

loc_10094036c:
    r0 = [r23 FRTimedEvents];
    r0 = [r0 retain];
    [r0 setObject:r20 forKeyedSubscript:@"view"];
    [r0 release];
    [r23 trackEventInfo:r22 withError:0x0];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 sendAllQueuedEvents];
    [r0 release];
    r0 = [r19 _delegate];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r19 _delegate];
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(didShowPlacementContent:)];
            [r0 release];
            [r24 release];
            if (r23 != 0x0) {
                    var_D0 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_F0);
                    [var_D0 release];
            }
    }
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100940364:
    r0 = r25;
    goto loc_100940368;
}

+(void *)buildFiveRocksPostData:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r20 = [[NSMutableDictionary dictionaryWithDictionary:r22] retain];
    [r22 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r24 = [[r0 FRUserProperties] retain];
    [r20 setObject:r24 forKeyedSubscript:@"user"];
    [r24 release];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r24 = [[r0 FRAppProperties] retain];
    [r20 setObject:r24 forKeyedSubscript:@"app"];
    [r24 release];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r24 = [[r0 FRInfoDictionary] retain];
    [r20 setObject:r24 forKeyedSubscript:@"info"];
    [r24 release];
    [r0 release];
    [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:0x0] retain];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleClick:(void *)arg2 placementContent:(void *)arg3 {
    r31 = r31 - 0x1a0;
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
    r24 = self;
    r19 = [arg2 retain];
    r28 = [arg3 retain];
    if (r19 == 0x0) goto loc_10093f6e8;

loc_10093e864:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_10093f6e8;

loc_10093e894:
    r27 = @selector(null);
    var_148 = r28;
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r21 = @class(NSMutableDictionary);
    r20 = @class(NSNumber);
    var_168 = r0;
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r22 = [[r20 numberWithDouble:r2] retain];
    r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x88 count:0x3] retain];
    r23 = [[r21 dictionaryWithDictionary:r20] retain];
    [r20 release];
    [r22 release];
    var_158 = r23;
    r0 = [r19 name];
    var_160 = r24;
    r29 = r29;
    r26 = [r0 retain];
    var_150 = r27;
    if (r26 == 0x0) goto loc_10093ea88;

loc_10093e9cc:
    r27 = @selector(null);
    r22 = [[r19 name] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r28 = [r0 retain];
    if (r22 == r28) goto loc_10093ea94;

loc_10093ea08:
    r0 = [r19 name];
    r29 = r29;
    r21 = [r0 retain];
    [NSString class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10093eb88;

loc_10093ea4c:
    r0 = [r19 name];
    var_170 = r22;
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] == 0x0) goto loc_10093f730;

loc_10093ea7c:
    r23 = 0x1;
    r22 = 0x1;
    goto loc_10093eb28;

loc_10093eb28:
    [r20 release];
    [r21 release];
    r27 = var_150;
    if ((r23 & 0x1) == 0x0) goto loc_10093eb70;

loc_10093eb40:
    [r28 release];
    [var_170 release];
    [r26 release];
    r28 = var_148;
    r23 = var_158;
    if ((r22 & 0x1) != 0x0) goto loc_10093ebac;

loc_10093ee20:
    r26 = var_160;
    [r26 trackEventInfo:r23 withError:0x0];
    r0 = [r19 rewardRequest];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093efb0;

loc_10093ee60:
    r22 = [[r19 rewardRequest] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r22 == r0) goto loc_10093efb8;

loc_10093eeb0:
    [TJCLog logWithLevel:0x4 format:@"click Reward Campaign"];
    [r26 bDebugLogEnabled];
    r0 = [r28 _delegate];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f4b0;

loc_10093ef04:
    r0 = [r28 _delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(didClickPlacementContent:rewardRequestForRewardId:name:quantity:token:), @"click Reward Campaign", 0x3, r5, r6];
    [r0 release];
    [r21 release];
    if (r22 == 0x0) goto loc_10093f4b0;

loc_10093ef48:
    var_98 = [r28 retain];
    var_90 = [r19 retain];
    dispatch_async(*__dispatch_main_q, r29 - 0xb8);
    [var_90 release];
    r0 = var_98;
    goto loc_10093f4ac;

loc_10093f4ac:
    [r0 release];
    goto loc_10093f4b0;

loc_10093f4b0:
    if ([r19 bDismiss] != 0x0) {
            [r26 dismissPlacementContent:r28];
    }
    r0 = [r19 link];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f5e4;

loc_10093f4fc:
    r24 = [[r19 link] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r25 = [r0 retain];
    if (r24 == r25) goto loc_10093f5d4;

loc_10093f538:
    r0 = [r19 link];
    r29 = r29;
    r26 = [r0 retain];
    [NSString class];
    if ([r26 isKindOfClass:r2] != 0x0) {
            r0 = [r19 link];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 length];
            [r0 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            if (r20 != 0x0) {
                    r20 = [[r19 link] retain];
                    r21 = [[NSURL URLWithString:r20] retain];
                    [r20 release];
                    r0 = [UIApplication sharedApplication];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 canOpenURL:r21];
                    [r0 release];
                    if (r23 != 0x0) {
                            r0 = [UIApplication sharedApplication];
                            r0 = [r0 retain];
                            [r0 openURL:r2];
                            [r20 release];
                    }
                    [r21 release];
                    r23 = var_158;
            }
    }
    else {
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            r20 = [[r19 link] retain];
            r21 = [[NSURL URLWithString:r20] retain];
            [r20 release];
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 canOpenURL:r21];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    [r0 openURL:r2];
                    [r20 release];
            }
            [r21 release];
            r23 = var_158;
    }
    goto loc_10093f6d8;

loc_10093f6d8:
    [r23 release];
    [var_168 release];
    goto loc_10093f6e8;

loc_10093f6e8:
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10093f5d4:
    [r25 release];
    [r24 release];
    goto loc_10093f5e4;

loc_10093f5e4:
    [r21 release];
    goto loc_10093f6d8;

loc_10093efb8:
    r0 = [r19 purchaseRequest];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f12c;

loc_10093efdc:
    r22 = [[r19 purchaseRequest] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r22 == r0) goto loc_10093f134;

loc_10093f02c:
    [TJCLog logWithLevel:0x4 format:@"click Purchase Campaign"];
    [r26 bDebugLogEnabled];
    r0 = [r28 _delegate];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f4b0;

loc_10093f080:
    r0 = [r28 _delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(didClickPlacementContent:purchaseRequestForProductId:withCampaignId:), @"click Purchase Campaign", 0x3];
    [r0 release];
    [r21 release];
    if (r22 == 0x0) goto loc_10093f4b0;

loc_10093f0c4:
    var_C8 = [r28 retain];
    var_C0 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_E8);
    [var_C0 release];
    r0 = var_C8;
    goto loc_10093f4ac;

loc_10093f134:
    r0 = [r19 redirectURL];
    r29 = r29;
    r21 = [r0 retain];
    [NSString class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_10093f1c4;

loc_10093f188:
    r0 = [r19 redirectURL];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 length];
    r23 = 0x1;
    if (r0 == 0x0) goto loc_10093f1c8;

loc_10093f1b4:
    r24 = 0x1;
    r27 = var_150;
    r26 = var_160;
    goto loc_10093f25c;

loc_10093f25c:
    [r22 release];
    [r21 release];
    r23 = var_158;
    if ((r24 & 0x1) == 0x0) goto loc_10093f3d8;

loc_10093f27c:
    r22 = [[r19 redirectURL] retain];
    r0 = [r19 adContent];
    r0 = [r0 retain];
    r24 = r0;
    [r0 length];
    [TJCLog logWithLevel:0x4 format:@"click Redirect URL: %@, AD content length:%d"];
    [r24 release];
    [r22 release];
    r0 = [r28 _delegate];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f4b0;

loc_10093f310:
    r0 = [r28 _delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(didClickPlacementContent:redirectURL:adContent:), @"click Redirect URL: %@, AD content length:%d", 0x3];
    [r0 release];
    [r21 release];
    if (r22 == 0x0) goto loc_10093f4b0;

loc_10093f354:
    var_F8 = [r28 retain];
    var_F0 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_118);
    [var_F0 release];
    r0 = var_F8;
    goto loc_10093f4ac;

loc_10093f3d8:
    [TJCLog logWithLevel:0x4 format:@"click Campaign"];
    r0 = [r28 _delegate];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093f4b0;

loc_10093f418:
    r0 = [r28 _delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(didClickPlacementContent:)];
    [r0 release];
    [r21 release];
    if (r22 == 0x0) goto loc_10093f4b0;

loc_10093f45c:
    var_120 = [r28 retain];
    dispatch_async(*__dispatch_main_q, &var_140);
    r0 = var_120;
    goto loc_10093f4ac;

loc_10093f1c8:
    r27 = @selector(isKindOfClass:);
    r0 = [r19 adContent];
    r29 = r29;
    r28 = [r0 retain];
    [NSString class];
    r26 = var_160;
    if (objc_msgSend(r28, r27) != 0x0) {
            r24 = @selector(adContent);
            r0 = objc_msgSend(r19, r24);
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 length] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r24 = 0x1;
                    }
            }
            [r20 release];
    }
    else {
            r24 = 0x0;
    }
    r27 = var_150;
    [r28 release];
    if (r23 == 0x0) goto loc_10093f3bc;

loc_10093f258:
    r28 = var_148;
    goto loc_10093f25c;

loc_10093f3bc:
    [r21 release];
    r28 = var_148;
    r23 = var_158;
    if (r24 != 0x0) goto loc_10093f27c;
    goto loc_10093f3d8;

loc_10093f1c4:
    r23 = 0x0;
    goto loc_10093f1c8;

loc_10093f12c:
    [r21 release];
    goto loc_10093f134;

loc_10093efb0:
    [r21 release];
    goto loc_10093efb8;

loc_10093ebac:
    r26 = [[NSMutableDictionary dictionary] retain];
    r0 = [r19 name];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10093ecc4;

loc_10093ebe8:
    r22 = [[r19 name] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r27 = [r0 retain];
    if (r22 == r27) goto loc_10093eccc;

loc_10093ec24:
    r0 = [r19 name];
    r29 = r29;
    r28 = [r0 retain];
    [NSString class];
    if ([r28 isKindOfClass:r2] == 0x0) goto loc_10093ecec;

loc_10093ec68:
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 length];
    [r0 release];
    [r28 release];
    [r27 release];
    [r22 release];
    [r21 release];
    r27 = var_150;
    r28 = var_148;
    if (r20 != 0x0) goto loc_10093ed10;

loc_10093ed4c:
    r0 = [r28 meta];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10093edf4;

loc_10093ed70:
    r24 = [[r28 meta] retain];
    r0 = objc_msgSend(@class(NSNull), r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r24 == r0) goto loc_10093edfc;

loc_10093edc0:
    r0 = [r28 meta];
    r29 = r29;
    r20 = [r0 retain];
    [r26 addEntriesFromDictionary:r20];
    r0 = r20;
    goto loc_10093edf8;

loc_10093edf8:
    [r0 release];
    goto loc_10093edfc;

loc_10093edfc:
    [r23 setObject:r26 forKeyedSubscript:@"meta"];
    [r26 release];
    goto loc_10093ee20;

loc_10093edf4:
    r0 = r22;
    goto loc_10093edf8;

loc_10093ed10:
    r0 = [r19 name];
    r29 = r29;
    r20 = [r0 retain];
    [r26 setObject:r20 forKeyedSubscript:@"region"];
    r0 = r20;
    goto loc_10093ed48;

loc_10093ed48:
    [r0 release];
    goto loc_10093ed4c;

loc_10093ecec:
    [r28 release];
    [r27 release];
    [r22 release];
    [r21 release];
    r27 = var_150;
    r28 = var_148;
    goto loc_10093ed10;

loc_10093eccc:
    [r27 release];
    [r22 release];
    [r21 release];
    r27 = var_150;
    goto loc_10093ed4c;

loc_10093ecc4:
    r0 = r21;
    goto loc_10093ed48;

loc_10093eb70:
    [r26 release];
    r28 = var_148;
    r23 = var_158;
    if (r22 != 0x0) goto loc_10093ebac;
    goto loc_10093ee20;

loc_10093f730:
    r27 = 0x1;
    var_178 = r21;
    r23 = 0x1;
    r22 = var_170;
    goto loc_10093ea9c;

loc_10093ea9c:
    r21 = r20;
    var_170 = r22;
    r0 = [var_148 meta];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r20 = [[var_148 meta] retain];
            r0 = objc_msgSend(@class(NSNull), var_150);
            r29 = r29;
            r0 = [r0 retain];
            if (r20 != r0) {
                    if (CPU_FLAGS & NE) {
                            r22 = 0x1;
                    }
            }
            [r0 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r24 release];
    if (r27 == 0x0) goto loc_10093eb68;

loc_10093eb20:
    r20 = r21;
    r21 = var_178;
    goto loc_10093eb28;

loc_10093eb68:
    r27 = var_150;
    if (r23 != 0x0) goto loc_10093eb40;
    goto loc_10093eb70;

loc_10093eb88:
    [r21 release];
    [r28 release];
    [r22 release];
    [r26 release];
    r28 = var_148;
    goto loc_10093ebac;

loc_10093ea94:
    r27 = 0x0;
    r23 = 0x1;
    goto loc_10093ea9c;

loc_10093ea88:
    r23 = 0x0;
    r27 = 0x0;
    goto loc_10093ea9c;
}

+(void *)buildFRURLRequest:(void *)arg2 path:(void *)arg3 parameters:(void *)arg4 {
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
    r27 = [arg2 retain];
    r24 = [arg3 retain];
    r25 = [arg4 retain];
    r20 = [NSMutableURLRequest alloc];
    r19 = [[NSString stringWithFormat:@"%@%@"] retain];
    r22 = [[NSURL URLWithString:r19] retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 timeout];
    r20 = [r20 initWithURL:r22 cachePolicy:0x1 timeoutInterval:r4];
    [r0 release];
    [r22 release];
    [r19 release];
    var_70 = r20;
    [r20 setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    r21 = [[NSMutableDictionary dictionary] retain];
    r20 = @class(NSString);
    var_68 = r21;
    r19 = [[Tapjoy getVersion] retain];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r21 setObject:r20 forKeyedSubscript:@"sdk_ver"];
    [r20 release];
    [r19 release];
    r0 = [FiveRocks sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 bDebugLogEnabled];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            [r0 retain];
            [r21 setObject:r2 forKeyedSubscript:r3];
            [r19 release];
    }
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_100941ebc;

loc_100941d60:
    var_88 = r25;
    var_80 = r24;
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r24 = [[r0 _analyticsApiKey] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r24 == r25) goto loc_100941ed0;

loc_100941dbc:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    r23 = [r0 retain];
    [NSString class];
    if ([r23 isKindOfClass:r2] != 0x0) {
            r0 = [FiveRocks sharedInstance];
            var_90 = r27;
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 _analyticsApiKey];
            r29 = r29;
            r0 = [r0 retain];
            var_A0 = [r0 length];
            [r0 release];
            [r27 release];
            [r23 release];
            [r22 release];
            [r25 release];
            [r24 release];
            [r20 release];
            [r19 release];
            [r28 release];
            r27 = var_90;
            r25 = var_88;
            r24 = var_80;
            r28 = var_68;
            if (var_A0 == 0x0) {
                    if (r25 != 0x0) {
                            r0 = [NSNull null];
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r19 != r25) {
                                    r20 = [r25 count];
                                    [r19 release];
                                    if (r20 != 0x0) {
                                            [r28 addEntriesFromDictionary:r25];
                                    }
                            }
                            else {
                                    [r19 release];
                            }
                    }
            }
            else {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r0 = [r0 _analyticsApiKey];
                    r29 = r29;
                    [r0 retain];
                    [r28 setObject:r2 forKeyedSubscript:r3];
                    [r20 release];
                    [r19 release];
                    if (r25 != 0x0) {
                            r0 = [NSNull null];
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r19 != r25) {
                                    r20 = [r25 count];
                                    [r19 release];
                                    if (r20 != 0x0) {
                                            [r28 addEntriesFromDictionary:r25];
                                    }
                            }
                            else {
                                    [r19 release];
                            }
                    }
            }
    }
    else {
            [r23 release];
            [r22 release];
            [r25 release];
            [r24 release];
            [r20 release];
            [r19 release];
            [r28 release];
            r25 = var_88;
            r24 = var_80;
            r28 = var_68;
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 _analyticsApiKey];
            r29 = r29;
            [r0 retain];
            [r28 setObject:r2 forKeyedSubscript:r3];
            [r20 release];
            [r19 release];
            if (r25 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r19 = [r0 retain];
                    if (r19 != r25) {
                            r20 = [r25 count];
                            [r19 release];
                            if (r20 != 0x0) {
                                    [r28 addEntriesFromDictionary:r25];
                            }
                    }
                    else {
                            [r19 release];
                    }
            }
    }
    goto loc_10094200c;

loc_10094200c:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 FRUserProperties];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r20 release];
    if (r23 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r0 = [NSDictionary dictionaryWithDictionary:[[r0 FRUserProperties] retain]];
            r29 = r29;
            [r0 retain];
            [r28 setObject:r2 forKeyedSubscript:r3];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    r19 = @selector(count);
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 FRAppProperties];
    r29 = r29;
    r0 = [r0 retain];
    r19 = objc_msgSend(r0, r19);
    [r0 release];
    [r22 release];
    if (r19 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r0 = [NSDictionary dictionaryWithDictionary:[[r0 FRAppProperties] retain]];
            r29 = r29;
            [r0 retain];
            [r28 setObject:r2 forKeyedSubscript:r3];
            [r22 release];
            [r20 release];
            [r19 release];
    }
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [[NSDictionary dictionaryWithDictionary:[[r0 FRInfoDictionary] retain]] retain];
    [r28 setObject:r2 forKeyedSubscript:r3];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [NSJSONSerialization dataWithJSONObject:r28 options:0x0 error:0x0];
    r0 = [r0 retain];
    [r0 length];
    [[NSString stringWithFormat:r2] retain];
    [var_70 setHTTPMethod:@"POST"];
    [var_70 setValue:r2 forHTTPHeaderField:r3];
    [var_70 setValue:r2 forHTTPHeaderField:r3];
    [var_70 setHTTPBody:r19];
    [r20 release];
    [r19 release];
    [r28 release];
    [r25 release];
    [r24 release];
    [r27 release];
    r0 = [var_70 autorelease];
    return r0;

loc_100941ed0:
    [r25 release];
    [r24 release];
    [r20 release];
    [r19 release];
    [r28 release];
    r25 = var_88;
    r24 = var_80;
    goto loc_100941efc;

loc_100941efc:
    r28 = var_68;
    if (r25 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != r25) {
                    r20 = [r25 count];
                    [r19 release];
                    if (r20 != 0x0) {
                            [r28 addEntriesFromDictionary:r25];
                    }
            }
            else {
                    [r19 release];
            }
    }
    goto loc_10094200c;

loc_100941ebc:
    [r19 release];
    [r28 release];
    goto loc_100941efc;
}

-(void)sendQueuedEvents:(void *)arg2 queuedEvents:(void *)arg3 sendingEvents:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 compare:@"5.0" options:0x40];
    [r0 release];
    [r23 release];
    if (r24 == -0x1) goto loc_10094108c;

loc_1009409f0:
    r0 = [r22 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r0 = [FiveRocks getPendingEvents:r19];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            if (r23 != r25) {
                    r26 = [r23 count];
                    [r25 release];
                    if (r26 != 0x0) {
                            [r23 count];
                            r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r20 insertObjects:r23 atIndexes:r25];
                            [r25 release];
                            [FiveRocks deletePendingEvents:r19];
                    }
            }
            else {
                    [r25 release];
            }
    }
    if ([r20 count] == 0x0) goto loc_100940c08;

loc_100940b18:
    r0 = [r22 _appId];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100940c34;

loc_100940b40:
    r26 = [[r22 _appId] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    if (r26 == r0) goto loc_100940c28;

loc_100940b80:
    var_B0 = r0;
    var_A8 = r26;
    r0 = [r22 _appId];
    r29 = r29;
    var_98 = [r0 retain];
    [NSString class];
    if ([var_98 isKindOfClass:r2] == 0x0) goto loc_100940c40;

loc_100940bd0:
    r0 = [r22 _appId];
    r29 = r29;
    r0 = [r0 retain];
    var_C0 = r0;
    if ([r0 length] == 0x0) goto loc_100940d30;

loc_100940bfc:
    var_B4 = 0x1;
    goto loc_100940c44;

loc_100940c44:
    r0 = [r22 _appKey];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100940d24;

loc_100940c64:
    var_C8 = r0;
    r27 = [[r22 _appKey] retain];
    var_D0 = r27;
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    if (r27 == r0) goto loc_100940d3c;

loc_100940ca8:
    var_E0 = r0;
    r0 = [r22 _appKey];
    r29 = r29;
    var_E8 = [r0 retain];
    [NSString class];
    if (objc_msgSend(r27, r26) == 0x0) goto loc_100940d4c;

loc_100940cec:
    r0 = [r22 _appKey];
    r29 = r29;
    r0 = [r0 retain];
    var_F8 = r0;
    if ([r0 length] == 0x0) goto loc_100940e78;

loc_100940d18:
    var_EC = 0x1;
    goto loc_100940d50;

loc_100940d50:
    r0 = [r22 _analyticsApiKey];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            var_100 = r0;
            r27 = [[r22 _analyticsApiKey] retain];
            var_108 = r27;
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            if (r27 != r0) {
                    r28 = @selector(_analyticsApiKey);
                    r26 = @selector(isKindOfClass:);
                    var_110 = r0;
                    r0 = objc_msgSend(r22, r28);
                    r29 = r29;
                    var_118 = [r0 retain];
                    [NSString class];
                    if (objc_msgSend(r27, r26) != 0x0) {
                            r0 = [r22 _analyticsApiKey];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 length];
                            r27 = 0x1;
                            r28 = 0x1;
                            if (r0 == 0x0) {
                                    r28 = 0x1;
                                    [r26 release];
                            }
                            else {
                                    if ([r21 count] != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r28 = 0x1;
                                            }
                                    }
                                    if (r27 != 0x0) {
                                            [r26 release];
                                    }
                            }
                    }
                    else {
                            r27 = 0x0;
                            if ([r21 count] != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r28 = 0x1;
                                    }
                            }
                            if (r27 != 0x0) {
                                    [r26 release];
                            }
                    }
                    [var_118 release];
                    r26 = var_A8;
                    r0 = var_110;
            }
            else {
                    r28 = 0x1;
                    r26 = var_A8;
            }
            [r0 release];
            [var_108 release];
            [var_100 release];
            if ((var_EC & 0x1) != 0x0) {
                    [var_F8 release];
            }
    }
    else {
            r28 = 0x1;
            r26 = var_A8;
            if (var_EC == 0x0) {
                    r28 = 0x1;
            }
            else {
                    [var_F8 release];
            }
    }
    goto loc_100940ee0;

loc_100940ee0:
    [var_E8 release];
    r0 = var_E0;
    goto loc_100940eec;

loc_100940eec:
    [r0 release];
    [var_D0 release];
    [var_C8 release];
    if ((var_B4 & 0x1) != 0x0) {
            [var_C0 release];
    }
    goto loc_100940f10;

loc_100940f10:
    [var_98 release];
    [var_B0 release];
    [r26 release];
    [r25 release];
    if ((r28 & 0x1) != 0x0) {
            [FiveRocks savePendingEvents:r19 events:r20];
            [r20 removeAllObjects];
            r24 = 0x1;
            r25 = 0x0;
            [r22 setBShouldSendMore:0x1];
    }
    else {
            if ([r20 count] >= 0x65) {
                    r25 = [[NSIndexSet indexSetWithIndexesInRange:0x0] retain];
                    r27 = [[r20 objectsAtIndexes:r25] retain];
                    [r21 addObjectsFromArray:r27];
                    [r27 release];
                    [r25 release];
                    r0 = @class(NSIndexSet);
                    r0 = [r0 indexSetWithIndexesInRange:0x0];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 removeObjectsAtIndexes:r25];
                    [r25 release];
                    [r22 setBShouldSendMore:0x1];
            }
            else {
                    [r21 addObjectsFromArray:r20];
                    [r20 removeAllObjects];
            }
            r0 = [FiveRocks buildFRQueuedEventsURLRequest:r19 queuedEvents:r21];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r25 == r0) {
                            [r21 count];
                            r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r20 insertObjects:r21 atIndexes:r26];
                            [r26 release];
                    }
            }
            else {
                    [r21 count];
                    r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r20 insertObjects:r21 atIndexes:r26];
                    [r26 release];
            }
            r24 = 0x0;
    }
    goto loc_100940f80;

loc_100940f80:
    [r23 release];
    objc_sync_exit(r22);
    [r22 release];
    if ((r24 & 0x1) == 0x0 && r25 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r25 != r0) {
                    r26 = [[NSOperationQueue mainQueue] retain];
                    var_68 = [r19 retain];
                    var_60 = [r21 retain];
                    var_58 = [r20 retain];
                    [NSURLConnection sendAsynchronousRequest:r25 queue:r26 completionHandler:&var_90];
                    [r26 release];
                    [var_58 release];
                    [var_60 release];
                    [var_68 release];
            }
    }
    [r25 release];
    goto loc_10094108c;

loc_10094108c:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100940e78:
    r28 = 0x1;
    r26 = var_A8;
    [var_F8 release];
    goto loc_100940ee0;

loc_100940d4c:
    var_EC = 0x0;
    goto loc_100940d50;

loc_100940d3c:
    r28 = 0x1;
    r26 = var_A8;
    goto loc_100940eec;

loc_100940d24:
    if (var_B4 == 0x0) goto loc_100940e28;

loc_100940d30:
    r28 = 0x1;
    r26 = var_A8;
    [var_C0 release];
    goto loc_100940f10;

loc_100940e28:
    [var_98 release];
    [var_B0 release];
    [var_A8 release];
    [r25 release];
    goto loc_100940f34;

loc_100940f34:
    [FiveRocks savePendingEvents:r19 events:r20];
    [r20 removeAllObjects];
    r24 = 0x1;
    r25 = 0x0;
    [r22 setBShouldSendMore:0x1];
    goto loc_100940f80;

loc_100940c40:
    var_B4 = 0x0;
    goto loc_100940c44;

loc_100940c28:
    [r0 release];
    [r26 release];
    goto loc_100940c34;

loc_100940c34:
    [r25 release];
    goto loc_100940f34;

loc_100940c08:
    r25 = 0x0;
    [r22 setBShouldSendMore:0x0];
    r24 = 0x1;
    goto loc_100940f80;
}

+(void *)getPendingEvents:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r22 = [[r0 objectAtIndexedSubscript:0x0] retain];
    r23 = [[NSString stringWithFormat:@"fr_pending_%@_events"] retain];
    r21 = [[r22 stringByAppendingPathComponent:r23] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r21];
    [r0 release];
    if (r22 != 0x0) {
            r20 = [[NSArray arrayWithContentsOfFile:r21] retain];
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)savePendingEvents:(void *)arg2 events:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[FiveRocks getPendingEvents:r19] retain];
    r0 = [NSMutableArray arrayWithArray:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if ([r20 count] + [r21 count] >= 0x2711) {
            0xffffffffffffd8f0 + [r21 count] + [r20 count];
            r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
            r29 = r29;
            r22 = [r0 retain];
            [r21 removeObjectsAtIndexes:r22];
            [r22 release];
    }
    [r21 addObjectsFromArray:r20];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r23 = [[r0 objectAtIndexedSubscript:0x0] retain];
    r25 = [[NSString stringWithFormat:@"fr_pending_%@_events"] retain];
    r24 = [[r23 stringByAppendingPathComponent:r25] retain];
    [r25 release];
    [r23 release];
    [r0 release];
    [r21 writeToFile:r24 atomically:0x1];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)deletePendingEvents:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r22 = [[r0 objectAtIndexedSubscript:0x0] retain];
    r23 = [[NSString stringWithFormat:@"fr_pending_%@_events"] retain];
    r21 = [[r22 stringByAppendingPathComponent:r23] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtPath:r21 error:0x0];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

+(void *)buildFRQueuedEventsURLRequest:(void *)arg2 queuedEvents:(void *)arg3 {
    r31 = r31 - 0x1b0;
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
    r27 = [arg2 retain];
    r0 = [arg3 retain];
    r24 = r0;
    if ([r0 count] == 0x0) goto loc_100942660;

loc_100942618:
    [@"cevs" retain];
    if ([r27 isEqualToString:r2] != 0x0) {
            r25 = @"usages";
            [r25 retain];
            [@"cevs" release];
    }
    else {
            r25 = @"cevs";
    }
    r26 = @selector(count);
    r20 = [NSMutableURLRequest alloc];
    r19 = [[NSString stringWithFormat:@"%@%@%@"] retain];
    r21 = [[NSURL URLWithString:r19] retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 timeout];
    r22 = [r20 initWithURL:r21 cachePolicy:0x1 timeoutInterval:r4];
    [r0 release];
    [r21 release];
    [r19 release];
    [r22 setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    var_138 = r26;
    r0 = [NSMutableDictionary dictionary];
    r23 = @selector(stringWithFormat:);
    r26 = [r0 retain];
    r19 = [[Tapjoy getVersion] retain];
    r21 = [objc_msgSend(@class(NSString), r23) retain];
    [r26 setObject:r21 forKeyedSubscript:@"sdk_ver"];
    [r21 release];
    [r19 release];
    r0 = [FiveRocks sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 bDebugLogEnabled];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            [r0 retain];
            [r26 setObject:r2 forKeyedSubscript:r3];
            [r19 release];
    }
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_100942a3c;

loc_1009428dc:
    var_150 = r26;
    stack[-344] = r25;
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    var_158 = r0;
    r26 = [[r0 _analyticsApiKey] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == r25) goto loc_100942a4c;

loc_100942938:
    var_160 = r24;
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    var_168 = r0;
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    r24 = [r0 retain];
    [NSString class];
    if ([r24 isKindOfClass:r2] == 0x0) goto loc_100942a7c;

loc_100942998:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    r0 = [r0 retain];
    var_178 = [r0 length];
    [r0 release];
    [r23 release];
    [r24 release];
    [var_168 release];
    [r25 release];
    [r26 release];
    [var_158 release];
    [r19 release];
    [r21 release];
    r27 = r27;
    r24 = var_160;
    r26 = var_150;
    r25 = stack[-344];
    r23 = @selector(stringWithFormat:);
    if (var_178 != 0x0) goto loc_100942abc;

loc_100942b14:
    [[[NSMutableArray arrayWithCapacity:objc_msgSend(r24, var_138)] retain] retain];
    [r24 enumerateObjectsUsingBlock:&var_120];
    [r26 setObject:r2 forKeyedSubscript:r3];
    r0 = [NSJSONSerialization dataWithJSONObject:r26 options:0x0 error:0x0];
    r0 = [r0 retain];
    [r0 length];
    [objc_msgSend(@class(NSString), r23) retain];
    [r22 setHTTPMethod:@"POST"];
    [r22 setValue:r2 forHTTPHeaderField:r3];
    [r22 setValue:r2 forHTTPHeaderField:r3];
    [r22 setHTTPBody:r21];
    [r23 release];
    [r21 release];
    [r19 release];
    [r19 release];
    _Block_object_dispose(&var_E0, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0xb0, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0x80, 0x8);
    [0x0 release];
    [r26 release];
    [r25 release];
    goto loc_100942d4c;

loc_100942d4c:
    [r24 release];
    [r27 release];
    r0 = [r22 autorelease];
    return r0;

loc_100942abc:
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 _analyticsApiKey];
    r29 = r29;
    [r0 retain];
    [r26 setObject:r2 forKeyedSubscript:r3];
    [r21 release];
    r0 = r19;
    goto loc_100942b10;

loc_100942b10:
    [r0 release];
    goto loc_100942b14;

loc_100942a7c:
    [r24 release];
    [var_168 release];
    [r25 release];
    [r26 release];
    [var_158 release];
    [r19 release];
    [r21 release];
    r24 = var_160;
    r26 = var_150;
    r25 = stack[-344];
    goto loc_100942abc;

loc_100942a4c:
    [r25 release];
    [r26 release];
    [var_158 release];
    [r19 release];
    [r21 release];
    r26 = var_150;
    r25 = stack[-344];
    goto loc_100942b14;

loc_100942a3c:
    [r19 release];
    r0 = r21;
    goto loc_100942b10;

loc_100942660:
    r22 = 0x0;
    goto loc_100942d4c;
}

+(void)setUnityVersion:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10094438c;

loc_1009442b4:
    r20 = [[NSNull null] retain];
    if (r20 == r19) goto loc_10094432c;

loc_1009442dc:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100944334;

loc_100944308:
    r21 = [r19 length];
    [r20 release];
    if (r21 != 0x0) goto loc_10094433c;

loc_10094438c:
    [r19 release];
    return;

loc_10094433c:
    r0 = [r19 retain];
    var_28 = r0;
    if (*qword_1011dc188 != -0x1) {
            dispatch_once(0x1011dc188, &var_48);
            r0 = var_28;
    }
    goto loc_100944388;

loc_100944388:
    [r0 release];
    goto loc_10094438c;

loc_100944334:
    [r20 release];
    goto loc_10094433c;

loc_10094432c:
    r0 = r20;
    goto loc_100944388;
}

+(void)handleClick:(void *)arg2 placementContent:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 handleClick:r19 placementContent:r20];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)addNoMoreTodayPlacementContent:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 addNoMoreTodayPlacementContent:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)unitTest_invalidateEventsSender {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 FRQueuedEventsSender];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 release];
    return;
}

+(bool)unitTest_checkSessionStart {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 bSessionStarted];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)increasePurchaseCount:(void *)arg2 currency:(void *)arg3 price:(double)arg4 {
    r31 = r31 - 0x90;
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
    v8 = v0;
    var_70 = [arg2 retain];
    var_68 = [arg3 retain];
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 purchaseCurrency];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    [r23 release];
    if ((r20 & 0x1) == 0x0) {
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 setPurchaseTotalCount:0x0];
            [r0 release];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 setPurchaseTotalPrice:0x0];
            [r0 release];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            d0 = 0x0;
            [r0 setPurchaseLastPrice:0x0];
            [r0 release];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 setPurchaseLastAt:0x0];
            [r0 release];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 FRUserPropertiesPurchase];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r2];
            [r20 release];
            [r19 release];
            r0 = @class(FiveRocks);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 FRUserPropertiesPurchase];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r24);
            [r20 release];
            [r19 release];
    }
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setPurchaseCurrency:var_68];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r2 = [r0 purchaseTotalCount] + 0x1;
    [r0 setPurchaseTotalCount:r2];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 purchaseTotalPrice];
    [r0 setPurchaseTotalPrice:r2];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setPurchaseLastPrice:r2];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setPurchaseLastAt:var_70];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 purchaseCurrency] retain];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 FRUserPropertiesPurchase];
    r0 = [r0 retain];
    [r0 setObject:r28 forKeyedSubscript:@"currency"];
    [r0 release];
    [r19 release];
    [r28 release];
    [r27 release];
    r19 = @class(NSNumber);
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r19 numberWithUnsignedInteger:[r0 purchaseTotalCount]] retain];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 FRUserPropertiesPurchase];
    r0 = [r0 retain];
    [r0 setObject:r28 forKeyedSubscript:@"total_count"];
    [r0 release];
    [r19 release];
    [r28 release];
    [r27 release];
    r19 = @class(NSNumber);
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    [r0 purchaseTotalPrice];
    r28 = [[r19 numberWithDouble:r28] retain];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 FRUserPropertiesPurchase];
    r0 = [r0 retain];
    [r0 setObject:r28 forKeyedSubscript:@"total_price"];
    [r0 release];
    [r19 release];
    [r28 release];
    [r27 release];
    r25 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 purchaseCurrency] retain];
    [r25 setObject:r20 forKey:@"FiverocksPurchaseCurrency"];
    [r20 release];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r25 setInteger:[r0 purchaseTotalCount] forKey:@"FiverocksPurchaseTotalCount"];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 purchaseTotalPrice];
    [r25 setDouble:@"FiverocksPurchaseTotalPrice" forKey:@"FiverocksPurchaseTotalCount"];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 purchaseLastPrice];
    [r25 setDouble:@"FiverocksPurchaseLastPrice" forKey:@"FiverocksPurchaseTotalCount"];
    [r0 release];
    r0 = @class(FiveRocks);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 purchaseLastAt];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [FiveRocks sharedInstance];
            r0 = [r0 retain];
            r27 = r0;
            r19 = [[r0 purchaseLastAt] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            [r27 release];
            [r26 release];
            [r23 release];
            if (r19 != r0) {
                    r0 = [FiveRocks sharedInstance];
                    r0 = [r0 retain];
                    r20 = [[r0 purchaseLastAt] retain];
                    [r25 setObject:r20 forKey:@"FiverocksPurchaseLastAt"];
                    [r20 release];
                    [r0 release];
            }
            else {
                    [r25 removeObjectForKey:r2];
            }
    }
    else {
            [r26 release];
            [r23 release];
            [r25 removeObjectForKey:r2];
    }
    [r25 release];
    [var_68 release];
    [var_70 release];
    return;
}

+(bool)unitTest_checkDebugEnable {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 bDebugLogEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

+(bool)unitTest_checkSecureTransport {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 bSecureTransportEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)unitTest_clearAllProperties {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 FRUserProperties];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r19 FRAppProperties];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)unitTest_clearAllProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 unitTest_clearAllProperties];
    [r0 release];
    return;
}

+(void *)unitTest_getUserProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRUserProperties] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getUserSessionProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRUserPropertiesSession] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getUserPurchaseProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRUserPropertiesPurchase] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getAppProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRAppProperties] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getInfoProperties {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRInfoDictionary] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)unitTest_clearAllEvents {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 FRQueuedAppEvents];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r19 FRQueuedCampaignEvents];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r19 FRQueuedCustomEvents];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r19 FRQueuedUsagesEvents];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    [FiveRocks deletePendingEvents:@"app"];
    [FiveRocks deletePendingEvents:@"campaign"];
    [FiveRocks deletePendingEvents:@"custom"];
    [FiveRocks deletePendingEvents:@"usages"];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)unitTest_clearAllEvents {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    [r0 unitTest_clearAllEvents];
    [r0 release];
    return;
}

+(void *)unitTest_getAppEvents {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRQueuedAppEvents] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getCampaignEvents {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRQueuedCampaignEvents] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getCustomEvents {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRQueuedCustomEvents] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_getUsagesEvents {
    r0 = [FiveRocks sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 FRQueuedUsagesEvents] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_buildFRQueuedEventsURLRequest:(void *)arg2 queuedEvents:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [[FiveRocks buildFRQueuedEventsURLRequest:r19 queuedEvents:arg3] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unitTest_buildFRURLRequest:(void *)arg2 parameters:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[NSString stringWithFormat:@"%@%@"] retain];
    [r20 release];
    r20 = [[FiveRocks buildFRURLRequest:@"https://rpc.tapjoy.com/" path:r22 parameters:r19] retain];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)_analyticsApiKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(__analyticsApiKey)), 0x1);
    return r0;
}

-(void)set_analyticsApiKey:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)_sdkApiKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(__sdkApiKey)), 0x1);
    return r0;
}

-(void)set_sdkApiKey:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)_appId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(__appId)), 0x1);
    return r0;
}

-(void)set_appId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)_appKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(__appKey)), 0x1);
    return r0;
}

-(void)set_appKey:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)currentPlacementContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentPlacementContent)), 0x1);
    return r0;
}

-(void)setCurrentPlacementContent:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)bSessionStarted {
    r0 = *(int8_t *)(int64_t *)&self->_bSessionStarted & 0x1;
    return r0;
}

-(void)setBSessionStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bSessionStarted = arg2;
    return;
}

-(bool)bDebugLogEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_bDebugLogEnabled & 0x1;
    return r0;
}

-(void)setBDebugLogEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bDebugLogEnabled = arg2;
    return;
}

-(bool)bSecureTransportEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_bSecureTransportEnabled & 0x1;
    return r0;
}

-(void)setBSecureTransportEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bSecureTransportEnabled = arg2;
    return;
}

-(void *)purchaseCurrency {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseCurrency)), 0x1);
    return r0;
}

-(double)timeout {
    r0 = self;
    return r0;
}

-(void)setTimeout:(double)arg2 {
    self->_timeout = d0;
    return;
}

-(void)setPurchaseCurrency:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(unsigned long long)purchaseTotalCount {
    r0 = self->_purchaseTotalCount;
    return r0;
}

-(void)setPurchaseTotalCount:(unsigned long long)arg2 {
    self->_purchaseTotalCount = arg2;
    return;
}

-(double)purchaseTotalPrice {
    r0 = self;
    return r0;
}

-(double)purchaseLastPrice {
    r0 = self;
    return r0;
}

-(void)setPurchaseTotalPrice:(double)arg2 {
    self->_purchaseTotalPrice = d0;
    return;
}

-(void)setPurchaseLastPrice:(double)arg2 {
    self->_purchaseLastPrice = d0;
    return;
}

-(void)setPurchaseLastAt:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)purchaseLastAt {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseLastAt)), 0x1);
    return r0;
}

-(unsigned long long)sessionTotalCount {
    r0 = self->_sessionTotalCount;
    return r0;
}

-(void)setSessionTotalCount:(unsigned long long)arg2 {
    self->_sessionTotalCount = arg2;
    return;
}

-(double)sessionTotalLength {
    r0 = self;
    return r0;
}

-(void)setSessionTotalLength:(double)arg2 {
    self->_sessionTotalLength = d0;
    return;
}

-(double)sessionLastLength {
    r0 = self;
    return r0;
}

-(void)setSessionLastLength:(double)arg2 {
    self->_sessionLastLength = d0;
    return;
}

-(void *)sessionLastAt {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionLastAt)), 0x1);
    return r0;
}

-(void)setSessionLastAt:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)pushIds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_pushIds)), 0x1);
    return r0;
}

-(void *)actionIds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_actionIds)), 0x1);
    return r0;
}

-(void)setPushIds:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setActionIds:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setEventSeqNo:(unsigned long long)arg2 {
    self->_eventSeqNo = arg2;
    return;
}

-(void *)prevEvent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_prevEvent)), 0x1);
    return r0;
}

-(unsigned long long)eventSeqNo {
    r0 = self->_eventSeqNo;
    return r0;
}

-(void)setFREnabledPlacements:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FREnabledPlacements {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FREnabledPlacements)), 0x1);
    return r0;
}

-(void)setPrevEvent:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRPlacementContentCalls {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRPlacementContentCalls)), 0x1);
    return r0;
}

-(void)setFRPlacementContentCalls:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRUserProperties {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRUserProperties)), 0x1);
    return r0;
}

-(void)setFRUserProperties:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRUserPropertiesPurchase {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRUserPropertiesPurchase)), 0x1);
    return r0;
}

-(void)setFRUserPropertiesPurchase:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRUserPropertiesSession {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRUserPropertiesSession)), 0x1);
    return r0;
}

-(void *)FRUserTags {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRUserTags)), 0x1);
    return r0;
}

-(void)setFRUserPropertiesSession:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setFRUserTags:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRCampaignTracking {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRCampaignTracking)), 0x1);
    return r0;
}

-(void)setFRCampaignTracking:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRPurchaseTracking {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRPurchaseTracking)), 0x1);
    return r0;
}

-(void)setFRPurchaseTracking:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRAppProperties {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRAppProperties)), 0x1);
    return r0;
}

-(void)setFRAppProperties:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRTimedEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRTimedEvents)), 0x1);
    return r0;
}

-(void)setFRTimedEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRQueuedAppEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRQueuedAppEvents)), 0x1);
    return r0;
}

-(void)setFRQueuedAppEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRQueuedCampaignEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRQueuedCampaignEvents)), 0x1);
    return r0;
}

-(void)setFRQueuedCampaignEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRQueuedCustomEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRQueuedCustomEvents)), 0x1);
    return r0;
}

-(void)setFRQueuedCustomEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRQueuedUsagesEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRQueuedUsagesEvents)), 0x1);
    return r0;
}

-(void)setFRQueuedUsagesEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRSendingAppEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRSendingAppEvents)), 0x1);
    return r0;
}

-(void)setFRSendingAppEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRSendingCampaignEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRSendingCampaignEvents)), 0x1);
    return r0;
}

-(void)setFRSendingCampaignEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRSendingCustomEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRSendingCustomEvents)), 0x1);
    return r0;
}

-(void)setFRSendingCustomEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRSendingUsagesEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRSendingUsagesEvents)), 0x1);
    return r0;
}

-(void)setFRSendingUsagesEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)bShouldSendMore {
    r0 = *(int8_t *)(int64_t *)&self->_bShouldSendMore & 0x1;
    return r0;
}

-(void)setBShouldSendMore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bShouldSendMore = arg2;
    return;
}

-(void *)FRQueuedEventsSender {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRQueuedEventsSender)), 0x1);
    return r0;
}

-(void)setFRQueuedEventsSender:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRInfoDictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRInfoDictionary)), 0x1);
    return r0;
}

-(void)setFRInfoDictionary:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FQLastUpdateDate {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FQLastUpdateDate)), 0x1);
    return r0;
}

-(void)setFQLastUpdateDate:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(unsigned long long)FQ7 {
    r0 = self->_FQ7;
    return r0;
}

-(void)setFQ7:(unsigned long long)arg2 {
    self->_FQ7 = arg2;
    return;
}

-(unsigned long long)FQ30 {
    r0 = self->_FQ30;
    return r0;
}

-(void)setFQ30:(unsigned long long)arg2 {
    self->_FQ30 = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_FQLastUpdateDate, 0x0);
    objc_storeStrong((int64_t *)&self->_FRInfoDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_FRQueuedEventsSender, 0x0);
    objc_storeStrong((int64_t *)&self->_FRSendingUsagesEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRSendingCustomEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRSendingCampaignEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRSendingAppEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRQueuedUsagesEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRQueuedCustomEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRQueuedCampaignEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRQueuedAppEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRTimedEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_FRAppProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_FRPurchaseTracking, 0x0);
    objc_storeStrong((int64_t *)&self->_FRCampaignTracking, 0x0);
    objc_storeStrong((int64_t *)&self->_FRUserTags, 0x0);
    objc_storeStrong((int64_t *)&self->_FRUserPropertiesSession, 0x0);
    objc_storeStrong((int64_t *)&self->_FRUserPropertiesPurchase, 0x0);
    objc_storeStrong((int64_t *)&self->_FRUserProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_FRPlacementContentCalls, 0x0);
    objc_storeStrong((int64_t *)&self->_FREnabledPlacements, 0x0);
    objc_storeStrong((int64_t *)&self->_prevEvent, 0x0);
    objc_storeStrong((int64_t *)&self->_actionIds, 0x0);
    objc_storeStrong((int64_t *)&self->_pushIds, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionLastAt, 0x0);
    objc_storeStrong((int64_t *)&self->_purchaseLastAt, 0x0);
    objc_storeStrong((int64_t *)&self->_purchaseCurrency, 0x0);
    objc_storeStrong((int64_t *)&self->_currentPlacementContent, 0x0);
    objc_storeStrong((int64_t *)&self->__appKey, 0x0);
    objc_storeStrong((int64_t *)&self->__appId, 0x0);
    objc_storeStrong((int64_t *)&self->__sdkApiKey, 0x0);
    objc_storeStrong((int64_t *)&self->__analyticsApiKey, 0x0);
    return;
}

@end