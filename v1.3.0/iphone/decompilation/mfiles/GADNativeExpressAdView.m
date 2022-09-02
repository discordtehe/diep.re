@implementation GADNativeExpressAdView

-(void *)initWithFrame:(struct CGRect)arg2 adSize:(struct GADAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] initWithFrame:r2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r0 + r8) = *(r19 + 0x10);
            *(int128_t *)(r0 + r8) = *(int128_t *)r19;
    }
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_100845a5c();
    r0 = [self initWithFrame:&var_60 adSize:r3];
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithAdSize:&var_20 origin:r3];
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 origin:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    sub_100845b10(&var_40);
    r0 = [self initWithFrame:&var_60 adSize:r3];
    return r0;
}

-(void)loadRequest:(void *)arg2 {
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:r2];
    [r20 release];
    asm { fcvtzs     x1, d0 };
    r20 = dispatch_time(0x0, r1);
    var_28 = [r19 retain];
    dispatch_after(r20, *__dispatch_main_q, &var_48);
    [var_28 release];
    return;
}

-(void)setAdOptions:(void *)arg2 {
    return;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitID)), 0x0);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    return r0;
}

-(void)setAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(0x10 + self + r8) = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)isAutoloadEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_autoloadEnabled;
    return r0;
}

-(void)setAutoloadEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoloadEnabled = arg2;
    return;
}

-(void *)adNetworkClassName {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adNetworkClassName);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adNetworkClassName);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    return;
}

@end