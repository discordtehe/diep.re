@implementation ADCNativeAdSession

-(void *)nativeAd {
    r0 = self->_nativeAd;
    return r0;
}

-(void)setNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAd, arg2);
    return;
}

-(struct CGSize)size {
    r0 = self;
    return r0;
}

-(void)pollViewability {
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
    r19 = self;
    r0 = [self lastViewabilityUpdate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSinceNow];
    [r0 release];
    if (d8 <= *0x100ba2ab0) goto loc_10024fe54;

.l1:
    return;

loc_10024fe54:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 sessionFromID] retain];
    r23 = [[r19 identifier] retain];
    r20 = [[r22 objectForKeyedSubscript:r23] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [r20 viewabilityMonitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 checkCurrentViewablePercentage];
    [r0 release];
    if (d8 >= *0x100ba2ab8) goto loc_10024ff50;

loc_10024ff24:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    if ([*(r19 + r21) playing] == 0x0) goto loc_10024ff50;

loc_10024ff40:
    r0 = *(r19 + r21);
    r1 = @selector(onHidden);
    goto loc_10024ff80;

loc_10024ff80:
    objc_msgSend(r0, r1);
    goto loc_10024ff84;

loc_10024ff84:
    r21 = [[NSDate date] retain];
    [r19 setLastViewabilityUpdate:r21];
    [r21 release];
    [r20 release];
    return;

loc_10024ff50:
    if (d8 <= *0x100ba2ab8) goto loc_10024ff84;

loc_10024ff58:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    if (([*(r19 + r21) playing] & 0x1) != 0x0) goto loc_10024ff84;

loc_10024ff74:
    r0 = *(r19 + r21);
    r1 = @selector(onUnhidden);
    goto loc_10024ff80;
}

-(void)setSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)requestSuccess {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestSuccess)), 0x0);
    return r0;
}

-(void)setRequestSuccess:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestFailure {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestFailure)), 0x0);
    return r0;
}

-(void)setRequestFailure:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestFailure, 0x0);
    objc_storeStrong((int64_t *)&self->_requestSuccess, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    return;
}

@end