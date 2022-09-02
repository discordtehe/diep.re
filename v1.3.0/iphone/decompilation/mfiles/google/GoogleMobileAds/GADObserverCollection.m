@implementation GADObserverCollection

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
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)addObserverForName:(void *)arg2 object:(void *)arg3 queue:(void *)arg4 usingBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [GADNotificationCenter sharedInstance];
    r0 = [r0 retain];
    r25 = [r0 addObserverForName:r23 object:r22 queue:r21 usingBlock:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    r20 = [r25 retain];
    [r0 release];
    sub_100822430(self->_observers, r20);
    [r20 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x150;
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
    var_130 = self;
    r0 = self->_observers;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [GADNotificationCenter sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 removeEventObserver:r2];
                            [r26 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [[&var_128 super] dealloc];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end