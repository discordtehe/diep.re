@implementation ANSBackoffTimer

-(void *)initWithInitialValue:(double)arg2 {
    r0 = [self initWithInitialValue:arg2 jitterCoefficient:r3];
    return r0;
}

-(void *)init {
    r0 = [self initWithInitialValue:r2];
    return r0;
}

-(void)executeBlockAfterNextInterval:(void *)arg2 {
    [arg2 retain];
    [self setRetryCount:[self retryCount] + 0x1];
    [self initialValue];
    [self retryCount];
    [self computeDelayForInitialValue:r2 retryCount:r3];
    asm { fcvtzs     x1, d0 };
    dispatch_after(dispatch_time(0x0, r1), *__dispatch_main_q, r21);
    [r21 release];
    return;
}

-(double)randomDoubleWithMin:(double)arg2 max:(double)arg3 {
    r0 = drand48();
    return r0;
}

-(void *)initWithInitialValue:(double)arg2 jitterCoefficient:(double)arg3 {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = _cmd;
    r19 = self;
    if (([ANSBackoffTimer jitterCoefficientIsValid:arg2] & 0x1) == 0x0) {
            r0 = [NSString stringWithUTF8String:"/Users/crashlytics/buildAgent/work/7e5c596e59839c6e/apple/AnswersKit/AnswersKit/ANSBackoffTimer.m"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r21 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r21;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r22 = [r0 retain];
            [r21 release];
            r0 = [NSAssertionHandler currentHandler];
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r20 object:r19 file:r22 lineNumber:0x20 description:@"Invalid parameter not satisfying: %@"];
            [r22 release];
            [r0 release];
    }
    r0 = [[&var_40 super] init];
    if (r0 != 0x0) {
            r0->_initialValue = d9;
            r0->_jitterCoefficient = d8;
            r0->_retryCount = 0x0;
    }
    return r0;
}

+(bool)jitterCoefficientIsValid:(double)arg2 {
    if (d0 >= 0x0) {
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    if (d0 < 0x3ff0000000000000) {
            if (CPU_FLAGS & S) {
                    r9 = 0x1;
            }
    }
    r0 = r8 & r9;
    return r0;
}

-(double)generateRandomJitter {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self jitterCoefficient];
    if ([ANSBackoffTimer jitterCoefficientIsValid:r2] != 0x0) {
            [r19 jitterCoefficient];
    }
    else {
            d0 = *0x100b9b7b0;
    }
    r0 = [r19 randomDoubleWithMin:r2 max:r3];
    return r0;
}

-(unsigned long long)retryCount {
    r0 = self->_retryCount;
    return r0;
}

-(double)computeDelayForInitialValue:(double)arg2 retryCount:(unsigned long long)arg3 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    asm { fmax       d8, d0, d1 };
    r0 = [r0 generateRandomJitter];
    asm { ucvtf      d0, x19 };
    if (r19 == 0x0) {
            asm { fcsel      d1, d1, d0, eq };
    }
    r0 = pow(r0, @selector(generateRandomJitter));
    return r0;
}

-(double)initialValue {
    r0 = self;
    return r0;
}

-(void)setRetryCount:(unsigned long long)arg2 {
    self->_retryCount = arg2;
    return;
}

-(void)setInitialValue:(double)arg2 {
    self->_initialValue = d0;
    return;
}

-(double)jitterCoefficient {
    r0 = self;
    return r0;
}

@end