@implementation OMIDtapjoyAdSessionRegistry

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc240 != -0x1) {
            dispatch_once(0x1011dc240, &var_28);
    }
    r0 = *0x1011dc248;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSPointerArray weakObjectsPointerArray];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSessions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdSessions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)adSessions {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adSessions));
    [*(self + r20) compact];
    r0 = *(self + r20);
    r0 = [r0 allObjects];
    return r0;
}

-(void *)activeAdSessions {
    r0 = self->_activeAdSessions;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)observers {
    r0 = self->_observers;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isActive {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_activeAdSessions;
    r0 = [r0 count];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)addAdSession:(void *)arg2 {
    r21 = self->_adSessions;
    r23 = [arg2 retain];
    [r21 addPointer:arg2];
    [arg2 setDelegate:self];
    [r23 release];
    return;
}

-(void)removeAdSession:(void *)arg2 {
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
    r19 = [arg2 retain];
    [r20->_activeAdSessions removeObject:r19];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adSessions));
    if ([*(r20 + r24) count] == 0x0) goto loc_1009662a0;

loc_100966234:
    r21 = 0x0;
    goto loc_100966244;

loc_100966244:
    r0 = *(r20 + r24);
    r0 = [r0 pointerAtIndex:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == r19) goto loc_100966284;

loc_100966264:
    r23 = @selector(count);
    [r0 release];
    r21 = r21 + 0x1;
    if (r21 < objc_msgSend(*(r20 + r24), r23)) goto loc_100966244;

loc_1009662a0:
    [r19 release];
    return;

loc_100966284:
    [*(r20 + r24) removePointerAtIndex:r21];
    [r19 release];
    goto loc_1009662a0;
}

-(void)addStateObserver:(void *)arg2 {
    [self->_observers addObject:r2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_activeAdSessions, 0x0);
    objc_storeStrong((int64_t *)&self->_adSessions, 0x0);
    return;
}

-(void)adSessionDidFinish:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r21 = [arg2 retain];
    r22 = [r19 isActive];
    [r19 removeAdSession:r21];
    [r21 release];
    if (r22 != 0x0 && ([r19 isActive] & 0x1) == 0x0) {
            var_F8 = q0;
            r0 = r19->_observers;
            r0 = [r0 retain];
            r19 = r0;
            r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r21 != 0x0) {
                    r23 = *var_F8;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_F8 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [*(var_100 + r25 * 0x8) adSessionRegistryDidResignActive];
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
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

-(void)adSessionDidStart:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r21 = self;
    r19 = [arg2 retain];
    [r21 isActive];
    r0 = r21->_activeAdSessions;
    r1 = @selector(addObject:);
    objc_msgSend(r0, r1);
    if (r20 != 0x0) {
            r25 = *(int32_t *)ivar_offset(_observers);
    }
    else {
            var_188 = q0;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r0 = *(r21 + r25);
            r0 = [r0 retain];
            r22 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r26 = *var_188;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_188 != r26) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [*(var_190 + r28 * 0x8) adSessionRegistryDidBecomeActive];
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r23 = objc_msgSend(r22, r1);
                    } while (r23 != 0x0);
            }
            [r22 release];
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_1C8 = q0;
    r0 = *(r21 + (r25 << r1));
    r0 = [r0 retain];
    r21 = r0;
    r22 = objc_msgSend(r0, r20);
    if (r22 != 0x0) {
            r24 = *var_1C8;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_1C8 != r24) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_1D0 + r26 * 0x8) adSessionDidBecomeActive:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adSession:(void *)arg2 didRegisterAdView:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self adSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_1009667cc;

loc_100966720:
    r8 = &@selector(collectDynamicContentSize);
    goto loc_10096672c;

loc_10096672c:
    r28 = 0x0;
    r22 = r8;
    r24 = *(r8 + 0x530);
    goto loc_100966738;

loc_100966738:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r25 = *(0x0 + r28 * 0x8);
    if (r25 == r19) goto loc_100966784;

loc_100966760:
    r0 = objc_msgSend(r25, r24);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) goto loc_1009667b8;

loc_100966784:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100966738;

loc_100966790:
    r23 = objc_msgSend(r21, var_120);
    r8 = r22;
    if (r23 != 0x0) goto loc_10096672c;

loc_1009667cc:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1009667b8:
    [r25 setMainAdView:0x0];
    goto loc_1009667cc;
}

@end