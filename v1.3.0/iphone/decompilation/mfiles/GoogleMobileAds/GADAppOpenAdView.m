@implementation GADAppOpenAdView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)commonInit {
    r20 = [[UIColor clearColor] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    [self setClipsToBounds:0x1];
    return;
}

-(void *)description {
    r0 = [[&var_30 super] description];
    r0 = [r0 retain];
    r21 = [[r0 substringToIndex:[r0 length] - 0x1] retain];
    [r0 release];
    r19 = [[NSString alloc] initWithFormat:@"%@; appOpenAd = %@>"];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self intrinsicContentSize];
    r8 = *_CGSizeZero;
    d2 = *(int128_t *)r8;
    d3 = *(int128_t *)(r8 + 0x8);
    if (d0 == d2) {
            r8 = *_CGSizeZero;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (d1 == d3) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (d0 < d8) {
            asm { fcsel      d0, d8, d0, mi };
    }
    if ((r8 & r9) != 0x0) {
            asm { fcsel      d0, d2, d0, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d1, d3, d1, ne };
    }
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_appOpenAd;
    r0 = [r0 adView];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 isDescendantOfView:self] != 0x0) {
            [r19 intrinsicContentSize];
            v8 = v0;
            v9 = v1;
    }
    r0 = [r19 release];
    return r0;
}

-(void)setAppOpenAd:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r24 = arg2;
    r22 = self;
    r19 = [r24 retain];
    r21 = (int64_t *)&r22->_appOpenAd;
    r0 = *r21;
    if (r0 != r19) {
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [r20 setAppOpenAdView:0x0];
            r0 = [r19 appOpenAdView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setAppOpenAd:0x0];
            [r0 release];
            objc_storeStrong(r21, r24);
            [*r21 setAppOpenAdView:r22];
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_adObservers));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            [r22 invalidateIntrinsicContentSize];
            r0 = *r21;
            if (r0 != 0x0) {
                    if ([r0 hasBeenShown] != 0x0) {
                            sub_1007ce06c(0x0, @"Ad has already been shown in another ad view.");
                    }
                    else {
                            objc_initWeak(&stack[-104], r22);
                            [[*r21 adMessageSource] retain];
                            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
                            [r26 addObserverForName:*0x100e9c6b8 object:r27 queue:0x0 usingBlock:&var_80];
                            [r27 release];
                            [r22 addSubview:[[*r21 adView] retain]];
                            sub_1008897a8();
                            sub_1008833e8(*0x100e9c018, [[*r21 adMessageSource] retain], 0x0);
                            [r21 release];
                            [r23 release];
                            objc_destroyWeak(&var_80 + 0x20);
                            objc_destroyWeak(&stack[-104]);
                    }
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)handleAdWillClose {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = r19->_adCloseHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    r0 = r19->_appOpenAd;
    r0 = [r0 adView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r19 invalidateIntrinsicContentSize];
    [r0 release];
    return;
}

-(void *)appOpenAd {
    r0 = self->_appOpenAd;
    return r0;
}

-(void *)adCloseHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adCloseHandler)), 0x0);
    return r0;
}

-(void)setAdCloseHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adCloseHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_adObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_appOpenAd, 0x0);
    return;
}

@end