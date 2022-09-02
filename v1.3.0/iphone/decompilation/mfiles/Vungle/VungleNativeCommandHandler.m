@implementation VungleNativeCommandHandler

-(void)handleNativeCommand:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self webViewFacade] retain];
    r22 = [[VungleMRAIDCommandFactory buildCommand:r21 withParameters:r20 webViewFacade:r23] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [r22 setDelegate:self];
    [*(self + 0x10) addOperation:r22];
    [r22 release];
    return;
}

-(void *)initWithDelegate:(void *)arg2 webViewFacade:(void *)arg3 {
    r31 = r31 - 0x50;
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
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x18, r22);
            objc_storeWeak(r21 + 0x8, r19);
            r0 = [VNGOperationQueue new];
            r8 = *(r21 + 0x10);
            *(r21 + 0x10) = r0;
            [r8 release];
            [*(r21 + 0x10) setMaxConcurrentOperationCount:0x1];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r24 = [[r0 systemVersion] retain];
            r22 = [VungleUtil validateOSVersion:r24 againstRequiredOSVersion:@"8.0.0"];
            [r24 release];
            [r0 release];
            if (r22 != 0x0) {
                    [*(r21 + 0x10) setQualityOfService:0x21];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleJSCommand:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [*(r20 + 0x10) addOperation:r19];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)commandShouldUseCustomClose:(long long)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = self + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleMRAIDCustomClose:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleMRAIDCustomClose:r19];
            [r0 release];
    }
    return;
}

-(void)commandClose {
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
    r20 = self + 0x8;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(commandHandlerHandleMRAIDClose:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 commandHandlerHandleMRAIDClose:r19];
            [r0 release];
    }
    return;
}

-(void)commandOpenURL:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleMRAIDOpenCallForURL:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleMRAIDOpenCallForURL:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandSetOrientationPropertiesWithForceOrientation:(unsigned long long)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = self + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleMRAIDSetOrientationPropertiesWithForceOrientationMask:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleMRAIDSetOrientationPropertiesWithForceOrientationMask:r19];
            [r0 release];
    }
    return;
}

-(void)commandTPATEvent:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleTPAT:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleTPAT:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandConsentAction:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleConsentAction:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleConsentAction:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandUIAction:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleUIAction:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleUIAction:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandSuccessfulView {
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
    r21 = self + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r23 = [r0 respondsToSelector:@selector(commandHandler:handleSuccessfulView:), r3];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r19 handleSuccessfulView:0x1];
            [r0 release];
    }
    return;
}

-(void)commandUIAction:(void *)arg2 withValue:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = r21 + 0x8;
    r0 = objc_loadWeakRetained(r22);
    r25 = [r0 respondsToSelector:@selector(commandHandler:handleUIAction:withValue:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r0 = objc_loadWeakRetained(r22);
            [r0 commandHandler:r21 handleUIAction:r19 withValue:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)commandError:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleErrorCode:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleErrorCode:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandPrepareStoreView:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handlePrepareStoreViewWithAppStoreParameters:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handlePrepareStoreViewWithAppStoreParameters:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandPresentStoreView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self + 0x8;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 commandHandlerHandlePresentStoreView];
            [r0 release];
    }
    return;
}

-(void)commandExpandWith:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleExpandWith:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleExpandWith:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void)commandResizeWith:(void *)arg2 {
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
    r21 = r20 + 0x8;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(commandHandler:handleResizeWtih:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 commandHandler:r20 handleResizeWtih:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)javascriptCommandQueue {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setJavascriptCommandQueue:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)webViewFacade {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setWebViewFacade:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end