@implementation ADCController

+(void *)sharedController {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d22c0 != -0x1) {
            dispatch_once(0x1011d22c0, &var_28);
    }
    r0 = *0x1011d22c8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)getPIEKey:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 setPieKey:@""];
    [r0 release];
    r0 = [arg2 objectForKeyedSubscript:@"pie"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            [r0 setPieKey:r21];
            [r0 release];
    }
    [r21 release];
    return;
}

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(ADCDevice);
            r0 = [r0 sharedDevice];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 mediaPath];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 stringByAppendingPathComponent:@"026ae9c9824b3e483fa6c71fa88f57ae27816141"];
            r0 = [r0 retain];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_controllerConfigFilepath));
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            [r24 release];
            [r23 release];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCController init]" line:0x43 withFormat:@"Controller config filepath: %@"];
            r0 = @class(ADCDevice);
            r0 = [r0 sharedDevice];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 mediaPath];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 stringByAppendingPathComponent:@"7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_controllerDataFilepath));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            [r20 release];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 compare:@"7.0" options:0x40];
            [r0 release];
            [r20 release];
            if (r22 != -0x1) {
                    r0 = [ADCJSCoreModule alloc];
                    r0 = [r0 initWithSource:0x0 originNumber:0x1 info:0x0];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_jsCoreModule));
            }
            else {
                    r0 = [ADCWebViewModule alloc];
                    r0 = [r0 initWithFrame:0x1 originID:0x0 info:0x0 filepath:0x1 useUIWebView:0x0 isDisplayModule:@"Controller config filepath: %@"];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_webViewModule));
            }
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_module, *(r19 + r20));
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 useStagingLaunchServer];
            [r0 release];
            r0 = (int64_t *)&r19->_launchServerURL;
            if (r21 != 0x0) {
                    r1 = @"https://adc3-launch-staging.adcolony.com/v4/launch";
            }
            else {
                    r1 = @"https://adc3-launch.adcolony.com/v4/launch";
            }
            objc_storeStrong(r0, r1);
            *(int8_t *)(int64_t *)&r19->_shouldForceBootstrap = 0x0;
            *(int8_t *)(int64_t *)&r19->_loaded = 0x0;
            *(int32_t *)(int64_t *)&r19->_decryptionRetries = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)getInitialConfigAndDataWithCompletionHandler:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [r0 retain];
    [self downloadControllerConfigWithCompletionHandler:&var_50];
    [r0 release];
    [r21 release];
    return;
}

-(void *)decryptControllerSource:(void *)arg2 controllerConfig:(void *)arg3 {
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
    r25 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r20 retain];
    r0 = [arg3 objectForKeyedSubscript:@"item"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r21 release];
    if (r24 != 0x0) {
            r0 = [r24 intValue];
            if (r0 < 0x0) {
                    asm { cinc       w8, w0, lt };
            }
            r19 = r22;
            if (r0 - (0x101137000 & 0xfffffffe) == 0x1) {
                    r0 = objc_retainAutorelease(r22);
                    r21 = r0;
                    sub_1002500b4([r0 UTF8String], [r21 length], r29 - 0x70, r29 - 0x78);
                    if (var_78 != 0x0) {
                            *(int32_t *)(int64_t *)&r25->_decryptionRetries = 0x0;
                            r19 = [[NSString stringWithUTF8String:r2] retain];
                            [r21 release];
                            free(var_70);
                    }
                    else {
                            r0 = [NSArray arrayWithObjects:r29 - 0x68 count:0x2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = r0;
                            if ([r0 count] != 0x0) {
                                    var_D8 = r21;
                                    stack[-224] = r25;
                                    var_C8 = r24;
                                    stack[-208] = r22;
                                    r25 = 0x0;
                                    do {
                                            r24 = [[r23 objectAtIndexedSubscript:r25] retain];
                                            r19 = [[NSURL fileURLWithPath:r24] retain];
                                            [r24 release];
                                            r0 = [NSFileManager defaultManager];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 removeItemAtURL:r19 error:&var_80];
                                            r24 = [var_80 retain];
                                            [r0 release];
                                            if (r24 != 0x0) {
                                                    var_B8 = @selector(userInfo);
                                                    [[r24 domain] retain];
                                                    [r24 code];
                                                    r0 = objc_msgSend(r24, var_B8);
                                                    r29 = r29;
                                                    [r0 retain];
                                                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                                                    [r28 release];
                                                    [r26 release];
                                            }
                                            r21 = @selector(count);
                                            [r24 release];
                                            [r19 release];
                                            r25 = r25 + 0x1;
                                    } while (objc_msgSend(r23, r21) > r25);
                                    r24 = var_C8;
                                    r22 = stack[-208];
                                    r21 = var_D8;
                                    r25 = stack[-224];
                            }
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_decryptionRetries));
                            if (*(int32_t *)(r25 + r20) >= 0x1) {
                                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                                    r0 = [AdColony sharedInstance];
                                    r0 = [r0 retain];
                                    [r0 disableAdColony];
                                    [r0 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                            }
                            r19 = @"";
                            [r19 retain];
                            [r21 release];
                            *(int32_t *)(r25 + r20) = *(int32_t *)(r25 + r20) + 0x1;
                            [r23 release];
                    }
            }
    }
    else {
            r19 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)externalAvidAdSessionContext {
    if (*qword_1011d22d0 != -0x1) {
            dispatch_once(0x1011d22d0, 0x100e73318);
    }
    r0 = *0x1011d22d8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)evaluateJavascriptString:(void *)arg2 {
    [self->_jsCoreModule evaluateJavascriptString:arg2];
    return;
}

-(void *)valueEvaluatingJavascriptString:(void *)arg2 {
    r0 = self->_jsCoreModule;
    r0 = [r0 valueEvaluatingJavascriptString:arg2];
    return r0;
}

-(bool)beginMessagePassingWithControllerSource:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 options] retain];
    [r0 release];
    r22 = [NSMutableDictionary new];
    r0 = [r21 getUserMetadata];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r22 setObject:r23 forKeyedSubscript:@"user_metadata"];
            [r22 setObject:@"ios" forKeyedSubscript:@"os_name"];
    }
    r0 = [r21 stringOptionForKey:@"force_dec_url"];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = @(YES);
            r29 = r29;
            r25 = [r0 retain];
            [r22 setObject:r25 forKeyedSubscript:@"force_dec"];
            [r25 release];
            [r22 setObject:r24 forKeyedSubscript:@"forced_dec_url"];
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 compare:@"7.0" options:0x40];
    [r0 release];
    [r25 release];
    if (r27 != -0x1) {
            if (r22 != 0x0 && [r22 count] != 0x0) {
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_jsCoreModule));
                    r0 = *(r20 + r27);
                    r0 = [r0 info];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    [r0 release];
                    r0 = *(r20 + r27);
                    if (r26 != 0x0) {
                            r0 = [r0 info];
                            r0 = [r0 retain];
                            [r0 addEntriesFromDictionary:r22];
                            [r0 release];
                    }
                    else {
                            [r0 setInfo:r22];
                    }
            }
            [r20->_jsCoreModule beginMessagePassing:r19];
            r20 = [r20 checkSentinel];
    }
    else {
            if (r22 != 0x0 && [r22 count] != 0x0) {
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_webViewModule));
                    r0 = *(r20 + r27);
                    r0 = [r0 info];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    [r0 release];
                    r0 = *(r20 + r27);
                    if (r26 != 0x0) {
                            r0 = [r0 info];
                            r0 = [r0 retain];
                            [r0 addEntriesFromDictionary:r22];
                            [r0 release];
                    }
                    else {
                            [r0 setInfo:r22];
                    }
            }
            [r20->_webViewModule beginMessagePassing:r19];
            r20 = 0x1;
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)checkSentinel {
    r0 = self->_jsCoreModule;
    r0 = [r0 checkSentinel];
    return r0;
}

-(void)update {
    r19 = [[ADCUtil JSONObjectFromFilepath:self->_controllerConfigFilepath] retain];
    r21 = [[NSData dataWithContentsOfFile:self->_controllerDataFilepath] retain];
    r0 = [r19 objectForKeyedSubscript:@"controller"];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"url"] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"controller"];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"version"] retain];
    [r0 release];
    r24 = @class(ADCUtil);
    r25 = [[NSString alloc] initWithData:r21 encoding:0x4];
    r24 = [[r24 sha1:r25] retain];
    [r25 release];
    [self getMostUpdatedController:r24 oldURL:r22 oldVersion:r23];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadWithCompletion:(void *)arg2 {
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
    r21 = self;
    r28 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 useForcedController];
    var_58 = r28;
    if (r0 == 0x0) goto loc_100204698;

loc_1002044c4:
    r0 = [r20 logManager];
    r29 = r29;
    r26 = [r0 retain];
    r23 = 0x0;
    do {
            r2 = r23;
            [r26 setLoggingConfigForModule:r2 sendLevel:r3 printLevel:r4 privateLogging:r5];
            [r26 release];
            r23 = r23 + 0x1;
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r26 = [r0 retain];
    } while (r23 != 0x3);
    r22 = @selector(logManager);
    [r26 setSendInterval:r2];
    [r26 release];
    r0 = objc_msgSend(r20, r22);
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 crashManager];
    r0 = [r0 retain];
    [r0 install];
    [r0 release];
    [r22 release];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCController loadWithCompletion:]" line:0x78 withFormat:@"Loading hardcoded controller source"];
    [@"" retain];
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r22 = [[r0 environment] retain];
    [r0 release];
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 pathForResource:@"legacy-controller" ofType:@"js"];
            r29 = r29;
    }
    else {
            r0 = [r22 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r25 = r0;
            [r0 release];
            r0 = [NSBundle mainBundle];
            r29 = r29;
            r26 = [r0 retain];
            if (r25 != 0x0) {
                    r0 = [r26 pathForResource:r2 ofType:r3];
                    r29 = r29;
            }
            else {
                    r0 = [r26 pathForResource:r2 ofType:r3];
                    r29 = r29;
            }
    }
    r25 = [r0 retain];
    [@"" release];
    [r26 release];
    r26 = [[NSString stringWithContentsOfFile:r25 encoding:0x4 error:0x0] retain];
    r0 = @class(AdColony);
    r0 = [r0 sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setPieKey:@"bb2cf0647ba654d7228dd3f9405bbc6a"];
    [r0 release];
    r0 = [r21 beginMessagePassingWithControllerSource:r26];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    *(int8_t *)(r21 + r19) = r0;
    if (r0 != 0x0) {
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            objc_msgSend(@class(ADCLogManager), r1);
    }
    else {
            r0 = @class(NSFileManager);
            r0 = [r0 defaultManager];
            r0 = [r0 retain];
            [r0 removeItemAtPath:r21->_controllerConfigFilepath error:0x0];
            [r0 release];
            r0 = @class(NSFileManager);
            r0 = [r0 defaultManager];
            r0 = [r0 retain];
            r1 = @selector(removeItemAtPath:error:);
            objc_msgSend(r0, r1);
            [r24 release];
    }
    r27 = var_58;
    (*(r27 + 0x10))(r27, *(int8_t *)(r21 + (r19 << r1)));
    if (0x0 != 0x0) goto loc_1002050fc;

loc_100204fb4:
    [r26 release];
    [r22 release];
    r0 = r25;
    goto loc_100204fc8;

loc_100204fc8:
    [r0 release];
    [r20 release];
    [r27 release];
    return;

loc_1002050fc:
    objc_exception_rethrow();
    return;

loc_100204698:
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = [[r0 stringForKey:@"adc_sdk_version_for_controller"] retain];
    [r0 release];
    r0 = [NSString stringWithFormat:@"%d.%d.%d.%d"];
    r29 = r29;
    r23 = [r0 retain];
    if (([r22 isEqualToString:r2] & 0x1) == 0x0 && r22 != 0x0 && r23 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_shouldForceBootstrap = 0x1;
    }
    var_60 = r22;
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r23 forKey:@"adc_sdk_version_for_controller"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r29 = r29;
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    if (*(int8_t *)(int64_t *)&r21->_shouldForceBootstrap != 0x0) {
            r0 = @class(NSFileManager);
            r0 = [r0 defaultManager];
            r0 = [r0 retain];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_controllerConfigFilepath));
            [r0 removeItemAtPath:*(r21 + r19) error:0x0];
            [r0 release];
            r0 = @class(NSFileManager);
            r0 = [r0 defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_controllerDataFilepath));
            [r0 removeItemAtPath:*(r21 + r22) error:0x0];
            [r0 release];
    }
    else {
            r19 = *(int32_t *)ivar_offset(_controllerConfigFilepath);
            r22 = *(int32_t *)ivar_offset(_controllerDataFilepath);
    }
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    r26 = [r0 fileExistsAtPath:*(r21 + (r19 << @selector(defaultManager)))];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:*(r21 + (r22 << @selector(defaultManager)))];
    [r0 release];
    if (r26 == 0x0 || (r24 & 0x1) == 0x0) goto loc_100204c8c;

loc_100204948:
    r8 = &@selector(alloc);
    var_80 = r23;
    asm { sxtw       x8, w19 };
    asm { sxtw       x22, w22 };
    var_90 = r8;
    r19 = [[ADCUtil JSONObjectFromFilepath:*(r21 + r8)] retain];
    var_98 = r22;
    r24 = [[NSData dataWithContentsOfFile:*(r21 + r22)] retain];
    r0 = [r19 objectForKeyedSubscript:@"controller"];
    r0 = [r0 retain];
    var_70 = [[r0 objectForKeyedSubscript:@"url"] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"controller"];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"sha1"] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"controller"];
    r0 = [r0 retain];
    var_78 = [[r0 objectForKeyedSubscript:@"version"] retain];
    [r0 release];
    r25 = @class(ADCUtil);
    r27 = r22;
    r0 = [NSString alloc];
    var_88 = r24;
    r26 = [r0 initWithData:r24 encoding:0x4];
    r0 = [r25 sha1:r26];
    r29 = r29;
    r22 = [r0 retain];
    [r26 release];
    var_68 = r19;
    r2 = r19;
    r19 = r27;
    [r21 getPIEKey:r2];
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_100204cdc;

loc_100204b08:
    var_A8 = r22;
    var_A0 = r19;
    r24 = var_90;
    r22 = var_98;
    r19 = [[NSURL fileURLWithPath:*(r21 + var_98)] retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithContentsOfURL:r19 encoding:0x4 error:0x0];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100204dac;

loc_100204b64:
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0 || [r25 length] == 0x0) goto loc_100204dac;

loc_100204bac:
    var_B0 = @selector(length);
    r0 = [r21 decryptControllerSource:r25 controllerConfig:var_68];
    r29 = r29;
    r8 = [r0 retain];
    r0 = r25;
    r25 = r8;
    [r0 release];
    r23 = var_80;
    if (r25 == 0x0) goto loc_100204ff8;

loc_100204be8:
    r26 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r25, r26) == 0x0 || objc_msgSend(r25, var_B0) == 0x0) goto loc_100204ff8;

loc_100204c1c:
    var_B0 = r19;
    r19 = r25;
    r0 = [r21 beginMessagePassingWithControllerSource:r25];
    *(int8_t *)(int64_t *)&r21->_loaded = r0;
    if (r0 != 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCController loadWithCompletion:]" line:0xcb withFormat:@"Successfully evaluated controller source from URL: %@"];
    }
    else {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            [r0 removeItemAtPath:*(r21 + r24) error:0x0];
            [r0 release];
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            [r0 removeItemAtPath:*(r21 + r22) error:0x0];
            [r0 release];
    }
    [r21 configureDynamicControls:var_68];
    r27 = var_58;
    r26 = var_78;
    (*(r27 + 0x10))(r27, *(int8_t *)(int64_t *)&r21->_loaded);
    if (0x0 != 0x0) goto loc_100205100;

loc_1002050c8:
    r0 = r21;
    r22 = var_A8;
    r21 = var_70;
    [r0 getMostUpdatedController:r22 oldURL:r21 oldVersion:r26];
    r25 = r19;
    r24 = var_88;
    r19 = var_B0;
    goto loc_100204dcc;

loc_100204dcc:
    [r25 release];
    [r19 release];
    r19 = var_A0;
    goto loc_100204de0;

loc_100204de0:
    [r22 release];
    [r26 release];
    [r19 release];
    [r21 release];
    [r24 release];
    [var_68 release];
    goto loc_100204e10;

loc_100204e10:
    [r23 release];
    r0 = var_60;
    goto loc_100204fc8;

loc_100205100:
    objc_exception_rethrow();
    return;

loc_100204ff8:
    r27 = var_58;
    (*(r27 + 0x10))(r27, 0x0);
    r26 = var_78;
    r21 = var_70;
    r22 = var_A8;
    r24 = var_88;
    goto loc_100204dcc;

loc_100204dac:
    r27 = var_58;
    (*(r27 + 0x10))(r27, 0x0);
    r26 = var_78;
    r21 = var_70;
    r22 = var_A8;
    r24 = var_88;
    r23 = var_80;
    goto loc_100204dcc;

loc_100204cdc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCController loadWithCompletion:]" line:0xb5 withFormat:@"SHA-1 check failed during controller load. Controller config sha-1: %@. Controller data sha-1: %@"];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtPath:*(r21 + var_90) error:0x0];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtPath:*(r21 + var_98) error:0x0];
    [r0 release];
    r27 = var_58;
    (*(r27 + 0x10))(r27, 0x0);
    r26 = var_78;
    r21 = var_70;
    r24 = var_88;
    r23 = var_80;
    goto loc_100204de0;

loc_100204c8c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCController loadWithCompletion:]" line:0xaa withFormat:@"Either ADC3Config or ADC3Launch doesn't exist; will try to download both"];
    r27 = var_58;
    [r21 getInitialConfigAndDataWithCompletionHandler:r27];
    goto loc_100204e10;
}

-(void)getMostUpdatedController:(void *)arg2 oldURL:(void *)arg3 oldVersion:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r19 = [r0 retain];
    var_40 = r20;
    r20 = [r20 retain];
    var_38 = r22;
    r22 = [r22 retain];
    [self downloadControllerConfigWithCompletionHandler:&var_70];
    [var_38 release];
    [var_40 release];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)validateNewVersion:(void *)arg2 againstOldVersion:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = 0x0;
    if (r19 == 0x0) goto loc_100206ff8;

loc_100206e68:
    r23 = 0x0;
    if (r20 == 0x0) goto loc_100206ff8;

loc_100206e6c:
    r21 = [[r20 componentsSeparatedByString:@"."] retain];
    r0 = [r19 componentsSeparatedByString:@"."];
    r29 = r29;
    r22 = [r0 retain];
    if ([r21 count] != 0x4 || [r22 count] != 0x4) goto loc_100206fd8;

loc_100206ee4:
    r8 = &@selector(menu);
    r24 = *(r8 + 0x330);
    r25 = 0xffffffffffffffff;
    goto loc_100206ef8;

loc_100206ef8:
    r25 = r25 + 0x1;
    r0 = [r21 objectAtIndexedSubscript:r25];
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    r0 = [r22 objectAtIndexedSubscript:r25];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r24);
    [r0 release];
    if (r28 < r27) {
            if (CPU_FLAGS & L) {
                    r8 = 0x1;
            }
    }
    r8 = r8 << 0x1;
    if (CPU_FLAGS & LE) {
            asm { csinc      w8, w8, wzr, le };
    }
    if (r8 != 0x0) goto loc_10020702c;

loc_100206f70:
    if (r25 < 0x3) goto loc_100206ef8;

loc_100206fe4:
    r23 = 0x0;
    goto loc_100206fe8;

loc_100206fe8:
    [r22 release];
    [r21 release];
    goto loc_100206ff8;

loc_100206ff8:
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;

loc_10020702c:
    r23 = @selector(objectAtIndexedSubscript:);
    if (r8 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
            }
    }
    goto loc_100206fe8;

loc_100206fd8:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_100206fe4;
}

-(void)downloadControllerWithURL:(void *)arg2 completionHandler:(void *)arg3 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [ADCDownloader alloc];
    r21 = [[NSURLRequest requestWithURL:r23] retain];
    [r23 release];
    r0 = [ADCWebServicesAPI sharedAPI];
    r0 = [r0 retain];
    r24 = [[r0 httpSession] retain];
    r25 = [[NSURL fileURLWithPath:self->_controllerDataFilepath] retain];
    var_50 = r22;
    r22 = [r22 retain];
    r19 = [r20 initWithRequest:r21 httpSession:r24 destination:r25 completionHandler:&var_70];
    [r25 release];
    [r24 release];
    [r0 release];
    [r21 release];
    [r19 start];
    [r19 release];
    [var_50 release];
    [r22 release];
    return;
}

-(void)disable {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = [r0 compare:@"7.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_jsCoreModule));
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_webViewModule));
    }
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_loaded = 0x0;
    return;
}

-(bool)recover {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r21 = [r0 createADC3Directories];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [ADCJSCoreModule alloc];
            r20 = 0x1;
            r0 = [r0 initWithSource:0x0 originNumber:0x1 info:0x0];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_jsCoreModule));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_module, *(r19 + r21));
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)setModule:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_module, arg2);
    return;
}

-(void *)module {
    r0 = self->_module;
    return r0;
}

-(bool)shouldForceBootstrap {
    r0 = *(int8_t *)(int64_t *)&self->_shouldForceBootstrap;
    return r0;
}

-(void)setShouldForceBootstrap:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldForceBootstrap = arg2;
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(bool)loaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)configureDynamicControls:(void *)arg2 {
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
    r24 = [arg2 retain];
    r28 = [[AdColony sharedInstance] retain];
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r19 = [r21 boolValue];
            r20 = [[r28 options] retain];
            r0 = [NSNumber numberWithBool:r19];
            r29 = r29;
            r19 = [r0 retain];
            [r20 setOption:@"override_orientation_changes" withNumericValue:r19];
            [r19 release];
            [r20 release];
    }
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r19 = [r22 boolValue];
            r20 = [[r28 options] retain];
            r0 = [NSNumber numberWithBool:r19];
            r29 = r29;
            r19 = [r0 retain];
            [r20 setOption:@"use_uiwebview" withNumericValue:r19];
            [r19 release];
            [r20 release];
    }
    r0 = [r24 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 containsObject:r2];
    [r0 release];
    if (r20 != 0x0) {
            var_160 = r22;
            var_158 = r21;
            r0 = [r24 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r19 release];
            if (r21 != 0x0 && [r21 boolValue] != 0x0) {
                    r0 = [r28 logManager];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 crashManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 install];
                    [r0 release];
                    [r19 release];
            }
            var_168 = r21;
            r0 = [r24 objectForKeyedSubscript:r2];
            r29 = r29;
            r20 = [r0 retain];
            r26 = 0x0;
            r22 = @selector(objectForKeyedSubscript:);
            var_120 = r28;
            do {
                    r0 = objc_msgSend(r20, r22);
                    r0 = [r0 retain];
                    [r0 integerValue];
                    [r0 release];
                    [r20 release];
                    r0 = objc_msgSend(r24, r22);
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    [r0 integerValue];
                    [r0 release];
                    [r20 release];
                    r0 = objc_msgSend(r24, r22);
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    [r0 boolValue];
                    r28 = var_120;
                    [r0 release];
                    [r20 release];
                    r0 = [r28 logManager];
                    r0 = [r0 retain];
                    [r0 setLoggingConfigForModule:r2 sendLevel:r3 printLevel:r4 privateLogging:r5];
                    [r20 release];
                    r26 = r26 + 0x1;
                    r0 = objc_msgSend(r24, r22);
                    r29 = r29;
                    r20 = [r0 retain];
            } while (r26 != 0x3);
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r25 = [r0 retain];
            [r20 release];
            r23 = r22;
            if (r25 != 0x0) {
                    var_138 = r23;
                    var_178 = r25;
                    stack[-384] = r24;
                    var_108 = q0;
                    r0 = [r25 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_150 = r1;
                    var_148 = r0;
                    r0 = objc_msgSend(r0, r1);
                    var_128 = r0;
                    if (r0 != 0x0) {
                            var_140 = *var_108;
                            r19 = var_138;
                            do {
                                    r21 = 0x0;
                                    do {
                                            if (*var_108 != var_140) {
                                                    objc_enumerationMutation(var_148);
                                            }
                                            r24 = *(var_110 + r21 * 0x8);
                                            r0 = objc_msgSend(r24, r19);
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            r0 = objc_msgSend(r24, r19);
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            r0 = objc_msgSend(r24, r19);
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            r0 = objc_msgSend(r24, r19);
                                            r0 = [r0 retain];
                                            [r0 boolValue];
                                            [r0 release];
                                            r0 = [var_120 logManager];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 setLoggingConfigForModule:r2 sendLevel:r3 printLevel:r4 privateLogging:r5];
                                            [r23 release];
                                            r21 = r21 + 0x1;
                                    } while (r21 < var_128);
                                    r0 = objc_msgSend(var_148, var_150);
                                    var_128 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_148 release];
                    r25 = var_178;
                    r24 = stack[-384];
                    r28 = var_120;
                    r23 = var_138;
            }
            r0 = objc_msgSend(r24, r23);
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r23);
            r29 = r29;
            r26 = [r0 retain];
            [r19 release];
            r21 = var_158;
            if (r26 != 0x0) {
                    r2 = @"report_interval_ms";
                    r0 = [r28 logManager];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r26 integerValue];
                    asm { smulh      x8, x0, x8 };
                    asm { scvtf      d0, x8 };
                    [r19 setSendInterval:r2];
                    [r19 release];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCController configureDynamicControls:]" line:0x2a7 withFormat:@"Using report interval from launch server: %@"];
            }
            r0 = objc_msgSend(r24, r23);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            r22 = var_160;
            if (r0 != 0x0) {
                    r19 = [[r28 dynamicControls] retain];
                    r0 = objc_msgSend(r24, r23);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r19 setBatteryMonitoringEnabled:[r0 boolValue]];
                    [r0 release];
                    [r19 release];
            }
            r19 = [[ADCDevice sharedDevice] retain];
            r20 = [objc_msgSend(r24, r23) retain];
            [r19 setLaunchServerResponseMetadata:r20];
            [r20 release];
            [r19 release];
            [r26 release];
            [r25 release];
            [var_168 release];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r28 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)useStagingLaunchServer {
    r0 = *(int8_t *)(int64_t *)&self->_useStagingLaunchServer;
    return r0;
}

-(void)setUseStagingLaunchServer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useStagingLaunchServer = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_module, 0x0);
    objc_storeStrong((int64_t *)&self->_jsCoreModule, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewModule, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerDataFilepath, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerConfigFilepath, 0x0);
    objc_storeStrong((int64_t *)&self->_launchServerURL, 0x0);
    return;
}

-(void)downloadControllerConfigWithCompletionHandler:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x440;
    r19 = self;
    var_2A0 = [arg2 retain];
    r25 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(AdColony), r25);
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 zoneIDs];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_298 = r1;
    r22 = objc_msgSend(r20, r1);
    if (r22 != 0x0) {
            var_2B0 = r19;
            r24 = 0x0;
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r27 = *(0x0 + r21 * 0x8);
                            if ([r27 length] != 0x0) {
                                    r0 = [r24 stringByAppendingString:r2];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r24 release];
                                    r24 = r28;
                            }
                            r0 = [r24 stringByAppendingString:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r24 release];
                            r21 = r21 + 0x1;
                            r24 = r27;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_298);
                    r24 = r27;
            } while (r22 != 0x0);
            [r27 release];
            r19 = var_2B0;
            r25 = @selector(sharedInstance);
    }
    [r20 release];
    r9 = [[NSString stringWithFormat:@"%@"] retain];
    var_298 = r9;
    r20 = [[NSURL URLWithString:r9] retain];
    r19 = [[NSMutableURLRequest requestWithURL:r20] retain];
    [r20 release];
    var_2A8 = r19;
    [r19 setHTTPMethod:@"POST"];
    r0 = [ADCUtil appBundleInfo];
    r0 = [r0 retain];
    var_2B0 = r0;
    r22 = [[r0 objectForKeyedSubscript:@"CFBundleShortVersionString"] retain];
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 advertiserId];
    r29 = r29;
    r0 = [r0 retain];
    var_2C0 = r0;
    if (r0 != 0x0) {
            r0 = [r24 advertiserId];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_410 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 advertiserId];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2C4 = 0x1;
                    var_2C8 = 0x1;
            }
            else {
                    var_2C8 = 0x0;
                    r9 = @"";
                    var_2C4 = 0x1;
            }
    }
    else {
            r2 = @"CFBundleShortVersionString";
            var_2C8 = 0x0;
            r9 = @"";
    }
    var_3B8 = r9;
    r0 = objc_msgSend(@class(AdColony), r25);
    r0 = [r0 retain];
    var_2D0 = r0;
    r0 = [r0 appID];
    r29 = r29;
    r0 = [r0 retain];
    var_2D8 = r0;
    if (r0 != 0x0) {
            r0 = objc_msgSend(@class(AdColony), r25);
            r0 = [r0 retain];
            var_418 = r0;
            r0 = [r0 appID];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_420 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = objc_msgSend(@class(AdColony), r25);
                    r0 = [r0 retain];
                    var_478 = r0;
                    r0 = [r0 appID];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2DC = 0x1;
                    var_2E0 = 0x1;
            }
            else {
                    var_2E0 = 0x0;
                    r9 = @"";
                    var_2DC = 0x1;
            }
    }
    else {
            var_2E0 = 0x0;
            r9 = @"";
    }
    var_3C0 = r9;
    r0 = [r24 OSVersion];
    r29 = r29;
    r0 = [r0 retain];
    var_2E8 = r0;
    if (r0 != 0x0) {
            r0 = [r24 OSVersion];
            r29 = r29;
            r21 = [r0 retain];
            r2 = [NSString class];
            var_428 = r21;
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 OSVersion];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_2EC = 0x1;
                    var_2F0 = 0x1;
            }
            else {
                    var_2F0 = 0x0;
                    r8 = @"";
                    var_2EC = 0x1;
            }
    }
    else {
            var_2F0 = 0x0;
            r8 = @"";
    }
    var_3C8 = r8;
    r0 = [r24 SDKVersion];
    r29 = r29;
    r0 = [r0 retain];
    var_2F8 = r0;
    if (r0 != 0x0) {
            r0 = [r24 SDKVersion];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_430 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 SDKVersion];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_2FC = 0x1;
                    var_300 = 0x1;
            }
            else {
                    var_300 = 0x0;
                    r8 = @"";
                    var_2FC = 0x1;
            }
    }
    else {
            var_300 = 0x0;
            r8 = @"";
    }
    var_3D0 = r8;
    r0 = [r24 type];
    r29 = r29;
    r0 = [r0 retain];
    var_308 = r0;
    if (r0 != 0x0) {
            r0 = [r24 type];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_438 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 type];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_30C = 0x1;
                    var_310 = 0x1;
            }
            else {
                    var_310 = 0x0;
                    r8 = @"";
                    var_30C = 0x1;
            }
    }
    else {
            var_310 = 0x0;
            r8 = @"";
    }
    var_3D8 = r8;
    r0 = [r24 brand];
    r29 = r29;
    r0 = [r0 retain];
    var_318 = r0;
    if (r0 != 0x0) {
            r0 = [r24 brand];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_440 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 brand];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_31C = 0x1;
                    var_320 = 0x1;
            }
            else {
                    var_320 = 0x0;
                    r8 = @"";
                    var_31C = 0x1;
            }
    }
    else {
            var_320 = 0x0;
            r8 = @"";
    }
    var_3E0 = r8;
    r0 = [r24 model];
    r29 = r29;
    r0 = [r0 retain];
    var_328 = r0;
    if (r0 != 0x0) {
            r0 = [r24 model];
            r29 = r29;
            r20 = [r0 retain];
            r2 = [NSString class];
            var_448 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 model];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_32C = 0x1;
                    var_330 = 0x1;
            }
            else {
                    var_330 = 0x0;
                    r9 = @"";
                    var_32C = 0x1;
            }
    }
    else {
            var_330 = 0x0;
            r9 = @"";
    }
    var_3E8 = r9;
    r19 = @class(NSNumber);
    [r24 screenWidth];
    var_338 = [[r19 numberWithDouble:r2] retain];
    r19 = @class(NSNumber);
    [r24 screenHeight];
    var_340 = [[r19 numberWithDouble:r2] retain];
    r0 = [r24 networkType];
    r29 = r29;
    r0 = [r0 retain];
    var_348 = r0;
    if (r0 != 0x0) {
            r0 = [r24 networkType];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_450 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 networkType];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_34C = 0x1;
                    var_350 = 0x1;
            }
            else {
                    var_350 = 0x0;
                    r9 = @"";
                    var_34C = 0x1;
            }
    }
    else {
            var_350 = 0x0;
            r9 = @"";
    }
    var_3F0 = r9;
    r0 = [r24 localeCountryCode];
    r29 = r29;
    r0 = [r0 retain];
    var_358 = r0;
    if (r0 != 0x0) {
            r0 = [r24 localeCountryCode];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_458 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 localeCountryCode];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_35C = 0x1;
                    var_360 = 0x1;
            }
            else {
                    var_360 = 0x0;
                    r8 = @"";
                    var_35C = 0x1;
            }
    }
    else {
            var_360 = 0x0;
            r8 = @"";
    }
    var_3F8 = r8;
    r0 = [r24 localeLanguageCode];
    r29 = r29;
    r0 = [r0 retain];
    var_368 = r0;
    if (r0 != 0x0) {
            r0 = [r24 localeLanguageCode];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_460 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 localeLanguageCode];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_36C = 0x1;
                    var_370 = 0x1;
            }
            else {
                    var_370 = 0x0;
                    r8 = @"";
                    var_36C = 0x1;
            }
    }
    else {
            var_370 = 0x0;
            r8 = @"";
    }
    var_400 = r8;
    var_378 = [[NSNumber numberWithBool:[r24 limitAdTracking]] retain];
    var_380 = [[NSNumber numberWithInt:[r24 timezoneDSTOffsetMinutes]] retain];
    var_388 = [[NSNumber numberWithInt:[r24 timezoneGMTOffsetMinutes]] retain];
    r0 = [r24 timezoneIETF];
    r29 = r29;
    r0 = [r0 retain];
    var_390 = r0;
    if (r0 != 0x0) {
            r0 = [r24 timezoneIETF];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_468 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 timezoneIETF];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_39C = 0x1;
                    var_3A0 = 0x1;
            }
            else {
                    r9 = @"";
                    var_3A0 = 0x0;
                    var_39C = 0x1;
            }
    }
    else {
            var_3A0 = 0x0;
            r9 = @"";
    }
    var_408 = r9;
    r0 = [r24 cellServiceCountryCode];
    r29 = r29;
    r0 = [r0 retain];
    var_3A8 = r0;
    if (r0 != 0x0) {
            r0 = [r24 cellServiceCountryCode];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_470 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r24 cellServiceCountryCode];
                    r29 = r29;
                    r20 = [r0 retain];
                    var_3AC = 0x1;
                    var_3B0 = 0x1;
            }
            else {
                    r20 = @"";
                    var_3B0 = 0x0;
                    var_3AC = 0x1;
            }
    }
    else {
            var_3B0 = 0x0;
            r20 = @"";
    }
    r19 = @"";
    var_2B8 = r22;
    if (r22 != 0x0) {
            r19 = @"";
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r19 = @"";
                    }
                    else {
                            r19 = r22;
                    }
            }
    }
    r0 = objc_msgSend(@class(AdColony), r25);
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 controllerVersion];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = objc_msgSend(@class(AdColony), r25);
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 controllerVersion];
            r29 = r29;
            r19 = [r0 retain];
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = objc_msgSend(@class(AdColony), r25);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 controllerVersion];
                    r29 = r29;
                    r23 = [r0 retain];
                    r28 = 0x1;
                    r26 = 0x1;
            }
            else {
                    r26 = 0x0;
                    r23 = @"";
                    r28 = 0x1;
            }
    }
    else {
            r28 = 0x0;
            r26 = 0x0;
            r23 = @"";
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    var_398 = [r0 retain];
    if (r26 != 0x0) {
            [r23 release];
            [r25 release];
    }
    if (r28 != 0x0) {
            [r19 release];
            [r27 release];
    }
    [r22 release];
    [r21 release];
    if (var_3B0 != 0x0) {
            [r20 release];
    }
    if (var_3AC != 0x0) {
            [var_470 release];
    }
    [var_3A8 release];
    if (var_3A0 != 0x0) {
            [var_408 release];
    }
    if (var_39C != 0x0) {
            [var_468 release];
    }
    [var_390 release];
    [var_388 release];
    [var_380 release];
    [var_378 release];
    if (var_370 != 0x0) {
            [var_400 release];
    }
    if (var_36C != 0x0) {
            [var_460 release];
    }
    [var_368 release];
    if (var_360 != 0x0) {
            [var_3F8 release];
    }
    if (var_35C != 0x0) {
            [var_458 release];
    }
    [var_358 release];
    if (var_350 != 0x0) {
            [var_3F0 release];
    }
    if (var_34C != 0x0) {
            [var_450 release];
    }
    [var_348 release];
    [var_340 release];
    [var_338 release];
    if (var_330 != 0x0) {
            [var_3E8 release];
    }
    if (var_32C != 0x0) {
            [var_448 release];
    }
    [var_328 release];
    if (var_320 != 0x0) {
            [var_3E0 release];
    }
    if (var_31C != 0x0) {
            [var_440 release];
    }
    [var_318 release];
    if (var_310 != 0x0) {
            [var_3D8 release];
    }
    if (var_30C != 0x0) {
            [var_438 release];
    }
    [var_308 release];
    if (var_300 != 0x0) {
            [var_3D0 release];
    }
    if (var_2FC != 0x0) {
            [var_430 release];
    }
    [var_2F8 release];
    if (var_2F0 != 0x0) {
            [var_3C8 release];
    }
    if (var_2EC != 0x0) {
            [var_428 release];
    }
    [var_2E8 release];
    if (var_2E0 != 0x0) {
            [var_3C0 release];
            [var_478 release];
    }
    if (var_2DC != 0x0) {
            [var_420 release];
            [var_418 release];
    }
    [var_2D8 release];
    [var_2D0 release];
    if (var_2C8 != 0x0) {
            [var_3B8 release];
    }
    if (var_2C4 != 0x0) {
            [var_410 release];
    }
    var_58 = **___stack_chk_guard;
    [var_2C0 release];
    r19 = [[ADCUtil dataFromJSONObject:var_398] retain];
    [var_2A8 setHTTPBody:r19];
    [var_2A8 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    r21 = [ADCHTTPConnection alloc];
    r0 = [ADCWebServicesAPI sharedAPI];
    r0 = [r0 retain];
    r23 = [[r0 httpSession] retain];
    r20 = [var_2A0 retain];
    r21 = [r21 initWithRequest:var_2A8 httpSession:r23 followRedirects:0x0 completionHandler:&var_290];
    [r23 release];
    [r0 release];
    [r21 start];
    [r21 release];
    [r20 release];
    [r19 release];
    [var_398 release];
    [r24 release];
    [var_2B8 release];
    [var_2B0 release];
    [var_2A8 release];
    [var_298 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end