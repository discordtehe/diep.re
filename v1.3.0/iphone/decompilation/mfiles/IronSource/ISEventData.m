@implementation ISEventData

-(void *)initWithEventId:(void *)arg2 andAdditionData:(void *)arg3 timeStamp:(long long)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r20 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r22 = [r20 retain];
    r0 = [[&var_40 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_eventId, r23);
            r24->_eventTimestamp = r21;
            objc_storeStrong((int64_t *)&r24->_additionalData, r20);
    }
    [r22 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void *)initWithEventId:(void *)arg2 andAdditionData:(void *)arg3 {
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r22 = r0;
    r23 = @class(NSNumber);
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r0 = [r23 numberWithDouble:r2];
    r0 = [r0 retain];
    r24 = [r0 longLongValue];
    [r0 release];
    r20 = [r20 initWithEventId:r19 andAdditionData:r21 timeStamp:r24];
    [r21 release];
    [r19 release];
    [r22 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r20 = [[self eventId] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != r21) {
            [ISEventData class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
                    if ([r21 eventTimestamp] == [r20 eventTimestamp]) {
                            r23 = [[r21 eventId] retain];
                            r0 = [r20 eventId];
                            r0 = [r0 retain];
                            if (r23 == r0) {
                                    if (CPU_FLAGS & E) {
                                            r21 = 0x1;
                                    }
                            }
                            [r0 release];
                            [r23 release];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x1;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)eventId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventId)), 0x1);
    return r0;
}

-(void)setEventId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(long long)eventTimestamp {
    r0 = self->_eventTimestamp;
    return r0;
}

-(void)setEventTimestamp:(long long)arg2 {
    self->_eventTimestamp = arg2;
    return;
}

-(void *)additionalData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_additionalData)), 0x1);
    return r0;
}

-(void)setAdditionalData:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_additionalData, 0x0);
    objc_storeStrong((int64_t *)&self->_eventId, 0x0);
    return;
}

@end