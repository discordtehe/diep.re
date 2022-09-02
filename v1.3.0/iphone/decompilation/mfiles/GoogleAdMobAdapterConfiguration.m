@implementation GoogleAdMobAdapterConfiguration

+(void)updateInitializationParameters:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"appid"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
            r20 = [r0 retain];
            [GoogleAdMobAdapterConfiguration setCachedInitializationParameters:r20];
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
    return @"7.42.2.0";
}

-(void *)biddingToken {
    return 0x0;
}

-(void *)moPubNetworkName {
    return @"admob_native";
}

-(void *)networkSdkVersion {
    return @"7.42.2";
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg3 retain];
    r19 = r0;
    var_18 = r0;
    if (*qword_1011d82d0 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d82d0, &var_40);
            r0 = var_18;
    }
    [r0 release];
    [r19 release];
    return;
}

@end