@implementation TJAdUnitJSBridge

-(void *)initWithAdView:(void *)arg2 placement:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adView, r23);
            objc_storeStrong((int64_t *)&r21->_placement, r22);
            [TJCUtil getCurrentVolume];
            *(int32_t *)(int64_t *)&r21->_currentVolume = s0;
            *(int8_t *)(int64_t *)&r21->_currentMuteStatus = [r21->_adView getVideoMuteStatus];
            r0 = [r19 mainWebView];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 webView] retain];
            r0 = [TJWebViewJavascriptBridge bridgeForWebView:r25];
            r0 = [r0 retain];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_bridge));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
            r22 = *(r21 + r26);
            r23 = [[r19 mainWebView] retain];
            [r22 setWebViewDelegate:r23];
            [r23 release];
            r22 = *(r21 + r26);
            var_58 = [r21 retain];
            [r22 registerHandler:@"__v2_default_handler__" handler:&var_78];
            [var_58 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)clear {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([UIAlertController class] != 0x0) {
            r0 = [r19 alertController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 dismissViewControllerAnimated:0x0 completion:0x0];
            [r0 release];
            r1 = @selector(setAlertController:);
    }
    else {
            r0 = [r19 alert];
            r0 = [r0 retain];
            [r0 dismissWithClickedButtonIndex:0x0 animated:0x0];
            [r0 release];
            r0 = [r19 alert];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setDelegate:0x0];
            [r0 release];
            r1 = @selector(setAlert:);
    }
    objc_msgSend(r19, r1);
    [r19 clearVolumeCheckTimer];
    r0 = [r19 adView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 backButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    [r20 release];
    [r19 setPlacement:0x0];
    [r19 setAdView:0x0];
    [r19 setBridge:0x0];
    return;
}

-(bool)dispatchMessage:(void *)arg2 withCallback:(void *)arg3 {
    r31 = r31 - 0x50;
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
    r0 = [r19 objectForKeyedSubscript:@"method"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [NSString stringWithFormat:@"%@:callback:"];
            r0 = [r0 retain];
            r23 = NSSelectorFromString(r0);
            [r0 release];
            if ([r21 respondsToSelector:r2] != 0x0) {
                    r24 = objc_retainBlock(r20);
                    [r21 performSelector:r23 withObject:r19 withObject:r24];
                    [r24 release];
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)log:(void *)arg2 callback:(void *)arg3 {
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
    r19 = arg3;
    r22 = _cmd;
    r23 = self;
    r24 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"message"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 == 0x0) {
            r0 = [NSString stringWithUTF8String:"/Users/mtang/Workspace/plugins/tapjoyconnectlibrary/source/TJCAdvertising/TJAdUnit/TJAdUnitJSBridge.m"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r24 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r24;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r25 = [r0 retain];
            [r24 release];
            r0 = [NSAssertionHandler currentHandler];
            r29 = r29;
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r22 object:r23 file:r25 lineNumber:0xba description:@"log message does not exist"];
            [r25 release];
            [r0 release];
    }
    [TJCLog logWithLevel:0x4 format:@"%@"];
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)alert:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r22 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r28 objectForKeyedSubscript:@"buttons"] retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r0 = *(r22 + r24);
    r0 = [r0 backButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r22->_backHidden = [r0 isHidden];
    [r0 release];
    r1 = @selector(count);
    var_B0 = r1;
    if (objc_msgSend(r21, r1) == 0x0) {
            r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            r21 = r23;
    }
    if ([UIAlertController class] != 0x0) {
            r26 = [[r28 objectForKeyedSubscript:@"title"] retain];
            r25 = [[r28 objectForKeyedSubscript:@"message"] retain];
            r0 = [UIAlertController alertControllerWithTitle:r26 message:r25 preferredStyle:0x1];
            r29 = r29;
            r23 = [r0 retain];
            [r22 setAlertController:r23];
            [r23 release];
            [r25 release];
            [r26 release];
            if (objc_msgSend(r21, var_B0) != 0x0) {
                    var_B8 = r24;
                    var_C8 = r28;
                    r26 = 0x0;
                    r24 = r20;
                    do {
                            r20 = [[r21 objectAtIndexedSubscript:r26] retain];
                            var_88 = [r24 retain];
                            [[UIAlertAction actionWithTitle:r20 style:0x0 handler:&var_A8] retain];
                            [r20 release];
                            r0 = [r22 alertController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addAction:r2];
                            [r20 release];
                            [r19 release];
                            [var_88 release];
                            r26 = r26 + 0x1;
                    } while (objc_msgSend(r21, var_B0) > r26);
                    r28 = var_C8;
                    r27 = @selector(backButton);
                    r20 = r24;
                    r24 = var_B8;
            }
            else {
                    r27 = @selector(backButton);
            }
            r0 = *(r22 + r24);
            r0 = objc_msgSend(r0, r27);
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r23 = [[*(r22 + r24) webViewController] retain];
            r22 = [[r22 alertController] retain];
            [r23 presentViewController:r22 animated:0x1 completion:0x0];
            [r22 release];
            [r23 release];
    }
    else {
            var_B8 = r24;
            r24 = r20;
            r19 = [UIAlertView alloc];
            r20 = [[r28 objectForKeyedSubscript:@"title"] retain];
            r0 = [r28 objectForKeyedSubscript:@"message"];
            r29 = r29;
            r23 = [r0 retain];
            r19 = [r19 initWithTitle:r20 message:r23 delegate:r22 cancelButtonTitle:0x0 otherButtonTitles:0x0];
            [r22 setAlert:r19];
            [r19 release];
            [r23 release];
            [r20 release];
            if (objc_msgSend(r21, var_B0) != 0x0) {
                    r23 = 0x0;
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_alert));
                    do {
                            r19 = *(r22 + r27);
                            r0 = [r21 objectAtIndexedSubscript:r23];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 addButtonWithTitle:r20];
                            [r20 release];
                            r23 = r23 + 0x1;
                    } while (objc_msgSend(r21, var_B0) > r23);
            }
            r20 = r24;
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_alertCallback));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = *(r22 + var_B8);
            r0 = [r0 backButton];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            [r22->_alert show];
    }
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r28 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)displayVideo:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[arg2 objectForKeyedSubscript:@"url"] retain];
    [r21 release];
    [self->_adView setupVideoPlayer:r19 delegate:self];
    [r19 release];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_alertCallback));
    r20 = *(r19 + r22);
    if (r20 != 0x0) {
            r0 = [NSNumber numberWithInteger:r3];
            r29 = r29;
            (*(r20 + 0x10))(r20, [r0 retain]);
            [r21 release];
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
    }
    r20 = *(int8_t *)(int64_t *)&r19->_backHidden;
    r0 = r19->_adView;
    r0 = [r0 backButton];
    r0 = [r0 retain];
    [r0 setHidden:r20];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_alert));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    return;
}

-(void)playVideo:(void *)arg2 callback:(void *)arg3 {
    r20 = self->_adView;
    r22 = [arg3 retain];
    [r20 playVideo];
    (*(r22 + 0x10))(arg3, [@(YES) retain]);
    [r22 release];
    [r20 release];
    return;
}

-(void)pauseVideo:(void *)arg2 callback:(void *)arg3 {
    r20 = self->_adView;
    r22 = [arg3 retain];
    [r20 pauseVideo];
    (*(r22 + 0x10))(arg3, [@(YES) retain]);
    [r22 release];
    [r20 release];
    return;
}

-(void)clearVideo:(void *)arg2 callback:(void *)arg3 {
    r20 = self->_adView;
    r22 = [arg3 retain];
    [r20 clearVideo];
    (*(r22 + 0x10))(arg3, [@(YES) retain]);
    [r22 release];
    [r20 release];
    return;
}

-(void)setVideoMute:(void *)arg2 callback:(void *)arg3 {
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[arg2 objectForKeyedSubscript:@"enabled"] retain];
    [r23 release];
    r23 = [r21 boolValue];
    [r21 release];
    [self->_adView muteVideo:r23];
    (*(r20 + 0x10))(arg3, [@(YES) retain]);
    [r20 release];
    [r21 release];
    return;
}

-(void)setBackgroundColor:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r23 = self;
    r22 = [arg2 retain];
    r20 = [r19 retain];
    r21 = [[arg2 objectForKeyedSubscript:@"backgroundColor"] retain];
    [r22 release];
    r0 = [r21 substringToIndex:0x1];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r21 != 0x0 && ([r22 isEqualToString:r2] & 0x1) != 0x0) {
            r0 = [TJCUtil colorFromHexString:r21];
            r29 = r29;
            r24 = [r0 retain];
            r0 = r23->_adView;
    }
    else {
            r23 = r23->_adView;
            r0 = [UIColor blackColor];
            r29 = r29;
            r24 = [r0 retain];
            r0 = r23;
    }
    [r0 setBackgroundViewColor:r2];
    [r24 release];
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)setBackgroundWebViewContent:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = self;
    r23 = [arg2 retain];
    r21 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"backgroundContent"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (r20 != 0x0) {
            [r22->_adView setBackgroundViewContent:r20];
            r0 = [NSNumber numberWithBool:r2];
    }
    else {
            r0 = [NSNumber numberWithBool:r2];
    }
    (*(r21 + 0x10))(r19, [r0 retain]);
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)isStatusBarHidden:(void *)arg2 callback:(void *)arg3 {
    [arg3 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    (*(arg3 + 0x10))(arg3, [[NSNumber numberWithBool:[r0 isStatusBarHidden]] retain]);
    [r23 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)triggerEvent:(void *)arg2 callback:(void *)arg3 {
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
    r21 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"eventName"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1008fa6d8;

loc_1008fa650:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 videoManager];
    r0 = [r0 retain];
    [r0 notifyVideoAdBegan];
    [r0 release];
    [r21 release];
    r20 = (int64_t *)&r20->_adUnitVideoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 == 0x0) goto loc_1008fa8ac;

loc_1008fa6c0:
    r23 = objc_loadWeakRetained(r20);
    r21 = @selector(videoAdBegan);
    goto loc_1008fa774;

loc_1008fa774:
    r24 = [r23 respondsToSelector:r2];
    [r23 release];
    [r22 release];
    if (r24 == 0x0) goto loc_1008fa8ac;

loc_1008fa7a0:
    r0 = objc_loadWeakRetained(r20);
    r20 = r0;
    objc_msgSend(r0, r21);
    goto loc_1008fa7b4;

loc_1008fa7b4:
    [r20 release];
    goto loc_1008fa8ac;

loc_1008fa8ac:
    [r19 release];
    return;

loc_1008fa6d8:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1008fa7c0;

loc_1008fa6f0:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 videoManager];
    r0 = [r0 retain];
    [r0 notifyVideoAdCompleted];
    [r0 release];
    [r21 release];
    r20 = (int64_t *)&r20->_adUnitVideoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 == 0x0) goto loc_1008fa8ac;

loc_1008fa760:
    r23 = objc_loadWeakRetained(r20);
    r21 = @selector(videoAdCompleted);
    goto loc_1008fa774;

loc_1008fa7c0:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1008fa8ac;

loc_1008fa7d8:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 videoManager];
    r0 = [r0 retain];
    [r0 notifyVideoAdError:@"Video playback error has occurred. Please try again later."];
    [r0 release];
    [r21 release];
    r20 = (int64_t *)&r20->_adUnitVideoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 == 0x0) goto loc_1008fa8ac;

loc_1008fa850:
    r0 = objc_loadWeakRetained(r20);
    r24 = [r0 respondsToSelector:@selector(videoAdError:)];
    [r0 release];
    [r22 release];
    if (r24 == 0x0) goto loc_1008fa8ac;

loc_1008fa88c:
    r0 = objc_loadWeakRetained(r20);
    r20 = r0;
    [r0 videoAdError:@"Video playback error has occurred. Please try again later."];
    goto loc_1008fa7b4;
}

-(void)loadStoreURL:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 objectForKeyedSubscript:@"url"] retain];
    r0 = [r19 objectForKeyedSubscript:@"showSpinner"];
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"showSpinner"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = [[r19 objectForKeyedSubscript:@"showSpinner"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r27 = [r0 retain];
            if (r25 != r27) {
                    r26 = 0x0;
            }
            else {
                    r26 = [r22 shouldUseNewAppStoreExperience];
            }
            [r27 release];
            [r25 release];
    }
    else {
            r26 = [r22 shouldUseNewAppStoreExperience];
    }
    [r24 release];
    *(int8_t *)(int64_t *)&r22->_isStoreLoaded = 0x0;
    if (r21 == 0x0) goto loc_1008facbc;

loc_1008faaf4:
    if (NSClassFromString(@"SKStoreProductViewController") == 0x0) goto loc_1008facfc;

loc_1008fab04:
    r26 = r23 & (r26 ^ 0x1);
    r0 = [NSURL URLWithString:r21];
    r0 = [r0 retain];
    r24 = [[r0 lastPathComponent] retain];
    [r0 release];
    r23 = [[r24 stringByReplacingOccurrencesOfString:@"id" withString:@""] retain];
    [r24 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
    r29 = r29;
    r24 = [r0 retain];
    r0 = [TJCustomStoreProductViewController alloc];
    r0 = [r0 init];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewController));
    r8 = *(r22 + r27);
    *(r22 + r27) = r0;
    [r8 release];
    [*(r22 + r27) setDelegate:r22];
    if (r26 != 0x0) {
            r0 = r22->_adView;
            r0 = [r0 loadingView];
            r0 = [r0 retain];
            [r0 enable];
            [r25 release];
    }
    r25 = *(r22 + r27);
    var_78 = [r20 retain];
    [r25 loadProductWithParameters:r24 completionBlock:&var_A0];
    [var_78 release];
    [r24 release];
    r0 = r23;
    goto loc_1008fad54;

loc_1008fad54:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1008facfc:
    [TJCLog logWithLevel:0x4 format:@"unable to load store -- no SKStoreProductViewController found"];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fad38;

loc_1008fad38:
    (*(r20 + 0x10))(r20, [r0 retain]);
    r0 = r22;
    goto loc_1008fad54;

loc_1008facbc:
    [TJCLog logWithLevel:0x4 format:@"unable to load store -- no URL"];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fad38;
}

-(void)displayStoreURL:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:@"url"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_callback));
    r0 = *(r22 + r25);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_splitViewCallback));
    if (r0 == *(r22 + r8)) {
            *(r22 + r8) = 0x0;
            [r0 release];
    }
    r0 = objc_retainBlock(r20);
    r8 = *(r22 + r25);
    *(r22 + r25) = r0;
    [r8 release];
    if (([r22 canShowStoreURL:r19] & 0x1) == 0x0) goto loc_1008fb0e8;

loc_1008fb040:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_isStoreLoaded));
    if (*(int8_t *)(r22 + r26) == 0x0) goto loc_1008fb130;

loc_1008fb050:
    r27 = r22->_splitView;
    if (r27 != 0x0) {
            r0 = r22->_storeViewController;
            r0 = [r0 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r27 == r0) {
                    [r22 closeSplitView];
            }
    }
    if (*(int8_t *)(r22 + r26) == 0x0) goto loc_1008fb130;

loc_1008fb0a8:
    [r22 applyStoreViewStyle:r19 callback:r20];
    [r22->_storeViewController showStoreWithView:r22->_adView];
    goto loc_1008fb324;

loc_1008fb324:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008fb130:
    if (r21 == 0x0) goto loc_1008fb228;

loc_1008fb134:
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setObject:r2 forKeyedSubscript:r3];
    r0 = [r19 objectForKeyedSubscript:@"showSpinner"];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r27 = [[r19 objectForKeyedSubscript:@"showSpinner"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r27 release];
            [r26 release];
            if (r27 != r0) {
                    r23 = [[r19 objectForKeyedSubscript:@"showSpinner"] retain];
                    r0 = r24;
                    r1 = @selector(setObject:forKeyedSubscript:);
            }
            else {
                    r23 = [[NSNumber numberWithBool:r2] retain];
                    r0 = r24;
                    r1 = @selector(setObject:forKeyedSubscript:);
            }
    }
    else {
            r23 = [[NSNumber numberWithBool:r2] retain];
            r0 = r24;
            r1 = @selector(setObject:forKeyedSubscript:);
    }
    objc_msgSend(r0, r1);
    [r23 release];
    var_60 = [r19 retain];
    var_58 = [r20 retain];
    [r22 loadStoreURL:r24 callback:&var_88];
    [var_58 release];
    [var_60 release];
    r0 = r24;
    goto loc_1008fb320;

loc_1008fb320:
    [r0 release];
    goto loc_1008fb324;

loc_1008fb228:
    [TJCLog logWithLevel:0x4 format:@"unable to display store -- store was not preloaded and no url was provided"];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fb104;

loc_1008fb104:
    (*(r20 + 0x10))(r20, [r0 retain]);
    [r23 release];
    r0 = *(r22 + r25);
    *(r22 + r25) = 0x0;
    goto loc_1008fb320;

loc_1008fb0e8:
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fb104;
}

-(void)closeSplitView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_splitView));
    r21 = *(r19 + r20);
    r0 = r19->_storeViewController;
    r0 = [r0 view];
    r0 = [r0 retain];
    if (r21 != r0) {
            [r0 release];
            r0 = *(r19 + r20);
            [r0 removeFromSuperview];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    else {
            r21 = *(r19 + r20);
            [r0 release];
            r0 = *(r19 + r20);
            if (r21 != 0x0) {
                    *(r19 + r20) = 0x0;
                    [r0 release];
                    [r19 closeStoreView];
            }
            else {
                    [r0 removeFromSuperview];
                    r0 = *(r19 + r20);
                    *(r19 + r20) = 0x0;
                    [r0 release];
            }
    }
    return;
}

-(void)closeSplitViewWithCallback {
    [self closeSplitView];
    [self clearSplitViewCallback];
    return;
}

-(void)clearSplitViewCallback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_splitViewCallback));
    r20 = *(r19 + r22);
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, [@(YES) retain]);
            [r21 release];
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
    }
    return;
}

-(void)closeStoreView {
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewController));
    [*(r19 + r20) closeStore];
    r0 = *(r19 + r20);
    *(r19 + r20) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_isStoreLoaded = 0x0;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r0 = *(r19 + r23);
    r0 = [r0 loadingView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 enabled];
    [r0 release];
    if (r22 != 0x0) {
            r0 = *(r19 + r23);
            r0 = [r0 loadingView];
            r0 = [r0 retain];
            [r0 disable];
            [r19 release];
    }
    return;
}

-(bool)canShowStoreURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 objectForKeyedSubscript:@"style"];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0 && [r19 isEqualToString:r2] == 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = [r20->_placement isForcedTopView];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)applyStoreViewStyle:(void *)arg2 callback:(void *)arg3 {
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
    r0 = [r19 objectForKeyedSubscript:@"style"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_splitView));
            if (*(r21 + r24) != 0x0) {
                    [r21 closeSplitView];
            }
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewController));
            [*(r21 + r25) setStyle:r22];
            r23 = [[TJSplitViewUtil getSplitViewLayout:r19] retain];
            [*(r21 + r25) setSplitViewLayout:r23];
            [r23 release];
            r0 = *(r21 + r25);
            r0 = [r0 view];
            r0 = [r0 retain];
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_splitViewCallback));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    else {
            if (([r21 shouldUseNewAppStoreExperience] & 0x1) != 0x0 || [r22 isEqualToString:r2] != 0x0) {
                    [r21->_storeViewController setStyle:@"newAppStoreExperience"];
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)shouldUseNewAppStoreExperience {
    r0 = self->_placement;
    if (r0 != 0x0 && ([r0 useNewAppStoreExperience] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setCloseButtonClickable:(void *)arg2 callback:(void *)arg3 {
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[arg2 objectForKeyedSubscript:@"clickable"] retain];
    [r23 release];
    r23 = [r21 boolValue];
    r0 = self->_adView;
    r0 = [r0 backButton];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:r23];
    [r0 release];
    (*(r20 + 0x10))(arg3, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)setSpinnerVisible:(void *)arg2 callback:(void *)arg3 {
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
    r19 = arg3;
    r23 = self;
    r24 = [arg2 retain];
    r20 = [r19 retain];
    r21 = [[arg2 objectForKeyedSubscript:@"visible"] retain];
    r22 = [[arg2 objectForKeyedSubscript:@"title"] retain];
    [r24 release];
    r26 = [r21 boolValue];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r0 = *(r23 + r27);
    r0 = [r0 loadingView];
    r29 = &saved_fp;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_1008fc14c;

loc_1008fc0f0:
    [r25 enable];
    [r25 release];
    if (r22 == 0x0) goto loc_1008fc1b8;

loc_1008fc10c:
    r0 = *(r23 + r27);
    r0 = [r0 loadingView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 loadingLabel];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    goto loc_1008fc1a4;

loc_1008fc1a4:
    [r0 setText:r2];
    [r24 release];
    [r23 release];
    goto loc_1008fc1b8;

loc_1008fc1b8:
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    return;

loc_1008fc14c:
    [r25 disable];
    [r25 release];
    r0 = *(r23 + r27);
    r0 = [r0 loadingView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 loadingLabel];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    goto loc_1008fc1a4;
}

-(void)setCloseButtonVisible:(void *)arg2 callback:(void *)arg3 {
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
    r19 = arg3;
    r22 = self;
    r23 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"visible"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if ([r21 boolValue] != 0x0) {
            r24 = [[TJCUtil getPathToResource:@"TJCclose_button" ofType:@"png"] retain];
            r23 = [[UIImage imageNamed:r24] retain];
            [r24 release];
            r0 = r22->_adView;
            r0 = [r0 backButton];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setImage:r23 forState:0x0];
            [r0 release];
            r0 = r23;
    }
    else {
            r0 = *(r22 + sign_extend_64(*(int32_t *)ivar_offset(_adView)));
            r0 = [r0 backButton];
            r0 = [r0 retain];
            [r0 frame];
            UIGraphicsBeginImageContextWithOptions();
            [r24 release];
            [UIGraphicsGetImageFromCurrentImageContext() retain];
            UIGraphicsEndImageContext();
            r0 = *(r22 + r25);
            r0 = [r0 backButton];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setImage:r24 forState:0x0];
            [r0 release];
            r0 = r24;
    }
    [r0 release];
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)clearComplete:(void *)arg2 {
    [arg2 setComplete:0x0];
    return;
}

-(void)setAllowRedirect:(void *)arg2 callback:(void *)arg3 {
    r22 = [arg2 retain];
    r21 = self->_adView;
    r24 = [arg3 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"enabled"] retain];
    [r22 release];
    [r21 setAllowRedirect:[r20 boolValue]];
    [r20 release];
    (*(r24 + 0x10))(arg3, [@(YES) retain]);
    [r24 release];
    [r20 release];
    return;
}

-(void)checkAppInstalled:(void *)arg2 callback:(void *)arg3 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [[arg2 objectForKeyedSubscript:@"protocol"] retain];
    [r22 release];
    r22 = [[NSString stringWithFormat:@"%@://somedata"] retain];
    r21 = [[NSURL URLWithString:r22] retain];
    [r22 release];
    [r25 release];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    (*(r20 + 0x10))(arg3, [[NSNumber numberWithBool:[r0 canOpenURL:r21]] retain]);
    [r20 release];
    [r22 release];
    [r23 release];
    [r21 release];
    return;
}

-(void)displayURL:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r25 = _cmd;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 objectForKeyedSubscript:@"url"] retain];
    r22 = [[r19 objectForKeyedSubscript:@"inapp"] retain];
    r0 = [r19 objectForKeyedSubscript:@"style"];
    r29 = &saved_fp;
    r28 = [r0 retain];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) {
            r0 = [NSString stringWithUTF8String:"/Users/mtang/Workspace/plugins/tapjoyconnectlibrary/source/TJCAdvertising/TJAdUnit/TJAdUnitJSBridge.m"];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (r26 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r26;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r27 = [r0 retain];
            [r26 release];
            r0 = [NSAssertionHandler currentHandler];
            r29 = r29;
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r25 object:r24 file:r27 lineNumber:0x214 description:@"required openURL parameters do not exist"];
            [r27 release];
            [r0 release];
    }
    if ([r28 isEqualToString:r2] != 0x0) {
            var_80 = r20;
            var_78 = r28;
            r25 = [[TJSplitViewUtil getSplitViewLayout:r19] retain];
            r26 = [[TJSplitViewUtil getExitHosts:r19] retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
            [*(r24 + r20) bounds];
            v8 = v2;
            v9 = v3;
            r27 = [[TJSplitWebView alloc] initWithFrame:0x1 webkitPreferred:r25 layout:r26 exitHosts:r24 bridge:r6];
            r23 = [[NSURL URLWithString:r21] retain];
            r28 = [[NSURLRequest requestWithURL:r23] retain];
            [r27 loadRequest:r28];
            [r28 release];
            [r23 release];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_splitView));
            if (*(r24 + r28) != 0x0) {
                    [r24 closeSplitView];
            }
            r23 = *(r24 + r28);
            *(r24 + r28) = r27;
            r27 = [r27 retain];
            [r23 release];
            [*(r24 + r20) addSubview:r27];
            [r27 updateFrameWithSize:r27];
            r20 = var_80;
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_splitViewCallback));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            [r27 release];
            [r26 release];
            [r25 release];
            r28 = var_78;
    }
    else {
            if ([r22 boolValue] != 0x0) {
                    r25 = [[UIViewController alloc] initWithNibName:0x0 bundle:0x0];
                    r23 = [UIWebView alloc];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
                    [*(r24 + r8) bounds];
                    r0 = [r23 initWithFrame:0x0];
                    r27 = r0;
                    [r0 setDelegate:r24];
                    [r27 setAutoresizingMask:0x12];
                    [r27 setScalesPageToFit:0x1];
                    r0 = [NSURL URLWithString:r21];
                    r0 = [r0 retain];
                    r23 = [[NSURLRequest requestWithURL:r0] retain];
                    [r27 loadRequest:r23];
                    [r23 release];
                    [r0 release];
                    [r25 setView:r27];
                    r23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x0 target:r24 action:@selector(dismissURLModal)];
                    r0 = [r25 navigationItem];
                    r0 = [r0 retain];
                    [r0 setLeftBarButtonItem:r23];
                    r28 = r28;
                    [r0 release];
                    [r23 release];
                    r23 = [[*(r24 + r8) webViewController] retain];
                    r26 = [[UINavigationController alloc] initWithRootViewController:r25];
                    [r23 presentModalViewController:r26 animated:0x1];
                    [r26 release];
                    [r23 release];
                    r0 = objc_retainBlock(r20);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_callback));
                    r8 = *(r24 + r9);
                    *(r24 + r9) = r0;
                    [r8 release];
                    [r27 release];
                    r0 = r25;
            }
            else {
                    r23 = [[UIApplication sharedApplication] retain];
                    r24 = [[NSURL URLWithString:r21] retain];
                    [r23 openURL:r24];
                    [r24 release];
                    [r23 release];
                    (*(r20 + 0x10))(r20, [@(YES) retain]);
                    r0 = r23;
            }
            [r0 release];
    }
    [r28 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)viewShouldDismiss:(bool)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithBool:arg2] retain];
    r19 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    [r21 release];
    r20 = self->_bridge;
    r21 = [[NSArray arrayWithObjects:&var_70 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-104] forKeys:&stack[-120] count:0x2];
    r22 = [r0 retain];
    [r20 callHandler:@"__v2_default_handler__" data:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)display {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = self->_bridge;
    r20 = [[NSArray arrayWithObjects:&stack[-96] count:0x0] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
    r21 = [r0 retain];
    [r19 callHandler:@"__v2_default_handler__" data:r21];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)present:(void *)arg2 callback:(void *)arg3 {
    r23 = [arg2 retain];
    var_58 = self->_adView;
    r20 = [arg3 retain];
    r0 = [arg2 objectForKeyedSubscript:@"visible"];
    r0 = [r0 retain];
    r22 = r0;
    r27 = [r0 boolValue];
    r0 = [arg2 objectForKeyedSubscript:@"transparent"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    r24 = [[arg2 objectForKeyedSubscript:@"customClose"] retain];
    [r23 release];
    [var_58 presentUnit:r27 isTransparent:r21 withCustomCloseBehavior:[r24 boolValue]];
    [r24 release];
    [r0 release];
    [r22 release];
    (*(r20 + 0x10))(arg3, [@(YES) retain]);
    [r20 release];
    [r21 release];
    return;
}

-(void)dismiss:(void *)arg2 callback:(void *)arg3 {
    [arg3 retain];
    (*(arg3 + 0x10))(arg3, [@(YES) retain]);
    [r23 release];
    [r21 release];
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 dismiss];
    [r19 release];
    return;
}

-(void)openApp:(void *)arg2 callback:(void *)arg3 {
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
    r19 = arg3;
    r22 = [arg2 retain];
    r20 = [r19 retain];
    r25 = [[arg2 objectForKeyedSubscript:@"protocol"] retain];
    [r22 release];
    r22 = [[NSString stringWithFormat:@"%@://somedata"] retain];
    r21 = [[NSURL URLWithString:r22] retain];
    [r22 release];
    [r25 release];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 canOpenURL:r21];
    [r0 release];
    if (r24 != 0x0) {
            (*(r20 + 0x10))(r19, [[NSNumber numberWithBool:r2] retain]);
            [r20 release];
            [r23 release];
            r0 = @class(UIApplication);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            [r0 openURL:r2];
            r0 = r19;
    }
    else {
            (*(r20 + 0x10))(r19, [[NSNumber numberWithBool:r2] retain]);
            [r20 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    return;
}

-(void)shouldClose:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"close"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r21 = [r20 boolValue];
    [r20 release];
    if (r21 != 0x0) {
            r0 = [r19 adView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 dismiss];
            [r21 release];
    }
    [r19 productViewControllerDidFinish:r19->_storeViewController];
    [r19 closeSplitViewWithCallback];
    r0 = [r19 adView];
    r0 = [r0 retain];
    [r0 setWaitingForDismiss:0x0];
    [r0 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_callback));
    r20 = *(r19 + r22);
    if (r20 != 0x0) {
            r0 = @(YES);
            r29 = r29;
            (*(r20 + 0x10))(r20, [r0 retain]);
            [r21 release];
            r0 = *(r19 + r22);
            if (r0 != r19->_splitViewCallback) {
                    asm { ccmp       x8, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E) {
                    [r19 clearSplitViewCallback];
                    r0 = *(r19 + r22);
            }
            *(r19 + r22) = 0x0;
            [r0 release];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_splitView));
            r22 = *(r19 + r21);
            r0 = r19->_storeViewController;
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 release];
            if (r22 == r0) {
                    r0 = *(r19 + r21);
                    *(r19 + r21) = 0x0;
                    [r0 release];
            }
            [r19 closeStoreView];
    }
    return;
}

-(void)dismissURLModal {
    r20 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_callback)));
    (*(r20 + 0x10))(r20, [@(YES) retain]);
    [r21 release];
    r0 = *(self + r22);
    *(self + r22) = 0x0;
    [r0 release];
    r0 = self->_adView;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    [r0 dismissModalViewControllerAnimated:0x1];
    [r0 release];
    return;
}

-(void)addPassbookPass:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r25 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [arg2 objectForKeyedSubscript:@"url"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1008fd344;

loc_1008fd1ac:
    r21 = [NSData alloc];
    r0 = [NSURL URLWithString:r20];
    r29 = r29;
    r22 = [r0 retain];
    r21 = [r21 initWithContentsOfURL:r22];
    [r22 release];
    if (r21 == 0x0) goto loc_1008fd5b8;

loc_1008fd210:
    r22 = NSClassFromString(@"PKPassLibrary");
    r23 = NSClassFromString(@"PKPass");
    r27 = NSClassFromString(@"PKAddPassesViewController");
    if (r22 == 0x0 || ([r22 isPassLibraryAvailable] & 0x1) == 0x0) goto loc_1008fd37c;

loc_1008fd258:
    r22 = [[r22 alloc] init];
    r24 = [[r23 alloc] initWithData:r21 error:&var_58];
    r23 = [var_58 retain];
    if (r23 == 0x0) goto loc_1008fd40c;

loc_1008fd2ac:
    r25 = [UIAlertView alloc];
    r26 = [[r23 localizedDescription] retain];
    r25 = [r25 initWithTitle:@"Error" message:r26 delegate:0x0 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    [r26 release];
    [r25 show];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fd48c;

loc_1008fd48c:
    (*(r19 + 0x10))(r19, [r0 retain]);
    [r26 release];
    r0 = r25;
    goto loc_1008fd59c;

loc_1008fd59c:
    [r0 release];
    [r24 release];
    [r22 release];
    r0 = r23;
    goto loc_1008fd5b4;

loc_1008fd5b4:
    [r0 release];
    goto loc_1008fd5b8;

loc_1008fd5b8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008fd40c:
    if ([r22 containsPass:r24] == 0x0) goto loc_1008fd4b4;

loc_1008fd424:
    r0 = [UIAlertView alloc];
    r0 = [r0 initWithTitle:@"Pass Exists" message:@"The pass you are trying to add to Passbook is already present." delegate:0x0 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    r25 = r0;
    [r0 show];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fd48c;

loc_1008fd4b4:
    r0 = [r27 alloc];
    r0 = [r0 initWithPass:r24];
    [r0 setDelegate:r25];
    r25 = [[r25->_adView webViewController] retain];
    var_70 = [r19 retain];
    var_68 = [r22 retain];
    var_60 = [r24 retain];
    [r25 presentViewController:r0 animated:0x1 completion:&var_90];
    [r25 release];
    [var_60 release];
    [var_68 release];
    [var_70 release];
    r0 = r0;
    goto loc_1008fd59c;

loc_1008fd37c:
    r0 = [UIAlertView alloc];
    r0 = [r0 initWithTitle:@"Passbook Error" message:@"Passbook is not available." delegate:0x0 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    [r0 show];
    (*(r19 + 0x10))(r19, [@(NO) retain]);
    [r23 release];
    r0 = r22;
    goto loc_1008fd5b4;

loc_1008fd344:
    r21 = [@(NO) retain];
    (*(r19 + 0x10))(r19, r21);
    goto loc_1008fd5b8;
}

-(void)cacheAsset:(void *)arg2 callback:(void *)arg3 {
    r24 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"url"] retain];
    r22 = [[arg2 objectForKeyedSubscript:@"offerId"] retain];
    r23 = [[arg2 objectForKeyedSubscript:@"timeToLive"] retain];
    [r24 release];
    [TJCacheProtocol cacheAssetWithURL:r20 offerID:r22 timeToLive:r23];
    (*(r21 + 0x10))(arg3, [[NSNumber numberWithBool:r2] retain]);
    [r21 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)cachePathForURL:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = [arg2 retain];
    r23 = [r19 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"url"] retain];
    [r21 release];
    r21 = [[TJCacheProtocol localCacheFilePath:r20] retain];
    if (r21 == 0x0) {
    }
    (*(r23 + 0x10))(r19);
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)getCachedAssets:(void *)arg2 callback:(void *)arg3 {
    [arg3 retain];
    (*(arg3 + 0x10))(arg3, [[TJCacheProtocol cachedAssetsToJSON] retain]);
    [r22 release];
    [r20 release];
    return;
}

-(void)clearCache:(void *)arg2 callback:(void *)arg3 {
    [arg3 retain];
    (*(arg3 + 0x10))(arg3, [[NSNumber numberWithBool:[TJCacheProtocol clearCache]] retain]);
    [r23 release];
    [r20 release];
    return;
}

-(void)removeAssetFromCache:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"url"] retain];
    [r21 release];
    (*(r23 + 0x10))(arg3, [[NSNumber numberWithBool:[TJCacheProtocol removeAssetWithURL:r20]] retain]);
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setLoggingLevel:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"loggingLevel"] retain];
    [r21 release];
    [TJCLog setServerLoggingLevel:r20];
    (*(r23 + 0x10))(arg3, [@(YES) retain]);
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setEventPreloadLimit:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"eventPreloadLimit"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            [TJCacheProtocol setPlacementCacheLimit:[r21 intValue]];
    }
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)clearLoggingLevel:(void *)arg2 callback:(void *)arg3 {
    r22 = [arg3 retain];
    [TJCLog clearServerLoggingLevel];
    (*(r22 + 0x10))(arg3, [@(YES) retain]);
    [r22 release];
    [r20 release];
    return;
}

-(void)setOrientation:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = self;
    r23 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"orientation"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            if (([r21 isEqualToString:r2] & 0x1) == 0x0 && ([r21 isEqualToString:r2] & 0x1) == 0x0) {
                    if ([r21 isEqualToString:r2] != 0x0) {
                            asm { csinc      x2, x8, xzr, ne };
                    }
                    r2 = @"landscapeRight";
            }
            else {
                    r2 = 0x4;
            }
            [r22->_adView setOrientation:r2];
    }
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)contentReady:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = self->_adView;
    if (r20 != 0x0) {
            r22 = [r19 retain];
            [r20 fireContentReady];
            r2 = 0x1;
            r20 = [[NSNumber numberWithBool:r2] retain];
            r8 = *(r22 + 0x10);
    }
    else {
            r22 = [r19 retain];
            r2 = 0x0;
            r20 = [[NSNumber numberWithBool:r2] retain];
            r8 = *(r19 + 0x10);
    }
    (r8)(r19, r20, r2);
    [r22 release];
    [r20 release];
    return;
}

-(void)unsetOrientation:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = self->_adView;
    if (r20 != 0x0) {
            r22 = [r19 retain];
            [r20 unsetOrientation];
            r2 = 0x1;
            r20 = [[NSNumber numberWithBool:r2] retain];
            r8 = *(r22 + 0x10);
    }
    else {
            r22 = [r19 retain];
            r2 = 0x0;
            r20 = [[NSNumber numberWithBool:r2] retain];
            r8 = *(r19 + 0x10);
    }
    (r8)(r19, r20, r2);
    [r22 release];
    [r20 release];
    return;
}

-(void)setPrerenderLimit:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [arg2 objectForKeyedSubscript:@"prerenderLimit"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            [TJCViewHandler setPrerenderLimit:[r21 intValue]];
    }
    (*(r20 + 0x10))(r19, [@(YES) retain]);
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)initMoatVideoTracker:(void *)arg2 callback:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [TJYMoatReactiveVideoTracker trackerWithPartnerCode:[[r19 objectForKeyedSubscript:@"partnerCode"] retain]];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_moatVideoTracker));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    (*(r20 + 0x10))(r20, [@(YES) retain]);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startViewabilityTracker:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [TJOMViewabilityAgent sharedInstance];
    r0 = [r0 retain];
    [r0 startViewabilityTracker:r20 callback:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

-(bool)initViewabilityTracker:(void *)arg2 callback:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [[r19 objectForKeyedSubscript:@"partnerCode"] retain];
    r0 = @class(TJOMViewabilityAgent);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setAdView:self->_adView];
    [r0 release];
    r0 = @class(TJOMViewabilityAgent);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 initViewabilityTracker:r19 callback:r20];
    [r0 release];
    (*(r20 + 0x10))(r20, [@(YES) retain]);
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)startMoatVideoTracker:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r20 = [arg2 retain];
    r0 = [arg3 retain];
    var_60 = r20;
    var_58 = r0;
    r21 = [[r20 objectForKeyedSubscript:@"videoLength"] retain];
    r22 = [[r20 objectForKeyedSubscript:@"adIds"] retain];
    r24 = self->_moatVideoTracker;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r0 = *(self + r20);
    r0 = [r0 mainWebView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 layer] retain];
    r0 = *(self + r20);
    r0 = [r0 mainWebView];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 webView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 doubleValue];
    r24 = [r24 trackVideoAd:r22 withLayer:r27 withContainingView:r19 withDurationMillis:r5];
    [r19 release];
    [r25 release];
    [r27 release];
    [r26 release];
    [r23 release];
    if (r24 != 0x0) {
            r19 = [[NSNumber numberWithBool:r2] retain];
            (*(var_58 + 0x10))(var_58, r19);
    }
    else {
            r19 = [[NSNumber numberWithBool:r2] retain];
            (*(var_58 + 0x10))(var_58, r19);
    }
    [r19 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    [var_60 release];
    return;
}

-(void)triggerMoatVideoEvent:(void *)arg2 callback:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 objectForKeyedSubscript:@"eventName"] retain];
    r22 = [[r19 objectForKeyedSubscript:@"currentVideoTime"] retain];
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe5c0;

loc_1008fe5b8:
    r24 = 0x0;
    goto loc_1008fe6fc;

loc_1008fe6fc:
    r25 = [TJYMoatAdEvent alloc];
    [r22 doubleValue];
    [r23->_moatVideoTracker dispatchEvent:[r25 initWithType:r24 withPlayheadMillis:r3]];
    (*(r20 + 0x10))(r20, [@(YES) retain]);
    [r23 release];
    r0 = r24;
    goto loc_1008fe794;

loc_1008fe794:
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008fe5c0:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe5e0;

loc_1008fe5d8:
    r24 = 0x1;
    goto loc_1008fe6fc;

loc_1008fe5e0:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe600;

loc_1008fe5f8:
    r24 = 0x2;
    goto loc_1008fe6fc;

loc_1008fe600:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe620;

loc_1008fe618:
    r24 = 0x3;
    goto loc_1008fe6fc;

loc_1008fe620:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe640;

loc_1008fe638:
    r24 = 0x4;
    goto loc_1008fe6fc;

loc_1008fe640:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe660;

loc_1008fe658:
    r24 = 0x5;
    goto loc_1008fe6fc;

loc_1008fe660:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe680;

loc_1008fe678:
    r24 = 0x6;
    goto loc_1008fe6fc;

loc_1008fe680:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe6a0;

loc_1008fe698:
    r24 = 0x7;
    goto loc_1008fe6fc;

loc_1008fe6a0:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe6c0;

loc_1008fe6b8:
    r24 = 0x8;
    goto loc_1008fe6fc;

loc_1008fe6c0:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe6e0;

loc_1008fe6d8:
    r24 = 0x9;
    goto loc_1008fe6fc;

loc_1008fe6e0:
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) goto loc_1008fe7cc;

loc_1008fe6f8:
    r24 = 0xa;
    goto loc_1008fe6fc;

loc_1008fe7cc:
    (*(r20 + 0x10))(r20, [@(NO) retain]);
    r0 = r23;
    goto loc_1008fe794;
}

-(void)triggerViewabilityEvent:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [TJOMViewabilityAgent sharedInstance];
    r0 = [r0 retain];
    [r0 triggerViewabilityEvent:r20 callback:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

-(void)getVolume:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x80;
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
    var_48 = **___stack_chk_guard;
    r22 = @class(NSNumber);
    r20 = [arg3 retain];
    r22 = [[r22 numberWithFloat:arg2] retain];
    r21 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->_currentMuteStatus] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
    r23 = [r0 retain];
    [r21 release];
    [r22 release];
    (*(r20 + 0x10))(arg3, r23);
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)attachVolumeListener:(void *)arg2 callback:(void *)arg3 {
    var_40 = d9;
    stack[-72] = d8;
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
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"interval"] retain];
    r0 = [arg2 objectForKeyedSubscript:@"attach"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    r23 = [r22 boolValue];
    [r22 release];
    if (r23 == 0x0) goto loc_1008fed00;

loc_1008fec44:
    if (r20 == 0x0) goto loc_1008feca0;

loc_1008fec4c:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r20 == r0) goto loc_1008feca0;

loc_1008fec78:
    [r20 floatValue];
    asm { fdiv       s0, s0, s1 };
    if (s0 <= 0x0) goto loc_1008fed70;

loc_1008fec9c:
    asm { fcvt       d8, s0 };
    goto loc_1008feca0;

loc_1008feca0:
    [r21 clearVolumeCheckTimer];
    r0 = [NSTimer scheduledTimerWithTimeInterval:r21 target:@selector(volumeChanged) selector:0x0 userInfo:0x1 repeats:r6];
    r29 = r29;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_volumeCheckTimer));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    goto loc_1008fed10;

loc_1008fed10:
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fed2c;

loc_1008fed2c:
    (*(r19 + 0x10))(r19, [r0 retain]);
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008fed70:
    r0 = [NSNumber numberWithBool:r2];
    goto loc_1008fed2c;

loc_1008fed00:
    [r21 clearVolumeCheckTimer];
    goto loc_1008fed10;
}

-(void)clearVolumeCheckTimer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_volumeCheckTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)volumeChanged {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [r19->_adView getVideoMuteStatus];
    [TJCUtil getCurrentVolume];
    v1 = v0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentVolume));
    if (s1 != *(int32_t *)(r19 + r8)) {
            *(int32_t *)(r19 + r8) = s1;
            r8 = 0x1;
    }
    else {
            r8 = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentMuteStatus));
    if (*(int8_t *)(r19 + r21) == r20) {
            if (r8 != 0x0) {
                    r22 = [[NSNumber numberWithFloat:r2] retain];
                    r23 = [[NSNumber numberWithBool:*(int8_t *)(r19 + r21)] retain];
                    r20 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
                    [r23 release];
                    [r22 release];
                    r19 = r19->_bridge;
                    r22 = [[NSArray arrayWithObjects:&var_80 count:0x1] retain];
                    r0 = @class(NSDictionary);
                    r0 = [r0 dictionaryWithObjects:&stack[-120] forKeys:&stack[-136] count:0x2];
                    r21 = [r0 retain];
                    [r19 callHandler:@"__v2_default_handler__" data:r21];
                    [r21 release];
                    [r22 release];
                    [r20 release];
            }
    }
    else {
            *(int8_t *)(r19 + r21) = r20;
            r22 = [[NSNumber numberWithFloat:r2] retain];
            r23 = [[NSNumber numberWithBool:*(int8_t *)(r19 + r21)] retain];
            r20 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
            [r23 release];
            [r22 release];
            r19 = r19->_bridge;
            r22 = [[NSArray arrayWithObjects:&var_80 count:0x1] retain];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&stack[-120] forKeys:&stack[-136] count:0x2];
            r21 = [r0 retain];
            [r19 callHandler:@"__v2_default_handler__" data:r21];
            [r21 release];
            [r22 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoReady:(double)arg2 width:(int)arg3 height:(int)arg4 {
    r31 = r31 - 0xc0;
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
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithInt:arg2] retain];
    r23 = [[NSNumber numberWithInt:arg3] retain];
    r20 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
    [r23 release];
    [r24 release];
    [r22 release];
    r19 = self->_bridge;
    r22 = [[NSArray arrayWithObjects:&var_B0 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-168] forKeys:&stack[-184] count:0x2];
    r21 = [r0 retain];
    [r19 callHandler:@"__v2_default_handler__" data:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoDidStart {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r20 = self->_bridge;
    r22 = [[NSArray arrayWithObjects:&var_70 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-104] forKeys:&stack[-120] count:0x2];
    r21 = [r0 retain];
    [r20 callHandler:@"__v2_default_handler__" data:r21];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoProgress:(double)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithDouble:arg2] retain];
    r19 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
    [r21 release];
    r20 = self->_bridge;
    r21 = [[NSArray arrayWithObjects:&var_80 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-120] forKeys:&stack[-136] count:0x2];
    r22 = [r0 retain];
    [r20 callHandler:@"__v2_default_handler__" data:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoDidPause:(double)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithDouble:arg2] retain];
    r19 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
    [r21 release];
    r20 = self->_bridge;
    r21 = [[NSArray arrayWithObjects:&var_80 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-120] forKeys:&stack[-136] count:0x2];
    r22 = [r0 retain];
    [r20 callHandler:@"__v2_default_handler__" data:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoInfo {
    return;
}

-(void)videoDidComplete {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r20 = self->_bridge;
    r22 = [[NSArray arrayWithObjects:&var_70 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-104] forKeys:&stack[-120] count:0x2];
    r21 = [r0 retain];
    [r20 callHandler:@"__v2_default_handler__" data:r21];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoError:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r20 = @class(NSDictionary);
    r19 = [arg2 retain];
    r20 = [[r20 dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
    r22 = self->_bridge;
    r23 = [[NSArray arrayWithObjects:&var_80 count:0x1] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-120] forKeys:&stack[-136] count:0x2];
    r21 = [r0 retain];
    [r22 callHandler:@"__v2_default_handler__" data:r21];
    [r19 release];
    [r21 release];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)startUsageTrackingEvent:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    [r22->_adView startAdContentTracking:r21 dimensions:[[r19 objectForKeyedSubscript:r2] retain] values:[[r19 objectForKeyedSubscript:r2] retain]];
                    (*(r20 + 0x10))(r20, [@(YES) retain]);
                    [r22 release];
                    [r23 release];
                    r0 = r24;
            }
            else {
                    [TJCLog logWithLevel:0x3 format:@"Empty name for startUsageTrackingEvent"];
                    (*(r20 + 0x10))(r20, [@(NO) retain]);
                    r0 = r22;
            }
    }
    else {
            [TJCLog logWithLevel:0x3 format:@"Empty name for startUsageTrackingEvent"];
            (*(r20 + 0x10))(r20, [@(NO) retain]);
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)endUsageTrackingEvent:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    [r22->_adView endAdContentTracking:r21 dimensions:[[r19 objectForKeyedSubscript:r2] retain] values:[[r19 objectForKeyedSubscript:r2] retain]];
                    (*(r20 + 0x10))(r20, [@(YES) retain]);
                    [r22 release];
                    [r23 release];
                    r0 = r24;
            }
            else {
                    [TJCLog logWithLevel:0x3 format:@"Empty name for endUsageTrackingEvent"];
                    (*(r20 + 0x10))(r20, [@(NO) retain]);
                    r0 = r22;
            }
    }
    else {
            [TJCLog logWithLevel:0x3 format:@"Empty name for endUsageTrackingEvent"];
            (*(r20 + 0x10))(r20, [@(NO) retain]);
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendUsageTrackingEvent:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    [r22->_adView sendAdContentTracking:r21 dimensions:[[r19 objectForKeyedSubscript:r2] retain] values:[[r19 objectForKeyedSubscript:r2] retain]];
                    (*(r20 + 0x10))(r20, [@(YES) retain]);
                    [r22 release];
                    [r23 release];
                    r0 = r24;
            }
            else {
                    [TJCLog logWithLevel:0x3 format:@"Empty name for sendUsageTrackingEvent"];
                    (*(r20 + 0x10))(r20, [@(NO) retain]);
                    r0 = r22;
            }
    }
    else {
            [TJCLog logWithLevel:0x3 format:@"Empty name for sendUsageTrackingEvent"];
            (*(r20 + 0x10))(r20, [@(NO) retain]);
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)hasSplitView:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg3 retain];
    r21 = self->_splitView;
    if (r21 == 0x0) goto loc_100900090;

loc_100900038:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r21 == r0) goto loc_1009000a8;

loc_100900074:
    r2 = 0x1;
    r20 = [[NSNumber numberWithBool:r2] retain];
    r8 = *(r19 + 0x10);
    goto loc_1009000c4;

loc_1009000c4:
    (r8)(r19, r20, r2);
    [r20 release];
    [r19 release];
    return;

loc_1009000a8:
    r21 = r19 + 0x10;
    goto loc_1009000ac;

loc_1009000ac:
    r2 = 0x0;
    r20 = [[NSNumber numberWithBool:r2] retain];
    r8 = *r21;
    goto loc_1009000c4;

loc_100900090:
    r21 = r19 + 0x10;
    goto loc_1009000ac;
}

-(void)dismissSplitView:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    r22 = r20->_splitView;
    if (r22 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r22 != r0) {
                    [r20 closeSplitViewWithCallback];
                    r0 = [NSNumber numberWithBool:r2];
            }
            else {
                    r0 = [NSNumber numberWithBool:r2];
            }
    }
    else {
            r0 = [NSNumber numberWithBool:r2];
    }
    (*(r19 + 0x10))(r19, [r0 retain]);
    [r20 release];
    [r19 release];
    return;
}

-(void)getSplitViewURL:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_splitView));
    r21 = *(r20 + r22);
    [TJSplitWebView class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            (*(r19 + 0x10))(r19, [[*(r20 + r22) getCurrentURL] retain]);
            [r20 release];
    }
    else {
            (*(r19 + 0x10))(r19, 0x0);
    }
    [r19 release];
    return;
}

-(void)isNetworkAvailable:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [r20 retain];
    if ([TJCNetReachability isNetworkReachable] != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
    }
    else {
            r0 = [NSNumber numberWithBool:r2];
    }
    (*(r19 + 0x10))(r20, [r0 retain]);
    [r19 release];
    [r21 release];
    return;
}

-(void *)placement {
    r0 = self->_placement;
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placement, arg2);
    return;
}

-(void *)volumeCheckTimer {
    r0 = self->_volumeCheckTimer;
    return r0;
}

-(void)setVolumeCheckTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_volumeCheckTimer, arg2);
    return;
}

-(void *)adUnitVideoDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adUnitVideoDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdUnitVideoDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adUnitVideoDelegate, arg2);
    return;
}

-(void *)callback {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callback)), 0x0);
    return r0;
}

-(void)setCallback:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)splitViewCallback {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_splitViewCallback)), 0x0);
    return r0;
}

-(void)setSplitViewCallback:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)storeViewController {
    r0 = self->_storeViewController;
    return r0;
}

-(void)setStoreViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storeViewController, arg2);
    return;
}

-(void *)bridge {
    r0 = self->_bridge;
    return r0;
}

-(void)setBridge:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bridge, arg2);
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
    return;
}

-(void *)alert {
    r0 = self->_alert;
    return r0;
}

-(void)setAlert:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_alert, arg2);
    return;
}

-(void)setAlertController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_alertController, arg2);
    return;
}

-(void *)alertController {
    r0 = self->_alertController;
    return r0;
}

-(void *)alertCallback {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_alertCallback)), 0x0);
    return r0;
}

-(void)setAlertCallback:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBackHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_backHidden = arg2;
    return;
}

-(bool)backHidden {
    r0 = *(int8_t *)(int64_t *)&self->_backHidden;
    return r0;
}

-(void)setMoatVideoTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moatVideoTracker, arg2);
    return;
}

-(void *)moatVideoTracker {
    r0 = self->_moatVideoTracker;
    return r0;
}

-(float)currentVolume {
    r0 = self;
    return r0;
}

-(void)setCurrentVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_currentVolume = s0;
    return;
}

-(bool)currentMuteStatus {
    r0 = *(int8_t *)(int64_t *)&self->_currentMuteStatus;
    return r0;
}

-(void)setCurrentMuteStatus:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_currentMuteStatus = arg2;
    return;
}

-(void)setIsStoreLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isStoreLoaded = arg2;
    return;
}

-(bool)isStoreLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_isStoreLoaded;
    return r0;
}

-(void)setSplitView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_splitView, arg2);
    return;
}

-(void *)splitView {
    r0 = self->_splitView;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_splitView, 0x0);
    objc_storeStrong((int64_t *)&self->_moatVideoTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_alertCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_alertController, 0x0);
    objc_storeStrong((int64_t *)&self->_alert, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_bridge, 0x0);
    objc_storeStrong((int64_t *)&self->_storeViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_splitViewCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_callback, 0x0);
    objc_destroyWeak((int64_t *)&self->_adUnitVideoDelegate);
    objc_storeStrong((int64_t *)&self->_volumeCheckTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    return;
}

@end