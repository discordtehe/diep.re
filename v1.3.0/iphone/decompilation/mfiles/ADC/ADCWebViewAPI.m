@implementation ADCWebViewAPI

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_webViewConfigs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setWebViewScrollable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"enabled"];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [r0 boolValue];
            r0 = [r20 view];
            r0 = [r0 retain];
            [r0 setScrollEnabled:r22];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)executeJS:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"custom_js"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    [r0 evaluateJS:r21 withCompletionHandler:0x0];
                    [r0 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI executeJS:]" line:0xab withFormat:0x0];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setBounds:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
    var_60 = d11;
    stack[-104] = d10;
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
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            [ADCMessage rectValueFromMessage:r19];
            [[[r20 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_C0);
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [@(YES) retain];
            r24 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r22 sendMessage:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r0 release];
            [r21 release];
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)destroy:(union ?)arg2 {
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
    r27 = self;
    r19 = [r2 retain];
    r21 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r21 = [r21 initWithMessage:r19 moduleID:r22 andType:[ADCWebViewModule class] viewExists:0x1];
    [r22 release];
    if ([r21 isValid:0x1] != 0x0) {
            r22 = [[r21 view] retain];
            r0 = [ADCNativeLayer sharedLayer];
            r0 = [r0 retain];
            [r0 unregisterDynamicModule:r22];
            [r0 release];
            r24 = [[r21 container] retain];
            r0 = [r21 viewID];
            r29 = r29;
            r0 = [r0 retain];
            [r24 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r24 release];
            [ADCWebViewModule class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 retain];
                    r23 = r0;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_webViewConfigs));
                    r26 = *(r27 + r20);
                    var_58 = r27;
                    r27 = @class(NSNumber);
                    r27 = [[r27 numberWithUnsignedInteger:[r0 identifier]] retain];
                    r0 = [r26 objectForKeyedSubscript:r27];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 boolValue];
                    [r0 release];
                    [r27 release];
                    if (r28 != 0x0) {
                            r20 = *(var_58 + r20);
                            [[NSNumber numberWithUnsignedInteger:[r23 identifier]] retain];
                            [r20 removeObjectForKey:r2];
                            [r24 release];
                    }
                    [r23 release];
            }
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setVisible:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKeyedSubscript:@"visible"];
            r0 = [r0 retain];
            [r0 boolValue];
            [r0 release];
            [r21 release];
            [[[r20 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_88);
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [@(YES) retain];
            r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r22 sendMessage:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r0 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)onWebViewLoad:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[AdColony sharedInstance] retain];
            var_28 = [r19 retain];
            [r21 performBlockOnWorkerThread:&var_50 mode:0x1];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)resume:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [r20 view];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 isDisplayModule] != 0x0) {
                    [r21 resumeServer];
            }
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [@(YES) retain];
            r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r22 sendMessage:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)create:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x170;
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
    r22 = self;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x0];
    [r21 release];
    if ([r20 isValid:0x0] == 0x0) goto loc_1001fcadc;

loc_1001fc070:
    var_130 = r22;
    r22 = [[ADCMessage stringValueFromMessage:r19 withKey:@"url"] retain];
    r0 = @class(ADCMessage);
    r0 = [r0 numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r25 = [r0 retain];
    var_118 = r22;
    if (r22 != 0x0) goto loc_1001fc154;

loc_1001fc0dc:
    r0 = [r20 filepath];
    r29 = r29;
    r0 = [r0 retain];
    if (r25 != 0x0 || r0 != 0x0) goto loc_1001fc150;

loc_1001fc0fc:
    if (([r25 boolValue] & 0x1) != 0x0) goto loc_1001fc154;

loc_1001fc110:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI create:]" line:0x3f withFormat:0x0];
    goto loc_1001fcacc;

loc_1001fcacc:
    [r25 release];
    [var_118 release];
    goto loc_1001fcadc;

loc_1001fcadc:
    var_78 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;

loc_1001fc154:
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"info"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 mutableCopy];
    [r0 release];
    var_128 = r25;
    if (r27 != 0x0) {
            r0 = [r27 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r2 = @"audio_setting";
                    var_120 = r27;
                    r0 = [AdColony sharedInstance];
                    r29 = r29;
                    r27 = [r0 retain];
                    if ([r22 integerValue] == 0x2) {
                            r2 = @"audio_setting";
                            if (CPU_FLAGS & E) {
                                    r2 = 0x1;
                            }
                    }
                    [r27 setRingerSwitchDetectionEnabled:r2];
                    [r27 release];
                    r28 = [r19 retain];
                    r0 = @class(ADCMessage);
                    r0 = [r0 stringValueFromMessage:r28 withKey:@"ad_session_id"];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            var_110 = r28;
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 sessionFromID];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r28 release];
                            [r27 release];
                            if (r25 != 0x0) {
                                    r0 = [AdColony sharedInstance];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 sessionAPI];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 startRingerSwitchDetection:r25];
                                    [r0 release];
                                    [r23 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI create:]" line:0x55 withFormat:@"Bad ad_session_id %@"];
                            }
                            r27 = var_120;
                            [r25 release];
                            r28 = var_110;
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI create:]" line:0x58 withFormat:@"Invalid session id"];
                            r27 = var_120;
                    }
                    [r24 release];
                    [r28 release];
            }
            [r22 release];
            r25 = var_128;
    }
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r0 = [r0 retain];
    var_110 = r0;
    if (r0 != 0x0) {
            if (([var_110 boolValue] & 0x1) == 0x0) {
                    [r27 release];
                    r27 = 0x0;
            }
    }
    else {
            [r27 release];
            r27 = 0x0;
    }
    r0 = @class(ADCMessage);
    r0 = [r0 numberValueFromMessage:r2 withKey:r3];
    r0 = [r0 retain];
    var_134 = [r0 boolValue];
    [r0 release];
    r0 = @class(ADCMessage);
    r2 = r19;
    r0 = [r0 numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 boolValue] & 0x1) != 0x0) {
            r22 = 0x1;
    }
    else {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 options];
            r0 = [r0 retain];
            r26 = r27;
            r27 = r0;
            r0 = [r0 getNumericOptionWithKey:@"use_uiwebview"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 boolValue];
            [r0 release];
            r0 = r27;
            r27 = r26;
            [r0 release];
            [r23 release];
    }
    [r21 release];
    var_120 = r27;
    if (r25 == 0x0 || [r25 boolValue] == 0x0) goto loc_1001fc5a8;

loc_1001fc51c:
    var_150 = @selector(class);
    r0 = [ADCNativeLayer sharedLayer];
    [r0 retain];
    [r19 origin];
    asm { sxtw       x2, w0 };
    r0 = [r23 moduleForIdentifier:r2];
    r29 = r29;
    r28 = [r0 retain];
    [r23 release];
    objc_msgSend(*(r26 + 0xf60), var_150);
    if (([r28 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1001fc5a0;

loc_1001fc598:
    if (r28 == 0x0) {
            r23 = [ADCWebViewModule alloc];
            [r20 rect];
            r0 = [ADCNativeLayer sharedLayer];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r23 initWithFrame:[r0 nextDynamicModuleID] originID:r27 info:0x0 filepath:r22 useUIWebView:0x0 isDisplayModule:r7];
            [r0 release];
    }
    goto loc_1001fc648;

loc_1001fc648:
    r0 = [r20 session];
    r0 = [r0 retain];
    r23 = [[r0 identifier] retain];
    [r28 setAdSessionID:r23];
    [r23 release];
    [r0 release];
    r0 = [r20 viewID];
    r0 = [r0 retain];
    [r28 setIdentifier:[r0 unsignedIntegerValue]];
    [r0 release];
    [r28 setDelegate:var_130];
    r23 = [[r20 container] retain];
    r0 = [r20 viewID];
    r29 = r29;
    r0 = [r0 retain];
    [r23 bindObject:r28 withIdentifier:[r0 unsignedIntegerValue]];
    [r0 release];
    [r23 release];
    if (var_134 != 0x0) {
            [r28 setScrollEnabled:0x0];
            r0 = [UIColor clearColor];
            r29 = r29;
            r22 = [r0 retain];
            [r28 setBackgroundColor:r22];
            [r22 release];
            [r28 setOpaque:0x0];
    }
    if ([NSThread isMainThread] != 0x0) {
            var_A8 = [r28 retain];
            var_A0 = [r20 retain];
            var_98 = [r19 retain];
            var_90 = [var_118 retain];
            sub_1001fcb30(&var_C8);
            r25 = 0x0;
            var_134 = 0x1;
    }
    else {
            var_E8 = [r28 retain];
            var_E0 = [r20 retain];
            var_D8 = [r19 retain];
            var_D0 = [var_118 retain];
            dispatch_sync(*__dispatch_main_q, &var_108);
            var_134 = 0x0;
            r25 = 0x1;
    }
    if (([var_110 boolValue] & 0x1) != 0x0) {
            r23 = var_130->_webViewConfigs;
            r24 = @class(NSNumber);
            [r28 identifier];
            r24 = [[r24 numberWithUnsignedInteger:r2] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            r26 = [r0 retain];
            [r23 setObject:r26 forKeyedSubscript:r24];
            [r26 release];
            [r24 release];
    }
    r21 = [[ADCNativeLayer sharedLayer] retain];
    r23 = @class(NSNumber);
    [r28 originNumber];
    r22 = [[r23 numberWithUnsignedInteger:r2] retain];
    r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain];
    r24 = [[r19 messageReplyWithDict:r23] retain];
    [r21 sendMessage:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    if (r25 != 0x0) {
            [var_D0 release];
            [var_D8 release];
            [var_E0 release];
            [var_E8 release];
    }
    r21 = var_120;
    if (var_134 != 0x0) {
            [var_90 release];
            [var_98 release];
            [var_A0 release];
            [var_A8 release];
    }
    [r28 release];
    [var_110 release];
    [r21 release];
    r25 = var_128;
    goto loc_1001fcacc;

loc_1001fc5a0:
    [r28 release];
    goto loc_1001fc5a8;

loc_1001fc5a8:
    r23 = [ADCWebViewModule alloc];
    [r20 rect];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r23 initWithFrame:[r0 nextDynamicModuleID] originID:r27 info:0x0 filepath:r22 useUIWebView:0x0 isDisplayModule:r7];
    [r0 release];
    goto loc_1001fc648;

loc_1001fc150:
    [r0 release];
    goto loc_1001fc154;
}

-(void)prepare:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    r20 = [ADCMPViewContext alloc];
    r21 = [[NSNumber numberWithInt:[r19 origin]] retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCWebViewModule class] viewExists:0x1];
    [r21 release];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [NSString stringWithContentsOfFile:r24 encoding:0x4 error:&var_80];
            r29 = r29;
            r21 = [r0 retain];
            r26 = [var_80 retain];
            [r24 release];
            if (r26 == 0x0) {
                    r0 = [r20 filepath];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r22 = [r0 retain];
                            if (r22 == 0x0 || [r22 isEqualToString:r2] != 0x0) {
                                    [@"undefined" retain];
                                    [r22 release];
                                    r22 = @"undefined";
                            }
                            r23 = [ADCFileHandler alloc];
                            r0 = [r20 filepath];
                            r29 = r29;
                            r25 = [r0 retain];
                            r23 = [r23 initWithFilepath:r25];
                            [r25 release];
                            if (r23 != 0x0) {
                                    r0 = [NSRegularExpression regularExpressionWithPattern:@"(<script .*src=\"mraid.js\"[^>]*>[\s]*)" options:0x1 error:&var_88];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    r25 = [var_88 retain];
                                    [r26 release];
                                    r28 = [r23 locationAndLengthOfRegex:r2];
                                    var_90 = r24;
                                    if (r28 != -0x1 && @selector(locationAndLengthOfRegex:) != 0x0) {
                                            [r23 seekToLocation:r28];
                                            r0 = [r23 readToEndOfFile];
                                            r0 = [r0 retain];
                                            var_A0 = r0;
                                            [r0 length];
                                            [r24 rangeOfFirstMatchInString:r0 options:0x0 range:0x0];
                                            r26 = [[r0 substringFromIndex:@selector(rangeOfFirstMatchInString:options:range:) + 0x9] retain];
                                            [r23 truncateAtLocation:r28];
                                            r24 = [[NSString stringWithFormat:@"<script type=\"text/javascript\">var ADC_DEVICE_INFO = %@;\n%@</script>\n%@"] retain];
                                            r0 = [r23 writeDataString:r24 atLocation:r28];
                                            var_98 = r25;
                                            [r24 release];
                                            [r23 finish];
                                            r28 = [[ADCNativeLayer sharedLayer] retain];
                                            r24 = [[NSNumber numberWithBool:r0] retain];
                                            r27 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1] retain];
                                            r25 = [[r19 messageReplyWithDict:r27] retain];
                                            [r28 sendMessage:r25];
                                            r0 = r25;
                                            r25 = var_98;
                                            [r0 release];
                                            [r27 release];
                                            [r24 release];
                                            [r28 release];
                                            [r26 release];
                                            r0 = var_A0;
                                    }
                                    else {
                                            r26 = [[ADCNativeLayer sharedLayer] retain];
                                            r27 = [@(NO) retain];
                                            r28 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
                                            r24 = [[r19 messageReplyWithDict:r28] retain];
                                            [r26 sendMessage:r24];
                                            [r24 release];
                                            [r28 release];
                                            [r27 release];
                                            r0 = r26;
                                    }
                                    [r0 release];
                                    [var_90 release];
                            }
                            else {
                                    r24 = [[r20 filepath] retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI prepare:]" line:0x111 withFormat:0x0];
                                    [r24 release];
                                    r25 = 0x0;
                            }
                            [r23 release];
                            [r22 release];
                            r26 = r25;
                    }
                    else {
                            r26 = 0x0;
                    }
            }
            [r26 release];
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

-(void)onWebViewError:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[AdColony sharedInstance] retain];
            var_28 = [r19 retain];
            [r21 performBlockOnWorkerThread:&var_50 mode:0x2];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCWebViewAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(prepare:) forMessageType:@"WebView.prepare"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"WebView.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"WebView.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setVisible:) forMessageType:@"WebView.set_visible"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setBounds:) forMessageType:@"WebView.set_bounds"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(executeJS:) forMessageType:@"WebView.execute_js"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(resume:) forMessageType:@"WebView.resume"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setWebViewScrollable:) forMessageType:@"WebView.set_scrollable"];
    [r0 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewConfigs, 0x0);
    return;
}

-(void)handleWebViewEvent:(void *)arg2 event:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 == 0x0) goto loc_1001ff218;

loc_1001feaa4:
    var_D0 = &var_D8;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r19 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r0 = [r19 view];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 URL];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(var_D0 + 0x28);
                    *(var_D0 + 0x28) = r0;
                    r0 = r8;
            }
            else {
                    r0 = [r19 view];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 request];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 URL];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(var_D0 + 0x28);
                    *(var_D0 + 0x28) = r0;
                    [r8 release];
                    r0 = r23;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 request];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 URL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(var_D0 + 0x28);
            *(var_D0 + 0x28) = r0;
            [r8 release];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 sessionFromID] retain];
    r25 = [[r19 adSessionID] retain];
    r0 = [r23 objectForKeyedSubscript:r25];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    [r23 release];
    [r22 release];
    if (r21 == 0x0) goto loc_1001fed40;

loc_1001fecdc:
    [ADCInterstitialAdSession class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001fed80;

loc_1001fed10:
    r0 = [r21 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    r25 = [r0 originNumber];
    goto loc_1001fee50;

loc_1001fee50:
    [r26 release];
    goto loc_1001fee58;

loc_1001fee58:
    r26 = [[AdColony sharedInstance] retain];
    r24 = [r19 identifier];
    r27 = [[r21 identifier] retain];
    r0 = [r26 containerForViewID:r24 adSessionID:r27];
    r29 = r29;
    r24 = [r0 retain];
    [r27 release];
    [r26 release];
    if (r24 != 0x0) {
            r0 = [ADCNativeLayer sharedLayer];
            r0 = [r0 retain];
            var_E8 = [r0 nextNativeMessageID];
            [r0 release];
            var_F0 = [[NSNumber numberWithUnsignedInteger:r25] retain];
            r0 = [NSNumber numberWithUnsignedInteger:[r19 identifier]];
            r29 = r29;
            var_F8 = [r0 retain];
            r25 = *(var_D0 + 0x28);
            if (r25 != 0x0) {
                    r23 = @selector(isKindOfClass:);
                    [NSString class];
                    if (objc_msgSend(r25, r23) != 0x0) {
                            r8 = *(var_D0 + 0x28);
                    }
                    else {
                            r8 = @"";
                    }
            }
            else {
                    r8 = @"";
            }
            r0 = [r21 identifier];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r23 = @selector(isKindOfClass:);
                    r0 = [r21 identifier];
                    r29 = r29;
                    var_100 = [r0 retain];
                    [NSString class];
                    if (objc_msgSend(var_100, r23) != 0x0) {
                            r0 = [r21 identifier];
                            r29 = r29;
                            r22 = [r0 retain];
                            r27 = 0x1;
                            r26 = 0x1;
                    }
                    else {
                            r26 = 0x0;
                            r22 = @"";
                            r27 = 0x1;
                    }
            }
            else {
                    r27 = 0x0;
                    r26 = 0x0;
                    r22 = @"";
            }
            r28 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithBool:[r24 isFullscreen]] retain];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r23 = [r0 retain];
            [r28 release];
            if (r26 != 0x0) {
                    [r22 release];
            }
            if (r27 != 0x0) {
                    [var_100 release];
            }
            [r25 release];
            [var_F8 release];
            [var_F0 release];
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r25 = [[ADCMessage nativeMessageWithType:r20 identifier:var_E8 contents:r23] retain];
            [r22 sendMessage:r25];
            [r25 release];
            [r22 release];
            [r23 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI handleWebViewEvent:event:]" line:0x16f withFormat:0x0];
    }
    [r24 release];
    goto loc_1001ff1fc;

loc_1001ff1fc:
    [r21 release];
    _Block_object_dispose(&var_D8, 0x8);
    [0x0 release];
    goto loc_1001ff218;

loc_1001ff218:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001fed80:
    r23 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001fee14;

loc_1001feda4:
    r0 = [r21 retain];
    r26 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 opened];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r26 fullscreenModule];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            r25 = [r0 originNumber];
    }
    else {
            r0 = [r26 nativeModule];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            r25 = [r0 originNumber];
    }
    [r27 release];
    goto loc_1001fee50;

loc_1001fee14:
    r25 = 0x0;
    goto loc_1001fee58;

loc_1001fed40:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewAPI handleWebViewEvent:event:]" line:0x15e withFormat:0x0];
    goto loc_1001ff1fc;
}

@end