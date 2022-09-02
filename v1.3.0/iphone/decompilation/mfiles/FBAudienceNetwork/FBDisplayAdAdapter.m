@implementation FBDisplayAdAdapter

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_delegate, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)adDataModel {
    r21 = **_NSInternalInconsistencyException;
    r23 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r20 = [[[NSException exceptionWithName:r21 reason:r22 userInfo:0x0] retain] autorelease];
    [r22 release];
    [r19 release];
    [r23 release];
    r0 = objc_exception_throw(r20);
    return r0;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    [r4 retain];
    [r5 retain];
    [r6 retain];
    [r7 retain];
    [arg8 retain];
    r20 = **_NSInternalInconsistencyException;
    r22 = [NSStringFromClass([self class]) retain];
    r23 = [NSStringFromSelector(_cmd) retain];
    r21 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r19 = [[[NSException exceptionWithName:r20 reason:r21 userInfo:0x0] retain] autorelease];
    [r21 release];
    [r23 release];
    [r22 release];
    objc_exception_throw(r19);
    return;
}

-(union ?)duration {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd148 != -0x1) {
            r0 = dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
    }
    r8 = *qword_1011dd150;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    return r0;
}

-(bool)setRewardData:(void *)arg2 {
    [arg2 retain];
    r22 = **_NSInternalInconsistencyException;
    r20 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r21 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r19 release];
    [r20 release];
    r0 = objc_exception_throw(r21);
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    [arg2 retain];
    r22 = **_NSInternalInconsistencyException;
    r20 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r21 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r19 release];
    [r20 release];
    r0 = objc_exception_throw(r21);
    return r0;
}

-(void)registerViewForInteraction:(void *)arg2 withViewController:(void *)arg3 {
    return;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    [arg2 retain];
    r22 = **_NSInternalInconsistencyException;
    r20 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r21 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r19 release];
    [r20 release];
    r0 = objc_exception_throw(r21);
    return r0;
}

-(void)unregisterView {
    return;
}

-(void)onImpressionWithExtraData:(void *)arg2 withPostData:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r22 = **_NSInternalInconsistencyException;
    r21 = [NSStringFromClass([self class]) retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r19 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r20 release];
    [r21 release];
    objc_exception_throw(r19);
    return;
}

-(void)onImpressionMissWithExtraData:(void *)arg2 withPostData:(void *)arg3 {
    return;
}

-(void)onClickForViewController:(void *)arg2 withExtraData:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r22 = **_NSInternalInconsistencyException;
    r21 = [NSStringFromClass([self class]) retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r19 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r20 release];
    [r21 release];
    objc_exception_throw(r19);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_nativeAdData, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void *)nativeAdData {
    r0 = self->_nativeAdData;
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setNativeAdData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdData, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

@end