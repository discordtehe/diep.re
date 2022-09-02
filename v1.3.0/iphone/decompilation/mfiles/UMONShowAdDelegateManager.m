@implementation UMONShowAdDelegateManager

+(void *)sharedInstance {
    if (*qword_1011d1d18 != -0x1) {
            dispatch_once(0x1011d1d18, 0x100e6a540);
    }
    r0 = *0x1011d1d20;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setDelegateMap:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setDelegate:(void *)arg2 forPlacementId:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [self delegateMap];
    r0 = [r0 retain];
    [r0 setObject:r21 forKeyedSubscript:arg3];
    [r23 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)sendAdFinished:(void *)arg2 withFinishState:(long long)arg3 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [r0 release];
    [r19 release];
    return;
}

-(void *)delegateMap {
    r0 = self->_delegateMap;
    return r0;
}

-(void)sendAdStarted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegateMap];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r19] retain];
    [r0 release];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(unityAdsDidStart:)] != 0x0) {
            [r20 unityAdsDidStart:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_delegateMap, 0x0);
    return;
}

-(void)setDelegateMap:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegateMap, arg2);
    return;
}

@end