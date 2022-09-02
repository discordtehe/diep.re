@implementation CCSequence

+(void *)actions:(void *)arg2 {
    r0 = [self actions:arg2 vaList:&saved_fp + 0x10];
    return r0;
}

+(void *)actions:(void *)arg2 vaList:(char *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = arg3;
    if (r2 != 0x0) {
            r8 = var_18;
            var_18 = r8 + 0x8;
            if (*r8 != 0x0) {
                    r19 = r0;
                    do {
                            r2 = [r19 actionOne:r2 two:r3];
                            r8 = var_18;
                            var_18 = r8 + 0x8;
                    } while (*r8 != 0x0);
            }
    }
    r0 = r2;
    return r0;
}

+(void *)actionWithArray:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    r22 = [arg2 objectAtIndex:0x0];
    if ([r19 count] >= 0x2) {
            r25 = 0x1;
            do {
                    r24 = @selector(actionOne:two:);
                    r23 = @selector(count);
                    [r19 objectAtIndex:r25];
                    r22 = objc_msgSend(r20, r24);
                    r25 = r25 + 0x1;
            } while (r25 < objc_msgSend(r19, r23));
    }
    r0 = r22;
    return r0;
}

+(void *)actionOne:(void *)arg2 two:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initOne:arg2 two:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initOne:(void *)arg2 two:(void *)arg3 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    [arg2 duration];
    [r19 duration];
    r0 = [[&var_50 super] initWithDuration:r2];
    r21 = r0;
    if (r0 != 0x0) {
            [r21->_actions release];
            [*((int64_t *)&r21->_actions + 0x8) release];
            r21->_actions = [r20 retain];
            *((int64_t *)&r21->_actions + 0x8) = [r19 retain];
    }
    r0 = r21;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initOne:[[self->_actions copy] autorelease] two:[[*((int64_t *)&self->_actions + 0x8) copy] autorelease]];
    return r0;
}

-(void)dealloc {
    [self->_actions release];
    [*((int64_t *)&self->_actions + 0x8) release];
    [[&var_30 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    r19 = self;
    [[&var_20 super] startWithTarget:arg2];
    [r19->_actions duration];
    asm { fmaxnm     d1, d1, d2 };
    asm { fdiv       d0, d0, d1 };
    r19->_split = d0;
    *(int32_t *)(int64_t *)&r19->_last = 0xffffffffffffffff;
    return;
}

-(void)stop {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_last));
    r8 = sign_extend_64(*(int32_t *)(self + r8));
    if (r8 != -0x1) {
            [*((int64_t *)&r19->_actions + r8 * 0x8) stop];
    }
    [[&var_20 super] stop];
    return;
}

-(void *)reverse {
    r20 = [self class];
    [*((int64_t *)&self->_actions + 0x8) reverse];
    [self->_actions reverse];
    r0 = [r20 actionOne:r2 two:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    d1 = self->_split;
    if (d1 <= d0) goto loc_1002f7834;

loc_1002f77d4:
    asm { fdiv       d0, d0, d1 };
    if (d1 != 0x0) {
            asm { fcsel      d8, d0, d1, ne };
    }
    r20 = (int64_t *)&r19->_last;
    if (*(int32_t *)r20 == 0x1) {
            [*((int64_t *)&r19->_actions + 0x8) update:r2];
            [*((int64_t *)&r19->_actions + 0x8) stop];
    }
    r21 = 0x0;
    goto loc_1002f78c8;

loc_1002f78c8:
    r8 = *(int32_t *)r20;
    if (r21 != r8) goto loc_1002f78f8;

loc_1002f78d4:
    if (([*((int64_t *)&r19->_actions + r21 * 0x8) isDone] & 0x1) != 0x0) goto .l3;

loc_1002f78f4:
    r8 = *(int32_t *)r20;
    goto loc_1002f78f8;

loc_1002f78f8:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_actions));
    if (r21 != r8) {
            [*(r21 * 0x8 + r19 + r22) startWithTarget:r19->_target];
    }
    [*(r21 * 0x8 + r19 + r22) update:r2];
    *(int32_t *)r20 = r21;
    return;

.l3:
    return;

loc_1002f7834:
    if (d1 != 0x3ff0000000000000) {
            asm { fdiv       d8, d0, d1 };
    }
    r20 = (int64_t *)&r19->_last;
    r8 = *(int32_t *)r20;
    if (r8 == 0x0) goto loc_1002f7898;

loc_1002f7864:
    if (r8 != -0x1) goto loc_1002f78c4;

loc_1002f786c:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_actions));
    [*(r19 + r21) startWithTarget:r19->_target];
    goto loc_1002f78a0;

loc_1002f78a0:
    [*(r19 + r21) update:r2];
    [*(r19 + r21) stop];
    goto loc_1002f78c4;

loc_1002f78c4:
    r21 = 0x1;
    goto loc_1002f78c8;

loc_1002f7898:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_actions));
    goto loc_1002f78a0;
}

+(void *)actionsWithArray:(void *)arg2 {
    r0 = [self actionWithArray:arg2];
    return r0;
}

@end