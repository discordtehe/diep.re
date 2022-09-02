@implementation USRVNotificationObserver

+(void)removeObserver:(void *)arg2 targetObject:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2 name:r3 object:r4];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

+(void)unregisterNotificationObserver {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

+(void)addObserver:(void *)arg2 userInfoKeys:(void *)arg3 targetObject:(void *)arg4 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    [r21 removeObserver:r19 targetObject:0x0];
    if (*0x1011d1ad0 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1ad0;
            *0x1011d1ad0 = r0;
            [r8 release];
    }
    [*0x1011d1ad0 removeObjectForKey:r2];
    if (r20 != 0x0) {
            [*0x1011d1ad0 setObject:r2 forKey:r3];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)nsNotificationReceived:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r19 = [arg2 retain];
    r27 = [[NSMutableDictionary alloc] init];
    r0 = [r19 userInfo];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = *0x1011d1ad0;
            r26 = [[r19 name] retain];
            r0 = [r25 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r26 release];
            [r24 release];
            if (r0 != 0x0) {
                    r22 = @selector(objectForKey:);
                    var_120 = r27;
                    var_108 = q0;
                    r24 = *0x1011d1ad0;
                    r25 = [[r19 name] retain];
                    r0 = objc_msgSend(r24, r22);
                    r29 = r29;
                    r20 = [r0 retain];
                    [r25 release];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r1;
                    var_128 = r20;
                    r25 = objc_msgSend(r20, r1);
                    if (r25 != 0x0) {
                            r20 = *var_108;
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*var_108 != r20) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r22 = @selector(objectForKey:);
                                            r21 = @selector(userInfo);
                                            r27 = *(var_110 + r23 * 0x8);
                                            r0 = objc_msgSend(r19, r21);
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r0 = objc_msgSend(r0, r22);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            [r28 release];
                                            if (r0 != 0x0) {
                                                    r26 = @selector(setObject:forKey:);
                                                    r22 = @selector(objectForKey:);
                                                    r0 = [r19 userInfo];
                                                    r0 = [r0 retain];
                                                    r0 = objc_msgSend(r0, r22);
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(var_120, r26);
                                                    [r28 release];
                                                    [r24 release];
                                            }
                                            r23 = r23 + 0x1;
                                    } while (r23 < r25);
                                    r25 = objc_msgSend(var_128, var_130);
                            } while (r25 != 0x0);
                    }
                    [var_128 release];
                    r27 = var_120;
            }
    }
    else {
            [r24 release];
    }
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[USRVWebViewApp getCurrentApp] retain];
            r22 = [sub_1000d0a50() retain];
            r23 = [sub_1000d1038() retain];
            r24 = [[r19 name] retain];
            [r21 sendEvent:r22 category:r23 param1:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end