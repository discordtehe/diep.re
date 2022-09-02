@implementation ISNRingerCheckerController

-(void)prepareRingerChecker {
    r0 = [ISNSoundSamplerRingerChecker shared];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_ringerChecker));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)startRingerCheckerWithStatusChangedHandler:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"calling method:%@"] retain];
    [r20 logInfo:r22];
    [r22 release];
    [r21 release];
    r0 = [r20 ringerChecker];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isDetecting];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            objc_initWeak(&stack[-72], r20);
            var_40 = [r19 retain];
            r0 = objc_loadWeakRetained(&stack[-72]);
            r22 = r0;
            r0 = [r0 ringerChecker];
            r0 = [r0 retain];
            [r0 setStatusHandler:&var_60];
            [r0 release];
            [r22 release];
            r0 = [r20 ringerChecker];
            r0 = [r0 retain];
            [r0 startDetecting];
            [r0 release];
            [var_40 release];
            objc_destroyWeak(&stack[-72]);
    }
    [r19 release];
    return;
}

-(void)stopRingerChecker {
    r21 = [NSStringFromSelector(_cmd) retain];
    r20 = [[NSString stringWithFormat:@"calling method:%@"] retain];
    [self logInfo:r20];
    [r20 release];
    [r21 release];
    r0 = [self ringerChecker];
    r0 = [r0 retain];
    [r0 stopDetecting];
    [r0 release];
    return;
}

-(bool)isInitiatedSuccessfuly {
    r0 = [self ringerChecker];
    r0 = [r0 retain];
    r20 = [r0 isActive];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)ringerChecker {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_ringerChecker));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [ISNSoundSamplerRingerChecker shared];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)logInfo:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromClass([self class]) retain];
    r21 = [[NSString stringWithFormat:@"class: %@ | %@"] retain];
    [r22 release];
    [r19 log:r21 withLevel:0x1 withTag:0x5];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_ringerChecker, 0x0);
    return;
}

-(void)setRingerChecker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ringerChecker, arg2);
    return;
}

@end