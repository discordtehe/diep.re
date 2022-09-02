@implementation FBWatchAndInstallActionController

-(void *)initWithDataModel:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if (*qword_1011dd0f8 != -0x1) {
                    dispatch_once(0x1011dd0f8, 0x100ea8f88);
            }
            r21 = [*0x1011dd100 new];
            [r20 setProductVC:r21];
            [r21 release];
            r0 = [r20 productVC];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
            [r20 setDataModel:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)preloadContent {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r0 = [r0 commandURL];
    r0 = [r0 retain];
    [[r0 query] retain];
    [r0 release];
    objc_initWeak(&stack[-72], self);
    [[self productVC] retain];
    [[FBAdUtility storeSheetParameters:r20] retain];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r21 loadProductWithParameters:r23 completionBlock:&var_60];
    [r23 release];
    [r21 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r20 release];
    [r19 release];
    return;
}

-(void)prepareForPresentation {
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 actionViewDidFinishPresentation];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)didFinishLoadWithResult:(bool)arg2 andError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 actionViewDidFinishLoadWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productVC, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)view {
    r0 = [self productVC];
    r0 = [r0 retain];
    r20 = [[r0 view] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)productVC {
    r0 = self->_productVC;
    return r0;
}

-(void)setProductVC:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productVC, arg2);
    return;
}

@end