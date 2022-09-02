@implementation TJUsageTracker

-(void *)initWithName:(void *)arg2 startTime:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setName:r19];
            [r20 setStartTime:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)addDimensions:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 dimensions];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r19 dimensions] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r23 != r0) {
                    r0 = [r19 dimensions];
                    r0 = [r0 retain];
                    r21 = r0;
                    r1 = @selector(addEntriesFromDictionary:);
            }
            else {
                    r21 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
                    r1 = @selector(setDimensions:);
                    r0 = r19;
            }
    }
    else {
            [r22 release];
            r21 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
            r1 = @selector(setDimensions:);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)addDimensionName:(void *)arg2 value:(void *)arg3 {
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
    r21 = arg2;
    r19 = self;
    r20 = [r21 retain];
    r22 = [arg3 retain];
    r0 = [r19 dimensions];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = [[r19 dimensions] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r24 release];
            if (r25 == r0) {
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r19 setDimensions:r24];
                    [r24 release];
            }
    }
    else {
            [r24 release];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r24 = [r0 retain];
            [r19 setDimensions:r24];
            [r24 release];
    }
    r0 = [r19 dimensions];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r22 release];
    [r20 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)addValues:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 values];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r19 values] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r23 != r0) {
                    r0 = [r19 values];
                    r0 = [r0 retain];
                    r21 = r0;
                    r1 = @selector(addEntriesFromDictionary:);
            }
            else {
                    r21 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
                    r1 = @selector(setValues:);
                    r0 = r19;
            }
    }
    else {
            [r22 release];
            r21 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
            r1 = @selector(setValues:);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)add:(void *)arg2 value:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = arg3;
    r21 = arg2;
    r19 = self;
    r20 = [r21 retain];
    r23 = [r22 retain];
    r0 = [r19 values];
    r29 = &saved_fp;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r26 = [[r19 values] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r26 release];
            [r25 release];
            if (r26 == r0) {
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r19 setValues:r25];
                    [r25 release];
            }
    }
    else {
            [r25 release];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r25 = [r0 retain];
            [r19 setValues:r25];
            [r25 release];
    }
    r0 = [r19 values];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r23 release];
    [r20 release];
    [r24 release];
    r0 = r19;
    return r0;
}

-(void *)addSpentTime:(double)arg2 {
    r2 = arg2;
    r19 = self;
    r0 = @class(NSNumber);
    asm { frintm     d0, d0 };
    r20 = [[r0 numberWithDouble:r2] retain];
    [[[r19 add:@"spent_time" value:r20] retain] release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)addResult:(void *)arg2 {
    r0 = [self addDimensionName:@"result" value:arg2];
    return r0;
}

-(void *)end {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self startTime];
    if (d0 > 0x0) {
            [TJCUtil uptime];
            if (d8 > 0x0) {
                    [r19 startTime];
                    [[[r19 addSpentTime:r2] retain] release];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)addFailure:(void *)arg2 {
    r0 = [self addDimensionName:@"failure" value:arg2];
    return r0;
}

-(void *)addMisuse:(void *)arg2 {
    r0 = [self addDimensionName:@"misuse" value:arg2];
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void)track {
    r21 = [[self name] retain];
    r22 = [[self dimensions] retain];
    r19 = [[self values] retain];
    [TJUsageTracking track:r21 dimensions:r22 values:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void *)dimensions {
    r0 = self->_dimensions;
    return r0;
}

-(void)setDimensions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dimensions, arg2);
    return;
}

-(void)setValues:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_values, arg2);
    return;
}

-(void *)values {
    r0 = self->_values;
    return r0;
}

-(double)startTime {
    r0 = self;
    return r0;
}

-(void)setStartTime:(double)arg2 {
    self->_startTime = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_values, 0x0);
    objc_storeStrong((int64_t *)&self->_dimensions, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end