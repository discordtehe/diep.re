@implementation ADJBackoffStrategy

-(void *)initWithType:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 == 0x0) goto loc_1006a3930;

loc_1006a38f8:
    if (r20 > 0x4) goto loc_1006a39d8;

loc_1006a3900:
    goto *0x1006a3a00[sign_extend_64(*(int32_t *)(0x1006a3a00 + r20 * 0x4)) + 0x1006a3a00];

loc_1006a3950:
    r0 = r19;
    goto loc_1006a39d4;

loc_1006a39d4:
    [r0 saveStrategy:r2 secondMultiplier:r3 maxWait:r4 minRange:r5 maxRange:r6];
    goto loc_1006a39d8;

loc_1006a39d8:
    r20 = [r19 retain];
    goto loc_1006a39e4;

loc_1006a39e4:
    [r19 release];
    r0 = r20;
    return r0;

loc_1006a3964:
    r0 = r19;
    goto loc_1006a39d4;

loc_1006a398c:
    r0 = r19;
    goto loc_1006a39d4;

loc_1006a39b0:
    r0 = r19;
    goto loc_1006a39d4;

loc_1006a3930:
    r20 = 0x0;
    goto loc_1006a39e4;
}

+(void *)backoffStrategyWithType:(long long)arg2 {
    r0 = [ADJBackoffStrategy alloc];
    r0 = [r0 initWithType:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)saveStrategy:(long long)arg2 secondMultiplier:(double)arg3 maxWait:(double)arg4 minRange:(double)arg5 maxRange:(double)arg6 {
    [self setMaxWait:r2];
    [self setMinRange:r2];
    [self setMaxRange:r2];
    [self setMinRetries:arg2];
    [self setSecondMultiplier:arg2];
    return;
}

-(double)minRange {
    r0 = self;
    return r0;
}

-(void)setMinRange:(double)arg2 {
    self->_minRange = d0;
    return;
}

-(double)maxRange {
    r0 = self;
    return r0;
}

-(void)setMaxRange:(double)arg2 {
    self->_maxRange = d0;
    return;
}

-(long long)minRetries {
    r0 = self->_minRetries;
    return r0;
}

-(void)setMinRetries:(long long)arg2 {
    self->_minRetries = arg2;
    return;
}

-(double)maxWait {
    r0 = self;
    return r0;
}

-(void)setMaxWait:(double)arg2 {
    self->_maxWait = d0;
    return;
}

-(double)secondMultiplier {
    r0 = self;
    return r0;
}

-(void)setSecondMultiplier:(double)arg2 {
    self->_secondMultiplier = d0;
    return;
}

@end