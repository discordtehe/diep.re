@implementation GADMediatedNativeAdMonitor

-(void *)initWithInternalNativeAd:(void *)arg2 mediatedNativeAd:(void *)arg3 adapterHandlesImpressions:(bool)arg4 adapterHandlesClicks:(bool)arg5 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x260;
    r22 = arg5;
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_internalNativeAd, r19);
            objc_storeWeak((int64_t *)&r21->_mediatedNativeAd, r20);
            r0 = [GADMediatedIntermission alloc];
            r0 = [r0 initWithMessageSource:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r21);
            if (r23 != 0x0) {
                    r24 = (r29 - 0xa0) + 0x20;
                    objc_copyWeak(r24, r29 - 0x78);
                    [r25 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
            }
            else {
                    r24 = (r29 - 0xc8) + 0x20;
                    objc_copyWeak(r24, r29 - 0x78);
                    [r25 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
            }
            objc_destroyWeak(r24);
            if (r22 != 0x0) {
                    r22 = (r29 - 0xf0) + 0x20;
                    objc_copyWeak(r22, r29 - 0x78);
                    objc_msgSend(r24, r23);
            }
            else {
                    r22 = &var_118 + 0x20;
                    objc_copyWeak(r22, r29 - 0x78);
                    objc_msgSend(r24, r23);
            }
            objc_destroyWeak(r22);
            r25 = &var_140 + 0x20;
            objc_copyWeak(r25, r29 - 0x78);
            objc_msgSend(r22, r23);
            var_288 = &var_168 + 0x20;
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            objc_msgSend(r22, r23);
            var_290 = &var_190 + 0x20;
            objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
            objc_msgSend(r22, r23);
            var_298 = &var_1B8 + 0x20;
            objc_copyWeak(&var_1B8 + 0x20, r29 - 0x78);
            objc_msgSend(r22, r23);
            var_2A0 = &var_1E0 + 0x20;
            objc_copyWeak(&var_1E0 + 0x20, r29 - 0x78);
            objc_msgSend(r22, r23);
            r28 = &var_208 + 0x20;
            objc_copyWeak(r28, r29 - 0x78);
            objc_msgSend(r22, r23);
            if ([r20 respondsToSelector:r2] != 0x0 && [r20 hasVideoContent] != 0x0) {
                    objc_copyWeak(&var_230 + 0x20, r29 - 0x78);
                    [r22 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_copyWeak(&var_258 + 0x20, r29 - 0x78);
                    [r24 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_copyWeak(&var_280 + 0x20, r29 - 0x78);
                    [r22 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                    objc_destroyWeak(&var_280 + 0x20);
                    objc_destroyWeak(&var_258 + 0x20);
                    objc_destroyWeak(&var_230 + 0x20);
                    r25 = r25;
            }
            objc_destroyWeak(r28);
            objc_destroyWeak(var_2A0);
            objc_destroyWeak(var_298);
            objc_destroyWeak(var_290);
            objc_destroyWeak(var_288);
            objc_destroyWeak(r25);
            objc_destroyWeak(r29 - 0x78);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_trackedView);
    if (r20 == 0x0) goto loc_10081e3a8;

loc_10081e22c:
    r0 = objc_loadWeakRetained((int64_t *)&r19->_mediatedNativeAd);
    r21 = r0;
    if ([r0 conformsToProtocol:r2] == 0x0 || [r21 respondsToSelector:@selector(didUntrackView:)] == 0x0) goto loc_10081e2d8;

loc_10081e278:
    var_30 = [r21 retain];
    var_28 = [r20 retain];
    sub_100860a80();
    [var_28 release];
    r0 = var_30;
    goto loc_10081e39c;

loc_10081e39c:
    [r0 release];
    goto loc_10081e3a0;

loc_10081e3a0:
    [r21 release];
    goto loc_10081e3a8;

loc_10081e3a8:
    [r20 release];
    [[&var_98 super] dealloc];
    return;

loc_10081e2d8:
    if ([r21 conformsToProtocol:r2] == 0x0) goto loc_10081e3a0;

loc_10081e2f0:
    r0 = [r21 mediatedNativeAdDelegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(mediatedNativeAd:didUntrackView:), r3] != 0x0) {
            var_68 = [r22 retain];
            var_60 = [r21 retain];
            var_58 = [r20 retain];
            sub_100860a80();
            [var_58 release];
            [var_60 release];
            [var_68 release];
    }
    r0 = r22;
    goto loc_10081e39c;
}

-(void)handleFirstPartyImpressionEvent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediatedNativeAd);
    r19 = r0;
    if ([r0 conformsToProtocol:r2] != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            [r19 didRecordImpression];
    }
    else {
            if ([r19 conformsToProtocol:r2] != 0x0) {
                    r0 = [r19 mediatedNativeAdDelegate];
                    r0 = [r0 retain];
                    r20 = r0;
                    if ([r0 respondsToSelector:@selector(mediatedNativeAdDidRecordImpression:)] != 0x0) {
                            [r20 mediatedNativeAdDidRecordImpression:r19];
                    }
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void)handleThirdParyImpressionEvent {
    sub_1008833e8(*0x100e9c078, objc_loadWeakRetained((int64_t *)&self->_internalNativeAd), 0x0);
    [r20 release];
    return;
}

-(void)handleThirdPartyClickEvent {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&r0->_internalNativeAd), 0x0);
            [r20 release];
    }
    return;
}

-(void)handleWillPresentScreenEvent {
    [self->_intermission adapterWillPresent];
    return;
}

-(void)handleFirstPartyClickEvent:(void *)arg2 {
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
    [arg2 retain];
    r19 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    sub_1008833e8(*0x100e9c090, r19, 0x0);
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e9ba18] retain];
    [r0 release];
    r21 = [arg2 userInfo];
    [r23 release];
    r0 = [r21 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e9ba10] retain];
    [r0 release];
    r0 = [r19 rootViewControllerProvider];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 rootViewController];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediatedNativeAd);
    r22 = r0;
    if ([r0 conformsToProtocol:r2] != 0x0 && [r22 respondsToSelector:@selector(didRecordClickOnAssetWithName:view:viewController:), r3, r4] != 0x0) {
            [r22 didRecordClickOnAssetWithName:r20 view:r21 viewController:r23];
    }
    else {
            if ([r22 conformsToProtocol:r2] != 0x0) {
                    r0 = [r22 mediatedNativeAdDelegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 respondsToSelector:@selector(mediatedNativeAd:didRecordClickOnAssetWithName:view:viewController:), r3, r4, r5] != 0x0) {
                            [r24 mediatedNativeAd:r22 didRecordClickOnAssetWithName:r20 view:r21 viewController:r23];
                    }
                    [r24 release];
            }
    }
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleWillDismissScreenEvent {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)handleDidDismissScreenEvent {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)handleWillLeaveApplicationEvent {
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_internalNativeAd), 0x0);
    [r20 release];
    return;
}

-(void)handleUntrackViewNotification:(void *)arg2 {
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
    r22 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r19->_mediatedNativeAd);
    r21 = [arg2 userInfo];
    [r22 release];
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e99720];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if ([r20 conformsToProtocol:r2] != 0x0 && [r20 respondsToSelector:@selector(didUntrackView:)] != 0x0) {
            [r20 didUntrackView:r21];
    }
    else {
            if ([r20 conformsToProtocol:r2] != 0x0) {
                    r0 = [r20 mediatedNativeAdDelegate];
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 respondsToSelector:@selector(mediatedNativeAd:didUntrackView:), r3] != 0x0) {
                            [r22 mediatedNativeAd:r20 didUntrackView:r21];
                    }
                    [r22 release];
            }
    }
    objc_storeWeak((int64_t *)&r19->_trackedView, 0x0);
    [r21 release];
    [r20 release];
    return;
}

-(void)handleMediatedNativeAdDidPlayVideo {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self internalVideoController] retain];
    if (r19 != 0x0) {
            sub_1008833e8(*0x100e9c4e8, r19, 0x0);
    }
    [r19 release];
    return;
}

-(void)handleMediatedNativeAdDidPauseVideo {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self internalVideoController] retain];
    if (r19 != 0x0) {
            sub_1008833e8(*0x100e9c4f0, r19, 0x0);
    }
    [r19 release];
    return;
}

-(void)handleTrackViewNotification:(void *)arg2 {
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
    [arg2 retain];
    r19 = objc_loadWeakRetained((int64_t *)&self->_mediatedNativeAd);
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    objc_storeWeak((int64_t *)&self->_trackedView, [[r0 objectForKeyedSubscript:*0x100e99720] retain]);
    [r27 release];
    [r20 release];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e99728] retain];
    [r0 release];
    r21 = [arg2 userInfo];
    [r22 release];
    r0 = [r21 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e99730] retain];
    [r0 release];
    r22 = objc_loadWeakRetained((int64_t *)&self->_trackedView);
    r0 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r24 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 rootViewController];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    if ([r19 conformsToProtocol:r2] != 0x0 && [r19 respondsToSelector:@selector(didRenderInView:clickableAssetViews:nonclickableAssetViews:viewController:), r3, r4, r5] != 0x0) {
            [r19 didRenderInView:r22 clickableAssetViews:r20 nonclickableAssetViews:r21 viewController:r23];
    }
    else {
            if ([r19 conformsToProtocol:r2] != 0x0) {
                    r0 = [r19 mediatedNativeAdDelegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 respondsToSelector:@selector(mediatedNativeAd:didRenderInView:clickableAssetViews:nonclickableAssetViews:viewController:), r3, r4, r5, r6] != 0x0) {
                            [r24 mediatedNativeAd:r19 didRenderInView:r22 clickableAssetViews:r20 nonclickableAssetViews:r21 viewController:r23];
                    }
                    else {
                            if ([r24 respondsToSelector:@selector(mediatedNativeAd:didRenderInView:viewController:), r3, r4] != 0x0) {
                                    [r24 mediatedNativeAd:r2 didRenderInView:r3 viewController:r4];
                            }
                    }
                    [r24 release];
            }
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleMediatedNativeAdDidEndVideoPlayback {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self internalVideoController] retain];
    if (r19 != 0x0) {
            sub_1008833e8(*0x100e9c4f8, r19, 0x0);
    }
    [r19 release];
    return;
}

-(void *)internalVideoController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r20 = [[r0 assetForKey:*0x100e96758] retain];
    [r0 release];
    r19 = [[r20 videoController] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_destroyWeak((int64_t *)&self->_trackedView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_destroyWeak((int64_t *)&self->_mediatedNativeAd);
    return;
}

@end