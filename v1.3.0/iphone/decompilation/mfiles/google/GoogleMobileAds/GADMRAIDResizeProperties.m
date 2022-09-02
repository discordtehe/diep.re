@implementation GADMRAIDResizeProperties

+(bool)isContentFrameValid:(struct CGRect)arg2 forBounds:(struct CGRect)arg3 allowOffscreen:(bool)arg4 closeButtonPosition:(long long)arg5 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r0 = self;
    var_40 = d15;
    stack[-72] = d14;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d13;
    stack[-56] = d12;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v1;
    v15 = v0;
    if (r2 != 0x0) {
            r0 = sub_10080b3ec(r3);
            r0 = CGRectIntersection(r0, r1);
    }
    else {
            r0 = CGRectIntersection(r0, r1);
    }
    r0 = CGRectEqualToRect(r0, r1);
    return r0;
}

-(struct CGSize)size {
    r0 = self;
    return r0;
}

-(void)setSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGVector)offset {
    r0 = self;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x90;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1007f1264;

loc_1007f0f84:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1007f125c;

loc_1007f0fa8:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1007f1254;

loc_1007f0fcc:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_1007f124c;

loc_1007f0ff0:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1007f1244;

loc_1007f1014:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [[&var_70 super] init];
            r21 = r0;
            if (r21 != 0x0) {
                    r0 = [r19 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    r25 = [r22 objectForKeyedSubscript:r2];
                    [r22 release];
                    [r25 doubleValue];
                    [r0 release];
                    *(int128_t *)(int64_t *)&r21->_size = d8;
                    *(int128_t *)((int64_t *)&r21->_size + 0x8) = d9;
                    r0 = [r22 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    r25 = [r22 objectForKeyedSubscript:r2];
                    [r22 release];
                    [r25 doubleValue];
                    [r0 release];
                    *(int128_t *)(int64_t *)&r21->_offset = d8;
                    *(int128_t *)((int64_t *)&r21->_offset + 0x8) = d9;
                    r0 = [r22 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (*qword_1011db828 != -0x1) {
                            dispatch_once(0x1011db828, 0x100e918f0);
                    }
                    r21->_customClosePosition = [[*0x1011db830 objectForKeyedSubscript:r2] integerValue];
                    [r23 release];
                    r0 = [r22 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r21->_allowOffscreen = [r0 boolValue];
                    [r0 release];
            }
            r21 = [r21 retain];
            r20 = r21;
    }
    else {
            sub_1007ce06c(0x0, @"Missing MRAID resize parameters. Parameters: %@");
            r20 = 0x0;
    }
    goto loc_1007f127c;

loc_1007f127c:
    [r19 release];
    [r21 release];
    r0 = r20;
    return r0;

loc_1007f1244:
    [r25 release];
    goto loc_1007f124c;

loc_1007f124c:
    [r24 release];
    goto loc_1007f1254;

loc_1007f1254:
    [r23 release];
    goto loc_1007f125c;

loc_1007f125c:
    [r22 release];
    goto loc_1007f1264;

loc_1007f1264:
    sub_1007ce06c(0x0, @"Missing MRAID resize parameters. Parameters: %@");
    r20 = 0x0;
    goto loc_1007f127c;
}

-(void)setOffset:(struct CGVector)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_offset));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(long long)customClosePosition {
    r0 = self->_customClosePosition;
    return r0;
}

-(void)setCustomClosePosition:(long long)arg2 {
    self->_customClosePosition = arg2;
    return;
}

-(bool)allowOffscreen {
    r0 = *(int8_t *)(int64_t *)&self->_allowOffscreen;
    return r0;
}

-(void)setAllowOffscreen:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowOffscreen = arg2;
    return;
}

@end