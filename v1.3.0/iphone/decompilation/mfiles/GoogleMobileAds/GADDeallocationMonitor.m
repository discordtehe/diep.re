@implementation GADDeallocationMonitor

-(void *)initWithAssociatedObject:(void *)arg2 completionHandler:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_setAssociatedObject(r19, 0x1011dbde9, r21, 0x1);
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlocks));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.dealloc-monitor", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            if (r20 != 0x0) {
                    sub_100822370(*(r21 + r22), objc_retainBlock(r20));
                    [r23 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)addCompletionHandler:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_lockQueue;
    [r0 retain];
    var_28 = [self retain];
    dispatch_async(r20, &var_50);
    [var_28 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x130;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_completionBlocks;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(0x0 + r24 * 0x8);
                            (*(r0 + 0x10))(r0);
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [[&var_118 super] dealloc];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionBlocks, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end