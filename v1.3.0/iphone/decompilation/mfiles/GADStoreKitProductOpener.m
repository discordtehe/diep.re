@implementation GADStoreKitProductOpener

-(void *)initWithStoreKitProductViewController:(void *)arg2 context:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [GADViewControllerPresenter alloc];
            r0 = [r0 initWithViewController:r19 context:r20];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_presenter));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_weakStoreKitProductViewController, r19);
            [r19 setDelegate:r21];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)openWithRootViewController:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r20 = [arg3 retain];
    if (r20 == 0x0) {
            r22 = objc_retainBlock(0x100e962c0);
            [r20 release];
            r20 = r22;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isPresenting));
    if (*(int8_t *)(r21 + r8) == 0x0 && *(int8_t *)(int64_t *)&r21->_isPresented == 0x0) {
            *(int8_t *)(r21 + r8) = 0x1;
            objc_setAssociatedObject(*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_presenter))), 0x1011dbde8, r21, 0x1);
            objc_initWeak(&stack[-72], r21);
            r20 = [r20 retain];
            objc_copyWeak(&var_68 + 0x28, &stack[-72]);
            [r21 presentFromViewController:r19 completion:&var_68];
            objc_destroyWeak(&var_68 + 0x28);
            [r20 release];
            objc_destroyWeak(&stack[-72]);
    }
    else {
            (*(r20 + 0x10))(r20, [sub_100809600(0xb, @"Failed to open already opened StoreKitProductViewController.") retain]);
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)dismiss {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isPresenting != 0x0 || *(int8_t *)(int64_t *)&r19->_isPresented != 0x0) {
            r20 = objc_loadWeakRetained((int64_t *)&r19->_weakStoreKitProductViewController);
            if (r20 != 0x0) {
                    [r19 productViewControllerDidFinish:r20];
            }
            [r20 release];
    }
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dismissed));
    if (*(int8_t *)(r20 + r8) == 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_isPresenting != 0x0) {
                    *(int8_t *)(int64_t *)&r20->_shouldDismissAfterPresentation = 0x1;
            }
            else {
                    if (*(int8_t *)(int64_t *)&r20->_isPresented != 0x0) {
                            *(int8_t *)(r20 + r8) = 0x1;
                            r0 = sub_1007ccad0();
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r20 != 0x0) {
                                    [r20 relinquishScreenWithCompletion:0x0];
                            }
                            else {
                                    sub_1007ce06c(0x0, @"Presenter missing for %@.");
                                    r0 = [r19 presentingViewController];
                                    r0 = [r0 retain];
                                    [r0 dismissViewControllerAnimated:0x1 completion:0x0];
                                    [r0 becomeFirstResponder];
                                    [r0 release];
                            }
                            [r20 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presenter, 0x0);
    objc_destroyWeak((int64_t *)&self->_weakStoreKitProductViewController);
    return;
}

@end