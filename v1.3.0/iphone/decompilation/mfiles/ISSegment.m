@implementation ISSegment

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customKeys));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setPaying:(bool)arg2 {
    r0 = self;
    *(int8_t *)(int64_t *)&r0->_paying = arg2;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"false";
            }
            else {
                    r2 = @"true";
            }
    }
    [r0 setIsUserPaying:r2];
    return;
}

-(void)setAge:(int)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 < 0xc8) {
            *(int32_t *)(int64_t *)&r0->_age = r2;
    }
    else {
            r19 = [[NSString stringWithFormat:@"Age must be between 1-%d"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r19 level:0x1 tag:0x0];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)setIapTotal:(double)arg2 {
    r0 = self;
    if (d0 <= *0x100bf31b8 && d0 >= 0x0) {
            r0->_iapTotal = d0;
    }
    else {
            r19 = [[NSString stringWithFormat:@"In app purchase must be between 0-%0.2f"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r19 level:0x1 tag:0x0];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)setLevel:(int)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 < 0xf4240) {
            *(int32_t *)(int64_t *)&r0->_level = r2;
    }
    else {
            r19 = [[NSString stringWithFormat:r2] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r19 level:0x1 tag:0x0];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)setUserCreationDate:(void *)arg2 {
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
    r20 = arg2;
    r21 = self;
    r0 = [r20 retain];
    r19 = r0;
    r22 = @class(NSNumber);
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r0 = [r22 numberWithDouble:r2];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 longLongValue];
    [r0 release];
    if (r23 >= 0x1) {
            objc_storeStrong((int64_t *)&r21->_userCreationDate, r20);
    }
    else {
            r20 = [[NSString stringWithFormat:@"Invalid time stamp for user creation date"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x1 tag:0x0];
            [r0 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)setSegmentName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if ([r21 isValueValid:r19] != 0x0) {
            objc_storeStrong((int64_t *)&r21->_segmentName, r20);
    }
    else {
            r20 = [[NSString stringWithFormat:@"Segment name must be alphanumeric and 1-%d in length"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x1 tag:0x0];
            [r0 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(bool)isValueValid:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 length];
    if (r0 != 0x0) {
            r20 = @selector(length);
            r20 = [ISUtils checkLengthWithVal:objc_msgSend(r19, r20) minLength:0x1 maxLength:0x20];
            r0 = @class(ISUtils);
            r0 = [r0 checkRegWithVal:r19 pattern:@"^[0-9a-zA-Z]*$"];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20 & r0;
    return r0;
}

-(void)setGender:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 < 0x3) {
            r0->_gender = r2;
    }
    else {
            r19 = [[NSString stringWithFormat:@"Gender is invalid"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r19 level:0x1 tag:0x0];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)setCustomValue:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_customKeys));
    if ([*(r21 + r23) count] > 0x5) goto loc_1006a61e0;

loc_1006a6194:
    if ([r21 isValueValid:r2] == 0x0 || [r21 isValueValid:r2] == 0x0) goto loc_1006a622c;

loc_1006a61c4:
    [*(r21 + r23) setValue:r19 forKey:r20];
    goto loc_1006a62a4;

loc_1006a62a4:
    [r20 release];
    [r19 release];
    return;

loc_1006a622c:
    r21 = [[NSString stringWithFormat:@"Values and keys must be alphanumeric and 1-%d in length"] retain];
    r0 = [ISLoggerManager sharedInstance];
    goto loc_1006a6274;

loc_1006a6274:
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x0];
    [r0 release];
    [r21 release];
    goto loc_1006a62a4;

loc_1006a61e0:
    r21 = [[NSString stringWithFormat:@"Your'e limited to %d custom values. Ignoring custom value."] retain];
    r0 = [ISLoggerManager sharedInstance];
    goto loc_1006a6274;
}

-(int)age {
    r0 = *(int32_t *)(int64_t *)&self->_age;
    return r0;
}

-(double)iapTotal {
    r0 = self;
    return r0;
}

-(int)level {
    r0 = *(int32_t *)(int64_t *)&self->_level;
    return r0;
}

-(bool)paying {
    r0 = *(int8_t *)(int64_t *)&self->_paying;
    return r0;
}

-(void *)userCreationDate {
    r0 = self->_userCreationDate;
    return r0;
}

-(long long)gender {
    r0 = self->_gender;
    return r0;
}

-(void *)segmentName {
    r0 = self->_segmentName;
    return r0;
}

-(void *)customKeys {
    r0 = self->_customKeys;
    return r0;
}

-(void)setIsUserPaying:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isUserPaying, arg2);
    return;
}

-(void *)isUserPaying {
    r0 = self->_isUserPaying;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_isUserPaying, 0x0);
    objc_storeStrong((int64_t *)&self->_customKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_segmentName, 0x0);
    objc_storeStrong((int64_t *)&self->_userCreationDate, 0x0);
    return;
}

@end