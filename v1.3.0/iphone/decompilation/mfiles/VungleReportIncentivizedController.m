@implementation VungleReportIncentivizedController

-(void *)initWithConfigController:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x8, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendReportIncentivized:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 toDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"incentivized"];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    r20 = [[VNGNetworkManager sharedManager] retain];
    r0 = [self configController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 isReportIncentivizedEnabled];
    [r0 release];
    if (r22 != 0x0) {
            asm { ccmp       w23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r21 = [[r20 reportIncentivizedOperationWithInfo:r19 complete:0x100e89ad8] retain];
            [r20 sendVungleOperation:r21];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)configController {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConfigController:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

@end