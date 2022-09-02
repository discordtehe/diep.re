@implementation GADStoreKitProductInlineRenderer

-(void *)initWithStoreKitProductViewController:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_storeKitProductViewController, r20);
            [r21->_storeKitProductViewController setDelegate:r21];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)renderInView:(void *)arg2 dismissalCompletionBlock:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderedInline));
    if (*(int8_t *)(r21 + r8) != 0x0) {
            (*(r20 + 0x10))(r20);
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitProductViewController));
            if (*(r21 + r22) != 0x0) {
                    *(int8_t *)(r21 + r8) = 0x1;
                    r0 = [r20 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dismissNotificationBlock));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    [[*(r21 + r22) view] retain];
                    [r19 addSubview:r2];
                    [r21 release];
            }
            else {
                    (*(r20 + 0x10))(r20);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)resizeToFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_storeKitProductViewController;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)dismiss {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_renderedInline != 0x0) {
            [r0 productViewControllerDidFinish:r0->_storeKitProductViewController];
    }
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitProductViewController));
    r21 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    r22 = [arg2 retain];
    [r21 release];
    *(int8_t *)(int64_t *)&r19->_renderedInline = 0x0;
    r20 = [arg2 view];
    [r22 release];
    r0 = [r20 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dismissNotificationBlock));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dismissNotificationBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_storeKitProductViewController, 0x0);
    return;
}

@end