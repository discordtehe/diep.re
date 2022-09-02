@implementation CCRepeat

+(void *)actionWithAction:(void *)arg2 times:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 times:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 times:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    [arg2 duration];
    asm { ucvtf      d1, x21 };
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_times));
            *(r20 + r22) = r21;
            [r20 setInnerAction:r19];
            r0 = [r19 isKindOfClass:[CCActionInstant class]];
            *(int8_t *)(int64_t *)&r20->_isActionInstant = r0;
            if (r0 != 0x0) {
                    *(r20 + r22) = *(r20 + r22) - 0x1;
            }
            r20->_total = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_innerAction copy] autorelease] times:self->_times];
    return r0;
}

-(void)dealloc {
    [self->_innerAction release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x40;
    r19 = arg2;
    r20 = self;
    self->_total = 0x0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_innerAction));
    [*(self + r22) duration];
    asm { fdiv       d0, d0, d1 };
    r20->_nextDt = d0;
    [[&var_30 super] startWithTarget:r19];
    [*(r20 + r22) startWithTarget:r19];
    return;
}

-(void)stop {
    [self->_innerAction stop];
    [[&var_20 super] stop];
    return;
}

-(bool)isDone {
    r0 = self;
    if (r0->_total == r0->_times) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)reverse {
    r20 = [self class];
    [self->_innerAction reverse];
    r0 = [r20 actionWithAction:r2 times:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x90;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = r0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_nextDt));
    d10 = *(r0 + r26);
    if (d10 < d0) goto loc_1002f7d80;

loc_1002f7d1c:
    r20 = r19->_innerAction;
    asm { ucvtf      d0, d0 };
    asm { fcvt       s0, d0 };
    fmodf(r0, r1);
    asm { fcvt       d0, s0 };
    goto loc_1002f7d4c;

loc_1002f7d4c:
    [r20 update:r2];
    return;

.l1:
    return;

loc_1002f7d80:
    if (!CPU_FLAGS & NS) {
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_total));
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_times));
            if (*(r19 + r27) < *(r19 + r28)) {
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_innerAction));
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_target));
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
                    do {
                            [*(r19 + r24) update:r2];
                            *(r19 + r27) = *(r19 + r27) + 0x1;
                            [*(r19 + r24) stop];
                            r0 = *(r19 + r24);
                            r2 = *(r19 + r25);
                            [r0 startWithTarget:r2];
                            [*(r19 + r24) duration];
                            asm { fdiv       d0, d0, d1 };
                            d10 = *(r19 + r26) + d0;
                            *(r19 + r26) = d10;
                            if (d10 >= d8) {
                                break;
                            }
                    } while (*(r19 + r27) < *(r19 + r28));
            }
    }
    if (d8 >= 0x3ff0000000000000) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_total));
            r9 = *(r19 + r8);
            if (r9 < r19->_times) {
                    *(r19 + r8) = r9 + 0x1;
            }
    }
    if (*(int8_t *)(int64_t *)&r19->_isActionInstant == 0x0) goto loc_1002f7ec8;
    goto .l1;

loc_1002f7ec8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_total));
    r8 = *(r19 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_times));
    r9 = *(r19 + r9);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_innerAction));
    r20 = *(r19 + r21);
    if (r8 != r9) goto loc_1002f7f34;

loc_1002f7eec:
    [r20 update:r2];
    [*(r19 + r21) stop];
    return;

loc_1002f7f34:
    [r20 duration];
    asm { fdiv       d0, d0, d1 };
    goto loc_1002f7d4c;
}

-(void *)innerAction {
    r0 = self->_innerAction;
    return r0;
}

-(void)setInnerAction:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end