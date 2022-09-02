@implementation ISNPresentationStrategyViewController

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [ISNProductViewController alloc];
            r0 = [r0 initWithConfiguration:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_productViewController));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isPresented {
    r0 = [self productViewController];
    r0 = [r0 retain];
    r20 = [r0 isPresented];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
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
            r20 = [ISNProductViewController alloc];
            r21 = [[ISNViewControllerPresentationConfiguration defaultConfiguration] retain];
            r0 = [r20 initWithConfiguration:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_productViewController));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void)presentProductFromViewController:(void *)arg2 product:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [self productViewController];
    r0 = [r0 retain];
    [r0 presentProductFromViewController:r22 productType:arg3 completionHandler:r19];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)dismissWithCompletionHandler:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self productViewController];
    r0 = [r0 retain];
    [r0 dismissWithCompletionHandler:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)presentedViewController {
    r0 = [self productViewController];
    return r0;
}

-(void *)productViewController {
    r0 = self->_productViewController;
    return r0;
}

-(void)setProductViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productViewController, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productViewController, 0x0);
    return;
}

@end