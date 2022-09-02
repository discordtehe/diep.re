@implementation GADNotificationCenter

+(void *)sharedInstance {
    if (*qword_1011dbe88 != -0x1) {
            dispatch_once(0x1011dbe88, 0x100e9a610);
    }
    r0 = *0x1011dbe90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x1f0;
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
    r0 = [[&var_148 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = @class(NSNotificationCenter);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_notificationCenter));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.events", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_handledNotificationIDs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            var_1C0 = objc_msgSend([NSMutableArray alloc], r20);
            objc_initWeak(&stack[-352], r19);
            r22 = [[NSArray arrayWithObjects:r29 - 0xb8 count:0xa] retain];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            var_1D8 = r19;
            r29 = r29;
            r21 = [r0 retain];
            r0 = [r22 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1D0 = r1;
            var_1C8 = r0;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    r24 = &var_1B8 + 0x20;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_1C8);
                                    }
                                    objc_copyWeak(r24, &stack[-352]);
                                    r0 = objc_msgSend(r21, r26);
                                    r29 = r29;
                                    sub_100822370(var_1C0, [r0 retain]);
                                    [r27 release];
                                    objc_destroyWeak(r24);
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r25 = objc_msgSend(var_1C8, var_1D0);
                    } while (r25 != 0x0);
            }
            [var_1C8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r19 = var_1D8;
            r0 = *(r19 + r8);
            *(r19 + r8) = var_1C0;
            [r0 release];
            [r21 release];
            [var_1C8 release];
            objc_destroyWeak(&stack[-352]);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)notificationCenter {
    r0 = self->_notificationCenter;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
    r20 = [[NSNotificationCenter defaultCenter] retain];
    r0 = r19->_observers;
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 removeObserver:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [[&var_128 super] dealloc];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)postNotificationName:(void *)arg2 object:(void *)arg3 userInfo:(void *)arg4 {
    r31 = r31 - 0xe0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    if (r20 == 0x0) goto loc_100883f14;

loc_100883d24:
    r0 = sub_1008839f4();
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if ([r19 hasPrefix:@"com.google.mt"] == 0x0 || ([NSThread isMainThread] & 0x1) != 0x0) goto loc_100883d74;

loc_100883f1c:
    sub_1007ce06c(0x0, @"Main thread notification posted on a background thread. Name: %@");
    var_60 = [r22 retain];
    var_58 = [r19 retain];
    var_50 = [r20 retain];
    r21 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    [r21 release];
    [var_50 release];
    [var_58 release];
    r0 = var_60;
    goto loc_100883fc0;

loc_100883fc0:
    [r0 release];
    goto loc_100883fc4;

loc_100883fc4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100883d74:
    [r22->_notificationCenter postNotificationName:r19 object:r20 userInfo:r21];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolForKey:*0x100e9b900];
    [r0 release];
    if (r24 == 0x0) goto loc_100883fc4;

loc_100883de0:
    r0 = [GADEventContext rootContext];
    r29 = r29;
    r23 = [r0 retain];
    if ([r20 conformsToProtocol:@protocol(GADEventContextSource)] != 0x0) {
            r0 = [r20 context];
            r29 = r29;
            r24 = [r0 retain];
            [r23 release];
            r23 = r24;
    }
    r24 = [[r21 objectForKeyedSubscript:@"_events_uuid"] retain];
    r25 = r22->_lockQueue;
    var_A0 = [r19 retain];
    var_98 = [r22 retain];
    [r24 retain];
    var_88 = r23;
    [r23 retain];
    dispatch_async(r25, &var_C0);
    [var_88 release];
    [r24 release];
    [var_98 release];
    [var_A0 release];
    [r23 release];
    r0 = r22;
    goto loc_100883fc0;

loc_100883f14:
    r21 = r23;
    goto loc_100883fc4;
}

-(void *)addObserverForName:(void *)arg2 object:(void *)arg3 queue:(void *)arg4 usingBlock:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    if (r19 == 0x0) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r23 = [r23 retain];
    var_50 = r23;
    var_48 = r21;
    r21 = [r21 retain];
    var_40 = r20;
    r20 = [r20 retain];
    r0 = objc_retainBlock(&var_70);
    r23 = [r23->_notificationCenter addObserverForName:r19 object:r22 queue:0x0 usingBlock:r0];
    [r22 release];
    r22 = [r23 retain];
    [r0 release];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)removeEventObserver:(void *)arg2 {
    [self->_notificationCenter removeObserver:r2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_handledNotificationIDs, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_notificationCenter, 0x0);
    return;
}

@end