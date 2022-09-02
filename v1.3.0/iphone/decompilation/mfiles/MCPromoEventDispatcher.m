@implementation MCPromoEventDispatcher

+(void *)sharedMCPromoEventDispatcher {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011dc960;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011dc960 = r0;
    }
    return r0;
}

+(void)releaseSharedMCPromoEventDispatcher {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc960 != 0x0) {
            [*0x1011dc960 release];
            *0x1011dc960 = 0x0;
    }
    return;
}

-(void)eventReceived:(void *)arg2 {
    return;
}

-(void)_registerEvent:(void *)arg2 {
    [arg2 pointerValue];
    [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
    return;
}

-(void)registerForEvent:(void *)arg2 observer:(void *)arg3 selector:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r4;
            r21 = r3;
            r22 = r2;
            r19 = r0;
            r0 = [r2 count];
            if (r21 != 0x0 && r0 != 0x0) {
                    [@"EVENT_" stringByAppendingString:[r22 componentsJoinedByString:@"_"]];
                    r20 = [NSValue valueWithPointer:&var_38];
                    if ([NSThread isMainThread] != 0x0) {
                            [r19 _registerEvent:r2];
                    }
                    else {
                            [r19 performSelectorOnMainThread:@selector(_registerEvent:) withObject:r20 waitUntilDone:0x1];
                    }
            }
    }
    return;
}

-(void)_unregisterObserverForAllEvents:(void *)arg2 {
    [[NSNotificationCenter defaultCenter] removeObserver:r2];
    return;
}

-(void)_unregisterForEventAndObserver:(void *)arg2 {
    r20 = [NSNotificationCenter defaultCenter];
    [arg2 objectAtIndex:0x1];
    [arg2 objectAtIndex:0x0];
    [r20 removeObserver:r2 name:r3 object:r4];
    return;
}

-(void)unregisterForEvent:(void *)arg2 observer:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r3;
            r21 = r2;
            r19 = r0;
            r0 = [r2 count];
            if (r20 != 0x0 && r0 != 0x0) {
                    r21 = [@"EVENT_" stringByAppendingString:[r21 componentsJoinedByString:@"_"]];
                    if ([NSThread isMainThread] != 0x0) {
                            [r19 _unregisterForEventAndObserver:[NSArray arrayWithObjects:r21]];
                    }
                    else {
                            [r19 performSelectorOnMainThread:@selector(_unregisterForEventAndObserver:) withObject:[NSArray arrayWithObjects:r21] waitUntilDone:0x1];
                    }
            }
    }
    return;
}

-(void)unregisterObserverForAllEvents:(void *)arg2 {
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
            if ([NSThread isMainThread] != 0x0) {
                    [r20 _unregisterObserverForAllEvents:r2];
            }
            else {
                    [r20 performSelectorOnMainThread:@selector(_unregisterObserverForAllEvents:) withObject:r19 waitUntilDone:0x1];
            }
    }
    return;
}

-(void)postEvent:(void *)arg2 {
    [self postEvent:arg2 data:[NSDictionary dictionary]];
    return;
}

-(void)postEvent:(void *)arg2 data:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    if (r2 != 0x0) {
            r21 = r3;
            r19 = r2;
            if ([r2 count] != 0x0) {
                    if (r21 == 0x0) {
                            r21 = [NSDictionary dictionary];
                    }
                    r0 = [NSMutableDictionary dictionaryWithDictionary:r21];
                    r21 = r0;
                    [r0 setObject:r2 forKey:r3];
                    if (objc_msgSend(r19, r20) != 0x0) {
                            r22 = 0x0;
                            r28 = @"EVENT_";
                            do {
                                    [r28 stringByAppendingString:[r19 objectAtIndex:r22]];
                                    [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3 userInfo:r4];
                                    r28 = [r28 stringByAppendingString:@"_"];
                                    r22 = r22 + 0x1;
                            } while (objc_msgSend(r19, r20) > r22);
                    }
            }
    }
    return;
}

@end