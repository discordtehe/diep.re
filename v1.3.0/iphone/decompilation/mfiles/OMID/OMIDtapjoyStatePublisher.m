@implementation OMIDtapjoyStatePublisher

-(void *)initWithAdSessionRegistry:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_adSessionRegistry, r21);
            r0 = dispatch_queue_create(0x0, 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)publishState:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r21 = [arg2 retain];
    r19 = [arg3 copy];
    r22 = self->_queue;
    [r21 retain];
    var_40 = r19;
    [r19 retain];
    dispatch_async(r22, &var_70);
    [var_40 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)publishEmptyStateToSessions:(void *)arg2 timestamp:(double)arg3 {
    [[arg2 copy] retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [r0 release];
    [r19 release];
    return;
}

-(void)cleanupCache {
    dispatch_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_28);
    return;
}

-(void)publishNativeViewStateCommand:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r31 = r31 - 0x170;
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
    v8 = v0;
    var_148 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = self->_adSessionRegistry;
    r0 = [r0 activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_150 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r22 = *(0x0 + r27 * 0x8);
                            r0 = [r22 identifier];
                            r29 = r29;
                            r19 = [r0 retain];
                            r21 = [r20 containsObject:r19];
                            [r19 release];
                            if (r21 != 0x0) {
                                    [r22 setLastPublishedViewStateWasPopulated:0x1];
                                    r0 = [r22 statePublisher];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 publishNativeViewStateWithCommand:r2 timestamp:r3];
                                    [r19 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = objc_msgSend(var_130, var_150);
            } while (r23 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [var_130 release];
    [r20 release];
    [var_148 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishEmptyStateCommand:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r31 = r31 - 0x170;
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
    v8 = v0;
    var_150 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = self->_adSessionRegistry;
    r0 = [r0 activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_158 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r19 = *(0x0 + r21 * 0x8);
                            r0 = [r19 identifier];
                            r29 = r29;
                            r27 = [r0 retain];
                            r28 = [r20 containsObject:r27];
                            [r27 release];
                            if (r28 != 0x0 && [r19 lastPublishedViewStateWasPopulated] != 0x0) {
                                    [r19 setLastPublishedViewStateWasPopulated:r2];
                                    r0 = [r19 statePublisher];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 publishEmptyNativeViewStateWithCommand:r2 timestamp:r3];
                                    [r19 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r23 = objc_msgSend(var_130, var_158);
            } while (r23 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [var_130 release];
    [r20 release];
    [var_150 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)previousState {
    r0 = self->_previousState;
    return r0;
}

-(void *)adSessionRegistry {
    r0 = self->_adSessionRegistry;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSessionRegistry, 0x0);
    objc_storeStrong((int64_t *)&self->_previousState, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

@end