@implementation IROMoatVideoTracker

-(void)dealloc {
    [self stopTracking];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPartnerCode:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setPartnerCode:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)stopTracking {
    r0 = [self managedTracker];
    r0 = [r0 retain];
    [r0 stopTracking];
    [r0 release];
    return;
}

+(void *)trackerWithPartnerCode:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithPartnerCode:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)trackVideoAd:(void *)arg2 usingMPMoviePlayer:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self partnerCode] retain];
    r22 = [[IROMoatMPVideoTracker trackerWithPartnerCode:r23] retain];
    [r23 release];
    r23 = [r22 trackVideoAd:r21 player:r20];
    [r20 release];
    [r21 release];
    [self setManagedTracker:r22];
    [r22 release];
    r0 = r23;
    return r0;
}

-(void *)managedTracker {
    r0 = self->_managedTracker;
    return r0;
}

-(bool)trackVideoAd:(void *)arg2 usingAVMoviePlayer:(void *)arg3 withLayer:(void *)arg4 withContainingView:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[self partnerCode] retain];
    r23 = [[IROMoatAVVideoTracker trackerWithPartnerCode:r24] retain];
    [r24 release];
    r24 = [r23 trackVideoAd:r22 player:r21 layer:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    [self setManagedTracker:r23];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void)changeTargetLayer:(void *)arg2 withContainingView:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 managedTracker];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [IROMoatAVVideoTracker class];
    r23 = [r22 isKindOfClass:r2];
    [r22 release];
    if (r23 != 0x0) {
            r0 = [r20 managedTracker];
            r0 = [r0 retain];
            [r0 changeTargetLayer:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)setManagedTracker:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_managedTracker));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)partnerCode {
    r0 = self->_partnerCode;
    return r0;
}

-(void)setPartnerCode:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_partnerCode));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_partnerCode, 0x0);
    objc_storeStrong((int64_t *)&self->_managedTracker, 0x0);
    return;
}

@end