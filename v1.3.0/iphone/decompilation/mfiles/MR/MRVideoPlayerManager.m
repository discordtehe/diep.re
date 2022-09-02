@implementation MRVideoPlayerManager

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x8, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_MPMoviePlayerPlaybackDidFinishNotification object:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)moviePlayerPlaybackDidFinish:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoPlayerManagerDidDismissVideo:self];
    [r0 release];
    return;
}

-(void)playVideo:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [objc_alloc() initWithContentURL:r19];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 videoPlayerManagerWillPresentVideo:r20];
            [r0 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 viewControllerForPresentingVideoPlayer];
            r0 = [r0 retain];
            [r0 presentViewController:r21 animated:0x1 completion:0x0];
            [r0 release];
            [r22 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 removeObserver:r20 name:**_MPMoviePlayerPlaybackDidFinishNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r22 release];
    }
    else {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = r0;
            [r0 videoPlayerManager:r20 didFailToPlayVideoWithErrorMessage:@"URI was not valid."];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

@end