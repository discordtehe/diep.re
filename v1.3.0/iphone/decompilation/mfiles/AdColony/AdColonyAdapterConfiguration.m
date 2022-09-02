@implementation AdColonyAdapterConfiguration

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
    r19 = [[r0 objectForKeyedSubscript:@"appId"] retain];
    r0 = [r23 objectForKeyedSubscript:@"allZoneIds"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (r19 != 0x0 && [r20 count] != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
            r21 = [r0 retain];
            [AdColonyAdapterConfiguration setCachedInitializationParameters:r21];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adapterVersion {
    return @"3.3.7.0";
}

-(void *)biddingToken {
    return @"1";
}

-(void *)moPubNetworkName {
    return @"adcolony";
}

-(void *)networkSdkVersion {
    r0 = [AdColony getSDKVersion];
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [AdColonyController sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 initState];
    [r0 release];
    if (r22 == 0x1) {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0);
            }
    }
    else {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 count] != 0x0) {
                            r24 = [[r19 objectForKeyedSubscript:r2] retain];
                            r27 = [[NSString stringWithFormat:@"Attempting to initialize the AdColony SDK with:\n%@"] retain];
                            r26 = [[MPLogEvent eventWithMessage:r27 level:0x1e] retain];
                            [MPLogging logEvent:r26 source:0x0 fromClass:[r23 class]];
                            [r26 release];
                            [r27 release];
                            r23 = @class(AdColonyController);
                            var_80 = [r20 retain];
                            [r23 initializeAdColonyCustomEventWithAppId:r21 allZoneIds:r22 userId:r24 callback:&var_A0];
                            [var_80 release];
                    }
                    else {
                            r25 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
                            r24 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-adcolony-adapters" code:0x1 userInfo:r25] retain];
                            [r25 release];
                            r26 = [[MPLogEvent error:r24 message:0x0] retain];
                            [MPLogging logEvent:r26 source:0x0 fromClass:[r23 class]];
                            [r26 release];
                            if (r20 != 0x0) {
                                    (*(r20 + 0x10))(r20, r24);
                            }
                    }
                    [r24 release];
            }
            else {
                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    r22 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-adcolony-adapters" code:0x0 userInfo:r24] retain];
                    [r24 release];
                    r25 = [[MPLogEvent error:r22 message:0x0] retain];
                    [MPLogging logEvent:r25 source:0x0 fromClass:[r23 class]];
                    [r25 release];
                    if (r20 != 0x0) {
                            (*(r20 + 0x10))(r20, r22);
                    }
            }
            [r22 release];
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

@end