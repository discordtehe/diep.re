@implementation CCSpawn

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
    r21 = arg2;
    r20 = self;
    [arg2 duration];
    [r19 duration];
    if (d8 > d0) {
            asm { fcsel      d0, d8, d0, gt };
    }
    r0 = [[&var_50 super] initWithDuration:r2];
    r20 = r0;
    if (r0 == 0x0) goto loc_1002f82e4;

loc_1002f8228:
    r23 = (int64_t *)&r20->_one;
    [*r23 release];
    r24 = (int64_t *)&r20->_two;
    [*r24 release];
    *r23 = r21;
    *r24 = r19;
    if (d8 <= d9) goto loc_1002f827c;

loc_1002f8270:
    r22 = r24;
    goto loc_1002f828c;

loc_1002f828c:
    [CCDelayTime actionWithDuration:r2];
    *r22 = [CCSequence actionOne:r2 two:r3];
    goto loc_1002f82c4;

loc_1002f82c4:
    [*r23 retain];
    [*r24 retain];
    goto loc_1002f82e4;

loc_1002f82e4:
    r0 = r20;
    return r0;

loc_1002f827c:
    if (CPU_FLAGS & NS) goto loc_1002f82c4;

loc_1002f8280:
    r19 = r21;
    r22 = r23;
    goto loc_1002f828c;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initOne:[[self->_one copy] autorelease] two:[[self->_two copy] autorelease]];
    return r0;
}

-(void)dealloc {
    [self->_one release];
    [self->_two release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_30 super] startWithTarget:arg2];
    r0 = self->_one;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    [r0 startWithTarget:*(self + r21)];
    [self->_two startWithTarget:*(self + r21)];
    return;
}

-(void)stop {
    [self->_one stop];
    [self->_two stop];
    [[&var_20 super] stop];
    return;
}

-(void)update:(double)arg2 {
    [self->_one update:arg2];
    [self->_two update:arg2];
    return;
}

-(void *)reverse {
    r20 = [self class];
    [self->_one reverse];
    [self->_two reverse];
    r0 = [r20 actionOne:r2 two:r3];
    return r0;
}

+(void *)actionsWithArray:(void *)arg2 {
    r0 = [self actionWithArray:arg2];
    return r0;
}

@end