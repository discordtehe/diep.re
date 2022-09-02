@implementation IROMoatBaseTracker

-(void *)init {
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            CACurrentMediaTime();
            r8 = 0x100b9b000;
            asm { fcvtzs     x8, d0 };
            r9 = 0x55e63b88c230e77f;
            asm { smulh      x9, x8, x9 };
            var_40 = r8 - ((SAR(r9, 0x19)) + r9 / 0xffffffff80000000) * 0x5f5e100;
            r21 = [[NSString stringWithFormat:@"m%li"] retain];
            [r19 setName:r21];
            [r21 release];
            r0 = [NSNumber numberWithLong:r8 - ((SAR(r9, 0x19)) + r9 / 0xffffffff80000000) * 0x5f5e100];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setTrackerID:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)startTracking {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isActive] & 0x1) == 0x0 && ([r19 stoppedTracking] & 0x1) == 0x0) {
            [r19 setIsActive:0x1];
            r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
            r0 = [r0 retain];
            [r0 addActiveTracker:r19];
            [r0 release];
            r0 = [r19 trackerDelegate];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r19 trackerDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:@selector(trackerStartedTracking:)];
                    [r0 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r0 = [r19 trackerDelegate];
                            r0 = [r0 retain];
                            [r0 trackerStartedTracking:r19];
                            [r0 release];
                    }
            }
    }
    return;
}

-(void)notifyDelegateOfBadArgStart:(void *)arg2 {
    [self notifyDelegateOfStartFailure:0x3 reason:arg2];
    return;
}

-(void)stopTracking {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self stoppedTracking] & 0x1) == 0x0) {
            [r19 setIsActive:0x0];
            [r19 setStoppedTracking:0x1];
            r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
            r0 = [r0 retain];
            [r0 removeActiveTracker:r19];
            [r0 release];
            r0 = [r19 trackerDelegate];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r19 trackerDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:@selector(trackerStoppedTracking:)];
                    [r0 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r0 = [r19 trackerDelegate];
                            r0 = [r0 retain];
                            [r0 trackerStoppedTracking:r19];
                            [r0 release];
                    }
            }
    }
    return;
}

-(void *)getViewableState {
    r20 = [[self trackedLayer] retain];
    r19 = [[IROMoatUIUtil getViewableState:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)trackerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_trackerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)notifyDelegateOfStartFailure:(unsigned long long)arg2 reason:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 trackerDelegate];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r21 trackerDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 respondsToSelector:@selector(tracker:failedToStartTracking:reason:), r3, r4];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r0 = [r21 trackerDelegate];
                    r0 = [r0 retain];
                    [r0 tracker:r21 failedToStartTracking:r20 reason:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(bool)checkFalseStart {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isActive] == 0x0) goto loc_100745b14;

loc_100745a98:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Can't start tracking, already active"];
    r21 = @class(IROMoatLogging);
    r22 = [[r19 trackerID] retain];
    [r21 reportClientLog:0x1 trackerID:r22 format:@"startTracking failed, tracker is already active"];
    [r22 release];
    goto loc_100745ba0;

loc_100745ba0:
    r20 = 0x1;
    [r19 notifyDelegateOfStartFailure:r2 reason:r3];
    goto loc_100745bb4;

loc_100745bb4:
    r0 = r20;
    return r0;

loc_100745b14:
    if ([r19 stoppedTracking] == 0x0) goto loc_100745bb0;

loc_100745b28:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Can't start tracking, already stopped"];
    r21 = @class(IROMoatLogging);
    r22 = [[r19 trackerID] retain];
    [r21 reportClientLog:0x1 trackerID:r22 format:@"startTracking failed, tracker is already stopped"];
    [r22 release];
    goto loc_100745ba0;

loc_100745bb0:
    r20 = 0x0;
    goto loc_100745bb4;
}

-(void)setTrackerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_trackerDelegate, arg2);
    return;
}

-(void *)trackerID {
    r0 = self->_trackerID;
    return r0;
}

-(void)setTrackerID:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_trackerID));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(bool)stoppedTracking {
    r0 = *(int8_t *)(int64_t *)&self->_stoppedTracking;
    return r0;
}

-(void)setStoppedTracking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_stoppedTracking = arg2;
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x1);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)trackedLayer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_trackedLayer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTrackedLayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_trackedLayer, arg2);
    return;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_isActive & 0x1;
    return r0;
}

-(void)setIsActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isActive = arg2;
    return;
}

-(bool)isNativeDisplay {
    r0 = *(int8_t *)(int64_t *)&self->_isNativeDisplay & 0x1;
    return r0;
}

-(void)setIsNativeDisplay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isNativeDisplay = arg2;
    return;
}

-(bool)isNativeVideo {
    r0 = *(int8_t *)(int64_t *)&self->_isNativeVideo & 0x1;
    return r0;
}

-(void)setIsNativeVideo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isNativeVideo = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_trackedLayer);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_trackerID, 0x0);
    objc_destroyWeak((int64_t *)&self->_trackerDelegate);
    return;
}

@end