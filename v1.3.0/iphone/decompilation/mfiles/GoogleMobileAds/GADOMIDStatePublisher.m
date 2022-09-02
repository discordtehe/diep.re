@implementation GADOMIDStatePublisher

-(void *)initWithAdSessionRegistry:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeStrong((int64_t *)&var_8->_adSessionRegistry, 0x0);
            r0 = dispatch_queue_create("com.iab.omidStatePublisher.serial.queue", 0x0);
            r9 = var_8->_queue;
            var_8->_queue = r0;
            [r9 release];
    }
    var_38 = [var_8 retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_38;
    return r0;
}

-(void)publishState:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    var_30 = [0x0 copy];
    var_98 = self->_queue;
    [0x0 retain];
    [self retain];
    [var_30 retain];
    dispatch_async(var_98, &var_70);
    objc_storeStrong(&var_70 + 0x30, 0x0);
    objc_storeStrong(&var_70 + 0x28, 0x0);
    objc_storeStrong(&var_70 + 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x30, 0x0);
    objc_storeStrong(&saved_fp - 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    return;
}

-(void)publishEmptyStateToSessions:(void *)arg2 timestamp:(double)arg3 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    var_28 = [0x0 copy];
    var_80 = [objc_retainAutoreleaseReturnValue(*__dispatch_main_q) retain];
    [self retain];
    [var_28 retain];
    dispatch_async(var_80, &var_60);
    [var_80 release];
    objc_storeStrong(&var_60 + 0x28, 0x0);
    objc_storeStrong(&var_60 + 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    return;
}

-(void)cleanupCache {
    var_40 = self->_queue;
    [self retain];
    dispatch_async(var_40, &var_38);
    objc_storeStrong(&var_38 + 0x20, 0x0);
    return;
}

-(void)publishNativeViewStateHierarchy:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r31 = r31 - 0x1b0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    objc_storeStrong(&saved_fp - 0xb8, arg3);
    var_C0 = d0;
    r0 = [self->_adSessionRegistry activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_C8 = [r0 copy];
    [r0 release];
    memset(&stack[-288], zero_extend_64(0x0), 0x40);
    r0 = [var_C8 retain];
    r3 = r29 - 0x98;
    var_138 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-288] objects:r3 count:0x10];
    var_140 = r0;
    if (r0 != 0x0) {
            var_148 = *var_100;
            var_150 = &stack[-288] + 0x10;
            var_158 = 0x0;
            var_160 = var_140;
            do {
                    do {
                            var_168 = var_160;
                            var_170 = var_158;
                            if (**var_150 != var_148) {
                                    objc_enumerationMutation(var_138);
                            }
                            var_D0 = *(var_108 + var_170 * 0x8);
                            r0 = [var_D0 identifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_18C = [0x0 containsObject:r0];
                            [r0 release];
                            if ((var_18C & 0x1) != 0x0) {
                                    [var_D0 setLastPublishedViewStateWasPopulated:0x1];
                                    r0 = [var_D0 statePublisher];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 publishNativeViewStateWithHierarchy:0x0 timestamp:r3];
                                    [r0 release];
                            }
                            var_160 = var_168;
                            var_158 = var_170 + 0x1;
                    } while (var_170 + 0x1 < var_168);
                    r3 = r29 - 0x98;
                    r0 = [var_138 countByEnumeratingWithState:&stack[-288] objects:r3 count:0x10];
                    var_160 = r0;
                    var_158 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_138 release];
    objc_storeStrong(r29 - 0xc8, 0x0);
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishEmptyStateHierarchy:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r31 = r31 - 0x1b0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    objc_storeStrong(&saved_fp - 0xb8, arg3);
    var_C0 = d0;
    r0 = [self->_adSessionRegistry activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_C8 = [r0 copy];
    [r0 release];
    memset(&stack[-288], zero_extend_64(0x0), 0x40);
    r0 = [var_C8 retain];
    r3 = r29 - 0x98;
    var_138 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-288] objects:r3 count:0x10];
    var_140 = r0;
    if (r0 != 0x0) {
            var_148 = *var_100;
            var_150 = &stack[-288] + 0x10;
            var_158 = 0x0;
            var_160 = var_140;
            do {
                    do {
                            var_168 = var_160;
                            var_170 = var_158;
                            if (**var_150 != var_148) {
                                    objc_enumerationMutation(var_138);
                            }
                            var_D0 = *(var_108 + var_170 * 0x8);
                            r0 = [var_D0 identifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_18C = [0x0 containsObject:r0];
                            [r0 release];
                            if ((var_18C & 0x1) != 0x0) {
                                    if (([var_D0 lastPublishedViewStateWasPopulated] & 0x1) != 0x0) {
                                            [var_D0 setLastPublishedViewStateWasPopulated:0x0 & 0x1];
                                            r0 = [var_D0 statePublisher];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 publishEmptyNativeViewStateWithHierarchy:0x0 timestamp:r3];
                                            [r0 release];
                                    }
                            }
                            var_160 = var_168;
                            var_158 = var_170 + 0x1;
                    } while (var_170 + 0x1 < var_168);
                    r3 = r29 - 0x98;
                    r0 = [var_138 countByEnumeratingWithState:&stack[-288] objects:r3 count:0x10];
                    var_160 = r0;
                    var_158 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_138 release];
    objc_storeStrong(r29 - 0xc8, 0x0);
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    if (**___stack_chk_guard != var_18) {
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