@implementation GADAlert

-(void *)initWithTitle:(void *)arg2 message:(void *)arg3 parentContext:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r24 = @selector(init);
            r0 = [UIAlertView alloc];
            r0 = [r0 initWithTitle:r19 message:r20 delegate:r22 cancelButtonTitle:0x0 otherButtonTitles:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_alertView));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandlersByButtonIndex));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            if (r21 != 0x0) {
                    r0 = [r21 retain];
            }
            else {
                    r0 = [GADEventContext rootContext];
                    r0 = [r0 retain];
            }
            r24 = r0;
            r0 = [GADEventContext alloc];
            r0 = [r0 initWithParent:r24 component:*0x100e974a0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r24 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)addButtonWithTitle:(void *)arg2 handler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [r20->_alertView addButtonWithTitle:r22];
    [r22 release];
    if (r19 != 0x0) {
            sub_100822058(r20->_completionHandlersByButtonIndex, [[NSNumber numberWithInteger:r21] retain], objc_retainBlock(r19));
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)cancel {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_alertTappedOrCancelled));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            *(int8_t *)(r0 + r8) = 0x1;
            r0 = r0->_cancelHandler;
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
    }
    return;
}

-(void)presentFromViewController:(void *)arg2 completion:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    if (*(int8_t *)(int64_t *)&r20->_alertShown == 0x0) {
            r2 = r20->_cancelButtonTitle;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_alertView));
            r0 = *(r20 + r21);
            if (r2 != 0x0) {
                    [*(r20 + r21) setCancelButtonIndex:[r0 addButtonWithTitle:r2]];
            }
            else {
                    if ([r0 numberOfButtons] == 0x0) {
                            [*(r20 + r21) addButtonWithTitle:@"OK"];
                    }
            }
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_presentationCompletionHandler));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_retainCycle, r20);
            [*(r20 + r21) show];
    }
    [r19 release];
    return;
}

-(void)relinquishScreenWithCompletion:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_alertTappedOrCancelled == 0x0) {
            r22 = [r20 retain];
            [r19 cancel];
            r20 = objc_retainBlock(r20);
            [r22 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dismissalCompletionHandler));
            r0 = *(r19 + r8);
            *(r19 + r8) = r20;
            [r0 release];
            r19 = r19->_alertView;
            [r19 dismissWithClickedButtonIndex:[r19 cancelButtonIndex] animated:0x1];
    }
    return;
}

-(bool)canPresent {
    r0 = *(int8_t *)(int64_t *)&self->_alertShown;
    return r0;
}

-(bool)shouldDismissOnApplicationEnteringForeground {
    return 0x0;
}

-(void)didPresentAlertView:(void *)arg2 {
    r0 = self->_presentationCompletionHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void)alertViewCancel:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissedByUser = 0x1;
    [self cancel];
    sub_1008833e8(*0x100e9c110, self, 0x0);
    return;
}

-(void)alertView:(void *)arg2 didDismissWithButtonIndex:(long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_dismissalCompletionHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    if (*(int8_t *)(int64_t *)&r20->_dismissedByUser != 0x0) {
            sub_1008833e8(*0x100e9c118, r20, 0x0);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_retainCycle));
    r0 = *(r20 + r8);
    *(r20 + r8) = 0x0;
    [r0 release];
    [r19 release];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_alertTappedOrCancelled));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            *(int8_t *)(int64_t *)&r19->_dismissedByUser = 0x1;
            r20 = r19->_completionHandlersByButtonIndex;
            r21 = [[NSNumber numberWithInteger:r3] retain];
            r20 = [[r20 objectForKeyedSubscript:r21] retain];
            [r21 release];
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20);
            }
            sub_1008833e8(*0x100e9c110, r19, 0x0);
            [r20 release];
    }
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(void *)cancelButtonTitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cancelButtonTitle)), 0x0);
    return r0;
}

-(void)setCancelButtonTitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cancelHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cancelHandler)), 0x0);
    return r0;
}

-(void)setCancelHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cancelHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_cancelButtonTitle, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_dismissalCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_presentationCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_alertView, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandlersByButtonIndex, 0x0);
    objc_storeStrong((int64_t *)&self->_retainCycle, 0x0);
    return;
}

@end