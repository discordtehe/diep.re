@implementation UnityAdsAdapterConfiguration

-(void *)biddingToken {
    return 0x0;
}

+(void)updateInitializationParameters:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"gameId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
            r20 = [r0 retain];
            [UnityAdsAdapterConfiguration setCachedInitializationParameters:r20];
            [r20 release];
    }
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adapterVersion {
    return @"3.0.3.0";
}

-(void *)moPubNetworkName {
    return @"unity";
}

-(void *)networkSdkVersion {
    r0 = [UnityAds getVersion];
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r22 objectForKeyedSubscript:@"gameId"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            r2 = @"gameId";
            r0 = [UnityRouter sharedRouter];
            r29 = r29;
            r0 = [r0 retain];
            [r0 initializeWithGameId:r20];
            [r0 release];
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, 0x0);
            }
            r0 = [MoPub sharedInstance];
            r0 = [r0 retain];
            r22 = [r0 logLevel];
            [r0 release];
            if (r22 == 0x14) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [UnityAds setDebugMode:r2];
    }
    else {
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r22 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-unity-adapters" code:0x0 userInfo:r23] retain];
            [r23 release];
            r24 = [[MPLogEvent error:r22 message:0x0] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
            [r24 release];
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, r22);
            }
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

@end