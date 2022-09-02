@implementation VNGMoatAdEvent

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            r0 = [r0 initWithType:r19 withPlayheadMillis:r3 withVolume:r4];
    }
    return r0;
}

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 withVolume:(float)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setEventType:r20];
            [r19 setAdPlayhead:r20];
            [r19 setAdVolume:r20];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r19 setTimeStamp:r20];
            [r0 release];
            [VNGMoatVideoUtil getSystemVolume];
            [r19 setDeviceVolume:r20];
    }
    r0 = r19;
    return r0;
}

+(void *)adEventStrings {
    if (*qword_1011daa38 != -0x1) {
            dispatch_once(0x1011daa38, 0x100e8a2f8);
    }
    r0 = *0x1011daa30;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)eventAsString {
    r20 = [[VNGMoatAdEvent adEventStrings] retain];
    r19 = [[NSNumber numberWithUnsignedInteger:[self eventType]] retain];
    r21 = [[r20 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(unsigned long long)eventType {
    r0 = self->_eventType;
    return r0;
}

-(void *)description {
    r19 = self;
    r20 = @class(NSString);
    r0 = [self eventAsString];
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

-(void *)asDict {
    r31 = r31 - 0xb0;
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
    var_48 = **___stack_chk_guard;
    r19 = [[self eventAsString] retain];
    r20 = @class(NSNumber);
    [self adVolume];
    r20 = [[r20 numberWithFloat:r2] retain];
    r23 = @class(NSNumber);
    [self deviceVolume];
    r22 = [[r23 numberWithFloat:r2] retain];
    r23 = @class(NSNumber);
    [self adPlayhead];
    r23 = [[r23 numberWithDouble:r2] retain];
    r25 = @class(NSNumber);
    [self timeStamp];
    r24 = [[r25 numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)adPlayhead {
    r0 = self;
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

-(void)setAdVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_adVolume = s0;
    return;
}

-(double)timeStamp {
    r0 = self;
    return r0;
}

-(void)setTimeStamp:(double)arg2 {
    self->_timeStamp = d0;
    return;
}

-(float)deviceVolume {
    r0 = self;
    return r0;
}

-(void)setDeviceVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_deviceVolume = s0;
    return;
}

@end