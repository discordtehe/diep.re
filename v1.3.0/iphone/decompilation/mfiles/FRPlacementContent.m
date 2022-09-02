@implementation FRPlacementContent

-(bool)hasContent {
    return 0x0;
}

-(bool)didExpired {
    return 0x0;
}

-(void)show {
    return;
}

-(void)dismiss {
    return;
}

+(long long)viewOrientationWithFrame:(struct CGRect)arg2 landscapeForSquare:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r23 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r21 release];
    if (r23 != -0x1) {
            if (d9 > d8) {
                    r20 = 0x4;
            }
            else {
                    if (!CPU_FLAGS & NE) {
                            if (r19 != 0x0) {
                                    asm { csinc      x20, x8, xzr, ne };
                            }
                    }
                    else {
                            r20 = 0x1;
                    }
            }
    }
    r0 = r20;
    return r0;
}

-(void *)placement {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placement)), 0x1);
    return r0;
}

-(void *)_delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->__delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)set_delegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->__delegate, arg2);
    return;
}

-(void)setMeta:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)meta {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_meta)), 0x1);
    return r0;
}

-(void *)purchaseRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseRequest)), 0x1);
    return r0;
}

-(void)setPurchaseRequest:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)rewardRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardRequest)), 0x1);
    return r0;
}

-(void)setRewardRequest:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x1);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)redirectURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_redirectURL)), 0x1);
    return r0;
}

-(void)setRedirectURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)adContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adContent)), 0x1);
    return r0;
}

-(void)setAdContent:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adContent, 0x0);
    objc_storeStrong((int64_t *)&self->_redirectURL, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_purchaseRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_meta, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_destroyWeak((int64_t *)&self->__delegate);
    return;
}

@end