@implementation BufferedTasksScheduler

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(int8_t *)(r19 + 0x18) = 0x0;
            *(int128_t *)(r19 + 0x8) = objc_msgSend([NSMutableArray alloc], r20);
            *(int128_t *)(r19 + 0x10) = 0x0;
            *(r19 + 0x20) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)scheduleWithDelegate:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (*(int8_t *)(r0 + 0x18) != 0x0) {
            r20 = r0;
            if ([*(r0 + 0x8) count] == 0x0) {
                    [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:r2 priority:r3 paused:r4];
            }
            [*(r20 + 0x8) enqueue:r19];
    }
    else {
            [r19 execute];
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 finishedExecuting];
            }
    }
    return;
}

-(void)scheduleWithCallback:(void *)arg2 {
    [self scheduleWithDelegate:[[[CallbackDelegate alloc] initWithCallback:arg2] autorelease]];
    return;
}

-(void)unscheduleWithDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([*(self + 0x8) containsObject:r2] != 0x0) {
            [*(r19 + 0x8) removeObject:r20];
    }
    if ([*(r19 + 0x8) count] == 0x0) {
            [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r2];
    }
    return;
}

-(void)unscheduleAll {
    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:self];
    [*(self + 0x8) removeAllObjects];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r2];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x18) = arg2;
    return;
}

-(bool)isEnabled {
    r0 = *(int8_t *)(self + 0x18) & 0x1;
    return r0;
}

-(void)update:(double)arg2 {
    r31 = r31 - 0x80;
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
    r19 = self;
    if (*(int32_t *)(self + 0x10) <= 0x0) goto loc_1005b992c;

loc_1005b9900:
    r8 = *(int32_t *)(r19 + 0x14);
    if (r8 == 0x0) goto loc_1005b9914;

loc_1005b9908:
    *(int32_t *)(r19 + 0x14) = r8 - 0x1;
    return;

loc_1005b9914:
    asm { fcvt       d0, s0 };
    if (d0 < d8) {
            asm { fdiv       d0, d8, d0 };
            asm { fcvtzu     w8, d0 };
            *(int32_t *)(r19 + 0x14) = r8;
    }
    goto loc_1005b992c;

loc_1005b992c:
    r0 = [NSDate date];
    asm { fcvt       d0, s0 };
    var_68 = r0;
    if (d0 <= d8 || *(r19 + 0x20) <= 0x0) goto loc_1005b9980;

loc_1005b9964:
    d0 = d0 - d8;
    asm { fdiv       d0, d0, d1 };
    asm { fmaxnm     d0, d0, d1 };
    asm { fcvtzu     w28, d0 };
    if (r28 != 0x0) goto loc_1005b99ac;

loc_1005b9a30:
    [[NSDate date] timeIntervalSinceDate:var_68];
    *(r19 + 0x20) = d0;
    return;

loc_1005b99ac:
    r25 = @selector(respondsToSelector:);
    r0 = *(r19 + 0x8);
    r0 = [r0 dequeue];
    r27 = r0;
    [r0 execute];
    if (objc_msgSend(r27, r25) != 0x0) {
            [r27 finishedExecuting];
    }
    if ([*(r19 + 0x8) count] == 0x0) goto loc_1005b9a00;

loc_1005b99f4:
    r28 = r28 - 0x1;
    if (r28 != 0x0) goto loc_1005b99ac;
    goto loc_1005b9a30;

loc_1005b9a00:
    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r2];
    goto loc_1005b9a30;

loc_1005b9980:
    r28 = 0x1;
    goto loc_1005b99ac;
}

@end