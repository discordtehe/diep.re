@implementation ISProductSettings

-(unsigned long long)maxNumOfAdaptersToLoadOnStart {
    r0 = self->_maxNumOfAdaptersToLoadOnStart;
    return r0;
}

-(void *)placements {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placements)), 0x1);
    return r0;
}

-(void *)initWithplacements:(void *)arg2 maxNumOfAdaptersToLoadOnStart:(unsigned long long)arg3 adapterTimeOutInSeconds:(double)arg4 algo:(void *)arg5 backFillProviderName:(void *)arg6 premiumProviderName:(void *)arg7 {
    r31 = r31 - 0x80;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg6;
    r22 = arg5;
    r24 = arg4;
    r27 = arg3;
    r28 = arg2;
    r19 = [r28 retain];
    r21 = [r24 retain];
    r23 = [r22 retain];
    r26 = [r20 retain];
    r0 = [[&var_70 super] init];
    r25 = r0;
    if (r25 != 0x0) {
            objc_storeStrong((int64_t *)&r25->_placements, r28);
            r25->_maxNumOfAdaptersToLoadOnStart = r27;
            r25->_adapterTimeOutInSeconds = d8;
            objc_storeStrong((int64_t *)&r25->_algo, r24);
            objc_storeStrong((int64_t *)&r25->_backFillProviderName, r22);
            objc_storeStrong((int64_t *)&r25->_premiumProviderName, r20);
    }
    [r26 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(double)adapterTimeOutInSeconds {
    r0 = self;
    return r0;
}

-(void *)algo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_algo)), 0x1);
    return r0;
}

-(void *)backFillProviderName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backFillProviderName)), 0x0);
    return r0;
}

-(void)setBackFillProviderName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)premiumProviderName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_premiumProviderName)), 0x0);
    return r0;
}

-(long long)bannerInterval {
    r0 = self->_bannerInterval;
    return r0;
}

-(void)setPremiumProviderName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBannerInterval:(long long)arg2 {
    self->_bannerInterval = arg2;
    return;
}

-(long long)loadRVInterval {
    r0 = self->_loadRVInterval;
    return r0;
}

-(void)setLoadRVInterval:(long long)arg2 {
    self->_loadRVInterval = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_premiumProviderName, 0x0);
    objc_storeStrong((int64_t *)&self->_backFillProviderName, 0x0);
    objc_storeStrong((int64_t *)&self->_algo, 0x0);
    objc_storeStrong((int64_t *)&self->_placements, 0x0);
    return;
}

@end