@implementation GADJSContextController

+(void *)sharedInstance {
    if (*qword_1011dbf00 != -0x1) {
            dispatch_once(0x1011dbf00, 0x100e9d298);
    }
    r0 = *0x1011dbf08;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
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
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.js-context-controller", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_SDKCoreLoadCompletionHandlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_SDKCoreContextReferencedIDs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeViewLoadCompletionHandlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:*0x100e9c488 object:0x0 queue:0x0 usingBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void *)SDKCoreContext {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)buildAdURLDidComplete {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)buildAdURLDidTimeOut:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 integerForKey:*0x100e9b578];
    [r0 release];
    if (r21 >= 0x1) {
            r22 = r20->_lockQueue;
            var_38 = [r20 retain];
            var_30 = [r19 retain];
            dispatch_async(r22, &var_58);
            [var_30 release];
            [var_38 release];
    }
    [r19 release];
    return;
}

-(void)handleSDKCoreProcessDidTerminate:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_lockQueue;
    [r0 retain];
    var_28 = [self retain];
    dispatch_async(r20, &var_50);
    [var_28 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)updateActiveSDKCoreContext {
    r31 = r31 - 0xc0;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r21 = (int64_t *)&r20->_activeSDKCoreContext;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 == 0x0) {
            r19 = [r20->_nextSDKCoreContext retain];
            if (r19 != 0x0) {
                    objc_storeWeak(r21, r19);
                    r0 = [GADObserverCollection alloc];
                    r0 = [r0 init];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_SDKCoreObservers));
                    r8 = *(r20 + r21);
                    *(r20 + r21) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-104], r20);
                    r20->_consecutiveSDKCoreTimeouts = 0x0;
                    [[r19 messageSource] retain];
                    [[NSOperationQueue mainQueue] retain];
                    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
                    [r21 addObserverForName:*0x100e9c478 object:r22 queue:r23 usingBlock:&var_80];
                    [r23 release];
                    [r22 release];
                    var_88 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_A8);
                    [var_88 release];
                    objc_destroyWeak(&var_80 + 0x20);
                    objc_destroyWeak(&stack[-104]);
            }
            [r19 release];
    }
    return;
}

-(void *)activeSDKCoreContext {
    [self updateActiveSDKCoreContext];
    r0 = objc_loadWeakRetained((int64_t *)&self->_activeSDKCoreContext);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSDKCoreContext:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)asyncSDKCoreContext:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)refreshSDKCoreContext {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r20 = [GADEventContext alloc];
            r21 = [[GADEventContext rootContext] retain];
            r20 = [r20 initWithParent:r21 component:*0x100e97488];
            [r21 release];
            var_28 = [r19 retain];
            [GADSDKCoreContext loadWithEventContext:r20 completionHandler:&var_48];
            [var_28 release];
            [r20 release];
    }
    return;
}

-(void)handleRefreshAction:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 object];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r22 = *(r21 + r28);
    r20 = [r20 retain];
    var_98 = r20;
    r23 = [r21 retain];
    var_90 = r23;
    dispatch_sync(r22, &var_B8);
    if (*(int8_t *)((&saved_fp - 0x80) + 0x18) != 0x0) {
            r0 = [r20 userInfo];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
            [r0 release];
            r0 = [r22 objectForKeyedSubscript:@"refresh"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 isEqual:r2] != 0x0) {
                    r21 = *(r21 + r28);
                    var_C0 = [r23 retain];
                    dispatch_sync(r21, &var_E0);
                    r0 = var_C0;
            }
            else {
                    r0 = [r22 objectForKeyedSubscript:*0x100e95cf0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if ([r0 respondsToSelector:r2] != 0x0) {
                            r26 = @selector(isEqual:);
                            [r25 integerValue];
                            r27 = [[NSString alloc] initWithFormat:@"%lld"];
                            if (objc_msgSend(r24, r26) != 0x0) {
                                    var_150 = *(r21 + r28);
                                    var_F8 = [r23 retain];
                                    var_F0 = [r27 retain];
                                    var_E8 = [r19 retain];
                                    dispatch_sync(var_150, &var_118);
                                    [var_E8 release];
                                    [var_F0 release];
                                    [var_F8 release];
                            }
                            if ([r24 isEqual:r2] != 0x0) {
                                    r21 = *(r21 + r28);
                                    var_128 = [r23 retain];
                                    var_120 = [r27 retain];
                                    dispatch_sync(r21, &var_148);
                                    [var_120 release];
                                    [var_128 release];
                            }
                            [r27 release];
                    }
                    else {
                            sub_1007ce06c(0x0, @"Ignoring SDK Core refresh action. Request ID empty or invalid.");
                    }
                    r0 = r25;
            }
            [r0 release];
            [r24 release];
            [r22 release];
    }
    [var_90 release];
    [var_98 release];
    [r19 release];
    _Block_object_dispose(r29 - 0x80, 0x8);
    [r20 release];
    return;
}

-(void)asyncActiveViewContext:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)refreshActiveViewContext {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_activeViewContextLoadInProgress));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            r20 = [GADEventContext alloc];
            r21 = [[GADEventContext rootContext] retain];
            r20 = [r20 initWithParent:r21 component:*0x100e97470];
            [r21 release];
            var_28 = [r19 retain];
            [GADActiveViewContext loadWithEventContext:r20 completionHandler:&var_48];
            [var_28 release];
            [r20 release];
    }
    return;
}

-(void)setActiveViewContext:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)activeViewContext {
    r0 = self->_activeViewContext;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_activeViewContext, 0x0);
    objc_storeStrong((int64_t *)&self->_activeViewLoadCompletionHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_SDKCoreContextReferencedIDs, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_SDKCoreObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_SDKCoreLoadCompletionHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_nextSDKCoreContext, 0x0);
    objc_destroyWeak((int64_t *)&self->_activeSDKCoreContext);
    return;
}

@end