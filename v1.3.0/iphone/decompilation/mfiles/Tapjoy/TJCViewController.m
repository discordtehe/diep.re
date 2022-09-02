@implementation TJCViewController

-(void)removeView:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self view];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 subviews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r19 release];
    }
    return;
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
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(removeView:) name:@"TJC_VIEW_CLOSED_NOTIFICATION" object:0x0];
            [r0 release];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r20 = [[r0 keyWindow] retain];
            [r0 release];
            if (r20 != 0x0) {
                    [UIWindow class];
                    [r20 isKindOfClass:r2];
            }
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)shouldAutorotateToInterfaceOrientation:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 statusBarOrientation];
    r0 = [r0 release];
    if (r21 == arg2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)updateViewsWithOrientation:(long long)arg2 {
    return;
}

-(void)notifyViewWillAppear {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_placementViewDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 viewWillAppear];
            [r0 release];
    }
    return;
}

-(void)setSubview:(void *)arg2 {
    r20 = [arg2 retain];
    [self moveViewToFront];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 addSubview:r20];
    [r0 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [arg2 setFrame:r2];
    [r20 release];
    [r21 release];
    return;
}

-(void)moveViewToFront {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = [[r0 keyWindow] retain];
    [r0 release];
    r0 = [r19 subviews];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 lastObject];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r24 = r23;
            }
            else {
                    r24 = r19;
            }
    }
    r25 = [[r20 view] retain];
    [r24 addSubview:r25];
    [r25 release];
    [r23 release];
    [r22 release];
    r22 = [[r20 view] retain];
    r23 = [[UIColor clearColor] retain];
    [r22 setBackgroundColor:r23];
    [r23 release];
    [r22 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 setOpaque:0x0];
    [r0 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 setAlpha:0x0];
    [r0 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    r0 = [r0 superview];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r20 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)notifyViewDidAppear {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_placementViewDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 viewDidAppear];
            [r0 release];
    }
    return;
}

-(void)notifyViewWillDisappear {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_placementViewDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 viewWillDisappear];
            [r0 release];
    }
    return;
}

-(void)notifyViewDidDisappear {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_placementViewDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 viewDidDisappear];
            [r0 release];
    }
    return;
}

-(void *)placementViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_placementViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setPlacementViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_placementViewDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_placementViewDelegate);
    return;
}

@end