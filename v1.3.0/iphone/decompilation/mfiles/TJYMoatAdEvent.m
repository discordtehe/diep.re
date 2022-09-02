@implementation TJYMoatAdEvent

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 {
    r3 = arg3;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    v8 = v0;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            r0 = [r0 initWithType:r19 withPlayheadMillis:r3 withVolume:r4];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithType:(unsigned long long)arg2 withPlayheadMillis:(double)arg3 withVolume:(float)arg4 {
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_eventType = r20;
            r19->_adPlayhead = d9;
            *(int32_t *)(int64_t *)&r19->_adVolume = s8;
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r19->_timeStamp = d0 * *0x100b9b058;
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void *)eventAsString {
    r20 = [[TJYMoatAdEvent adEventStrings] retain];
    r19 = [[NSNumber numberWithUnsignedInteger:self->_eventType] retain];
    r21 = [[r20 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)asDict {
    r24 = *___stack_chk_guard;
    r24 = *r24;
    var_48 = r24;
    r19 = [[self eventAsString] retain];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    var_60 = r20;
    r23 = [[NSNumber numberWithDouble:r2] retain];
    var_58 = r23;
    r22 = [[NSNumber numberWithDouble:r2] retain];
    var_50 = r22;
    r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (r24 == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)adEventStrings {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0xe0;
    r9 = *___stack_chk_guard;
    r9 = *r9;
    var_58 = r9;
    if (*0x1011dc2d8 == 0x0) {
            var_110 = [@(0x0) retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x1];
            r0 = [r0 retain];
            var_118 = r0;
            var_100 = r0;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x2];
            r0 = [r0 retain];
            var_120 = r0;
            var_F8 = r0;
            r23 = [@(0x3) retain];
            var_F0 = r23;
            r24 = [@(0x4) retain];
            var_E8 = r24;
            r25 = [@(0x5) retain];
            var_E0 = r25;
            r26 = [@(0x6) retain];
            var_D8 = r26;
            r27 = [@(0x7) retain];
            r28 = [@(0x8) retain];
            r19 = [@(0x9) retain];
            r22 = [@(0xa) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_B0 forKeys:&stack[-280] count:0xb];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011dc2d8;
            *0x1011dc2d8 = r0;
            [r8 release];
            [r22 release];
            [r19 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [var_120 release];
            [var_118 release];
            [var_110 release];
            r9 = *___stack_chk_guard;
            r9 = *r9;
    }
    if (r9 == var_58) {
            r0 = *0x1011dc2d8;
            r0 = objc_retainAutoreleaseReturnValue(r0);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    r19 = self;
    r20 = @class(NSString);
    r0 = [self eventAsString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    asm { fcvt       d0, s0 };
    r19 = [[r20 stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)eventType {
    r0 = self->_eventType;
    return r0;
}

-(void)setEventType:(unsigned long long)arg2 {
    self->_eventType = arg2;
    return;
}

-(double)adPlayhead {
    r0 = self;
    return r0;
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

@end