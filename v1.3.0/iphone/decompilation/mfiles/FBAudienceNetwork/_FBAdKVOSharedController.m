@implementation _FBAdKVOSharedController

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSHashTable alloc];
            r0 = [r0 initWithOptions:0x205 capacity:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_infos));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            pthread_mutex_init((int64_t *)&r19->_mutex, 0x0);
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    pthread_mutex_destroy((int64_t *)&self->_mutex);
    [[&var_20 super] dealloc];
    return;
}

-(void)observe:(void *)arg2 info:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            pthread_mutex_lock((int64_t *)&r21->_mutex);
            [r21->_infos addObject:r20];
            pthread_mutex_unlock((int64_t *)&r21->_mutex);
            [r19 addObserver:r21 forKeyPath:r20->_keyPath options:r20->_options context:r20];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            r9 = *(int8_t *)(r20 + r8);
            if (r9 != 0x2) {
                    if (r9 == 0x0) {
                            *(int8_t *)(r20 + r8) = 0x1;
                    }
            }
            else {
                    [r19 removeObserver:r21 forKeyPath:r20->_keyPath context:r20];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)unobserve:(void *)arg2 info:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            pthread_mutex_lock((int64_t *)&r21->_mutex);
            [r21->_infos removeObject:r20];
            pthread_mutex_unlock((int64_t *)&r21->_mutex);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            r8 = r20 + r8;
            if (*(int8_t *)r8 == 0x1) {
                    [r19 removeObserver:r21 forKeyPath:r20->_keyPath context:r20];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
                    r8 = r20 + r8;
            }
            *(int8_t *)r8 = 0x2;
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)debugDescription {
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
    r0 = [self class];
    r0 = NSStringFromClass(r0);
    r0 = [r0 retain];
    var_128 = [[NSMutableString stringWithFormat:@"<%@:%p"] retain];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mutex));
    var_130 = self + r8;
    pthread_mutex_lock(self + r8);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_infos));
    r0 = [NSMutableArray arrayWithCapacity:[*(self + r19) count]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    var_110 = q0;
    r0 = *(self + r19);
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r22);
                            }
                            r26 = @selector(addObject:);
                            r0 = *(var_118 + r20 * 0x8);
                            r0 = [r0 debugDescription];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r26);
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    r19 = var_128;
    [r19 appendFormat:@" contexts:%@"];
    pthread_mutex_unlock(var_130);
    [r19 appendString:@">"];
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_infos, 0x0);
    return;
}

+(void *)sharedController {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddab0 != -0x1) {
            dispatch_once(0x1011ddab0, 0x100eaa3d8);
    }
    r0 = *0x1011ddab8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    pthread_mutex_lock((int64_t *)&self->_mutex);
    r0 = self->_infos;
    r0 = [r0 member:arg5];
    r29 = &saved_fp;
    r22 = [r0 retain];
    pthread_mutex_unlock((int64_t *)&self->_mutex);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r22->_controller);
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r23 observer];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            r26 = (int64_t *)&r22->_block;
                            if (*r26 != 0x0) {
                                    r25 = [r21 retain];
                                    if (r19 != 0x0) {
                                            r26 = [[NSMutableDictionary dictionaryWithObject:r19 forKey:@"FBAdKVONotificationKeyPathKey"] retain];
                                            if (r25 != 0x0) {
                                                    [r26 addEntriesFromDictionary:r25];
                                            }
                                            r27 = [r26 copy];
                                            [r25 release];
                                            [r26 release];
                                            r26 = (int64_t *)&r22->_block;
                                            r25 = r27;
                                    }
                                    else {
                                            r27 = r25;
                                    }
                                    r0 = *r26;
                                    (*(r0 + 0x10))(r0, r24, r20, r27);
                                    [r25 release];
                            }
                            else {
                                    if (r22->_action != 0x0) {
                                            [r24 performSelector:r2 withObject:r21 withObject:r20];
                                    }
                                    else {
                                            [r24 observeValueForKeyPath:r19 ofObject:r20 change:r21 context:r22->_context];
                                    }
                            }
                    }
                    [r24 release];
            }
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)unobserve:(void *)arg2 infos:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r20 = self;
    var_1E8 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r23 = (int64_t *)&r20->_mutex;
            pthread_mutex_lock(r23);
            var_190 = q0;
            var_1F8 = r19;
            r0 = [r19 retain];
            r24 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r25 = r0;
                    r21 = *var_190;
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_infos));
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_190 != r21) {
                                            objc_enumerationMutation(r24);
                                    }
                                    [*(r20 + r27) removeObject:r2];
                                    r19 = r19 + 0x1;
                            } while (r19 < r25);
                            r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [r24 release];
            pthread_mutex_unlock(r23);
            var_1D0 = q0;
            r0 = [r24 retain];
            r23 = r0;
            var_1F0 = r28;
            r0 = objc_msgSend(r0, r28);
            if (r0 != 0x0) {
                    r24 = r0;
                    r27 = *var_1D0;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_1D0 != r27) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r26 = *(var_1D8 + r19 * 0x8);
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
                                    r8 = r26 + r8;
                                    if (*(int8_t *)r8 == 0x1) {
                                            [var_1E8 removeObserver:r2 forKeyPath:r3 context:r4];
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
                                            r8 = r26 + r8;
                                    }
                                    *(int8_t *)r8 = 0x2;
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r0 = objc_msgSend(r23, var_1F0);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [r23 release];
            r19 = var_1F8;
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    [var_1E8 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end