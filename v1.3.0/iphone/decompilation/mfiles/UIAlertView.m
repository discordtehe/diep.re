@implementation UIAlertView

+(void *)showWithTitle:(void *)arg2 message:(void *)arg3 cancelButtonTitle:(void *)arg4 otherButtonTitles:(void *)arg5 tapBlock:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [[self showWithTitle:r24 message:r22 style:0x0 cancelButtonTitle:r21 otherButtonTitles:r20 tapBlock:arg6] retain];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)_checkAlertViewDelegate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            objc_setAssociatedObject(r19, *0x1011bd568, [[r19 delegate] retain], 0x0);
            [r20 release];
            [r19 setDelegate:r19];
    }
    return;
}

-(void *)tapBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd570);
    return r0;
}

+(void *)showWithTitle:(void *)arg2 message:(void *)arg3 style:(long long)arg4 cancelButtonTitle:(void *)arg5 otherButtonTitles:(void *)arg6 tapBlock:(void *)arg7 {
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
    r29 = &saved_fp;
    r23 = arg4;
    r22 = self;
    r25 = [arg2 retain];
    r26 = [arg3 retain];
    r27 = [arg5 retain];
    r19 = [arg6 retain];
    r20 = [arg7 retain];
    if ([r19 count] != 0x0) {
            r0 = [r19 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = 0x0;
    }
    r24 = @selector(count);
    r22 = [[r22 alloc] initWithTitle:r25 message:r26 delegate:0x0 cancelButtonTitle:r27 otherButtonTitles:r21];
    [r27 release];
    [r26 release];
    [r25 release];
    [r22 setAlertViewStyle:r23];
    if (objc_msgSend(r19, r24) >= 0x2) {
            var_120 = r21;
            var_108 = q0;
            [r19 count] - 0x1;
            r0 = [r19 subarrayWithRange:0x1];
            r0 = [r0 retain];
            r23 = r0;
            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r25 != 0x0) {
                    r27 = *var_108;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_108 != r27) {
                                            objc_enumerationMutation(r23);
                                    }
                                    [r22 addButtonWithTitle:r2];
                                    r21 = r21 + 0x1;
                            } while (r21 < r25);
                            r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r25 != 0x0);
            }
            [r23 release];
            r21 = var_120;
    }
    if (r20 != 0x0) {
            [r22 setTapBlock:r20];
    }
    var_58 = **___stack_chk_guard;
    [r22 show];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setTapBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd570;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void *)willDismissBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd578);
    return r0;
}

-(void)setWillDismissBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd578;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void *)didDismissBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd580);
    return r0;
}

-(void)setDidDismissBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd580;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void *)willPresentBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd588);
    return r0;
}

-(void)setWillPresentBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd588;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void *)didPresentBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd590);
    return r0;
}

-(void *)cancelBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd598);
    return r0;
}

-(void)setDidPresentBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd590;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void)setCancelBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd598;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void)setShouldEnableFirstOtherButtonBlock:(void *)arg2 {
    r22 = [arg2 retain];
    [self _checkAlertViewDelegate];
    r21 = *0x1011bd5a0;
    r19 = objc_retainBlock(arg2);
    [r22 release];
    objc_setAssociatedObject(self, r21, r19, 0x303);
    [r19 release];
    return;
}

-(void *)shouldEnableFirstOtherButtonBlock {
    r0 = objc_getAssociatedObject(self, *0x1011bd5a0);
    return r0;
}

-(void)willPresentAlertView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 willPresentBlock];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r19);
    }
    r21 = [objc_getAssociatedObject(r21, *0x1011bd568) retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(willPresentAlertView:)] != 0x0) {
            [r21 willPresentAlertView:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)didPresentAlertView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 didPresentBlock];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r19);
    }
    r21 = [objc_getAssociatedObject(r21, *0x1011bd568) retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(didPresentAlertView:)] != 0x0) {
            [r21 didPresentAlertView:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)alertViewCancel:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 cancelBlock];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r19);
    }
    r21 = [objc_getAssociatedObject(r21, *0x1011bd568) retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(alertViewCancel:)] != 0x0) {
            [r21 alertViewCancel:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 tapBlock];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            (*(r21 + 0x10))(r21, r19, r20);
    }
    r22 = [objc_getAssociatedObject(r22, *0x1011bd568) retain];
    if (r22 != 0x0 && [r22 respondsToSelector:@selector(alertView:clickedButtonAtIndex:), r3] != 0x0) {
            [r22 alertView:r19 clickedButtonAtIndex:r20];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)alertView:(void *)arg2 willDismissWithButtonIndex:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 willDismissBlock];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            (*(r21 + 0x10))(r21, r19, r20);
    }
    r22 = [objc_getAssociatedObject(r22, *0x1011bd568) retain];
    if (r22 != 0x0 && [r22 respondsToSelector:@selector(alertView:willDismissWithButtonIndex:), r3] != 0x0) {
            [r22 alertView:r19 willDismissWithButtonIndex:r20];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)alertView:(void *)arg2 didDismissWithButtonIndex:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 didDismissBlock];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            (*(r21 + 0x10))(r21, r19, r20);
    }
    r22 = [objc_getAssociatedObject(r22, *0x1011bd568) retain];
    if (r22 != 0x0 && [r22 respondsToSelector:@selector(alertView:didDismissWithButtonIndex:), r3] != 0x0) {
            [r22 alertView:r19 didDismissWithButtonIndex:r20];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)alertViewShouldEnableFirstOtherButton:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 shouldEnableFirstOtherButtonBlock];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r22 = (*(r20 + 0x10))(r20, r19);
    }
    else {
            r21 = [objc_getAssociatedObject(r21, *0x1011bd568) retain];
            if (r21 != 0x0 && [r21 respondsToSelector:@selector(alertViewShouldEnableFirstOtherButton:)] != 0x0) {
                    r22 = [r21 alertViewShouldEnableFirstOtherButton:r19];
            }
            else {
                    r22 = 0x1;
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end