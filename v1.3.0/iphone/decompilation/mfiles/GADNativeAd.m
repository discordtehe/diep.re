@implementation GADNativeAd

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_mediaContentStatusReported != 0x0 && *(int8_t *)(int64_t *)&r19->_mediaContentRendered == 0x0) {
            r0 = [r19 adType];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [GADNativeAdSettings sharedInstance];
                    r0 = [r0 retain];
                    [r0 mediaViewUnavailableToRenderMediaContentForAdType:r20];
                    [r0 release];
            }
            [r20 release];
    }
    [[&var_30 super] dealloc];
    return;
}

-(void *)initWithInternalNativeAd:(void *)arg2 {
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
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [[r29 - 0x70 super] init];
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_internalNativeAd, r22);
            r0 = [r19 metadata];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 adNetworkClassName];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adNetworkClassName));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adObservers));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r20);
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r22 addObserverForName:*0x100e9c148 object:r19 queue:0x0 usingBlock:r29 - 0xa0];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c150 object:r19 queue:0x0 usingBlock:&var_C8];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r25 addObserverForName:*0x100e9c158 object:r19 queue:0x0 usingBlock:&var_F0];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9bfe8 object:r19 queue:0x0 usingBlock:&var_118];
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c0b0 object:r19 queue:0x0 usingBlock:&var_140];
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            [r28 addObserverForName:*0x100e9c0a0 object:r19 queue:0x0 usingBlock:&var_168];
            objc_destroyWeak(&var_168 + 0x20);
            objc_destroyWeak(&var_140 + 0x20);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak((r29 - 0xa0) + 0x20);
            objc_destroyWeak(r29 - 0x78);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void)reportIsMediaContentRendered:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_mediaContentStatusReported = 0x1;
    *(int8_t *)(int64_t *)&self->_mediaContentRendered = arg2;
    return;
}

-(void *)adType {
    return 0x0;
}

-(void *)internalMediaContent {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96758];
    return r0;
}

-(void *)adChoicesContentView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesContentView));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
            r0 = *(r19 + r23);
            r0 = [r0 assetForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [GADNativeAdAttributionView alloc];
                    r0 = [r0 initWithAttribution:r20];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
            }
            r0 = *(r19 + r22);
            if (r0 == 0x0) {
                    r0 = *(r19 + r23);
                    r0 = [r0 assetForKey:r2];
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    r0 = *(r19 + r22);
            }
            r19 = [r0 retain];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)extraAssets {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e967a0];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    var_18 = [self retain];
    sub_100860a80();
    [var_18 release];
    return;
}

-(void)postDidReceiveUnapprovedClickNotificationWithUserInfo:(void *)arg2 {
    sub_1008833e8(*0x100e9c098, self->_internalNativeAd, arg2);
    return;
}

-(void)postDidMakeImpressionNotificationWithUserInfo:(void *)arg2 {
    sub_1008833e8(*0x100e9c078, self->_internalNativeAd, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)performClickWithData:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 publisherClickReportingAllowed];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100853a0c;

loc_1008538dc:
    if (r19 == 0x0) goto loc_100853a18;

loc_1008538e0:
    r0 = [r19 objectForKeyedSubscript:*0x100e91698];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 objectForKeyedSubscript:*0x100e916b0] retain];
    r23 = [r19 copy];
    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [r23 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2];
    r23 = [r0 retain];
    [r20 postDidReceiveUnapprovedClickNotificationWithUserInfo:r23];
    [r23 release];
    [r25 release];
    [r22 release];
    [r21 release];
    goto loc_100853a24;

loc_100853a24:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_100853a18:
    r0 = @"<Google> clickData cannot be nil.";
    goto loc_100853a20;

loc_100853a20:
    NSLog(r0);
    goto loc_100853a24;

loc_100853a0c:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_100853a20;
}

-(void)reportTouchEventWithData:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r0 = self->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 publisherTouchReportingAllowed];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100853bec;

loc_100853ad0:
    if (r19 == 0x0) goto loc_100853bf8;

loc_100853ad4:
    r20 = [[r19 objectForKeyedSubscript:*0x100e916a0] retain];
    r21 = [[r19 objectForKeyedSubscript:*0x100e916a8] retain];
    r22 = [[r19 objectForKeyedSubscript:*0x100e916b8] retain];
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            objc_msgSend(r20, *(&@selector(alloc) + 0xf28));
            asm { fcvtas     w24, s0 };
            objc_msgSend(r21, r23);
            asm { fcvtas     w25, s0 };
            objc_msgSend(r22, r23);
            asm { fcvtas     w8, s0 };
            sub_100860a80();
    }
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100853c04;

loc_100853c04:
    [r19 release];
    return;

loc_100853bf8:
    r0 = @"<Google> touchData cannot be nil.";
    goto loc_100853c00;

loc_100853c00:
    NSLog(r0);
    goto loc_100853c04;

loc_100853bec:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_100853c00;
}

-(bool)recordImpressionWithData:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = r20->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 publisherImpressionReportingAllowed];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100853d74;

loc_100853cb4:
    if (r19 == 0x0) goto loc_100853d80;

loc_100853cb8:
    r22 = [r19 copy];
    r21 = 0x1;
    r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [r22 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
    r22 = [r0 retain];
    [r20 postDidMakeImpressionNotificationWithUserInfo:r22];
    [r22 release];
    [r24 release];
    goto loc_100853d90;

loc_100853d90:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100853d80:
    r0 = @"<Google> impressionData cannot be nil.";
    goto loc_100853d88;

loc_100853d88:
    NSLog(r0);
    r21 = 0x0;
    goto loc_100853d90;

loc_100853d74:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_100853d88;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)internalNativeAd {
    r0 = self->_internalNativeAd;
    return r0;
}

-(void *)adNetworkClassName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adNetworkClassName)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adNetworkClassName, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adChoicesContentView, 0x0);
    objc_storeStrong((int64_t *)&self->_adObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_internalNativeAd, 0x0);
    return;
}

@end