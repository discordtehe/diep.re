@implementation GADAppOpenAd

+(void)loadWithAdUnitID:(void *)arg2 request:(void *)arg3 orientation:(long long)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r29 = &saved_fp;
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    if (r21 != 0x0) {
            if ((sub_100818a24() & 0x1) != 0x0) {
                    if (r20 == 0x0) {
                            r0 = [GADRequest request];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r20 release];
                            r20 = r23;
                    }
                    r0 = [r20 adTypes];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r23 = [[NSArray arrayWithObjects:r29 - 0x60 count:0x1] retain];
                            [r20 setAdTypes:r23];
                            [r23 release];
                    }
                    var_90 = [r21 retain];
                    r0 = objc_retainBlock(&var_B0);
                    r24 = [[GADTargeting alloc] initWithRequest:r20 adUnitID:r19];
                    [GADAppOpenAd updateTargeting:r24 orientation:r22];
                    [r24 retain];
                    [r0 retain];
                    sub_100860a80();
                    [r0 release];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    r0 = var_90;
            }
            else {
                    var_68 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_88);
                    r0 = var_68;
            }
            [r0 release];
    }
    else {
            NSLog(@"<Google> Must provide a nonnull completion handler.");
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)updateTargeting:(void *)arg2 orientation:(long long)arg3 {
    r21 = [arg2 retain];
    [arg2 setSignalSource:[sub_100807ffc(arg3) retain] forKey:*0x100e92230];
    sub_1008c2bc8(r21);
    [r21 release];
    [r19 release];
    return;
}

+(void)loadWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    var_28 = [[GADAdSource alloc] init];
    r20 = [r20 retain];
    r0 = objc_retainBlock(&var_78);
    [*(&var_50 + 0x28) loadAdsWithTargeting:r19 completionHandler:r0];
    [r0 release];
    [r20 release];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithAdMessageSource:(void *)arg2 adView:(void *)arg3 {
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
    r22 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adMessageSource, r24);
            objc_storeStrong((int64_t *)&r21->_adView, r22);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c078 object:r19 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)adMessageSource {
    r0 = self->_adMessageSource;
    return r0;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void *)appOpenAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_appOpenAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAppOpenAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_appOpenAdView, arg2);
    return;
}

-(bool)hasBeenShown {
    r0 = *(int8_t *)(int64_t *)&self->_hasBeenShown;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_appOpenAdView);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_adMessageSource, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end