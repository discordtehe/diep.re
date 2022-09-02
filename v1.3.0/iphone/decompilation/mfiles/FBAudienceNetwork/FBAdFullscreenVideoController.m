@implementation FBAdFullscreenVideoController

-(void *)initWithVideoRenderer:(void *)arg2 callToAction:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_callToAction, r21);
            objc_storeWeak((int64_t *)&r22->_videoRenderer, r19);
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(bool)modalPresentationCapturesStatusBarAppearance {
    return 0x1;
}

-(void)viewDidAppear:(bool)arg2 {
    [[&var_20 super] viewDidAppear:arg2];
    r0 = [self videoRenderer];
    r0 = [r0 retain];
    [r0 setVolume:arg2];
    [r0 release];
    return;
}

-(void)swapInVideoView {
    r0 = [self videoRenderer];
    r0 = [r0 retain];
    objc_storeWeak((int64_t *)&self->_originalSuperView, [[r0 superview] retain]);
    [r21 release];
    [r19 removeFromSuperview];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r19 setFrame:r2];
    [r0 release];
    [r19 setInlineMode:0x0];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r20 release];
    [r19 release];
    return;
}

-(void)viewDidLoad {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_50 super] viewDidLoad];
    r21 = [[UIColor blackColor] retain];
    r0 = [r19 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setBackgroundColor:r21];
    [r0 release];
    [r21 release];
    [r19 swapInVideoView];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_callToActionButton));
    if (*(r19 + r23) == 0x0) {
            r21 = [FBAdVideoCallToActionButton alloc];
            r22 = [[r19 callToAction] retain];
            r21 = [r21 initWithText:r22];
            [r22 release];
            [r21 addTarget:r19 action:@selector(callToActionHit:withEvent:) forControlEvents:0x40];
            r0 = [r19 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r22 release];
            r0 = *(r19 + r23);
            *(r19 + r23) = r21;
            [r0 release];
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_dismissButton));
    if (*(r19 + r23) == 0x0) {
            r0 = [FBAdVideoDismissButton videoDismissButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(dismiss:) forControlEvents:0x40];
            [r0 setAlpha:r19];
            [[r19 view] retain];
            sub_100aabe74();
            [r22 release];
            [r21 setFrame:r19];
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            r0 = *(r19 + r23);
            *(r19 + r23) = r21;
            [r0 release];
    }
    return;
}

-(void)viewDidLayoutSubviews {
    [[&var_80 super] viewDidLayoutSubviews];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    [[self view] retain];
    sub_100aabe74();
    [r20 release];
    r0 = [self videoRenderer];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    [r0 frame];
    r0 = [r0 release];
    r0 = CGRectGetWidth(r0);
    CGRectGetWidth(r0);
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self dismissButton];
    r0 = [r0 retain];
    [r0 frame];
    [r0 release];
    r0 = [self dismissButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void)swapOutVideoView {
    r19 = [[self videoRenderer] retain];
    r21 = [[self originalSuperView] retain];
    [self setVideoRenderer:0x0];
    [r19 removeFromSuperview];
    [r21 bounds];
    [r19 setFrame:0x0];
    [r19 setInlineMode:0x1];
    [r21 addSubview:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)dismiss:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoControllerWillDismiss:self];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r21;
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_38 release];
    [r21 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(void)callToActionHit:(void *)arg2 withEvent:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoControllerWillDismiss:self];
    objc_copyWeak(&var_68 + 0x38, &saved_fp - 0x28);
    var_48 = r22;
    [r22 retain];
    var_40 = r20;
    [r20 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r19 release];
    [r20 release];
    [r22 release];
    objc_destroyWeak(&var_68 + 0x38);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x1a;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_videoRenderer);
    objc_destroyWeak((int64_t *)&self->_originalSuperView);
    objc_storeStrong((int64_t *)&self->_dismissButton, 0x0);
    objc_storeStrong((int64_t *)&self->_callToActionButton, 0x0);
    objc_storeStrong((int64_t *)&self->_callToAction, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)callToAction {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callToAction)), 0x0);
    return r0;
}

-(void)setCallToAction:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)callToActionButton {
    r0 = self->_callToActionButton;
    return r0;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callToActionButton, arg2);
    return;
}

-(void *)dismissButton {
    r0 = self->_dismissButton;
    return r0;
}

-(void *)originalSuperView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_originalSuperView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDismissButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dismissButton, arg2);
    return;
}

-(void)setOriginalSuperView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_originalSuperView, arg2);
    return;
}

-(void *)videoRenderer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoRenderer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoRenderer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoRenderer, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdFullscreenVideoController");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end