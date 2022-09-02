@implementation StoreView

+(void *)sharedStoreView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da620;
    if (r0 == 0x0) {
            r0 = [StoreView alloc];
            r0 = [r0 init];
            *0x1011da620 = r0;
    }
    return r0;
}

+(bool)isStoreViewInitialized {
    r0 = self;
    if (*qword_1011da620 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedStoreView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da620 != 0x0) {
            [*0x1011da620 release];
            *0x1011da620 = 0x0;
    }
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r0 = self;
    if (*(r0 + 0x10) != 0x0) {
            asm { ccmp       x8, x2, #0x0, ne };
    }
    if (CPU_FLAGS & E) {
            [r0 dismiss];
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r8 = 0x101137000;
            if (NSClassFromString(@"SKStoreProductViewController") != 0x0) {
                    r8 = 0x101137000;
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(r19 + 0x8) = r8;
            [r19 setPleaseWaitMessageText:@"Please Wait..."];
            [r19 setErrorMessageTitle:@"Connection Error"];
            [r19 setErrorMessageText:@"Cannot connect to the store"];
            [r19 setErrorMessageButtonText:@"OK"];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self clean];
    [self setPleaseWaitMessageText:0x0];
    [self setErrorMessageTitle:0x0];
    [self setErrorMessageText:0x0];
    [self setErrorMessageButtonText:0x0];
    [self setViewController:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)clean {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 setDelegate:0x0];
            r0 = *(r19 + 0x10);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x10) = 0x0;
            }
    }
    return;
}

-(void)showForAppId:(void *)arg2 {
    [self showForAppId:arg2 preferredOrientation:0x0];
    return;
}

-(bool)isShowing {
    r0 = *(int8_t *)(self + 0x48);
    return r0;
}

-(void)dismiss:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            if (*(r0 + 0x10) != 0x0) {
                    r19 = r2;
                    [[SimpleAlert sharedSimpleAlert] dismiss];
                    r0 = [r20 viewController];
                    if (r0 != 0x0) {
                            r21 = r0;
                            if ([r0 presentedViewController] == *(r20 + 0x10)) {
                                    [r21 dismissViewControllerAnimated:r19 completion:&var_48];
                            }
                    }
            }
    }
    return;
}

-(void)showForAppId:(void *)arg2 preferredOrientation:(int)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r3;
            r21 = r2;
            r19 = r0;
            if (([r21 isEqualToString:r2] & 0x1) == 0x0 && *(int8_t *)(r19 + 0x8) != 0x0) {
                    r21 = sub_1005d820c(r21, 0x0);
                    if (*(r19 + 0x10) != 0x0) {
                            [[r19 viewController] dismissViewControllerAnimated:0x0 completion:0x0];
                            [r19 clean];
                            *(int8_t *)(r19 + 0x48) = 0x0;
                    }
                    [[SimpleAlert sharedSimpleAlert] showWithMessage:[r19 pleaseWaitMessageText]];
                    r0 = [MCStoreProductViewController new];
                    *(r19 + 0x10) = r0;
                    [r0 setDelegate:r19];
                    [*(r19 + 0x10) setPreferredOrientation:r20];
                    r2 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
                    [*(r19 + 0x10) loadProductWithParameters:r2 completionBlock:&var_60];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)dismiss {
    [self dismiss:0x1];
    return;
}

-(void)dismissImmediately {
    [self dismiss:0x0];
    return;
}

-(void *)pleaseWaitMessageText {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setPleaseWaitMessageText:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)errorMessageTitle {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setErrorMessageTitle:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)errorMessageText {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setErrorMessageText:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setErrorMessageButtonText:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)errorMessageButtonText {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)viewController {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setViewController:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end