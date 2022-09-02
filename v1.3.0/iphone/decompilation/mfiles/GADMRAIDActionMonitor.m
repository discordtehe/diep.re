@implementation GADMRAIDActionMonitor

-(void *)initWithAd:(void *)arg2 visibilityMessageSource:(void *)arg3 webAdView:(void *)arg4 configuration:(void *)arg5 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r19 = arg5;
    r24 = [arg2 retain];
    r26 = [arg3 retain];
    r22 = [arg4 retain];
    r20 = [r19 retain];
    r23 = [[r29 - 0x70 super] init];
    if (r23 != 0x0) {
            var_1F0 = r20;
            var_218 = r26;
            objc_storeWeak((int64_t *)&r23->_webAdView, r22);
            var_220 = r24;
            objc_storeWeak((int64_t *)&r23->_ad, r24);
            objc_storeStrong((int64_t *)&r23->_configuration, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r28);
            *(r23 + r28) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r23);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            var_1F8 = (r29 - 0xa0) + 0x20;
            [r19 addObserverForName:*0x100e9c458 object:r22 queue:r21 usingBlock:r29 - 0xa0];
            [r21 release];
            [[NSOperationQueue mainQueue] retain];
            var_200 = (r29 - 0xc8) + 0x20;
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c430 object:r22 queue:r20 usingBlock:r29 - 0xc8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            var_208 = (r29 - 0xf0) + 0x20;
            objc_copyWeak((r29 - 0xf0) + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c438 object:r22 queue:r20 usingBlock:r29 - 0xf0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            var_210 = &var_118 + 0x20;
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c440 object:r22 queue:r20 usingBlock:&var_118];
            [r20 release];
            r0 = [NSOperationQueue mainQueue];
            r19 = &var_140 + 0x20;
            [r0 retain];
            objc_copyWeak(r19, r29 - 0x78);
            r22 = r22;
            [r21 addObserverForName:*0x100e9c448 object:r22 queue:r20 usingBlock:&var_140];
            [r20 release];
            r0 = [NSOperationQueue mainQueue];
            r25 = &var_168 + 0x20;
            [r0 retain];
            objc_copyWeak(r25, r29 - 0x78);
            [r21 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
            [r20 release];
            r0 = [var_1F0 presenter];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    var_228 = r19;
                    objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
                    [r20 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_copyWeak(&var_1B8 + 0x20, r29 - 0x78);
                    [r24 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_destroyWeak(&var_1B8 + 0x20);
                    objc_destroyWeak(&var_190 + 0x20);
                    r27 = var_200;
                    r20 = var_1F8;
                    r24 = var_220;
                    r26 = var_218;
                    r28 = var_210;
                    r19 = var_228;
            }
            else {
                    objc_copyWeak(&var_1E0 + 0x20, r29 - 0x78);
                    r26 = var_218;
                    [r24 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_destroyWeak(&var_1E0 + 0x20);
                    r27 = var_200;
                    r20 = var_1F8;
                    r24 = var_220;
                    r28 = var_210;
            }
            [r21 release];
            objc_destroyWeak(r25);
            objc_destroyWeak(r19);
            objc_destroyWeak(r28);
            objc_destroyWeak(var_208);
            objc_destroyWeak(r27);
            objc_destroyWeak(r20);
            objc_destroyWeak(r29 - 0x78);
            r20 = var_1F0;
    }
    [r20 release];
    [r22 release];
    [r26 release];
    [r24 release];
    r0 = r23;
    return r0;
}

-(void)dealloc {
    [[self->_updatePositionScheduler retain] retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void)setReferenceView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19->_configuration setReferenceView:arg2];
    if (*(int8_t *)(int64_t *)&r19->_isMRAIDAdView != 0x0) {
            [r19 updatePosition];
    }
    return;
}

-(void)didLoadMRAID {
    r31 = r31 - 0x1d0;
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
    r29 = &saved_fp;
    r20 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isMRAIDAdView));
    if (*(int8_t *)(r20 + r8) == 0x0) {
            *(int8_t *)(r20 + r8) = 0x1;
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b5b8];
            [r0 release];
            r0 = [GADScheduler alloc];
            r0 = [r0 initWithInterval:*0x100e9b5b8];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_updatePositionScheduler));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x68, r20);
            [*__dispatch_main_q retain];
            var_188 = (r29 - 0x90) + 0x20;
            objc_copyWeak((r29 - 0x90) + 0x20, r29 - 0x68);
            [r19 scheduleOnQueue:r21 block:r29 - 0x90];
            [*__dispatch_main_q release];
            [*(r20 + r22) start];
            r22 = objc_loadWeakRetained((int64_t *)&r20->_webAdView);
            [r20 updateVisibility];
            [[*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_configuration))) presenter] retain];
            var_190 = (r29 - 0xb8) + 0x20;
            objc_copyWeak((r29 - 0xb8) + 0x20, r29 - 0x68);
            [r19 addObserverForName:*0x100e9c130 object:r22 queue:0x0 usingBlock:r29 - 0xb8];
            var_198 = &var_E0 + 0x20;
            objc_copyWeak(&var_E0 + 0x20, r29 - 0x68);
            [r19 addObserverForName:*0x100e9c138 object:r22 queue:0x0 usingBlock:&var_E0];
            var_1A0 = &var_108 + 0x20;
            objc_copyWeak(&var_108 + 0x20, r29 - 0x68);
            [r19 addObserverForName:*0x100e9c140 object:r22 queue:0x0 usingBlock:&var_108];
            var_1B8 = r23;
            [[NSOperationQueue mainQueue] retain];
            var_1A8 = &var_130 + 0x20;
            objc_copyWeak(&var_130 + 0x20, r29 - 0x68);
            [r28 addObserverForName:*0x100e9c460 object:r22 queue:r21 usingBlock:&var_130];
            r28 = r25;
            [r21 release];
            r0 = [NSOperationQueue mainQueue];
            [r0 retain];
            var_1B0 = &var_158 + 0x20;
            objc_copyWeak(&var_158 + 0x20, r29 - 0x68);
            [r21 addObserverForName:r25 object:0x0 queue:r23 usingBlock:&var_158];
            [r23 release];
            r0 = [NSOperationQueue mainQueue];
            r19 = &var_180 + 0x20;
            [r0 retain];
            objc_copyWeak(r19, r29 - 0x68);
            [r21 addObserverForName:*0x100e9c468 object:r22 queue:r23 usingBlock:&var_180];
            [r23 release];
            [r20 notifyDeviceFeatures];
            objc_storeWeak((int64_t *)&r20->_expandablePresenter, r28);
            [r20 configureMRAIDCloseButtonForExpandable:r28];
            [r20 attachObserversToExpandablePresenter];
            r0 = *(r20 + var_1B8);
            r0 = [r0 swappableView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r20 postSDKReadyEventWhenSwappableViewAddedToWindow];
            }
            else {
                    [r20 postSDKReadyEvent];
            }
            objc_destroyWeak(r19);
            objc_destroyWeak(var_1B0);
            objc_destroyWeak(var_1A8);
            objc_destroyWeak(var_1A0);
            objc_destroyWeak(var_198);
            objc_destroyWeak(var_190);
            [r28 release];
            [r22 release];
            objc_destroyWeak(var_188);
            objc_destroyWeak(r29 - 0x68);
    }
    return;
}

-(void)postSDKReadyEventWhenSwappableViewAddedToWindow {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_configuration;
    r0 = [r0 swappableView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 window];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r20 postSDKReadyEvent];
    }
    else {
            objc_initWeak(&stack[-72], r20);
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_SDKReadyObservers));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r20 addObserverForName:*0x100e9c0e0 object:r19 queue:r22 usingBlock:&var_60];
            [r22 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    [r19 release];
    return;
}

-(void)attachObserversToExpandablePresenter {
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_expandableObservers));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_initWeak(&stack[-72], self);
    objc_loadWeakRetained((int64_t *)&self->_expandablePresenter);
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r20 addObserverForName:*0x100e9c128 object:r19 queue:r22 usingBlock:&var_60];
    [r22 release];
    [r19 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)postSDKReadyEvent {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_SDKReadyObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self updatePosition];
    r19 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [r19 dispatchSDKEvent:*0x100e98c58 parameters:r21];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyErrorWithMessage:(void *)arg2 forAction:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
    r22 = [r0 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    [r0 dispatchSDKEvent:*0x100e98c78 parameters:r22];
    [r19 release];
    [r21 release];
    [r0 release];
    [r22 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyDeviceFeatures {
    r31 = r31 - 0xb0;
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
    var_48 = **___stack_chk_guard;
    r19 = [[GADDevice sharedInstance] retain];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithBool:[MFMessageComposeViewController canSendText]] retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithBool:[r19 canMakePhoneCalls]] retain];
    r24 = [@(NO) retain];
    r25 = [@(NO) retain];
    r23 = [@(YES) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
    r26 = [r0 retain];
    [r23 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    [r0 asyncEvaluateFunction:*0x100e98c48 parameters:r26];
    [r0 release];
    [r26 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)updatePosition {
    r31 = r31 - 0x80;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    r19 = r0;
    r1 = @selector(standardizedOrientedApplicationFrame);
    r0 = objc_msgSend(r0, r1);
    v10 = v2;
    v11 = v3;
    r21 = (int64_t *)&r20->_usableInterfaceFrame;
    if ((CGRectEqualToRect(r0, r1) & 0x1) == 0x0) {
            *(int128_t *)r21 = d8;
            *(int128_t *)(r21 + 0x8) = d9;
            *(int128_t *)(r21 + 0x10) = d10;
            *(int128_t *)(r21 + 0x18) = d11;
            r1 = @selector(notifyOrientationToCreative);
            objc_msgSend(r20, r1);
    }
    var_68 = -d8;
    var_70 = -d9;
    r21 = objc_loadWeakRetained((int64_t *)&r20->_webAdView);
    r0 = sub_1007c9310();
    v8 = v0;
    v9 = v1;
    v14 = v2;
    v15 = v3;
    r8 = *_CGRectZero;
    d10 = *(int128_t *)r8;
    d11 = *(int128_t *)(r8 + 0x8);
    r0 = CGRectEqualToRect(r0, r1);
    if ((r0 & 0x1) == 0x0) {
            v0 = v8;
            v1 = v9;
            v2 = v14;
            v3 = v15;
            r0 = CGRectOffset(r0, r1, r2);
            v14 = v0;
            v15 = v1;
            v8 = v2;
            v9 = v3;
            r22 = (int64_t *)&r20->_creativeWebViewFrame;
            if ((sub_10081d144(r0) & 0x1) == 0x0) {
                    *r22 = d14;
                    *(r22 + 0x8) = d15;
                    *(r22 + 0x10) = d8;
                    *(r22 + 0x18) = d9;
                    v0 = v14;
                    v1 = v15;
                    v2 = v8;
                    v3 = v9;
                    r0 = sub_1007c9414();
                    r29 = r29;
                    r22 = [r0 retain];
                    r2 = *0x100e98c70;
                    [r21 dispatchSDKEvent:r2 parameters:r22];
                    [r22 release];
            }
    }
    r0 = r20->_configuration;
    r0 = [r0 referenceView];
    r29 = r29;
    [r0 retain];
    sub_1007c9310();
    v8 = v0;
    v9 = v1;
    v14 = v2;
    v15 = v3;
    r0 = [r22 release];
    r0 = CGRectEqualToRect(r0, r1);
    if ((r0 & 0x1) == 0x0) {
            r0 = CGRectOffset(r0, @selector(referenceView), r2);
            v8 = v8;
            v9 = v9;
            v10 = v14;
            v11 = v15;
            r20 = (int64_t *)&r20->_defaultAdFrame;
            if ((sub_10081d144(r0) & 0x1) == 0x0) {
                    *r20 = d8;
                    *(r20 + 0x8) = d9;
                    *(r20 + 0x10) = d10;
                    *(r20 + 0x18) = d11;
                    r20 = [sub_1007c9414() retain];
                    [r21 dispatchSDKEvent:*0x100e98c60 parameters:r20];
                    [r20 release];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)currentMRAIDState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_expandablePresenter);
    [r0 release];
    if (r0 != 0x0) {
            r8 = 0x100e98d38;
    }
    else {
            if (r19->_resizePresenter != 0x0) {
                    r8 = 0x100e98d40;
            }
            else {
                    r8 = 0x100e98d30;
            }
    }
    r0 = *r8;
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)updateVisibility {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isMRAIDAdView != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [[r0 stringValue] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
            r22 = [r0 retain];
            [r21 release];
            [r20 release];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_webAdView);
            [r0 dispatchSDKEvent:*0x100e98c40 parameters:r22];
            [r0 release];
            [r22 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyOrientationToCreative {
    r31 = r31 - 0xe0;
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
    r20 = self;
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    r19 = r0;
    [r0 standardizedOrientedScreenBounds];
    [r19 standardizedOrientedApplicationFrame];
    r22 = [NSMutableDictionary alloc];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    r25 = [[NSNumber numberWithDouble:r2] retain];
    r26 = @class(NSNumber);
    r26 = [[r26 numberWithBool:[r19 orientationLandscape]] retain];
    r27 = [[NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_C8 count:0x5] retain];
    r22 = [r22 initWithDictionary:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_expandablePresenter);
    r21 = [sub_10088cd38([r0 forcedAdOrientation]) retain];
    [r0 release];
    if (r21 != 0x0) {
            sub_100822058(r22, *0x100e98cd8, r21);
    }
    var_78 = **___stack_chk_guard;
    r0 = objc_loadWeakRetained((int64_t *)&r20->_webAdView);
    [r0 asyncEvaluateFunction:*0x100e98c50 parameters:r22];
    [r0 release];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyCurrentMRAIDState {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[self currentMRAIDState] retain];
    r19 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    r22 = [r0 retain];
    [r19 dispatchSDKEvent:*0x100e98c68 parameters:r22];
    [r22 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)restoreBannerState {
    r0 = self->_configuration;
    r0 = [r0 swappableView];
    r0 = [r0 retain];
    [r0 restoreSwappedView];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resizePresenter));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resizeObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self notifyCurrentMRAIDState];
    return;
}

-(void)handleResizeAction:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r27 = self;
    r22 = [arg2 retain];
    r23 = objc_loadWeakRetained((int64_t *)&r27->_webAdView);
    r28 = objc_loadWeakRetained((int64_t *)&r27->_ad);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r19 = [[*(r27 + r21) referenceView] retain];
    r0 = *(r27 + r21);
    r0 = [r0 swappableView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r23 != 0x0) {
            asm { ccmp       x28, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x19, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_1007ca450;

loc_1007c9c9c:
    var_140 = r0;
    var_130 = r19;
    var_128 = r23;
    var_120 = r28;
    r24 = [[*(r27 + r21) clickProtection] retain];
    r0 = [r22 userInfo];
    r0 = [r0 retain];
    r28 = r0;
    r19 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    var_138 = r22;
    r0 = [r22 userInfo];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95350];
    r29 = r29;
    r22 = [r0 retain];
    r23 = sub_10087e2e0(r24, r19, r22);
    [r22 release];
    [r20 release];
    [r19 release];
    [r28 release];
    [r24 release];
    if ((r23 & 0x1) == 0x0) goto loc_1007c9f4c;

loc_1007c9d88:
    r28 = var_120;
    r0 = [r28 rootViewControllerProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 topViewController];
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    if (r24 == 0x0) goto loc_1007c9f78;

loc_1007c9dcc:
    r0 = [r27 currentMRAIDState];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 isEqual:r2];
    [r0 release];
    r22 = var_138;
    r23 = var_128;
    if ((r20 & 0x1) != 0x0) goto loc_1007ca440;

loc_1007c9e18:
    r0 = [r22 userInfo];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95340];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    r19 = [[GADMRAIDResizeProperties alloc] initWithDictionary:r20];
    r25 = [r27 retain];
    var_78 = r25;
    r26 = [r23 retain];
    var_70 = r26;
    r19 = [r19 retain];
    var_68 = r19;
    var_148 = objc_retainBlock(r29 - 0x98);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_resizePresenter));
    r0 = *(r25 + r23);
    if (r0 == 0x0) goto loc_1007c9fa4;

loc_1007c9f00:
    [r0 setResizeProperties:r19];
    if (([*(r25 + r23) canPresent] & 0x1) == 0x0) goto loc_1007ca04c;

loc_1007c9f24:
    [*(r25 + r23) repositionContentIfNeeded];
    r21 = var_148;
    (*(r21 + 0x10))(r21);
    r23 = var_128;
    r28 = var_120;
    goto loc_1007ca410;

loc_1007ca410:
    [r21 release];
    [var_68 release];
    [var_70 release];
    [var_78 release];
    [r19 release];
    [r20 release];
    goto loc_1007ca440;

loc_1007ca440:
    [r24 release];
    goto loc_1007ca448;

loc_1007ca448:
    r19 = var_130;
    r0 = var_140;
    goto loc_1007ca450;

loc_1007ca450:
    [r0 release];
    [r19 release];
    [r28 release];
    [r23 release];
    [r22 release];
    return;

loc_1007ca04c:
    r0 = [NSString alloc];
    r0 = [r0 initWithFormat:@"Received invalid resize properties %@"];
    [r25 notifyErrorWithMessage:r0 forAction:@"setResizeProperties"];
    r19 = r19;
    [r0 release];
    r23 = var_128;
    r28 = var_120;
    goto loc_1007ca40c;

loc_1007ca40c:
    r21 = var_148;
    goto loc_1007ca410;

loc_1007c9fa4:
    var_158 = r20;
    r0 = [GADMRAIDResizePresenter alloc];
    var_150 = r19;
    r19 = r0;
    r0 = [var_120 context];
    r29 = r29;
    r20 = [r0 retain];
    r0 = r19;
    r19 = var_150;
    r0 = [r0 initWithContentView:r26 resizeProperties:r19 referenceView:var_130 context:r20];
    r8 = *(r25 + r23);
    *(r25 + r23) = r0;
    [r8 release];
    [r20 release];
    if ([*(r27 + r21) customCloseBlocked] != 0x0) {
            sub_1008833e8(*0x100e9c468, r26, 0x0);
    }
    else {
            r0 = *(r25 + r23);
            r0 = [r0 closeButton];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setUseCustomCloseImage:0x1];
            r19 = var_150;
            [r0 release];
    }
    if (([*(r25 + r23) canPresent] & 0x1) != 0x0) {
            [*(r25 + r23) addMonitor:[[GADClosePresenterActionMonitor alloc] initWithPresenter:*(r25 + r23) messageSource:r26]];
            r0 = [GADCustomCloseActionMonitor alloc];
            r22 = [[*(r25 + r23) closeButton] retain];
            r20 = [r0 initWithCloseButton:r22 messageSource:r26 customCloseBlocked:[*(r27 + r21) customCloseBlocked]];
            [r22 release];
            [*(r25 + r23) addMonitor:r20];
            [var_140 swapViewForImage];
            sub_1008b3ef0(*(r25 + r23), r24, var_120, var_148);
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_resizeObservers));
            r8 = *(r25 + r21);
            *(r25 + r21) = r0;
            [r8 release];
            objc_initWeak(r29 - 0xa0, r25);
            objc_copyWeak(&var_C8 + 0x20, r29 - 0xa0);
            [r19 addObserverForName:*0x100e9c118 object:r22 queue:0x0 usingBlock:&var_C8];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0xa0);
            [r19 addObserverForName:*0x100e9c0e0 object:var_140 queue:0x0 usingBlock:&var_F0];
            objc_copyWeak(&var_118 + 0x20, r29 - 0xa0);
            [r19 addObserverForName:*0x100e9c128 object:r22 queue:0x0 usingBlock:&var_118];
            sub_1008004f8(0x0, var_120);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(r29 - 0xa0);
            [r20 release];
            [r9 release];
            r22 = var_138;
            r23 = var_128;
            r28 = var_120;
            r20 = var_158;
            r19 = var_150;
    }
    else {
            r19 = [[NSString alloc] initWithFormat:@"Received invalid resize properties %@"];
            [r25 notifyErrorWithMessage:r19 forAction:@"setResizeProperties"];
            r0 = r19;
            r19 = var_150;
            [r0 release];
            r23 = var_128;
            r28 = var_120;
            r20 = var_158;
    }
    goto loc_1007ca40c;

loc_1007c9f78:
    [r27 notifyErrorWithMessage:@"Resizing is not allowed without an available view controller." forAction:@"setResizeProperties"];
    r22 = var_138;
    r23 = var_128;
    goto loc_1007ca440;

loc_1007c9f4c:
    [r27 notifyErrorWithMessage:@"Resizing an ad is not allowed until the user interacts with the ad." forAction:@"resize"];
    r22 = var_138;
    r23 = var_128;
    r28 = var_120;
    goto loc_1007ca448;
}

-(void)handleAdWillExpandEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e9e2d8] retain];
    [r0 release];
    [r19 configureMRAIDCloseButtonForExpandable:r20];
    r21 = (int64_t *)&r19->_expandablePresenter;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 == 0x0) {
            objc_storeWeak(r21, r20);
            [r19 attachObserversToExpandablePresenter];
    }
    [r20 release];
    return;
}

-(void)configureMRAIDCloseButtonForExpandable:(void *)arg2 {
    r0 = [arg2 closeButton];
    r0 = [r0 retain];
    [r0 setPreferredPosition:0x0];
    [r0 setPreferredTapSize:0x0];
    [r0 setEnabledOnCustomClose:0x1];
    sub_1008833e8(*0x100e9c6b0, r0, 0x0);
    [r19 release];
    return;
}

-(void)handleOpenCalendarAction:(void *)arg2 {
    [self notifyErrorWithMessage:@"Creating calendar events is not supported." forAction:@"createCalendarEvent"];
    return;
}

-(void)handleAdExpandDidEndEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e9e2d8] retain];
    [r0 release];
    r21 = (int64_t *)&r19->_expandablePresenter;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 == r20) {
            objc_storeWeak(r21, 0x0);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_expandableObservers));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            [r19 restoreBannerState];
    }
    [r20 release];
    return;
}

-(void)handleStorePictureAction:(void *)arg2 {
    [self notifyErrorWithMessage:@"Saving pictures is not permitted in this application." forAction:@"storePicture"];
    return;
}

-(void)handleUnloadAction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b9e0];
    [r0 release];
    if (r21 != 0x0) {
            sub_1008833e8(*0x100e9c470, objc_loadWeakRetained((int64_t *)&r19->_ad), 0x0);
            [r19 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expandableObservers, 0x0);
    objc_destroyWeak((int64_t *)&self->_expandablePresenter);
    objc_storeStrong((int64_t *)&self->_resizeObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_resizePresenter, 0x0);
    objc_storeStrong((int64_t *)&self->_updatePositionScheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_SDKReadyObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_destroyWeak((int64_t *)&self->_webAdView);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

-(void)handleSetOrientationPropertiesAction:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r29 = &saved_fp;
    r25 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r25->_expandablePresenter);
    if (r20 != 0x0) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
            [r0 release];
            r22 = [[r21 objectForKeyedSubscript:*0x100e95400] retain];
            r23 = [[r21 objectForKeyedSubscript:*0x100e95408] retain];
            r0 = [r21 objectForKeyedSubscript:*0x100e953f8];
            r29 = r29;
            r24 = [r0 retain];
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r27 = @selector(isKindOfClass:);
                    [NSString class];
                    if ((objc_msgSend(r23, r27) & 0x1) != 0x0) {
                            r0 = [UIApplication sharedApplication];
                            r0 = [r0 retain];
                            r25 = sub_10088c708([r0 statusBarOrientation]);
                            [r0 release];
                            if (([r22 boolValue] & 0x1) != 0x0) {
                                    r25 = 0x1e;
                            }
                            else {
                                    if ([r23 isEqual:r2] != 0x0) {
                                            r26 = [r20 adOrientations];
                                            if (r26 != 0x0 && sub_10088c71c(r26) == 0x0) {
                                                    if (!CPU_FLAGS & E) {
                                                            r25 = r25;
                                                    }
                                                    else {
                                                            r25 = r26;
                                                    }
                                            }
                                    }
                                    else {
                                            r25 = sub_10088cd4c();
                                    }
                            }
                            [r20 setAdOrientationsOverridesLockedOrientation:0x1];
                            if ([r24 respondsToSelector:r2] != 0x0) {
                                    [r24 floatValue];
                                    asm { fcvt       d0, s0 };
                            }
                            [r20 setOrientationUpdateAnimationDuration:@selector(floatValue)];
                            [r20 setAdOrientations:r25];
                    }
                    else {
                            [r25 notifyErrorWithMessage:@"Received invalid orientation properties" forAction:@"setOrientationProperties"];
                    }
            }
            else {
                    [r25 notifyErrorWithMessage:@"Received invalid orientation properties" forAction:@"setOrientationProperties"];
            }
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

@end