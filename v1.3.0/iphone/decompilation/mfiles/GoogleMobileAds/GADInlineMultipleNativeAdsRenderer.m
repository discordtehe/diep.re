@implementation GADInlineMultipleNativeAdsRenderer

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderingResults));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_group_create();
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderingGroup));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeJSContextMonitors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r24 = [arg4 retain];
    r0 = [arg3 objectForKeyedSubscript:*0x100e959e8];
    r0 = [r0 retain];
    var_E8 = r0;
    r26 = [[r0 objectForKeyedSubscript:@"native"] retain];
    r0 = [arg3 objectForKeyedSubscript:*0x100e95908];
    r0 = [r0 retain];
    var_F0 = r0;
    r25 = [[r0 objectForKeyedSubscript:@"ad_json"] retain];
    r24 = [r24 retain];
    var_80 = r24;
    r27 = [self retain];
    var_70 = r22;
    r22 = [r22 retain];
    var_F8 = [r26 retain];
    r0 = objc_retainBlock(&var_A0);
    r28 = r0;
    r0 = [r22 serverRequest];
    r0 = [r0 retain];
    r23 = [[r0 context] retain];
    var_C0 = r24;
    r24 = [r24 retain];
    var_B8 = [r27 retain];
    var_B0 = r25;
    r25 = [r25 retain];
    var_A8 = r28;
    r28 = [r28 retain];
    [GADNativeAdContext loadWithAdConfiguration:r21 eventContext:r23 completionHandler:&var_E0];
    [r21 release];
    [r23 release];
    [r0 release];
    [var_A8 release];
    [var_B0 release];
    [var_B8 release];
    [var_C0 release];
    [r28 release];
    [r26 release];
    [var_70 release];
    [r27 release];
    [var_80 release];
    [r25 release];
    [r24 release];
    [var_F8 release];
    [r22 release];
    [var_F0 release];
    [var_E8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_renderers, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeJSContextMonitors, 0x0);
    objc_storeStrong((int64_t *)&self->_renderingGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_renderingResults, 0x0);
    return;
}

@end