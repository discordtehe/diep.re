@implementation USRVVolumeChange

+(void)stopObserving {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1b90 != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 removeObserver:*0x1011d1b90 forKeyPath:@"outputVolume"];
            [r0 release];
            r0 = *0x1011d1b90;
            *0x1011d1b90 = 0x0;
            [r0 release];
    }
    return;
}

+(void)startObserving {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1b90 == 0x0) {
            r0 = [USRVVolumeChange alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b90;
            *0x1011d1b90 = r0;
            [r8 release];
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 addObserver:*0x1011d1b90 forKeyPath:@"outputVolume" options:0x1 context:*0x1011a93d0];
            [r0 release];
    }
    return;
}

+(void)registerDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011d1b98 == 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b98;
            *0x1011d1b98 = r0;
            [r8 release];
    }
    if (([*0x1011d1b98 containsObject:r2] & 0x1) == 0x0) {
            [USRVVolumeChange startObserving];
            [*0x1011d1b98 addObject:r2];
    }
    [r19 release];
    return;
}

+(void)unregisterDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011d1b98 != 0x0) {
            [*0x1011d1b98 removeObject:r19];
            if (*0x1011d1b98 == 0x0 || [*0x1011d1b98 count] == 0x0) {
                    [USRVVolumeChange stopObserving];
            }
    }
    else {
            [USRVVolumeChange stopObserving];
    }
    [r19 release];
    return;
}

+(void)clearAllDelegates {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d1b98 != 0x0) {
            [*0x1011d1b98 removeAllObjects];
            r0 = *0x1011d1b98;
            *0x1011d1b98 = 0x0;
            [r0 release];
    }
    [USRVVolumeChange stopObserving];
    return;
}

+(void)triggerDelegates:(float)arg2 {
    r31 = r31 - 0x140;
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
    if (*0x1011d1b98 != 0x0) {
            r0 = *0x1011d1b98;
            var_118 = q0;
            r0 = [r0 retain];
            r19 = r0;
            r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r21 != 0x0) {
                    r25 = *var_118;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_118 != r25) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r23 = @selector(respondsToSelector:);
                                    r24 = *(var_120 + r28 * 0x8);
                                    if (objc_msgSend(r24, r23) != 0x0) {
                                            [r24 onVolumeChanged:r2];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r21);
                            r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r21 != 0x0);
            }
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r4 = arg4;
    if (*qword_1011a93d0 == arg5) {
            r2 = **_NSKeyValueChangeNewKey;
            r0 = [r4 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            [USRVVolumeChange triggerDelegates:r2];
    }
    return;
}

@end