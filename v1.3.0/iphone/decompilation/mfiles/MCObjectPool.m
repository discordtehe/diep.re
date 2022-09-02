@implementation MCObjectPool

+(void *)cleanAllObjectsNotification {
    return @"_MC_OBJ_POOL_CLEAN_ALL_";
}

-(void *)initWithCreationCallbackSelector:(void *)arg2 creationCallbackTarget:(void *)arg3 {
    r0 = [self initWithCreationCallbackSelector:arg2 creationCallbackTarget:arg3 cleanCallbackSelector:0x0 cleanCallbackTarget:0x0 cleanPhase:0x1];
    return r0;
}

-(void *)initWithCreationCallbackSelector:(void *)arg2 creationCallbackTarget:(void *)arg3 cleanCallbackSelector:(void *)arg4 cleanCallbackTarget:(void *)arg5 cleanPhase:(int)arg6 {
    r31 = r31 - 0x60;
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
    r20 = arg6;
    r23 = arg5;
    r21 = arg4;
    r22 = arg3;
    r24 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x10) = [[NSMutableArray arrayWithCapacity:0xa] retain];
            *(r19 + 0x68) = [[NSMutableSet setWithCapacity:0xa] retain];
            *(int128_t *)(r19 + 0x18) = r22;
            *(int128_t *)(r19 + 0x20) = r24;
            *(r19 + 0x28) = [r22 methodForSelector:r2];
            if (r21 != 0x0 && r23 != 0x0) {
                    *(int128_t *)(r19 + 0x38) = r23;
                    *(int128_t *)(r19 + 0x40) = r21;
                    *(r19 + 0x48) = [r22 methodForSelector:r2];
            }
            *(int32_t *)(r19 + 0x58) = r20;
            [r19 cleanAllObjectsOnNotification:[MCObjectPool cleanAllObjectsNotification]];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCreationCallback:(void * *)arg2 cleanCallback:(void * *)arg3 cleanPhase:(int)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            *(r19 + 0x10) = [[NSMutableArray arrayWithCapacity:0x1] retain];
            *(r19 + 0x68) = [[NSMutableSet setWithCapacity:0xa] retain];
            *(r19 + 0x30) = r22;
            if (r21 != 0x0) {
                    *(r19 + 0x50) = r21;
            }
            *(int32_t *)(r19 + 0x58) = r20;
            [r19 cleanAllObjectsOnNotification:[MCObjectPool cleanAllObjectsNotification]];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCreationCallback:(void * *)arg2 {
    r0 = [self initWithCreationCallback:arg2 cleanCallback:0x0 cleanPhase:0x1];
    return r0;
}

-(void *)createObject:(bool)arg2 {
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = r0;
    r8 = *(r0 + 0x30);
    if (r8 == 0x0) goto loc_1005ec08c;

loc_1005ec084:
    r0 = (r8)(r0, r1, r2);
    goto loc_1005ec09c;

loc_1005ec09c:
    r21 = r0;
    if (r0 != 0x0) {
            [r21 retain];
            r22 = *(r19 + 0x8);
            [NSNumber numberWithBool:r20];
            [NSNumber numberWithUnsignedInteger:r21];
            [r22 setObject:r2 forKey:r3];
            if (r20 != 0x0) {
                    [*(r19 + 0x10) addObject:r2];
            }
    }
    goto loc_1005ec120;

loc_1005ec120:
    r0 = r21;
    return r0;

loc_1005ec08c:
    r8 = *(r19 + 0x28);
    if (r8 == 0x0) goto loc_1005ec11c;

loc_1005ec094:
    r0 = *(int128_t *)(r19 + 0x18);
    r0 = (r8)(r0, *(int128_t *)(r19 + 0x20));
    goto loc_1005ec09c;

loc_1005ec11c:
    r21 = 0x0;
    goto loc_1005ec120;
}

-(void *)fetchObject {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self checkPreferredMinimumInstances];
    r0 = *(r19 + 0x10);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_1005ec1a8;

loc_1005ec170:
    r0 = *(r19 + 0x10);
    r0 = [r0 lastObject];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [NSNumber numberWithUnsignedInteger:r20];
    }
    else {
            r21 = 0x0;
    }
    r0 = *(r19 + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0 || [r0 boolValue] == 0x0) goto loc_1005ec250;

loc_1005ec208:
    [*(r19 + 0x8) setObject:@(NO) forKey:r21];
    [*(r19 + 0x10) removeLastObject];
    goto loc_1005ec1c0;

loc_1005ec1c0:
    if (*(int32_t *)(r19 + 0x58) == 0x0) {
            r8 = *(r19 + 0x50);
            if (r8 != 0x0) {
                    (r8)(r20);
            }
            else {
                    r8 = *(r19 + 0x48);
                    if (r8 != 0x0) {
                            (r8)(*(int128_t *)(r19 + 0x38), *(int128_t *)(r19 + 0x40), r20);
                    }
            }
    }
    goto loc_1005ec26c;

loc_1005ec26c:
    r0 = r20;
    return r0;

loc_1005ec250:
    r20 = 0x0;
    goto loc_1005ec26c;

loc_1005ec1a8:
    r20 = [r19 createObject:0x0];
    goto loc_1005ec1c0;
}

-(void)dealloc {
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
    r19 = self;
    [self cleanAllObjects];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r20 = [NSNotificationCenter defaultCenter];
    var_110 = q0;
    r21 = *(r19 + 0x68);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 removeObserver:r2 name:r3 object:r4];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + 0x68);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x68) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getObject {
    r0 = [self fetchObject];
    return r0;
}

-(void)releaseObject:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            r21 = [NSNumber numberWithUnsignedInteger:r2];
            r0 = *(r20 + 0x8);
            r0 = [r0 objectForKey:r2];
            if (r0 != 0x0 && ([r0 boolValue] & 0x1) == 0x0) {
                    [*(r20 + 0x10) addObject:r19];
                    [*(r20 + 0x8) setObject:@(YES) forKey:r21];
                    if (*(int32_t *)(r20 + 0x58) == 0x1) {
                            r1 = *(r20 + 0x50);
                            if (r1 != 0x0) {
                                    (r1)(r19, r1);
                            }
                            else {
                                    r3 = *(r20 + 0x48);
                                    if (r3 != 0x0) {
                                            (r3)(*(int128_t *)(r20 + 0x38), *(int128_t *)(r20 + 0x40), r19, r3);
                                    }
                            }
                    }
            }
    }
    return;
}

-(bool)hasObject:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r19 = *(r0 + 0x8);
            [NSNumber numberWithUnsignedInteger:r2];
            r0 = [r19 objectForKey:r2];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)cleanUnusedObjects {
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
    r19 = self;
    r21 = [*(self + 0x8) count];
    r0 = *(r19 + 0x10);
    r0 = [r0 count];
    r8 = *(r19 + 0x60);
    r8 = r21 - r8;
    if (r8 >= 0x0) {
            if (r8 > r0) {
                    if (!CPU_FLAGS & A) {
                            r26 = r8;
                    }
                    else {
                            r26 = r0;
                    }
            }
            if (r26 != 0x0) {
                    do {
                            r25 = [*(r19 + 0x10) lastObject];
                            [*(r19 + 0x10) removeLastObject];
                            [*(r19 + 0x8) removeObjectForKey:[NSNumber numberWithUnsignedInteger:r25]];
                            [r25 release];
                            r26 = r26 - 0x1;
                    } while (r26 != 0x0);
            }
    }
    return;
}

-(void)checkPreferredMinimumInstances {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 count];
    r8 = *(r19 + 0x60);
    if (r8 >= r0 && !CPU_FLAGS & E) {
            r21 = r0 - r8;
            do {
                    [r19 createObject:r2];
                    r21 = r21 + 0x1;
            } while (r21 < 0x0);
    }
    return;
}

-(void)cleanAllObjectsOnNotification:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && ([*(r20 + 0x68) containsObject:r2] & 0x1) == 0x0) {
                    [*(r20 + 0x68) addObject:r19];
                    [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
            }
    }
    return;
}

-(void)setPreferredMinimumInstances:(unsigned long long)arg2 {
    *(self + 0x60) = arg2;
    [self checkPreferredMinimumInstances];
    return;
}

-(void)cleanAllObjects {
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
    r19 = self;
    var_110 = q0;
    r20 = *(self + 0x8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(var_118 + r28 * 0x8);
                            if (r0 != 0x0) {
                                    r0 = [r0 unsignedIntegerValue];
                            }
                            [r0 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x8) removeAllObjects];
    [*(r19 + 0x10) removeAllObjects];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)allocatedInstances {
    r0 = *(self + 0x8);
    r0 = [r0 count];
    return r0;
}

-(unsigned int)getNumAvailableInstances {
    r0 = [self availableInstances];
    return r0;
}

-(unsigned long long)availableInstances {
    r0 = *(self + 0x10);
    r0 = [r0 count];
    return r0;
}

-(unsigned int)getNumAllocatedInstances {
    r0 = [self allocatedInstances];
    return r0;
}

-(unsigned long long)preferredMinimumInstances {
    r0 = *(self + 0x60);
    return r0;
}

@end