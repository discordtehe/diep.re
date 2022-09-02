@implementation MRNativeCommandHandler

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
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r20];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)mrCommand:(void *)arg2 playVideoWithURL:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self videoPlayerManager];
    r0 = [r0 retain];
    [r0 playVideo:r21];
    [r21 release];
    [r0 release];
    return;
}

-(bool)shouldExecuteMRCommand:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 handlingWebviewRequests] & 0x1) != 0x0) {
            [r22 release];
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r19 requiresUserInteractionForPlacementType:[r0 adViewPlacementType]] != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    r20 = [r0 userInteractedWithWebView];
                    [r0 release];
            }
            else {
                    r20 = 0x1;
            }
            [r22 release];
    }
    else {
            r23 = [r19 executableWhileBlockingRequests];
            [r22 release];
            if ((r23 & 0x1) != 0x0) {
                    r0 = [r20 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r19 requiresUserInteractionForPlacementType:[r0 adViewPlacementType]] != 0x0) {
                            r0 = [r20 delegate];
                            r0 = [r0 retain];
                            r20 = [r0 userInteractedWithWebView];
                            [r0 release];
                    }
                    else {
                            r20 = 0x1;
                    }
                    [r22 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)handleNativeCommand:(void *)arg2 withProperties:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [MRCommand commandForString:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            if ([r21 shouldExecuteMRCommand:r22] != 0x0) {
                    [r22 setDelegate:r21];
                    r24 = [r22 executeWithParams:r20];
            }
            else {
                    r24 = 0x1;
            }
    }
    else {
            r24 = 0x0;
    }
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 nativeCommandCompleted:r19];
    [r0 release];
    if ((r24 & 0x1) == 0x0) {
            r26 = [[NSString stringWithFormat:@"Unknown command: %@"] retain];
            r25 = [[MPLogEvent eventWithMessage:r26 level:0x14] retain];
            [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
            [r25 release];
            [r26 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 nativeCommandFailed:r19 withMessage:@"Specified command is not implemented."];
            [r0 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)mrCommand:(void *)arg2 shouldUseCustomClose:(bool)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDUseCustomClose:arg3];
    [r0 release];
    return;
}

-(void)mrCommand:(void *)arg2 setOrientationPropertiesWithForceOrientation:(unsigned long long)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDSetOrientationPropertiesWithForceOrientationMask:arg3];
    [r0 release];
    return;
}

-(void)mrCommand:(void *)arg2 openURL:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDOpenCallForURL:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)mrCommand:(void *)arg2 expandWithParams:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDExpandWithParameters:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)mrCommand:(void *)arg2 resizeWithParams:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDResizeWithParameters:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)mrCommandClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleMRAIDClose];
    [r0 release];
    return;
}

-(void)videoPlayerManager:(void *)arg2 didFailToPlayVideoWithErrorMessage:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCommandFailed:@"playVideo" withMessage:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)videoPlayerManagerWillPresentVideo:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCommandWillPresentModalView];
    [r0 release];
    return;
}

-(void)videoPlayerManagerDidDismissVideo:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCommandDidDismissModalView];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)viewControllerForPresentingVideoPlayer {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)videoPlayerManager {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setVideoPlayerManager:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end