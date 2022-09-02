@implementation MCAdjustWrapper

-(void)adjustAttributionChanged:(void *)arg2 {
    NSLog(@"Adjust attribution %@", _cmd);
    return;
}

-(void)intializeAdjustWithAppToken:(void *)arg2 environment:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [ADJConfig configWithAppToken:arg2 environment:r3];
    r21 = r0;
    if (*0x100e8a4b0 != arg3) {
            asm { csinc      w2, w8, wzr, ne };
    }
    [r0 setLogLevel:r2];
    [r21 setDelegate:r20];
    [Adjust appDidLaunch:r21];
    return;
}

-(void)trackSessionStart {
    [Adjust trackSubsessionStart];
    return;
}

-(void)trackSimpleEvent:(void *)arg2 {
    [Adjust trackEvent:[ADJEvent eventWithEventToken:arg2]];
    return;
}

-(void)trackSessionEnd {
    [Adjust trackSubsessionEnd];
    return;
}

-(void)trackRevenueEvent:(void *)arg2 revenue:(double)arg3 currency:(void *)arg4 receipt:(void *)arg5 transactionId:(void *)arg6 {
    r0 = [ADJEvent eventWithEventToken:arg2];
    [r0 setRevenue:arg3 currency:r3];
    [r0 setReceipt:arg4 transactionId:arg5];
    [Adjust trackEvent:r0];
    return;
}

-(void)trackDeepLink:(void *)arg2 {
    if (arg2 != 0x0) {
            [Adjust appWillOpenUrl:r2];
    }
    return;
}

@end