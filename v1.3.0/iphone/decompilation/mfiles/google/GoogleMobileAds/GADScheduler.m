@implementation GADScheduler

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithInterval:(double)arg2 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_tasks));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_interval = d8;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    r0 = *(self + r21);
    r0 = [r0 retain];
    *(self + r21) = 0x0;
    [r0 release];
    [r0 retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_58 super] dealloc];
    return;
}

-(void)scheduleOnQueue:(void *)arg2 block:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r0 = [GADSchedulerTask alloc];
            r0 = [r0 init];
            [r0 setQueue:r19];
            [r0 setBlock:r21];
            [r21 release];
            sub_100822370(r20->_tasks, r0);
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)start {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    if (*(r19 + r21) == 0x0) {
            objc_initWeak(&stack[-72], r19);
            r20 = &var_60 + 0x20;
            asm { fdiv       d9, d8, d0 };
            objc_copyWeak(r20, &stack[-72]);
            r0 = sub_100802050(0x1, &var_60);
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_destroyWeak(r20);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void)executeBlocks {
    r31 = r31 - 0x130;
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
    r29 = &saved_fp;
    r0 = self->_tasks;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r24 = *(0x0 + r27 * 0x8);
                            r25 = [[r24 queue] retain];
                            r0 = [r24 block];
                            r29 = r29;
                            dispatch_async(r25, [r0 retain]);
                            [r24 release];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)stop {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(double)interval {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_tasks, 0x0);
    return;
}

@end