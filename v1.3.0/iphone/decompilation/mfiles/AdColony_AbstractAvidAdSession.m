@implementation AdColony_AbstractAvidAdSession

-(void *)init {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffd0) = self;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 UUIDString];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessionId));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)avidDeferredAdSessionListener {
    r20 = [[AdColony_AvidManager getInstance] retain];
    r19 = [[self avidAdSessionId] retain];
    r21 = [[r20 findInternalAvidAdSessionById:r19] retain];
    [r19 release];
    [r20 release];
    r19 = [[r21 avidDeferredAdSessionListener] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)registerAdView:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    r19 = [[r0 findInternalAvidAdSessionById:self->_avidAdSessionId] retain];
    [r0 release];
    [r19 registerAdView:r22];
    [r22 release];
    [r19 release];
    return;
}

-(void)unregisterAdView:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    r19 = [[r0 findInternalAvidAdSessionById:self->_avidAdSessionId] retain];
    [r0 release];
    [r19 unregisterAdView:r22];
    [r22 release];
    [r19 release];
    return;
}

-(void)endSession {
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    r19 = [[r0 findInternalAvidAdSessionById:self->_avidAdSessionId] retain];
    [r0 release];
    [r19 onEnd];
    [r19 release];
    return;
}

-(void)registerFriendlyObstruction:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    r19 = [[r0 findInternalAvidAdSessionById:self->_avidAdSessionId] retain];
    [r0 release];
    r0 = [r19 obstructionsWhiteList];
    r0 = [r0 retain];
    [r0 addView:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    return;
}

-(void *)avidAdSessionId {
    r0 = self->_avidAdSessionId;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_avidAdSessionId, 0x0);
    return;
}

@end