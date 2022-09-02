@implementation GADViewControllerPresenter

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithViewController:(void *)arg2 context:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_1007ccbc0;

loc_1007ccb3c:
    r23 = [objc_getAssociatedObject(r19, 0x1011db7a8) retain];
    if (r23 == 0x0) goto loc_1007ccb80;

loc_1007ccb5c:
    sub_1007ce06c(0x0, @"Tried to create a GADViewControllerPresenter for %@, but it already has one (%@).");
    [r23 release];
    r22 = 0x0;
    goto loc_1007ccbcc;

loc_1007ccbcc:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_1007ccb80:
    objc_storeWeak((int64_t *)&r21->_viewController, r19);
    objc_setAssociatedObject(r19, 0x1011db7a8, r21, 0x1);
    objc_storeStrong((int64_t *)&r21->_context, r22);
    goto loc_1007ccbc0;

loc_1007ccbc0:
    r22 = [r21 retain];
    goto loc_1007ccbcc;
}

-(bool)canPresent {
    return 0x1;
}

-(void)presentFromViewController:(void *)arg2 completion:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&self->_viewController);
    if (r21 != 0x0) {
            sub_1007fa8b0(r21, r19, r20);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)shouldDismissOnApplicationEnteringForeground {
    return 0x0;
}

-(void)relinquishScreenWithCompletion:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_viewController);
    if (r20 != 0x0) {
            sub_1007fab68(r20, r19);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_destroyWeak((int64_t *)&self->_viewController);
    return;
}

@end