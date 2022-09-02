@implementation IROMoatAdEvent

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 {
    r3 = arg3;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    v8 = v0;
    r19 = arg2;
    *(r31 + 0xffffffffffffffc0) = self;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            r0 = [r0 initWithType:r19 withPlayheadMillis:r3 withVolume:r4];
    }
    return r0;
}

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 withVolume:(float)arg4 {
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r20 = arg2;
    *(r31 + 0xffffffffffffffc0) = self;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setEventType:r20];
            [r19 setAdPlayhead:r20];
            [r19 setAdVolume:r20];
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r19 setTimeStamp:r20];
            [r0 release];
            [IROMoatVideoUtil getSystemVolume];
            [r19 setDeviceVolume:r20];
    }
    r0 = r19;
    return r0;
}

+(void *)adEventStrings {
    if (*qword_1011dae50 != -0x1) {
            dispatch_once(0x1011dae50, 0x100e8ebb0);
    }
    r0 = *0x1011dae48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)eventAsString {
    r20 = [[IROMoatAdEvent adEventStrings] retain];
    r19 = [[NSNumber numberWithUnsignedInteger:[self eventType]] retain];
    r21 = [[r20 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)description {
    r19 = self;
    r20 = @class(NSString);
    r0 = [self eventAsString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r19 adVolume];
    asm { fcvt       d9, s0 };
    [r19 deviceVolume];
    asm { fcvt       d10, s0 };
    [r19 adPlayhead];
    [r19 timeStamp];
    r19 = [[r20 stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)eventType {
    r0 = self->_eventType;
    return r0;
}

-(void *)asDict {
    r26 = *___stack_chk_guard;
    r26 = *r26;
    r19 = [[self eventAsString] retain];
    r20 = @class(NSNumber);
    [self adVolume];
    r20 = [[r20 numberWithFloat:r2] retain];
    var_68 = r20;
    r23 = @class(NSNumber);
    [self deviceVolume];
    r22 = [[r23 numberWithFloat:r2] retain];
    var_60 = r22;
    r23 = @class(NSNumber);
    [self adPlayhead];
    r23 = [[r23 numberWithDouble:r2] retain];
    var_58 = r23;
    r25 = @class(NSNumber);
    [self timeStamp];
    r24 = [[r25 numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (r26 == r26) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setEventType:(unsigned long long)arg2 {
    self->_eventType = arg2;
    return;
}

-(void)setAdPlayhead:(double)arg2 {
    self->_adPlayhead = d0;
    return;
}

-(float)adVolume {
    r0 = self;
    return r0;
}

-(double)adPlayhead {
    r0 = self;
    return r0;
}

-(void)setAdVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_adVolume = s0;
    return;
}

-(float)deviceVolume {
    r0 = self;
    return r0;
}

-(double)timeStamp {
    r0 = self;
    return r0;
}

-(void)setTimeStamp:(double)arg2 {
    self->_timeStamp = d0;
    return;
}

-(void)setDeviceVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_deviceVolume = s0;
    return;
}

@end