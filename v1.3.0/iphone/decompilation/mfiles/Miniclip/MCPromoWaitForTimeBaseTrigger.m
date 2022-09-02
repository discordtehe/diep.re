@implementation MCPromoWaitForTimeBaseTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    [[&var_20 super] setup:arg2 withError:arg3];
    self->mCurrentTimestamp = 0xbff0000000000000;
    self->mLastActivationTimestamp = 0xbff0000000000000;
    return;
}

-(void)reset {
    [[&var_20 super] reset];
    self->mCurrentTimestamp = 0xbff0000000000000;
    self->mLastActivationTimestamp = 0xbff0000000000000;
    return;
}

-(void)softReset {
    [[&var_20 super] softReset];
    self->mCurrentTimestamp = 0xbff0000000000000;
    return;
}

-(double)timeToNextActivation {
    r0 = self;
    return r0;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->mEnabled != 0x0) {
            r0->mCurrentTimestamp = d0;
    }
    return;
}

-(void *)getState {
    r0 = [[&var_40 super] getState];
    r23 = [NSNumber numberWithDouble:r2];
    r0 = @class(NSNumber);
    [r0 numberWithDouble:r2];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r23];
    return r0;
}

-(double)currentTimestamp {
    r0 = self;
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (r2 != 0x0) {
            r23 = [r2 objectForKey:@"timestampState"];
            r24 = [r2 objectForKey:@"lastActivationTimestampState"];
            r21 = [r2 objectForKey:@"superClassState"];
            [r23 doubleValue];
            r0->mCurrentTimestamp = d0;
            [r24 doubleValue];
            r0->mLastActivationTimestamp = d0;
            [[&var_40 super] setState:r21 withError:r19];
    }
    else {
            if (r19 != 0x0) {
                    *r19 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
            }
    }
    return;
}

-(double)lastActivationTimestamp {
    r0 = self;
    return r0;
}

@end