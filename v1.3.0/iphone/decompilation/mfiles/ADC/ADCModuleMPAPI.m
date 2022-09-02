@implementation ADCModuleMPAPI

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCModuleMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(load:) forMessageType:@"Module.load"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(unload:) forMessageType:@"Module.unload"];
    [r0 release];
    [r19 release];
    return;
}

-(void)unload:(union ?)arg2 {
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
    r19 = [r2 retain];
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r24 = [[ADCNativeLayer sharedLayer] retain];
            r0 = [r24 moduleForIdentifier:[r20 unsignedIntegerValue]];
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = [ADCNativeLayer sharedLayer];
                    r0 = [r0 retain];
                    [r0 unregisterDynamicModule:r21];
                    [r0 release];
                    r0 = @class(ADCMessage);
                    r0 = [r0 stringValueFromMessage:r19 withKey:@"ad_session_id"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r23 = [[ADCMessage numberValueFromMessage:r2 withKey:r3] retain];
                            r26 = [[AdColony sharedInstance] retain];
                            r0 = [r26 containerForAdSessionID:r22 isFullscreen:[r23 boolValue]];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r26 release];
                            if (r24 != 0x0) {
                                    [r24 unbindObjects];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI unload:]" line:0x5b withFormat:@"No container found for session: %@. Cannot unbind views"];
                            }
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 sessionFromID];
                            r0 = [r0 retain];
                            r26 = [[r0 objectForKeyedSubscript:r22] retain];
                            [r0 release];
                            if (r26 != 0x0) {
                                    [ADCWebViewModule class];
                                    if ([r21 isKindOfClass:r2] != 0x0 && [r21 isDisplayModule] != 0x0) {
                                            [r26 setNativeModule:0x0];
                                            [r26 setFullscreenModule:0x0];
                                            [r25 removeSession:r26];
                                    }
                                    [r26 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI unload:]" line:0x65 withFormat:@"No session found for ad session ID: %@"];
                            }
                            [r25 release];
                            [r24 release];
                            [r23 release];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI unload:]" line:0x4f withFormat:@"Invalid Module ID %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI unload:]" line:0x4a withFormat:@"Invalid module identifier supplied"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)load:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [[ADCMessage stringValueFromMessage:r19 withKey:@"filepath"] retain];
    r25 = [[ADCMessage stringValueFromMessage:r19 withKey:@"data"] retain];
    r0 = @class(ADCMessage);
    r0 = [r0 numberValueFromMessage:r19 withKey:@"is_display_module"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 boolValue];
    [r0 release];
    r8 = r20 | r25;
    if (r8 == 0x0) goto loc_1001e9e10;

loc_1001e9c00:
    if (r20 == 0x0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (((r26 | r8) & 0x1) != 0x0) goto loc_1001e9c7c;

loc_1001e9c10:
    r0 = [NSURL fileURLWithPath:r20 isDirectory:0x0];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001ea084;

loc_1001e9c3c:
    r0 = [NSString stringWithContentsOfFile:r20 encoding:0x4 error:0x0];
    r29 = r29;
    r24 = [r0 retain];
    [r25 release];
    [r23 release];
    r25 = r24;
    goto loc_1001e9c7c;

loc_1001e9c7c:
    var_90 = r25;
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    var_A0 = [r0 nextDynamicModuleID];
    [r0 release];
    r0 = @class(ADCMessage);
    r0 = [r0 dictionaryValueFromMessage:r19 withKey:@"info"];
    r0 = [r0 retain];
    var_98 = [r0 mutableCopy];
    [r0 release];
    r0 = @class(ADCMessage);
    r0 = [r0 numberValueFromMessage:r19 withKey:@"is_webview"];
    r0 = [r0 retain];
    r25 = [r0 boolValue];
    [r0 release];
    r0 = @class(ADCMessage);
    r0 = [r0 numberValueFromMessage:r19 withKey:@"use_uiwebview"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 boolValue];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 compare:@"7.0" options:0x40];
            [r0 release];
            [r23 release];
            if (r28 != -0x1) {
                    r0 = [ADCJSCoreModule alloc];
                    r25 = var_A0;
                    r27 = [r0 initWithSource:var_90 originNumber:r25 info:var_98];
            }
            else {
                    r0 = [ADCWebViewModule alloc];
                    r25 = var_A0;
                    r27 = [r0 initWithFrame:r25 originID:var_98 info:r20 filepath:r27 useUIWebView:r26 isDisplayModule:r7];
                    r2 = var_90;
                    if ((r26 & 0x1) == 0x0) {
                            [r27 beginMessagePassing:r2];
                    }
            }
    }
    else {
            r0 = [ADCWebViewModule alloc];
            r25 = var_A0;
            r27 = [r0 initWithFrame:r25 originID:var_98 info:r20 filepath:r27 useUIWebView:r26 isDisplayModule:r7];
            r2 = var_90;
            if ((r26 & 0x1) == 0x0) {
                    [r27 beginMessagePassing:r2];
            }
    }
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [r27 setAdSessionID:r22];
    }
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 registerDynamicModule:r27];
    [r0 release];
    r24 = [[ADCNativeLayer sharedLayer] retain];
    r25 = [[NSNumber numberWithUnsignedInteger:r25] retain];
    r23 = [@(YES) retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-136] forKeys:&var_88 count:0x2] retain];
    r28 = [[r19 messageReplyWithDict:r26] retain];
    [r24 sendMessage:r28];
    [r28 release];
    [r26 release];
    [r23 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [var_98 release];
    [r27 release];
    r0 = var_90;
    goto loc_1001ea038;

loc_1001ea038:
    [r0 release];
    goto loc_1001ea03c;

loc_1001ea03c:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001ea084:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI load:]" line:0x23 withFormat:@"Module.create could not form a file URL from filepath: %@"];
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r24 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r0 = [r0 retain];
    r26 = [[r19 messageReplyWithDict:r0] retain];
    [r22 sendMessage:r26];
    [r26 release];
    [r0 release];
    [r24 release];
    [r22 release];
    [r23 release];
    r0 = r25;
    goto loc_1001ea038;

loc_1001e9e10:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCModuleMPAPI load:]" line:0x1c withFormat:@"Either valid filepath or data parameters must be sent to Module.load"];
    goto loc_1001ea03c;
}

@end