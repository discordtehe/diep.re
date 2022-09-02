@implementation GADClickProtection

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(bool)shouldAllowClickAction {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_autoClickEnabled != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_touched));
            r8 = r0 + r8;
            asm { ldarb      w8, [x8] };
            r0 = r8 & 0x1;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)initWithAd:(void *)arg2 view:(void *)arg3 autoClickProtectionEnabled:(bool)arg4 debugDialogString:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg5 retain];
    r21 = [self init];
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_ad, r19);
            *(int8_t *)(int64_t *)&r21->_autoClickEnabled = r24;
            r0 = [r22 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugDialogString));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [UIGestureRecognizer alloc];
            r0 = objc_msgSend(r0, r23);
            [r0 setDelegate:r21];
            [r20 addGestureRecognizer:r0];
            [r0 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)gestureRecognizer:(void *)arg2 shouldReceiveTouch:(void *)arg3 {
    asm { stlrb      w9, [x8] };
    return 0x0;
}

-(void)reportBlockedOpenActionWithNavigationURL:(void *)arg2 sourceURL:(void *)arg3 {
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
    r29 = &saved_fp;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[NSMutableDictionary alloc] init];
    r2 = r23->_debugDialogString;
    if (r2 != 0x0) {
            sub_100822058(r21, @"debugDialog", r2);
    }
    r0 = [r19 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 absoluteString];
            r29 = r29;
            sub_100822058(r21, @"navigationURL", [r0 retain]);
            [r25 release];
    }
    r0 = [GADJSContextController sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 SDKCoreContext];
    r0 = [r0 retain];
    [r0 notifyBlockedOpenActionWithParameters:r21];
    [r0 release];
    [r25 release];
    r23 = objc_loadWeakRetained((int64_t *)&r23->_ad);
    if (r23 != 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r22 = r0;
            sub_100822058(r0, *0x100e95348, r19);
            if (r20 != 0x0) {
                    sub_100822058(r22, *0x100e95350, r20);
            }
            sub_1008833e8(*0x100e9c0d0, r23, r22);
            [r22 release];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_debugDialogString, 0x0);
    return;
}

@end