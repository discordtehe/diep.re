@implementation FBAdExitTransition

-(double)transitionDuration:(void *)arg2 {
    r0 = self;
    return r0;
}

-(void)animateTransition:(void *)arg2 {
    r31 = r31 - 0x140;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 viewControllerForKey:**_UITransitionContextFromViewControllerKey] retain];
    r21 = [[r19 viewControllerForKey:**_UITransitionContextToViewControllerKey] retain];
    [r19 finalFrameForViewController:r21];
    v8 = v0;
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setFrame:r21];
    [r0 release];
    r0 = [r20 topViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 topViewController];
            r0 = [r0 retain];
            var_130 = r0;
            r23 = [[r19 containerView] retain];
            r24 = [[r21 view] retain];
            r26 = [[r0 view] retain];
            [r23 insertSubview:r24 atIndex:0x0];
            var_128 = r20;
            r0 = [r26 retain];
            var_80 = r0;
            var_A8 = r0;
            r26 = [r0 retain];
            [UIView animateWithDuration:&var_A0 animations:&var_C8 completion:r4];
            r28 = [[UIBlurEffect effectWithStyle:0x2] retain];
            r22 = [[UIVisualEffectView alloc] initWithEffect:r28];
            [r24 frame];
            [r22 setFrame:r28];
            [r23 addSubview:r22];
            r0 = [r22 retain];
            r20 = var_128;
            r22 = [r0 retain];
            var_F8 = [r19 retain];
            [UIView animateWithDuration:&var_F0 animations:&var_120 completion:r4];
            [var_F8 release];
            [r0 release];
            [r0 release];
            [r22 release];
            [r28 release];
            [var_A8 release];
            [var_80 release];
            [r26 release];
            [r24 release];
            [r23 release];
            [var_130 release];
    }
    else {
            [r19 completeTransition:0x1];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end