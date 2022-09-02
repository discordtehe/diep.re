@implementation GADFullScreenPropertiesActionMonitor

-(void *)initWithFullScreenViewController:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_viewController, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c310 object:r20 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_viewController);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleSetFullScreenPropertiesAction:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_viewController);
    r20 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 window];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
            [r0 release];
            r0 = [r21 objectForKeyedSubscript:@"transparentBackground"];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    if ([r23 boolValue] != 0x0) {
                            [r20 setModalPresentationStyle:r2];
                            r22 = [[r20 view] retain];
                            r0 = [UIColor clearColor];
                    }
                    else {
                            [r20 setModalPresentationStyle:r2];
                            r22 = [[r20 view] retain];
                            r0 = [UIColor blackColor];
                    }
                    r24 = [r0 retain];
                    [r22 setBackgroundColor:r24];
                    [r24 release];
                    [r22 release];
            }
            [r23 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

@end