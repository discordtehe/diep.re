@implementation FBAdKVOController

-(void *)initWithObserver:(void *)arg2 retainObserved:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_observer, r19);
            if (r21 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r21 = 0x205;
                    }
                    else {
                            r21 = 0x200;
                    }
            }
            r0 = [NSMapTable alloc];
            r0 = [r0 initWithKeyOptions:r21 valueOptions:0x0 capacity:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            pthread_mutex_init((int64_t *)&r20->_lock, 0x0);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithObserver:(void *)arg2 {
    r0 = [self initWithObserver:arg2 retainObserved:0x1];
    return r0;
}

-(void)dealloc {
    [self unobserveAll];
    pthread_mutex_destroy((int64_t *)&self->_lock);
    [[&var_20 super] dealloc];
    return;
}

-(void)_observe:(void *)arg2 info:(void *)arg3 {
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
    r29 = &saved_fp;
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r21 = [r19 retain];
            r24 = (int64_t *)&r25->_lock;
            pthread_mutex_lock(r24);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
            r0 = *(r25 + r26);
            r0 = [r0 objectForKey:r21];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 member:r20];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    pthread_mutex_unlock(r24);
            }
            else {
                    if (r22 == 0x0) {
                            r0 = [NSMutableSet set];
                            r29 = r29;
                            r22 = [r0 retain];
                            [*(r25 + r26) setObject:r2 forKey:r3];
                    }
                    [r22 addObject:r20];
                    pthread_mutex_unlock(r24);
                    r0 = [_FBAdKVOSharedController sharedController];
                    r0 = [r0 retain];
                    [r0 observe:r21 info:r20];
                    [r0 release];
            }
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)_unobserve:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            pthread_mutex_lock((int64_t *)&r20->_lock);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
            [[*(r20 + r23) objectForKey:r19] retain];
            [*(r20 + r23) removeObjectForKey:r19];
            pthread_mutex_unlock((int64_t *)&r20->_lock);
            r0 = [_FBAdKVOSharedController sharedController];
            r0 = [r0 retain];
            [r0 unobserve:r19 infos:r22];
            [r0 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)_unobserve:(void *)arg2 info:(void *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 retain];
            r20 = [r19 retain];
            r23 = (int64_t *)&r22->_lock;
            pthread_mutex_lock(r23);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
            r0 = *(r22 + r26);
            r0 = [r0 objectForKey:r20];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 member:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            if (r24 != 0x0) {
                    [r21 removeObject:r24];
                    if ([r21 count] == 0x0) {
                            [*(r22 + r26) removeObjectForKey:r2];
                    }
            }
            pthread_mutex_unlock(r23);
            r0 = [_FBAdKVOSharedController sharedController];
            r0 = [r0 retain];
            [r0 unobserve:r20 info:r24];
            [r0 release];
            [r24 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)debugDescription {
    r31 = r31 - 0x1c0;
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
    r29 = &saved_fp;
    var_160 = self;
    r0 = objc_loadWeakRetained((int64_t *)&self->_observer);
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 class];
            r0 = NSStringFromClass(r0);
            r29 = r29;
            r23 = [r0 retain];
    }
    else {
            r23 = 0x0;
    }
    r19 = [NSStringFromClass([var_160 class]) retain];
    r0 = [NSMutableString stringWithFormat:@"<%@:%p"];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    var_198 = r23;
    var_190 = r20;
    [r25 appendFormat:@" observer:<%@:%p>"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lock));
    var_1A0 = var_160 + r8;
    pthread_mutex_lock(var_160 + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
    var_168 = r8;
    if ([*(var_160 + r8) count] != 0x0) {
            [r25 appendString:@"\n  "];
    }
    var_120 = q0;
    r0 = *(var_160 + var_168);
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_188 = r1;
    var_180 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r28 = r0;
            r23 = *var_120;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_120 != r23) {
                                    objc_enumerationMutation(var_180);
                            }
                            r26 = *(var_128 + r22 * 0x8);
                            r0 = *(var_160 + var_168);
                            r0 = [r0 objectForKey:r26];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
                            r29 = r29;
                            [[r0 retain] retain];
                            [r20 enumerateObjectsUsingBlock:r2];
                            [r25 appendFormat:r2];
                            [r0 release];
                            [r21 release];
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r28);
                    r0 = objc_msgSend(var_180, var_188);
                    r28 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [var_180 release];
    pthread_mutex_unlock(var_1A0);
    [r25 appendString:@">"];
    [var_190 release];
    [var_198 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)_unobserveAll {
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
    pthread_mutex_lock((int64_t *)&self->_lock);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_objectInfosMap));
    [*(self + r22) copy];
    [*(self + r22) removeAllObjects];
    pthread_mutex_unlock((int64_t *)&self->_lock);
    r0 = [_FBAdKVOSharedController sharedController];
    r29 = &saved_fp;
    r19 = [r0 retain];
    var_110 = q0;
    r0 = [r21 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [r20 objectForKey:*(var_118 + r28 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            [r19 unobserve:r2 infos:r3];
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)observe:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 block:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg5 retain];
    if (r19 != 0x0) {
            r0 = [r20 length];
            if (r22 != 0x0 && r0 != 0x0) {
                    r23 = [[_FBAdKVOInfo alloc] initWithController:r21 keyPath:r20 options:r23 block:r22];
                    [r21 _observe:r19 info:r23];
                    [r23 release];
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)observe:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 action:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg5;
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = objc_loadWeakRetained((int64_t *)&r21->_observer);
    if (r19 != 0x0) {
            r0 = [r20 length];
            if (r22 != 0x0 && r0 != 0x0) {
                    r22 = [[_FBAdKVOInfo alloc] initWithController:r21 keyPath:r20 options:r23 action:r22];
                    [r21 _observe:r19 info:r22];
                    [r22 release];
            }
    }
    [r24 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)observe:(void *)arg2 keyPaths:(void *)arg3 options:(unsigned long long)arg4 block:(void *)arg5 {
    r31 = r31 - 0x140;
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
    r20 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r23 = [arg5 retain];
    if (r19 != 0x0) {
            r0 = [r22 count];
            if (r23 != 0x0 && r0 != 0x0) {
                    var_110 = q0;
                    var_128 = r22;
                    r0 = [r22 retain];
                    r24 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r26 = r0;
                            r28 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            [r21 observe:r2 keyPath:r3 options:r4 block:r5];
                                            r22 = r22 + 0x1;
                                    } while (r22 < r26);
                                    r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r26 = r0;
                            } while (r0 != 0x0);
                    }
                    [r24 release];
                    r22 = var_128;
            }
    }
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)unobserve:(void *)arg2 keyPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[_FBAdKVOInfo alloc] initWithController:self keyPath:r19];
    [r19 release];
    [self _unobserve:r21 info:r22];
    [r21 release];
    [r22 release];
    return;
}

-(void)observe:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 context:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg5;
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r20 length] != 0x0) {
            r22 = [[_FBAdKVOInfo alloc] initWithController:r21 keyPath:r20 options:r23 context:r22];
            [r21 _observe:r19 info:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)observe:(void *)arg2 keyPaths:(void *)arg3 options:(unsigned long long)arg4 action:(void *)arg5 {
    r31 = r31 - 0x140;
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
    r20 = arg5;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = objc_loadWeakRetained((int64_t *)&r22->_observer);
    if (r19 != 0x0) {
            r0 = [r23 count];
            if (r20 != 0x0 && r0 != 0x0) {
                    var_130 = r24;
                    stack[-312] = r23;
                    var_110 = q0;
                    r0 = [r23 retain];
                    r25 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r27 = r0;
                            r24 = *var_110;
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(r25);
                                            }
                                            [r22 observe:r2 keyPath:r3 options:r4 action:r5];
                                            r23 = r23 + 0x1;
                                    } while (r23 < r27);
                                    r0 = [r25 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r27 = r0;
                            } while (r0 != 0x0);
                    }
                    [r25 release];
                    r24 = var_130;
                    r23 = stack[-312];
            }
    }
    var_60 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)observe:(void *)arg2 keyPaths:(void *)arg3 options:(unsigned long long)arg4 context:(void *)arg5 {
    r31 = r31 - 0x140;
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
    r20 = arg5;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    if (r19 != 0x0 && [r23 count] != 0x0) {
            var_110 = q0;
            var_128 = r23;
            r0 = [r23 retain];
            r24 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r26 = r0;
                    r28 = *var_110;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(r24);
                                    }
                                    [r22 observe:r2 keyPath:r3 options:r4 context:r5];
                                    r23 = r23 + 0x1;
                            } while (r23 < r26);
                            r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [r24 release];
            r23 = var_128;
    }
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)unobserveAll {
    [self _unobserveAll];
    return;
}

-(void)unobserve:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 _unobserve:r2];
    }
    return;
}

-(void *)observer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_observer);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_observer);
    objc_storeStrong((int64_t *)&self->_objectInfosMap, 0x0);
    return;
}

+(void *)controllerWithObserver:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FBAdKVOController alloc] initWithObserver:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

@end