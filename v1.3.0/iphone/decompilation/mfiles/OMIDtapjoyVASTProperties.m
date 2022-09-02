@implementation OMIDtapjoyVASTProperties

-(void *)initWithSkipOffset:(double)arg2 autoPlay:(bool)arg3 position:(unsigned long long)arg4 {
    r0 = [self initWithSkippable:0x1 skipOffset:arg2 autoPlay:arg3 position:r5];
    return r0;
}

-(void *)initWithAutoPlay:(bool)arg2 position:(unsigned long long)arg3 {
    r0 = [self initWithSkippable:0x0 skipOffset:arg2 autoPlay:arg3 position:r5];
    return r0;
}

-(void *)initWithSkippable:(bool)arg2 skipOffset:(double)arg3 autoPlay:(bool)arg4 position:(unsigned long long)arg5 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_skippable = r21;
            r0->_skipOffset = d8;
            *(int8_t *)(int64_t *)&r0->_autoPlay = r20;
            r0->_position = r19;
    }
    return r0;
}

-(bool)isSkippable {
    r0 = *(int8_t *)(int64_t *)&self->_skippable;
    return r0;
}

-(void *)positionString {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    r8 = *(self + r8);
    if (r8 > 0x3) goto loc_100967498;

loc_10096744c:
    switch (sign_extend_64(*(int32_t *)(0x1009674a8 + r8 * 0x4)) + 0x1009674a8) {
        case 0:
            r19 = @"preroll";
            break;
        case 1:
            r19 = @"midroll";
            break;
        case 2:
            r19 = @"postroll";
            break;
        case 3:
            r19 = @"standalone";
            break;
    }
    [r19 retain];
    goto loc_100967498;

loc_100967498:
    r0 = [r19 autorelease];
    return r0;
}

-(double)skipOffset {
    r0 = self;
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_skippable != 0x0) {
            r20 = [@(YES) retain];
            r21 = [[NSNumber numberWithDouble:0x1] retain];
            r22 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&r19->_autoPlay] retain];
            r23 = [[r19 positionString] retain];
            r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r23 release];
    }
    else {
            r20 = [@(NO) retain];
            r21 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&r19->_autoPlay] retain];
            r22 = [[r19 positionString] retain];
            r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    if (**___stack_chk_guard != var_38) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isAutoPlay {
    r0 = *(int8_t *)(int64_t *)&self->_autoPlay;
    return r0;
}

-(unsigned long long)position {
    r0 = self->_position;
    return r0;
}

@end