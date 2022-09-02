@implementation ADCAdColonyAPI

+(void)controllerVersion:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"AdColony controller version: %@"];
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            [r0 setControllerVersion:r19];
            [r0 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI controllerVersion:]" line:0x61 withFormat:@"Version value not found in AdColony.controller_version message"];
    }
    [r19 release];
    return;
}

+(void)V4VCRewardForZoneID:(void *)arg2 amount:(int)arg3 name:(void *)arg4 success:(bool)arg5 {
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
    r22 = arg5;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if (r19 != 0x0 && r21 > 0x0) {
            if (r20 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI V4VCRewardForZoneID:amount:name:success:]" line:0x78 withFormat:@"ADCAdColonyAPI received an invalid currency name param"];
            }
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 zoneFromID];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r23 != 0x0) {
                    r0 = [r23 retain];
                    r24 = r0;
                    if (([r0 rewarded] & 0x1) != 0x0) {
                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                            r0 = [r24 reward];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    var_58 = [r24 retain];
                                    var_50 = [r20 retain];
                                    dispatch_async(*__dispatch_main_q, &var_78);
                                    [var_50 release];
                                    [var_58 release];
                            }
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI V4VCRewardForZoneID:amount:name:success:]" line:0x83 withFormat:@"A zone with the given id has been registered, but it isn't a V4VC-enabled zone"];
                    }
                    [r24 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI V4VCRewardForZoneID:amount:name:success:]" line:0x7d withFormat:@"A zone with the given id has not been registered"];
            }
            [r23 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)disable {
    r0 = [ADCAPIGuards sharedGuards];
    r0 = [r0 retain];
    [r0 disableAPIUsage];
    [r0 release];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 unregisterAllDynamicModules];
    [r0 release];
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    [r0 disable];
    [r19 release];
    return;
}

+(void)probe {
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    [r0 update];
    [r0 release];
    return;
}

+(void)onConfigError {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 onConfigError];
    [r0 release];
    return;
}

+(void *)updateZoneInfoForZoneID:(void *)arg2 rewardInfo:(void *)arg3 zoneType:(unsigned long long)arg4 status:(unsigned long long)arg5 appSessionID:(void *)arg6 rewarded:(bool)arg7 playInterval:(unsigned long long)arg8 {
    var_0 = arg8;
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
    r25 = arg7;
    r26 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 zoneFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r23 = var_0;
            if (r26 != 0x2) {
                    asm { csinc      x26, x26, xzr, ne };
            }
            [r22 setType:r26];
            if (r25 != 0x0) {
                    [r22 setRewarded:0x1];
                    if (r20 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            if (r25 != 0x0) {
                                    [r22 setViewsPerReward:[r25 unsignedIntegerValue]];
                            }
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    [r22 setViewsUntilReward:[r26 unsignedIntegerValue]];
                            }
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    [r22 setRewardAmount:[r27 unsignedIntegerValue]];
                            }
                            var_58 = r25;
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r28 = [r0 retain];
                            if (r28 != 0x0) {
                                    [r22 setRewardName:r28];
                            }
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            if (r25 != 0x0) {
                                    [r22 setRewardNamePlural:r25];
                            }
                            r24 = [[r20 objectForKeyedSubscript:r2] retain];
                            if (r24 != 0x0) {
                                    [r22 setRewardPrompt:r24];
                            }
                            [r24 release];
                            [r25 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            [var_58 release];
                    }
            }
            else {
                    if (r26 == 0x3) {
                            [r22 setEnabled:r2];
                    }
            }
            [r22 setPlayInterval:r23];
            [r22 setIdentifier:r19];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return 0x0;
}

+(void *)zoneInfoForZoneID:(void *)arg2 rewardInfo:(void *)arg3 zoneType:(unsigned long long)arg4 status:(unsigned long long)arg5 appSessionID:(void *)arg6 rewarded:(bool)arg7 playInterval:(unsigned long long)arg8 {
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
    r26 = arg7;
    r27 = arg4;
    r25 = arg8;
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = [arg6 retain];
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r23 != 0x0) {
            if (r22 != 0x0) {
                    if (r27 >= 0x4) {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                            r28 = 0x0;
                    }
                    else {
                            r0 = [r24 zoneFromID];
                            r0 = [r0 retain];
                            r20 = r0;
                            r28 = @selector(objectForKeyedSubscript:);
                            r0 = objc_msgSend(r0, r28);
                            r29 = r29;
                            r19 = [r0 retain];
                            [r20 release];
                            if (r19 != 0x0) {
                                    var_150 = r19;
                                    r28 = 0x0;
                            }
                            else {
                                    r0 = [AdColonyZone alloc];
                                    r0 = [r0 initSafe];
                                    r19 = r0;
                                    if (r27 != 0x2) {
                                            asm { csinc      x20, x27, xzr, ne };
                                    }
                                    [r0 setType:r20];
                                    var_170 = r23;
                                    if (r26 != 0x0) {
                                            [r19 setRewarded:0x1];
                                            if (r21 != 0x0) {
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    if (r20 != 0x0) {
                                                            [r19 setViewsPerReward:[r20 unsignedIntegerValue]];
                                                    }
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    if (r23 != 0x0) {
                                                            [r19 setViewsUntilReward:[r23 unsignedIntegerValue]];
                                                    }
                                                    r27 = @selector(objectForKeyedSubscript:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                                    if (r28 != 0x0) {
                                                            [r19 setRewardAmount:[r28 unsignedIntegerValue]];
                                                    }
                                                    var_148 = r20;
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    if (r26 != 0x0) {
                                                            [r19 setRewardName:r26];
                                                    }
                                                    var_150 = r23;
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    if (r20 != 0x0) {
                                                            [r19 setRewardNamePlural:r20];
                                                    }
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    if (r23 != 0x0) {
                                                            [r19 setRewardPrompt:r23];
                                                    }
                                                    [r23 release];
                                                    [r20 release];
                                                    [r26 release];
                                                    [r28 release];
                                                    [var_150 release];
                                                    [var_148 release];
                                                    r28 = r27;
                                            }
                                    }
                                    else {
                                            if (r20 == 0x3) {
                                                    [r19 setEnabled:r2];
                                            }
                                    }
                                    [r19 setPlayInterval:r25];
                                    [r19 setIdentifier:r22];
                                    var_150 = r19;
                                    [r24 addZone:r19];
                                    r0 = [r24 zones];
                                    r0 = [r0 retain];
                                    var_168 = r22;
                                    r22 = r0;
                                    r0 = [r0 count];
                                    var_160 = r21;
                                    var_158 = r24;
                                    r24 = r0;
                                    r0 = [var_158 zoneIDs];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 count];
                                    [r0 release];
                                    r0 = r22;
                                    r22 = var_168;
                                    [r0 release];
                                    COND = r24 != r23;
                                    r21 = var_160;
                                    r24 = var_158;
                                    r23 = var_170;
                                    if (!COND) {
                                            var_178 = r28;
                                            var_130 = q0;
                                            r0 = [r24 zones];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                                            var_148 = r1;
                                            r27 = objc_msgSend(r0, r1);
                                            if (r27 != 0x0) {
                                                    r19 = *var_130;
                                                    do {
                                                            r26 = 0x0;
                                                            do {
                                                                    if (*var_130 != r19) {
                                                                            objc_enumerationMutation(r25);
                                                                    }
                                                                    r22 = *(var_138 + r26 * 0x8);
                                                                    if (([r22 enabled] & 0x1) == 0x0) {
                                                                            r0 = [r22 identifier];
                                                                            r29 = r29;
                                                                            [r0 retain];
                                                                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                                                                            [r22 release];
                                                                    }
                                                                    r26 = r26 + 0x1;
                                                            } while (r26 < r27);
                                                            r27 = objc_msgSend(r25, var_148);
                                                    } while (r27 != 0x0);
                                            }
                                            [r25 release];
                                            r24 = var_158;
                                            r23 = var_170;
                                            [r24 onInitialConfig:r23];
                                            r0 = [ADCUtil appBundleInfo];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if (r25 != 0x0) {
                                                    r0 = objc_msgSend(r25, var_178);
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    r21 = var_160;
                                                    if (r26 == 0x0) {
                                                            r26 = @"";
                                                            [r26 retain];
                                                    }
                                                    r0 = [NSUserDefaults standardUserDefaults];
                                                    r0 = [r0 retain];
                                                    r27 = r0;
                                                    r0 = [r0 stringForKey:@"app_version"];
                                                    r29 = r29;
                                                    r19 = [r0 retain];
                                                    var_148 = r19;
                                                    if (r19 != 0x0 && [r19 isEqualToString:r2] == 0x0) {
                                                            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                                                    r1 = @selector(dictionaryWithObjects:forKeys:count:);
                                                                    var_180 = r1;
                                                                    r0 = objc_msgSend(@class(NSDictionary), r1);
                                                                    r0 = [r0 retain];
                                                                    r21 = r0;
                                                                    r0 = objc_msgSend(r0, var_178);
                                                                    r0 = [r0 retain];
                                                                    r20 = r0;
                                                                    r0 = objc_msgSend(r0, var_178);
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    [r20 release];
                                                                    if (r24 != 0x0) {
                                                                            r0 = [NSUserDefaults standardUserDefaults];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            [r0 setObject:r24 forKey:@"app_version"];
                                                                            var_178 = r0;
                                                                            [r0 synchronize];
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0x107 withFormat:@"Detecting valid app info dictionary. Reporting app update to controller"];
                                                                            r20 = r21;
                                                                            if (r20 != 0x0) {
                                                                                    [NSDictionary class];
                                                                                    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                                                                                            r19 = 0x0;
                                                                                            r21 = r20;
                                                                                            r22 = var_168;
                                                                                            r28 = var_180;
                                                                                    }
                                                                                    else {
                                                                                            r21 = r20;
                                                                                            r0 = @class(NSDictionary);
                                                                                            r28 = var_180;
                                                                                            r0 = objc_msgSend(r0, r28);
                                                                                            r29 = r29;
                                                                                            r20 = [r0 retain];
                                                                                            r19 = 0x1;
                                                                                            r22 = var_168;
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r21 = r20;
                                                                                    r0 = @class(NSDictionary);
                                                                                    r28 = var_180;
                                                                                    r0 = objc_msgSend(r0, r28);
                                                                                    r29 = r29;
                                                                                    r20 = [r0 retain];
                                                                                    r19 = 0x1;
                                                                                    r22 = var_168;
                                                                            }
                                                                            r28 = [objc_msgSend(*(&@class(MCConfigurationData) + 0x18), r28) retain];
                                                                            if (r19 != 0x0) {
                                                                                    [r20 release];
                                                                            }
                                                                            [var_178 release];
                                                                    }
                                                                    else {
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0xff withFormat:@"Could not find current app version in app bundle info. Cannot report app update"];
                                                                            r28 = 0x0;
                                                                            r22 = var_168;
                                                                    }
                                                                    [r24 release];
                                                                    [r21 release];
                                                                    r19 = 0x0;
                                                                    r21 = var_160;
                                                                    r24 = var_158;
                                                            }
                                                            else {
                                                                    r28 = @selector(standardUserDefaults);
                                                                    r19 = 0x1;
                                                                    r22 = var_168;
                                                            }
                                                    }
                                                    else {
                                                            [r27 setObject:r26 forKey:@"app_version"];
                                                            [r27 synchronize];
                                                            r28 = @selector(standardUserDefaults);
                                                            r19 = 0x1;
                                                            r22 = var_168;
                                                    }
                                                    [var_148 release];
                                                    [r27 release];
                                                    [r26 release];
                                                    [r25 release];
                                                    if (r19 != 0x0) {
                                                            r28 = 0x0;
                                                    }
                                            }
                                            else {
                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0xe8 withFormat:@"Could not retrieve app bundle info. Cannot report app update event"];
                                                    [r25 release];
                                                    r28 = 0x0;
                                                    r22 = var_168;
                                                    r21 = var_160;
                                            }
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                            }
                            [var_150 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    r28 = 0x0;
            }
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0x9a withFormat:@"No app session id provided in AdColony.zone_info message"];
            if (r22 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    r28 = 0x0;
            }
            else {
                    if (r27 >= 0x4) {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                            r28 = 0x0;
                    }
                    else {
                            r0 = [r24 zoneFromID];
                            r0 = [r0 retain];
                            r20 = r0;
                            r28 = @selector(objectForKeyedSubscript:);
                            r0 = objc_msgSend(r0, r28);
                            r29 = r29;
                            r19 = [r0 retain];
                            [r20 release];
                            if (r19 != 0x0) {
                                    var_150 = r19;
                                    r28 = 0x0;
                            }
                            else {
                                    r0 = [AdColonyZone alloc];
                                    r0 = [r0 initSafe];
                                    r19 = r0;
                                    if (r27 != 0x2) {
                                            asm { csinc      x20, x27, xzr, ne };
                                    }
                                    [r0 setType:r20];
                                    var_170 = r23;
                                    if (r26 != 0x0) {
                                            [r19 setRewarded:0x1];
                                            if (r21 != 0x0) {
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    if (r20 != 0x0) {
                                                            [r19 setViewsPerReward:[r20 unsignedIntegerValue]];
                                                    }
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    if (r23 != 0x0) {
                                                            [r19 setViewsUntilReward:[r23 unsignedIntegerValue]];
                                                    }
                                                    r27 = @selector(objectForKeyedSubscript:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                                    if (r28 != 0x0) {
                                                            [r19 setRewardAmount:[r28 unsignedIntegerValue]];
                                                    }
                                                    var_148 = r20;
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    if (r26 != 0x0) {
                                                            [r19 setRewardName:r26];
                                                    }
                                                    var_150 = r23;
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    if (r20 != 0x0) {
                                                            [r19 setRewardNamePlural:r20];
                                                    }
                                                    r0 = objc_msgSend(r21, r27);
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    if (r23 != 0x0) {
                                                            [r19 setRewardPrompt:r23];
                                                    }
                                                    [r23 release];
                                                    [r20 release];
                                                    [r26 release];
                                                    [r28 release];
                                                    [var_150 release];
                                                    [var_148 release];
                                                    r28 = r27;
                                            }
                                    }
                                    else {
                                            if (r20 == 0x3) {
                                                    [r19 setEnabled:r2];
                                            }
                                    }
                                    [r19 setPlayInterval:r25];
                                    [r19 setIdentifier:r22];
                                    var_150 = r19;
                                    [r24 addZone:r19];
                                    r0 = [r24 zones];
                                    r0 = [r0 retain];
                                    var_168 = r22;
                                    r22 = r0;
                                    r0 = [r0 count];
                                    var_160 = r21;
                                    var_158 = r24;
                                    r24 = r0;
                                    r0 = [var_158 zoneIDs];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 count];
                                    [r0 release];
                                    r0 = r22;
                                    r22 = var_168;
                                    [r0 release];
                                    COND = r24 != r23;
                                    r21 = var_160;
                                    r24 = var_158;
                                    r23 = var_170;
                                    if (!COND) {
                                            var_178 = r28;
                                            var_130 = q0;
                                            r0 = [r24 zones];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                                            var_148 = r1;
                                            r27 = objc_msgSend(r0, r1);
                                            if (r27 != 0x0) {
                                                    r19 = *var_130;
                                                    do {
                                                            r26 = 0x0;
                                                            do {
                                                                    if (*var_130 != r19) {
                                                                            objc_enumerationMutation(r25);
                                                                    }
                                                                    r22 = *(var_138 + r26 * 0x8);
                                                                    if (([r22 enabled] & 0x1) == 0x0) {
                                                                            r0 = [r22 identifier];
                                                                            r29 = r29;
                                                                            [r0 retain];
                                                                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                                                                            [r22 release];
                                                                    }
                                                                    r26 = r26 + 0x1;
                                                            } while (r26 < r27);
                                                            r27 = objc_msgSend(r25, var_148);
                                                    } while (r27 != 0x0);
                                            }
                                            [r25 release];
                                            r24 = var_158;
                                            r23 = var_170;
                                            [r24 onInitialConfig:r23];
                                            r0 = [ADCUtil appBundleInfo];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if (r25 != 0x0) {
                                                    r0 = objc_msgSend(r25, var_178);
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    r21 = var_160;
                                                    if (r26 == 0x0) {
                                                            r26 = @"";
                                                            [r26 retain];
                                                    }
                                                    r0 = [NSUserDefaults standardUserDefaults];
                                                    r0 = [r0 retain];
                                                    r27 = r0;
                                                    r0 = [r0 stringForKey:@"app_version"];
                                                    r29 = r29;
                                                    r19 = [r0 retain];
                                                    var_148 = r19;
                                                    if (r19 != 0x0 && [r19 isEqualToString:r2] == 0x0) {
                                                            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                                                    r1 = @selector(dictionaryWithObjects:forKeys:count:);
                                                                    var_180 = r1;
                                                                    r0 = objc_msgSend(@class(NSDictionary), r1);
                                                                    r0 = [r0 retain];
                                                                    r21 = r0;
                                                                    r0 = objc_msgSend(r0, var_178);
                                                                    r0 = [r0 retain];
                                                                    r20 = r0;
                                                                    r0 = objc_msgSend(r0, var_178);
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    [r20 release];
                                                                    if (r24 != 0x0) {
                                                                            r0 = [NSUserDefaults standardUserDefaults];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            [r0 setObject:r24 forKey:@"app_version"];
                                                                            var_178 = r0;
                                                                            [r0 synchronize];
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0x107 withFormat:@"Detecting valid app info dictionary. Reporting app update to controller"];
                                                                            r20 = r21;
                                                                            if (r20 != 0x0) {
                                                                                    [NSDictionary class];
                                                                                    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                                                                                            r19 = 0x0;
                                                                                            r21 = r20;
                                                                                            r22 = var_168;
                                                                                            r28 = var_180;
                                                                                    }
                                                                                    else {
                                                                                            r21 = r20;
                                                                                            r0 = @class(NSDictionary);
                                                                                            r28 = var_180;
                                                                                            r0 = objc_msgSend(r0, r28);
                                                                                            r29 = r29;
                                                                                            r20 = [r0 retain];
                                                                                            r19 = 0x1;
                                                                                            r22 = var_168;
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r21 = r20;
                                                                                    r0 = @class(NSDictionary);
                                                                                    r28 = var_180;
                                                                                    r0 = objc_msgSend(r0, r28);
                                                                                    r29 = r29;
                                                                                    r20 = [r0 retain];
                                                                                    r19 = 0x1;
                                                                                    r22 = var_168;
                                                                            }
                                                                            r28 = [objc_msgSend(*(&@class(MCConfigurationData) + 0x18), r28) retain];
                                                                            if (r19 != 0x0) {
                                                                                    [r20 release];
                                                                            }
                                                                            [var_178 release];
                                                                    }
                                                                    else {
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0xff withFormat:@"Could not find current app version in app bundle info. Cannot report app update"];
                                                                            r28 = 0x0;
                                                                            r22 = var_168;
                                                                    }
                                                                    [r24 release];
                                                                    [r21 release];
                                                                    r19 = 0x0;
                                                                    r21 = var_160;
                                                                    r24 = var_158;
                                                            }
                                                            else {
                                                                    r28 = @selector(standardUserDefaults);
                                                                    r19 = 0x1;
                                                                    r22 = var_168;
                                                            }
                                                    }
                                                    else {
                                                            [r27 setObject:r26 forKey:@"app_version"];
                                                            [r27 synchronize];
                                                            r28 = @selector(standardUserDefaults);
                                                            r19 = 0x1;
                                                            r22 = var_168;
                                                    }
                                                    [var_148 release];
                                                    [r27 release];
                                                    [r26 release];
                                                    [r25 release];
                                                    if (r19 != 0x0) {
                                                            r28 = 0x0;
                                                    }
                                            }
                                            else {
                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAdColonyAPI zoneInfoForZoneID:rewardInfo:zoneType:status:appSessionID:rewarded:playInterval:]" line:0xe8 withFormat:@"Could not retrieve app bundle info. Cannot report app update event"];
                                                    [r25 release];
                                                    r28 = 0x0;
                                                    r22 = var_168;
                                                    r21 = var_160;
                                            }
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                            }
                            [var_150 release];
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    [r21 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r28 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getAppInfo {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x350;
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    var_1C0 = [r0 retain];
    var_188 = &var_190;
    if ([NSThread isMainThread] != 0x0) {
            *(var_188 + 0x18) = [ADCUtil appSupportedOrientations];
    }
    else {
            r19 = *__dispatch_main_q;
            [r19 retain];
            dispatch_sync(r19, &var_1B8);
            [r19 release];
    }
    r0 = [ADCUtil appBundleInfo];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [NSDictionary class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:@"NSPhotoLibraryUsageDescription"];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 compare:@"11.0" options:0x40];
    [r0 release];
    [r19 release];
    if (r23 != -0x1) {
            r8 = &@selector(updateAppMetadata:error:);
            if (r21 != 0x0) {
                    r8 = &@selector(updateAppMetadata:error:);
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            if ((r8 & r20) == 0x1) {
                    [NSDictionary class];
                    if ([r21 isKindOfClass:r2] != 0x0) {
                            r0 = [r21 objectForKeyedSubscript:@"NSPhotoLibraryAddUsageDescription"];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r20 = 0x1;
                                    }
                            }
                            [r0 release];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    r0 = [var_1C0 appID];
    r29 = r29;
    r0 = [r0 retain];
    var_1D0 = r0;
    if (r0 != 0x0) {
            r0 = [var_1C0 appID];
            r29 = r29;
            var_2A8 = [r0 retain];
            [NSString class];
            if ([var_2A8 isKindOfClass:r2] != 0x0) {
                    r0 = [var_1C0 appID];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_1D4 = 0x1;
                    var_1D8 = 0x1;
            }
            else {
                    var_1D8 = 0x0;
                    r0 = @"";
                    var_1D4 = 0x1;
            }
    }
    else {
            var_1D8 = 0x0;
            r0 = @"";
    }
    var_2B8 = r0;
    r0 = [var_1C0 zoneIDs];
    r29 = r29;
    r0 = [r0 retain];
    var_1E0 = r0;
    if (r0 == 0x0) goto loc_1001ba1e0;

loc_1001ba170:
    r0 = [var_1C0 zoneIDs];
    r29 = r29;
    var_2B0 = [r0 retain];
    [NSArray class];
    if ([var_2B0 isKindOfClass:r2] == 0x0) goto loc_1001ba1e8;

loc_1001ba1b4:
    r0 = [var_1C0 zoneIDs];
    r29 = r29;
    r0 = [r0 retain];
    var_1F4 = 0x0;
    var_1E4 = 0x1;
    var_1F8 = 0x1;
    goto loc_1001ba220;

loc_1001ba220:
    var_1F0 = r0;
    if (r21 == 0x0) goto loc_1001ba314;

loc_1001ba238:
    [NSDictionary class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001ba368;

loc_1001ba26c:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001ba374;

loc_1001ba294:
    r22 = @selector(isKindOfClass:);
    var_340 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_2F8 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_2F8, r22) == 0x0) goto loc_1001bb268;

loc_1001ba2dc:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_1FC = 0x1;
    var_200 = 0x1;
    var_204 = 0x1;
    goto loc_1001ba390;

loc_1001ba390:
    r22 = @selector(isKindOfClass:);
    var_2C0 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r22) == 0x0) goto loc_1001ba46c;

loc_1001ba3c4:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001ba478;

loc_1001ba3ec:
    r22 = @selector(isKindOfClass:);
    var_348 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_300 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_300, r22) == 0x0) goto loc_1001bb280;

loc_1001ba434:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_208 = 0x1;
    var_20C = 0x1;
    var_210 = 0x1;
    goto loc_1001ba490;

loc_1001ba490:
    r22 = @selector(isKindOfClass:);
    var_2C8 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r22) == 0x0) goto loc_1001ba56c;

loc_1001ba4c4:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001ba578;

loc_1001ba4ec:
    r22 = @selector(isKindOfClass:);
    var_350 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_308 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_308, r22) == 0x0) goto loc_1001bb298;

loc_1001ba534:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_214 = 0x1;
    var_218 = 0x1;
    var_21C = 0x1;
    goto loc_1001ba594;

loc_1001ba594:
    r22 = @selector(isKindOfClass:);
    var_2D0 = r0;
    r2 = [NSDictionary class];
    r0 = objc_msgSend(r21, r22);
    r22 = (r29 - 0xe0) + 0x28;
    if (r0 != 0x0) {
            r0 = [r21 objectForKeyedSubscript:@"NSCalendarsUsageDescription"];
            r29 = r29;
            r0 = [r0 retain];
            var_360 = r0;
            if (r0 != 0x0) {
                    r2 = @"NSCalendarsUsageDescription";
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            var_220 = 0x1;
    }
    else {
            var_220 = 0x0;
            r2 = 0x0;
    }
    goto loc_1001ba618;

loc_1001ba618:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_228 = r0;
    *r22 = r0;
    var_230 = [[NSNumber numberWithBool:r20] retain];
    if (r21 != 0x0) {
            r2 = [NSDictionary class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:@"NSCameraUsageDescription"];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_358 = r0;
                    if (r0 != 0x0) {
                            r2 = @"NSCameraUsageDescription";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    var_234 = 0x1;
            }
            else {
                    var_234 = 0x0;
                    r2 = 0x0;
            }
    }
    else {
            var_234 = 0x0;
            r2 = 0x0;
    }
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    var_240 = [r0 retain];
    if (r21 != 0x0) {
            r2 = [NSDictionary class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:@"NSMotionUsageDescription"];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_368 = r0;
                    if (r0 != 0x0) {
                            r2 = @"NSMotionUsageDescription";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    var_244 = 0x1;
            }
            else {
                    var_244 = 0x0;
                    r2 = 0x0;
            }
    }
    else {
            var_244 = 0x0;
            r2 = 0x0;
    }
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    var_250 = [r0 retain];
    if (r21 == 0x0) goto loc_1001ba890;

loc_1001ba7b4:
    r2 = [NSDictionary class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001ba890;

loc_1001ba7e8:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001baa94;

loc_1001ba810:
    r23 = @selector(isKindOfClass:);
    var_370 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_310 = [r0 retain];
    r2 = [NSDictionary class];
    if (objc_msgSend(var_310, r23) == 0x0) goto loc_1001bb2b0;

loc_1001ba854:
    r2 = @"NSAppTransportSecurity";
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_264 = 0x0;
    var_254 = 0x1;
    var_258 = 0x1;
    var_268 = 0x1;
    goto loc_1001ba8c8;

loc_1001ba8c8:
    var_260 = r0;
    if (*(var_188 + 0x18) == 0x1e) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    var_270 = [[NSNumber numberWithInt:r2] retain];
    var_278 = [[NSNumber numberWithUnsignedInteger:*(var_188 + 0x18)] retain];
    if (r21 == 0x0) goto loc_1001baa20;

loc_1001ba944:
    [NSDictionary class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001baa88;

loc_1001ba978:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001baaa8;

loc_1001ba9a0:
    r28 = @selector(isKindOfClass:);
    var_378 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_318 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_318, r28) == 0x0) goto loc_1001bb2c4;

loc_1001ba9e8:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_27C = 0x1;
    var_280 = 0x1;
    var_284 = 0x1;
    goto loc_1001baac4;

loc_1001baac4:
    r28 = @selector(isKindOfClass:);
    var_2D8 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001baba0;

loc_1001baaf8:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001babac;

loc_1001bab20:
    r28 = @selector(isKindOfClass:);
    var_380 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_320 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_320, r28) == 0x0) goto loc_1001bb2dc;

loc_1001bab68:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_288 = 0x1;
    var_28C = 0x1;
    var_290 = 0x1;
    goto loc_1001babc4;

loc_1001babc4:
    r28 = @selector(isKindOfClass:);
    var_2E0 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001baca0;

loc_1001babf8:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001bacac;

loc_1001bac20:
    r28 = @selector(isKindOfClass:);
    var_388 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_328 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_328, r28) == 0x0) goto loc_1001bb2f4;

loc_1001bac68:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_294 = 0x1;
    var_298 = 0x1;
    var_29C = 0x1;
    goto loc_1001bacc8;

loc_1001bacc8:
    r28 = @selector(isKindOfClass:);
    var_2E8 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001bad98;

loc_1001bacfc:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001bada8;

loc_1001bad24:
    r28 = @selector(isKindOfClass:);
    var_390 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_330 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_330, r28) == 0x0) goto loc_1001bb30c;

loc_1001bad6c:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = 0x1;
    r27 = 0x1;
    r19 = 0x1;
    goto loc_1001badc0;

loc_1001badc0:
    r28 = @selector(isKindOfClass:);
    var_2F0 = r0;
    [NSDictionary class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_1001bae90;

loc_1001badf4:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1001baea0;

loc_1001bae1c:
    r28 = @selector(isKindOfClass:);
    var_398 = r0;
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    var_338 = [r0 retain];
    [NSString class];
    if (objc_msgSend(var_338, r28) == 0x0) goto loc_1001bb31c;

loc_1001bae64:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = 0x1;
    r20 = 0x1;
    r22 = 0x1;
    goto loc_1001baeb8;

loc_1001baeb8:
    r23 = r0;
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xe0 forKeys:&var_168 count:0x11];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 mutableCopy];
    [r0 release];
    if (r22 != 0x0) {
            [r23 release];
    }
    if (r20 != 0x0) {
            [var_338 release];
    }
    r20 = @selector(sharedInstance);
    r22 = var_1F0;
    r23 = var_260;
    if (r26 != 0x0) {
            [var_398 release];
            if (r19 == 0x0) {
                    if (r27 != 0x0) {
                            [var_330 release];
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
                    else {
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
            }
            else {
                    [var_2F0 release];
                    if (r27 == 0x0) {
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
                    else {
                            [var_330 release];
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
            }
    }
    else {
            if (r19 != 0x0) {
                    [var_2F0 release];
                    if (r27 == 0x0) {
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
                    else {
                            [var_330 release];
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
            }
            else {
                    if (r27 != 0x0) {
                            [var_330 release];
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
                    else {
                            if (r25 != 0x0) {
                                    [var_390 release];
                            }
                    }
            }
    }
    if (var_29C != 0x0) {
            [var_2E8 release];
    }
    if (var_298 != 0x0) {
            [var_328 release];
    }
    if (var_294 != 0x0) {
            [var_388 release];
    }
    if (var_290 != 0x0) {
            [var_2E0 release];
    }
    if (var_28C != 0x0) {
            [var_320 release];
    }
    if (var_288 != 0x0) {
            [var_380 release];
    }
    if (var_284 != 0x0) {
            [var_2D8 release];
    }
    if (var_280 != 0x0) {
            [var_318 release];
    }
    if (var_27C != 0x0) {
            [var_378 release];
    }
    [var_278 release];
    [var_270 release];
    if (var_264 != 0x0) {
            [r23 release];
    }
    if (var_268 != 0x0) {
            [r23 release];
    }
    if (var_258 != 0x0) {
            [var_310 release];
    }
    if (var_254 != 0x0) {
            [var_370 release];
    }
    [var_250 release];
    if (var_244 != 0x0) {
            [var_368 release];
    }
    [var_240 release];
    if (var_234 != 0x0) {
            [var_358 release];
    }
    [var_230 release];
    [var_228 release];
    if (var_220 != 0x0) {
            [var_360 release];
    }
    if (var_21C != 0x0) {
            [var_2D0 release];
    }
    if (var_218 != 0x0) {
            [var_308 release];
    }
    if (var_214 != 0x0) {
            [var_350 release];
    }
    if (var_210 != 0x0) {
            [var_2C8 release];
    }
    if (var_20C != 0x0) {
            [var_300 release];
    }
    if (var_208 != 0x0) {
            [var_348 release];
    }
    if (var_204 != 0x0) {
            [var_2C0 release];
    }
    if (var_200 != 0x0) {
            [var_2F8 release];
    }
    if (var_1FC != 0x0) {
            [var_340 release];
    }
    if (var_1F4 != 0x0) {
            [r22 release];
    }
    if (var_1F8 != 0x0) {
            [r22 release];
    }
    if (var_1E4 != 0x0) {
            [var_2B0 release];
    }
    [var_1E0 release];
    if (var_1D8 != 0x0) {
            [var_2B8 release];
    }
    if (var_1D4 != 0x0) {
            [var_2A8 release];
    }
    var_58 = **___stack_chk_guard;
    [var_1D0 release];
    r0 = @class(AdColony);
    r0 = objc_msgSend(r0, r20);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 options];
    r0 = [r0 retain];
    r22 = [[r0 getOptions] retain];
    [r28 addEntriesFromDictionary:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r0 = [r28 retain];
    r19 = r0;
    [r0 release];
    [r21 release];
    _Block_object_dispose(&var_190, 0x8);
    [var_1C0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001bb31c:
    r26 = 0x1;
    r20 = 0x1;
    goto loc_1001baeb0;

loc_1001baeb0:
    r22 = 0x0;
    r0 = @"";
    goto loc_1001baeb8;

loc_1001baea0:
    var_398 = 0x0;
    r20 = 0x0;
    r26 = 0x1;
    goto loc_1001baeb0;

loc_1001bae90:
    r26 = 0x0;
    r20 = 0x0;
    goto loc_1001baeb0;

loc_1001bb30c:
    r25 = 0x1;
    r27 = 0x1;
    goto loc_1001badb8;

loc_1001badb8:
    r19 = 0x0;
    r0 = @"";
    goto loc_1001badc0;

loc_1001bada8:
    var_390 = 0x0;
    r27 = 0x0;
    r25 = 0x1;
    goto loc_1001badb8;

loc_1001bad98:
    r25 = 0x0;
    r27 = 0x0;
    goto loc_1001badb8;

loc_1001bb2f4:
    var_29C = 0x0;
    var_294 = 0x1;
    var_298 = 0x1;
    goto loc_1001bacc0;

loc_1001bacc0:
    r0 = @"";
    goto loc_1001bacc8;

loc_1001bacac:
    var_388 = 0x0;
    var_298 = 0x0;
    var_29C = 0x0;
    var_294 = 0x1;
    goto loc_1001bacc0;

loc_1001baca0:
    var_298 = 0x0;
    var_29C = 0x0;
    goto loc_1001bacc0;

loc_1001bb2dc:
    var_290 = 0x0;
    var_288 = 0x1;
    var_28C = 0x1;
    goto loc_1001babbc;

loc_1001babbc:
    r0 = @"";
    goto loc_1001babc4;

loc_1001babac:
    var_380 = 0x0;
    var_290 = 0x0;
    var_288 = 0x1;
    goto loc_1001babbc;

loc_1001baba0:
    var_288 = 0x0;
    var_290 = 0x0;
    goto loc_1001babbc;

loc_1001bb2c4:
    var_284 = 0x0;
    var_27C = 0x1;
    var_280 = 0x1;
    goto loc_1001baabc;

loc_1001baabc:
    r0 = @"";
    goto loc_1001baac4;

loc_1001baaa8:
    var_378 = 0x0;
    var_280 = 0x0;
    var_284 = 0x0;
    var_27C = 0x1;
    goto loc_1001baabc;

loc_1001baa88:
    var_280 = 0x0;
    var_284 = 0x0;
    goto loc_1001baabc;

loc_1001baa20:
    r19 = 0x0;
    r27 = 0x0;
    r25 = 0x0;
    var_290 = 0x0;
    var_288 = 0x0;
    var_280 = 0x0;
    var_298 = 0x0;
    var_29C = 0x0;
    r26 = 0x0;
    r20 = 0x0;
    r22 = 0x0;
    r0 = @"";
    goto loc_1001baeb8;

loc_1001bb2b0:
    var_254 = 0x1;
    var_258 = 0x1;
    goto loc_1001ba894;

loc_1001ba894:
    r0 = [NSDictionary dictionaryWithObjects:&stack[-384] forKeys:&stack[-384] count:0x0];
    r29 = r29;
    r0 = [r0 retain];
    var_268 = 0x0;
    var_264 = 0x1;
    goto loc_1001ba8c8;

loc_1001baa94:
    r2 = @"NSAppTransportSecurity";
    var_370 = 0x0;
    var_258 = 0x0;
    var_254 = 0x1;
    goto loc_1001ba894;

loc_1001ba890:
    var_258 = 0x0;
    goto loc_1001ba894;

loc_1001bb298:
    var_21C = 0x0;
    var_214 = 0x1;
    var_218 = 0x1;
    goto loc_1001ba58c;

loc_1001ba58c:
    r0 = @"";
    goto loc_1001ba594;

loc_1001ba578:
    var_350 = 0x0;
    var_218 = 0x0;
    var_21C = 0x0;
    var_214 = 0x1;
    goto loc_1001ba58c;

loc_1001ba56c:
    var_218 = 0x0;
    var_21C = 0x0;
    goto loc_1001ba58c;

loc_1001bb280:
    var_210 = 0x0;
    var_208 = 0x1;
    var_20C = 0x1;
    goto loc_1001ba488;

loc_1001ba488:
    r0 = @"";
    goto loc_1001ba490;

loc_1001ba478:
    var_348 = 0x0;
    var_210 = 0x0;
    var_208 = 0x1;
    goto loc_1001ba488;

loc_1001ba46c:
    var_208 = 0x0;
    var_210 = 0x0;
    goto loc_1001ba488;

loc_1001bb268:
    var_204 = 0x0;
    var_1FC = 0x1;
    var_200 = 0x1;
    goto loc_1001ba388;

loc_1001ba388:
    r0 = @"";
    goto loc_1001ba390;

loc_1001ba374:
    var_340 = 0x0;
    var_200 = 0x0;
    var_204 = 0x0;
    var_1FC = 0x1;
    goto loc_1001ba388;

loc_1001ba368:
    var_200 = 0x0;
    var_204 = 0x0;
    goto loc_1001ba388;

loc_1001ba314:
    var_220 = 0x0;
    var_218 = 0x0;
    var_208 = 0x0;
    var_200 = 0x0;
    var_210 = 0x0;
    r2 = 0x0;
    r22 = (r29 - 0xe0) + 0x28;
    goto loc_1001ba618;

loc_1001ba1e8:
    var_1E4 = 0x1;
    goto loc_1001ba1f0;

loc_1001ba1f0:
    r0 = [NSArray arrayWithObjects:&stack[-384] count:0x0];
    r29 = r29;
    r0 = [r0 retain];
    var_1F8 = 0x0;
    var_1F4 = 0x1;
    goto loc_1001ba220;

loc_1001ba1e0:
    var_1E4 = 0x0;
    goto loc_1001ba1f0;
}

@end