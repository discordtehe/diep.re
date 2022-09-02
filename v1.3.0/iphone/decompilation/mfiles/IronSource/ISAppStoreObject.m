@implementation ISAppStoreObject

-(void)setTimerForTimeoutTask {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)initWithAppStorePageParams:(void *)arg2 appStoreViewController:(void *)arg3 showStoreWhenDoneLoading:(bool)arg4 forViewUniqueId:(void *)arg5 {
    r31 = r31 - 0x90;
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
    r20 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = [arg5 retain];
    r1 = @selector(init);
    r0 = objc_msgSendSuper2(&var_78, r1);
    r22 = r0;
    if (r22 != 0x0) {
            if (r23 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r1 = r23;
                    }
                    else {
                            r1 = @"-1";
                    }
            }
            objc_storeStrong((int64_t *)&r22->_viewUniqueId, r1);
            if (r19 != 0x0) {
                    r25 = @"-1";
                    r24 = [r19 mutableCopy];
                    r26 = 0x0;
                    r27 = 0x1;
            }
            else {
                    r24 = [NSMutableDictionary alloc];
                    r26 = 0x1;
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r29 = r29;
                    r25 = [r0 retain];
                    r24 = [r24 initWithDictionary:r25];
                    r27 = 0x0;
            }
            objc_storeStrong((int64_t *)&r22->_appStorePageParams, r24);
            if (r26 == 0x0) {
                    if (r27 == 0x0) {
                            if (r21 != 0x0) {
                                    r25 = 0x0;
                                    r24 = r21;
                            }
                            else {
                                    r24 = [[ISAppStoreViewController defaultAppStoreViewController] retain];
                                    r25 = 0x1;
                            }
                    }
                    else {
                            [r24 release];
                            if (r21 == 0x0) {
                                    r24 = [[ISAppStoreViewController defaultAppStoreViewController] retain];
                                    r25 = 0x1;
                            }
                            else {
                                    r25 = 0x0;
                                    r24 = r21;
                            }
                    }
            }
            else {
                    [r24 release];
                    [r25 release];
                    if (r27 != 0x0) {
                            [r24 release];
                            if (r21 == 0x0) {
                                    r24 = [[ISAppStoreViewController defaultAppStoreViewController] retain];
                                    r25 = 0x1;
                            }
                            else {
                                    r25 = 0x0;
                                    r24 = r21;
                            }
                    }
                    else {
                            if (r21 != 0x0) {
                                    r25 = 0x0;
                                    r24 = r21;
                            }
                            else {
                                    r24 = [[ISAppStoreViewController defaultAppStoreViewController] retain];
                                    r25 = 0x1;
                            }
                    }
            }
            objc_storeStrong((int64_t *)&r22->_appStoreViewController, r24);
            if (r25 != 0x0) {
                    [r24 release];
            }
            *(int8_t *)(int64_t *)&r22->_showStoreWhenDoneLoading = r20;
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)appStoreObjectWithViewId:(void *)arg2 appId:(void *)arg3 {
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
    r21 = arg3;
    r19 = [arg2 retain];
    if (r21 != 0x0) {
            r23 = [r21 retain];
            r0 = [NSMutableDictionary new];
            r20 = r0;
            [r0 setObject:r21 forKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    r21 = [ISAppStoreObject alloc];
    r22 = [[ISAppStoreViewController defaultAppStoreViewController] retain];
    r21 = [r21 initWithAppStorePageParams:r20 appStoreViewController:r22 showStoreWhenDoneLoading:0x0 forViewUniqueId:r19];
    [r19 release];
    [r22 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)executeTimeoutTasks {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([SSEReachabilityManager checkReachability] & 0x1) != 0x0) {
            dispatch_after(dispatch_time(0x0, 0xb2d05e00), *__dispatch_main_q, &var_38);
    }
    else {
            r20 = [[ISAppStoreInsideSession sharedInstance] retain];
            r19 = [[r19 viewUniqueId] retain];
            [r20 cancelLoading:r19];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)cleanup {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_appStoreViewController));
    [*(self + r20) setDelegate:0x0];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(void *)appStorePageAppId {
    r0 = [self appStorePageParams];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)viewUniqueId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewUniqueId)), 0x1);
    return r0;
}

-(void *)appStorePageParams {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appStorePageParams)), 0x1);
    return r0;
}

-(void *)appStoreViewController {
    r0 = self->_appStoreViewController;
    return r0;
}

-(void)setAppStoreViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appStoreViewController, arg2);
    return;
}

-(bool)showStoreWhenDoneLoading {
    r0 = *(int8_t *)(int64_t *)&self->_showStoreWhenDoneLoading;
    return r0;
}

-(void)setShowStoreWhenDoneLoading:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showStoreWhenDoneLoading = arg2;
    return;
}

-(void)setHasAppStorePage:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAppStorePage = arg2;
    return;
}

-(bool)hasAppStorePage {
    r0 = *(int8_t *)(int64_t *)&self->_hasAppStorePage;
    return r0;
}

-(bool)isLoadingStoreInProgress {
    r0 = *(int8_t *)(int64_t *)&self->_loadingStoreInProgress;
    return r0;
}

-(void)setLoadingStoreInProgress:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadingStoreInProgress = arg2;
    return;
}

-(bool)shouldCancelLoading {
    r0 = *(int8_t *)(int64_t *)&self->_shouldCancelLoading;
    return r0;
}

-(void)setShouldCancelLoading:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldCancelLoading = arg2;
    return;
}

-(void *)loadingTimer {
    r0 = self->_loadingTimer;
    return r0;
}

-(void)setLoadingTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadingTimer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loadingTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_appStoreViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_appStorePageParams, 0x0);
    objc_storeStrong((int64_t *)&self->_viewUniqueId, 0x0);
    return;
}

@end