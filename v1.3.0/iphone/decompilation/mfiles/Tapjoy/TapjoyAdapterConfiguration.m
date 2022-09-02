@implementation TapjoyAdapterConfiguration

-(void *)adapterVersion {
    return @"12.2.1.0";
}

-(void *)moPubNetworkName {
    return @"tapjoy";
}

-(void *)biddingToken {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy getUserToken];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 length];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = @"1";
            }
    }
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)updateInitializationParameters:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r23 = r0;
    r19 = [[r0 objectForKeyedSubscript:@"sdkKey"] retain];
    r0 = [r23 objectForKeyedSubscript:@"debugEnabled"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r23 release];
    r22 = [r24 boolValue];
    [r24 release];
    if (r19 != 0x0) {
            r8 = @"0";
            if (r22 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"0";
                    }
                    else {
                            r8 = @"1";
                    }
            }
            r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
            r20 = [r0 retain];
            [TapjoyAdapterConfiguration setCachedInitializationParameters:r20];
            [r20 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)networkSdkVersion {
    r0 = [Tapjoy getVersion];
    return r0;
}

-(void)setupListeners {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectFail:) name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    return;
}

-(void)tjcConnectSuccess:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [[NSString stringWithFormat:@"Tapjoy connect Succeeded"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    [r19 setIsConnecting:0x0];
    [r19 fetchMoPubGDPRSettings];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    r0 = [r19 initializationCompleteBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 initializationCompleteBlock];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
            [r19 setInitializationCompleteBlock:0x0];
    }
    return;
}

-(bool)isConnecting {
    r0 = *(int8_t *)(int64_t *)&self->_isConnecting;
    return r0;
}

-(void)tjcConnectFail:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-tapjoy-adapters" code:0x1 userInfo:r21] retain];
    [r21 release];
    r22 = [[MPLogEvent error:r20 message:0x0] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    [r19 setIsConnecting:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    r0 = [r19 initializationCompleteBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 initializationCompleteBlock];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r21 release];
            [r19 setInitializationCompleteBlock:0x0];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)fetchMoPubGDPRSettings {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 isGDPRApplicable];
    [r0 release];
    if (r20 != 0x0) {
            if (r20 == 0x1) {
                    [Tapjoy subjectToGDPR:r2];
                    r0 = @class(MoPub);
                    r0 = [r0 sharedInstance];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 canCollectPersonalInfo];
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = @"0";
                            }
                            else {
                                    r0 = @"1";
                            }
                    }
                    r20 = [r0 retain];
                    [r19 release];
                    [Tapjoy setUserConsent:r20];
                    [r20 release];
            }
            else {
                    [Tapjoy subjectToGDPR:r2];
                    [Tapjoy setUserConsent:@"-1"];
            }
    }
    return;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([Tapjoy isConnected] != 0x0) {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0);
            }
    }
    else {
            r24 = [[MoPub sharedInstance] retain];
            r22 = [[r24 globalMediationSettingsForClass:[TapjoyGlobalMediationSettings class]] retain];
            [r24 release];
            var_70 = [[r19 objectForKeyedSubscript:@"sdkKey"] retain];
            r0 = [r19 objectForKeyedSubscript:@"debugEnabled"];
            r0 = [r0 retain];
            var_84 = [r0 boolValue];
            [r0 release];
            r0 = [r22 sdkKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [[MPLogEvent eventWithMessage:[[NSString stringWithFormat:r2] retain] level:0x1e] retain];
                    [r23 class];
                    [MPLogging logEvent:r2 source:r3 fromClass:r4];
                    [r21 release];
                    [r26 release];
                    [r23 setupListeners];
                    [r23 setInitializationCompleteBlock:r20];
                    r26 = [[r22 sdkKey] retain];
                    r0 = [r22 connectFlags];
                    r29 = r29;
                    r27 = [r0 retain];
                    [Tapjoy connect:r26 options:r27];
                    [r27 release];
                    [r26 release];
                    r2 = 0x1;
                    [r23 setIsConnecting:r2];
            }
            var_80 = r22;
            r22 = var_70;
            if (r22 != 0x0) {
                    r27 = [[NSString stringWithFormat:r2] retain];
                    r26 = [[MPLogEvent eventWithMessage:r2 level:r3] retain];
                    [MPLogging logEvent:r26 source:0x0 fromClass:[r23 class]];
                    [r26 release];
                    [r27 release];
                    r21 = [objc_alloc() init];
                    r0 = [NSNumber numberWithBool:var_84];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r21 setObject:r25 forKey:@"TJC_OPTION_ENABLE_LOGGING"];
                    [r25 release];
                    [r23 setupListeners];
                    [r23 setInitializationCompleteBlock:r20];
                    [Tapjoy connect:r22 options:r21];
                    r2 = 0x1;
                    [r23 setIsConnecting:r2];
                    [r21 release];
            }
            else {
                    r27 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    r26 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-tapjoy-adapters" code:0x0 userInfo:r27] retain];
                    [r27 release];
                    r21 = @class(MPLogging);
                    r0 = @class(MPLogEvent);
                    r0 = [r0 error:r26 message:0x0];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r21 logEvent:r27 source:0x0 fromClass:[r23 class]];
                    [r27 release];
                    if (r20 != 0x0) {
                            (*(r20 + 0x10))(r20, r26);
                    }
                    [r26 release];
                    r22 = var_70;
            }
            r0 = [MoPub sharedInstance];
            r0 = [r0 retain];
            r23 = [r0 logLevel];
            [r0 release];
            if (r23 == 0x14) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [Tapjoy setDebugEnabled:r2];
            [r22 release];
            [var_80 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setIsConnecting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isConnecting = arg2;
    return;
}

-(void *)initializationCompleteBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_initializationCompleteBlock)), 0x0);
    return r0;
}

-(void)setInitializationCompleteBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_initializationCompleteBlock, 0x0);
    return;
}

@end