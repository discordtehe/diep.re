@implementation GADOMIDAdSessionRegistry

+(void *)getInstance {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dbfd0 != -0x1) {
            dispatch_once(0x1011dbfd0, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dbfd8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r0 = [NSPointerArray weakObjectsPointerArray];
            r29 = r29;
            r0 = [r0 retain];
            r9 = var_8->_adSessions;
            var_8->_adSessions = r0;
            [r9 release];
            r0 = [NSMutableArray new];
            r9 = var_8->_activeAdSessions;
            var_8->_activeAdSessions = r0;
            [r9 release];
            r0 = [NSMutableArray new];
            r9 = var_8->_observers;
            var_8->_observers = r0;
            [r9 release];
    }
    var_30 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_30;
    return r0;
}

-(void *)activeAdSessions {
    r0 = self->_activeAdSessions;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adSessions {
    [self->_adSessions compact];
    r0 = [self->_adSessions allObjects];
    return r0;
}

-(void *)observers {
    r0 = self->_observers;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isActive {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if ([self->_activeAdSessions count] > 0x0) {
            if (CPU_FLAGS & A) {
                    r10 = 0x1;
            }
    }
    r0 = r10 & 0x1;
    return r0;
}

-(void)addAdSession:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    [self->_adSessions addPointer:var_18];
    [var_18 setDelegate:self];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)removeAdSession:(void *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    [var_8->_activeAdSessions removeObject:0x0];
    var_20 = 0x0;
    goto loc_1008cfe68;

loc_1008cfe68:
    if (var_20 >= [var_8->_adSessions count]) goto loc_1008cff7c;

loc_1008cfea8:
    r2 = var_20;
    r0 = [var_8->_adSessions pointerAtIndex:r2];
    r29 = r29;
    if ([r0 retain] == 0x0) {
            r2 = var_20;
            [var_8->_adSessions removePointerAtIndex:r2];
            var_2C = 0x2;
    }
    else {
            var_2C = 0x0;
    }
    r0 = objc_storeStrong(&var_28, 0x0);
    var_44 = var_2C;
    if (var_2C == 0x0) goto loc_1008cff6c;

loc_1008cff54:
    if (r9 != 0x0) {
            -[GADOMIDAdSessionRegistry addStateObserver:](r0, 0x0, r2);
    }
    else {
            objc_storeStrong(r29 - 0x18, 0x0);
    }
    return;

loc_1008cff6c:
    var_20 = var_20 + 0x1;
    goto loc_1008cfe68;

loc_1008cff7c:
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)addStateObserver:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    [self->_observers addObject:var_18];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_activeAdSessions, 0x0);
    objc_storeStrong((int64_t *)&self->_adSessions, 0x0);
    return;
}

-(void)adSessionDidStart:(void *)arg2 {
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffe0 - 0x250;
    r10 = *___stack_chk_guard;
    var_120 = self;
    r0 = objc_storeStrong(&var_130, arg2);
    var_131 = [var_120 isActive] & 0x1;
    [var_120->_activeAdSessions addObject:var_130];
    if ((var_131 & 0x1) == 0x0) {
            memset(&stack[-400], zero_extend_64(0x0), 0x40);
            r0 = [var_120->_observers retain];
            var_1E0 = r0;
            r0 = [r0 countByEnumeratingWithState:&stack[-400] objects:r29 - 0x98 count:0x10];
            var_1E8 = r0;
            if (r0 != 0x0) {
                    var_1F0 = *var_170;
                    var_1F8 = &stack[-400] + 0x10;
                    var_200 = 0x0;
                    var_208 = var_1E8;
                    do {
                            do {
                                    var_210 = var_208;
                                    var_218 = var_200;
                                    if (**var_1F8 != var_1F0) {
                                            objc_enumerationMutation(var_1E0);
                                    }
                                    [*(var_178 + var_218 * 0x8) adSessionRegistryDidBecomeActive];
                                    var_208 = var_210;
                                    var_200 = var_218 + 0x1;
                            } while (var_218 + 0x1 < var_210);
                            r0 = [var_1E0 countByEnumeratingWithState:&stack[-400] objects:r29 - 0x98 count:0x10];
                            var_208 = r0;
                            var_200 = 0x0;
                    } while (r0 != 0x0);
            }
            [var_1E0 release];
    }
    memset(&stack[-472], zero_extend_64(0x0), 0x40);
    r0 = [var_120->_observers retain];
    var_228 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-472] objects:&stack[-296] count:0x10];
    var_230 = r0;
    if (r0 != 0x0) {
            var_238 = *var_1B8;
            var_240 = &stack[-472] + 0x10;
            var_248 = 0x0;
            var_250 = var_230;
            do {
                    var_258 = var_250;
                    var_260 = var_248;
                    if (**var_240 != var_238) {
                            objc_enumerationMutation(var_228);
                    }
                    [*(var_1C0 + var_260 * 0x8) adSessionDidBecomeActive:var_130];
                    var_250 = var_258;
                    var_248 = var_260 + 0x1;
                    if (var_260 + 0x1 < var_258) {
                        continue;
                    }
                    r0 = [var_228 countByEnumeratingWithState:&stack[-472] objects:&stack[-296] count:0x10];
                    var_250 = r0;
                    var_248 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_228 release];
    objc_storeStrong(&var_130, 0x0);
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void)adSessionDidFinish:(void *)arg2 {
    r31 = r31 - 0x160;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r10 = *___stack_chk_guard;
    var_A0 = self;
    objc_storeStrong(&var_B0, arg2);
    var_B1 = [var_A0 isActive] & 0x1;
    [var_A0 removeAdSession:var_B0];
    if ((var_B1 & 0x1) != 0x0 && ([var_A0 isActive] & 0x1) == 0x0) {
            memset(&stack[-272], zero_extend_64(0x0), 0x40);
            r0 = [var_A0->_observers retain];
            var_118 = r0;
            r0 = [r0 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
            var_120 = r0;
            if (r0 != 0x0) {
                    var_128 = *var_F0;
                    var_130 = &stack[-272] + 0x10;
                    var_138 = 0x0;
                    var_140 = var_120;
                    do {
                            do {
                                    var_148 = var_140;
                                    var_150 = var_138;
                                    if (**var_130 != var_128) {
                                            objc_enumerationMutation(var_118);
                                    }
                                    [*(var_F8 + var_150 * 0x8) adSessionRegistryDidResignActive];
                                    var_140 = var_148;
                                    var_138 = var_150 + 0x1;
                            } while (var_150 + 0x1 < var_148);
                            r0 = [var_118 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
                            var_140 = r0;
                            var_138 = 0x0;
                    } while (r0 != 0x0);
            }
            [var_118 release];
    }
    var_18 = **___stack_chk_guard;
    objc_storeStrong(&var_B0, 0x0);
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void)adSession:(void *)arg2 didRegisterAdView:(void *)arg3 {
    r31 = r31 - 0x190;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    objc_storeStrong(&saved_fp - 0xb8, arg3);
    memset(&stack[-272], zero_extend_64(0x0), 0x40);
    r0 = [self adSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_130 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
    var_138 = r0;
    if (r0 == 0x0) goto loc_1008d0858;

loc_1008d06d8:
    var_140 = *var_F0;
    var_148 = &stack[-272] + 0x10;
    var_150 = 0x0;
    var_158 = var_138;
    goto loc_1008d0700;

loc_1008d0700:
    var_160 = var_158;
    var_168 = var_150;
    if (**var_148 != var_140) {
            objc_enumerationMutation(var_130);
    }
    var_C0 = *(var_F8 + var_168 * 0x8);
    var_109 = 0x0;
    var_16C = 0x0;
    if (var_C0 != 0x0) {
            r0 = [var_C0 mainAdView];
            r29 = r29;
            r0 = [r0 retain];
            var_108 = r0;
            r10 = 0x1;
            var_109 = r10;
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r10 = 0x1;
                    }
            }
            var_16C = r10;
    }
    var_170 = var_16C;
    if ((var_109 & 0x1 & 0x1) != 0x0) {
            [var_108 release];
    }
    if ((var_170 & 0x1) == 0x0) goto loc_1008d0804;

loc_1008d07d0:
    [var_C0 setMainAdView:0x0];
    var_110 = 0x2;
    goto loc_1008d085c;

loc_1008d085c:
    [var_130 release];
    var_174 = var_110;
    if (var_110 != 0x0 && r9 != 0x0) {
            __stack_chk_fail();
    }
    else {
            var_18 = **___stack_chk_guard;
            objc_storeStrong(r29 - 0xb8, 0x0);
            objc_storeStrong(r29 - 0xb0, 0x0);
            if (**___stack_chk_guard != var_18) {
                    __stack_chk_fail();
            }
    }
    return;

loc_1008d0804:
    var_158 = var_160;
    var_150 = var_168 + 0x1;
    if (var_168 + 0x1 < var_160) goto loc_1008d0700;

loc_1008d0820:
    r0 = [var_130 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
    var_158 = r0;
    var_150 = 0x0;
    if (r0 != 0x0) goto loc_1008d0700;

loc_1008d0858:
    var_110 = 0x0;
    goto loc_1008d085c;
}

@end