@implementation UADSWebPlayerHandler

-(bool)destroy {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self webPlayerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 webPlayerView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r21 release];
    }
    r0 = [r19 webPlayerView];
    r0 = [r0 retain];
    [r0 destroy];
    [r0 release];
    [r19 setWebPlayerView:0x0];
    return 0x1;
}

-(bool)create:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 webPlayerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [UADSWebPlayerView alloc];
            r23 = [[r19 view] retain];
            [r20 getRect:r23];
            r24 = [[UADSApiWebPlayer getWebPlayerSettings] retain];
            r22 = [r22 initWithFrame:@"webplayer" viewId:r24 webPlayerSettings:r4];
            [r20 setWebPlayerView:r22];
            [r22 release];
            [r24 release];
            [r23 release];
            r20 = [[r20 webPlayerView] retain];
            r21 = [[UADSApiWebPlayer getWebPlayerEventSettings] retain];
            [r20 setEventSettings:r21];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return 0x1;
}

-(void *)getView {
    r0 = [self webPlayerView];
    return r0;
}

-(void)viewDidLoad:(void *)arg2 {
    return;
}

-(void)viewWillAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidDisappear:(void *)arg2 animated:(bool)arg3 {
    [self destroy];
    return;
}

-(void *)webPlayerView {
    r0 = self->_webPlayerView;
    return r0;
}

-(void)setWebPlayerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webPlayerView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webPlayerView, 0x0);
    return;
}

@end