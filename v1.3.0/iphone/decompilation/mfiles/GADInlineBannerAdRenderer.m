@implementation GADInlineBannerAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    sub_1008c5a0c();
    *(int128_t *)((&saved_fp - 0xb0) + 0x30) = var_68;
    sub_100845df4(&saved_fp - 0x80);
    sub_1008c5a80();
    *(int128_t *)(&saved_fp - 0xb0) = var_98;
    sub_100845df4(&saved_fp - 0xb0);
    r0 = [r23 objectForKeyedSubscript:*0x100e95908];
    r0 = [r0 retain];
    r26 = [[r0 objectForKeyedSubscript:*0x100e95910] retain];
    r22 = [[r0 objectForKeyedSubscript:*0x100e95918] retain];
    r0 = [r0 objectForKeyedSubscript:*0x100e95920];
    r0 = [r0 retain];
    [r0 boolValue];
    [r0 release];
    r28 = [[NSURL URLWithString:r22] retain];
    var_128 = r24;
    [r24 retain];
    var_120 = r23;
    [r23 retain];
    var_118 = r21;
    [r21 retain];
    [r28 retain];
    var_108 = [self retain];
    [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_148);
    [r26 release];
    [var_108 release];
    [r28 release];
    [var_118 release];
    [var_120 release];
    [var_128 release];
    [r25 release];
    [r20 release];
    [r21 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adLoadMonitor, 0x0);
    return;
}

@end