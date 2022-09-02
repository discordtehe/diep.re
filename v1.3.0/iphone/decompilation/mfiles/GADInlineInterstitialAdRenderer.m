@implementation GADInlineInterstitialAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [r23 objectForKeyedSubscript:*0x100e95908];
    r0 = [r0 retain];
    r25 = [[r0 objectForKeyedSubscript:*0x100e95910] retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95918] retain];
    r0 = [r0 objectForKeyedSubscript:*0x100e95920];
    r0 = [r0 retain];
    [r0 boolValue];
    [r0 release];
    r28 = [[NSURL URLWithString:r20] retain];
    r0 = [r23 objectForKeyedSubscript:*0x100e95930];
    r0 = [r0 retain];
    [r0 isEqual:@"rewarded"];
    [r0 release];
    var_88 = r24;
    [r24 retain];
    var_80 = r23;
    [r23 retain];
    [r28 retain];
    var_70 = r22;
    [r22 retain];
    var_68 = [self retain];
    var_60 = r25;
    [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_A8);
    [var_60 release];
    [var_68 release];
    [var_70 release];
    [r28 release];
    [var_80 release];
    [var_88 release];
    [r25 release];
    [r22 release];
    [r21 release];
    [r23 release];
    [r24 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adLoadMonitor, 0x0);
    return;
}

@end