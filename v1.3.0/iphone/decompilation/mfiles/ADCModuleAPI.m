@implementation ADCModuleAPI

+(bool)unloadWithDict:(void *)arg2 {
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
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001c9104;

loc_1001c8fa0:
    r22 = [r20 unsignedIntegerValue];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 moduleForIdentifier:r22];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    if (r21 == 0x0) goto loc_1001c9140;

loc_1001c9000:
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 unregisterDynamicModule:r21];
    [r0 release];
    [ADCSystemAPI cleanupModule:r22];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1001c92a8;

loc_1001c906c:
    r24 = [[r19 objectForKeyedSubscript:r2] retain];
    r27 = [[AdColony sharedInstance] retain];
    r0 = [r27 containerForAdSessionID:r22 isFullscreen:[r24 boolValue]];
    r29 = r29;
    r25 = [r0 retain];
    [r27 release];
    if (r25 != 0x0) {
            [r25 unbindObjects];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI unloadWithDict:]" line:0x77 withFormat:@"No container found for session: %@. Cannot unbind views"];
    }
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    if (r23 == 0x0) goto loc_1001c92b0;

loc_1001c920c:
    [ADCWebViewModule class];
    if ([r21 isKindOfClass:r2] != 0x0 && [r21 isDisplayModule] != 0x0) {
            [r23 setNativeModule:0x0];
            [r23 setFullscreenModule:0x0];
            [r26 removeSession:r23];
    }
    [r23 release];
    [r26 release];
    [r25 release];
    [r24 release];
    goto loc_1001c92a8;

loc_1001c92a8:
    r23 = 0x1;
    goto loc_1001c9300;

loc_1001c9300:
    [r22 release];
    goto loc_1001c9308;

loc_1001c9308:
    [r21 release];
    goto loc_1001c9310;

loc_1001c9310:
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;

loc_1001c92b0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI unloadWithDict:]" line:0x81 withFormat:@"No session found for ad session ID: %@"];
    [r26 release];
    [r25 release];
    [r24 release];
    goto loc_1001c9300;

loc_1001c9140:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI unloadWithDict:]" line:0x69 withFormat:@"Invalid Module ID %@"];
    r23 = 0x0;
    goto loc_1001c9308;

loc_1001c9104:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI unloadWithDict:]" line:0x63 withFormat:@"Invalid module identifier supplied"];
    r23 = 0x0;
    goto loc_1001c9310;
}

+(void *)loadWithDict:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = r0;
    r21 = [[r0 objectForKeyedSubscript:@"filepath"] retain];
    r20 = [[r19 objectForKeyedSubscript:@"data"] retain];
    r0 = [r19 objectForKeyedSubscript:@"is_display_module"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    if ((r21 | r20) == 0x0) goto loc_1001c8804;

loc_1001c8698:
    var_84 = r23;
    r23 = [[AdColony sharedInstance] retain];
    r0 = [r19 objectForKeyedSubscript:@"ad_session_id"];
    r29 = r29;
    r0 = [r0 retain];
    var_90 = r23;
    var_80 = r0;
    if (r0 == 0x0) goto loc_1001c8848;

loc_1001c86f0:
    r0 = [r23 options];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getNumericOptionWithKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 boolValue];
    [r0 release];
    r0 = r23;
    r23 = var_90;
    [r0 release];
    if (r27 == 0x0) goto loc_1001c8848;

loc_1001c8750:
    r0 = [r23 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:var_80];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    r2 = [ADCInterstitialAdSession class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001c88fc;

loc_1001c87c0:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 pathForResource:@"ADCAdUnit" ofType:@"js"];
    r29 = r29;
    goto loc_1001c8960;

loc_1001c8960:
    r8 = &@selector(alloc);
    r24 = [r0 retain];
    [r21 release];
    [r23 release];
    r21 = r24;
    goto loc_1001c897c;

loc_1001c897c:
    [r22 release];
    goto loc_1001c8984;

loc_1001c8984:
    if (r21 == 0x0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (((var_84 | r8) & 0x1) != 0x0) goto loc_1001c8ae4;

loc_1001c8998:
    r0 = [NSURL fileURLWithPath:r21 isDirectory:0x0];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1001c8e34;

loc_1001c89c4:
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 useForcedAdUnit];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"info"];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKeyedSubscript:@"dec_source_path"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r2 = @"dec_source_path";
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 pathForResource:@"ADCAdUnit" ofType:@"js"];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r21 release];
                    [r23 release];
                    r21 = r24;
            }
            [r27 release];
    }
    r0 = [NSString stringWithContentsOfFile:r21 encoding:0x4 error:0x0];
    r29 = r29;
    r23 = [r0 retain];
    [r20 release];
    [r22 release];
    r20 = r23;
    goto loc_1001c8ae4;

loc_1001c8ae4:
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r28 = [r0 nextDynamicModuleID];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"info"];
    r0 = [r0 retain];
    r27 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"is_webview"];
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"use_uiwebview"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 boolValue];
    [r0 release];
    if ((r24 & 0x1) == 0x0) {
            r2 = @"use_uiwebview";
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 compare:@"7.0" options:0x40];
            [r0 release];
            [r23 release];
            if (r26 != -0x1) {
                    r2 = @"7.0";
                    r25 = [[ADCJSCoreModule alloc] initWithSource:r20 originNumber:r28 info:r27];
                    r23 = var_84;
            }
            else {
                    r0 = [ADCWebViewModule alloc];
                    r23 = var_84;
                    r25 = [r0 initWithFrame:r28 originID:r27 info:r21 filepath:r25 useUIWebView:r23 isDisplayModule:r7];
            }
    }
    else {
            r0 = [ADCWebViewModule alloc];
            r23 = var_84;
            r25 = [r0 initWithFrame:r28 originID:r27 info:r21 filepath:r25 useUIWebView:r23 isDisplayModule:r7];
    }
    if (var_80 != 0x0) {
            [r25 setAdSessionID:r2];
    }
    r0 = [ADCNativeLayer sharedLayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 registerDynamicModule:r25];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            [r25 beginMessagePassing:r20];
    }
    r24 = [[NSNumber numberWithUnsignedInteger:r28] retain];
    r26 = [@(YES) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r26 release];
    [r24 release];
    if ((0x0 & 0x1) != 0x0) {
            objc_end_catch();
    }
    [r27 release];
    r0 = r25;
    goto loc_1001c8dcc;

loc_1001c8dcc:
    [r0 release];
    [var_80 release];
    [var_90 release];
    goto loc_1001c8de0;

loc_1001c8de0:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001c8e34:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI loadWithDict:]" line:0x31 withFormat:@"Module.create could not form a file URL from filepath: %@"];
    r0 = r22;
    goto loc_1001c8dcc;

loc_1001c88fc:
    r23 = @selector(isKindOfClass:);
    r8 = &@class(MCConfigurationData);
    r2 = [*(r8 + 0xf68) class];
    if (objc_msgSend(r22, r23) == 0x0) goto loc_1001c897c;

loc_1001c8920:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 pathForResource:@"ADCInstantFeedAdUnit" ofType:@"js"];
    r29 = r29;
    goto loc_1001c8960;

loc_1001c8848:
    r8 = &@selector(updateAppMetadata:error:);
    r0 = [r23 options];
    r0 = [r0 retain];
    r22 = r0;
    r2 = @"use_forced_mraid_ad_unit";
    r0 = [r0 getNumericOptionWithKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r22 = r0;
            r8 = &@selector(alloc);
            r2 = @"ADCMRAIDAdUnit";
            r0 = objc_msgSend(r0, *(r8 + 0xca0));
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            [r22 release];
            r21 = r23;
    }
    goto loc_1001c8984;

loc_1001c8804:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCModuleAPI loadWithDict:]" line:0x1d withFormat:@"Either valid filepath or data parameters must be sent to Module.load"];
    r22 = 0x0;
    goto loc_1001c8de0;
}

@end