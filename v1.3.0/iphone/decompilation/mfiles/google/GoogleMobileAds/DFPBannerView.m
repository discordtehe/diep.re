@implementation DFPBannerView

+(void *)bannerViewClass {
    r0 = [DFPInternalBannerView class];
    return r0;
}

-(void)setAppEventDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_storeWeak((int64_t *)&r19->_appEventDelegate, [arg2 retain]);
    r22 = [r21 respondsToSelector:@selector(adView:didReceiveAppEvent:withInfo:), r3, r4];
    [r21 release];
    r0 = [r19 bannerView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setAppEventDelegate:r2];
    [r20 release];
    return;
}

-(void *)validAdSizes {
    r0 = [self bannerView];
    r0 = [r0 retain];
    r20 = [[r0 validAdSizes] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setValidAdSizes:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 setValidAdSizes:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)correlator {
    r0 = [self bannerView];
    r0 = [r0 retain];
    r20 = [[r0 correlator] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setCorrelator:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 setCorrelator:r21];
    [r21 release];
    [r0 release];
    return;
}

-(bool)enableManualImpressions {
    r0 = [self bannerView];
    r0 = [r0 retain];
    r20 = [r0 enableManualImpressions];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)videoController {
    r0 = [self bannerView];
    r0 = [r0 retain];
    r20 = [[r0 videoController] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setEnableManualImpressions:(bool)arg2 {
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 setEnableManualImpressions:arg2];
    [r0 release];
    return;
}

-(void)setAdOptions:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 setAdOptions:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setValidAdSizesWithSizes:(struct GADAdSize *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = self;
    r20 = [[NSMutableArray alloc] init];
    var_28 = r29 + 0x10;
    if (r21 != 0x0) {
            do {
                    r0 = sub_100846600(&var_40);
                    r29 = r29;
                    sub_100822370(r20, [r0 retain]);
                    r8 = var_28;
                    var_28 = r8 + 0x8;
                    r21 = *r8;
                    [r22 release];
            } while (r21 != 0x0);
    }
    [r19 setValidAdSizes:r20];
    [r20 release];
    return;
}

-(void)recordImpression {
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 recordImpression];
    [r0 release];
    return;
}

-(struct CGSize)effectiveContentSize {
    r31 = r31 - 0x140;
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
    [[&var_D8 super] effectiveContentSize];
    v9 = v0;
    v8 = v1;
    r0 = [self validAdSizes];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_1007cdd4c;

loc_1007cdcd8:
    r23 = 0x0;
    goto loc_1007cdcdc;

loc_1007cdcdc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    sub_100846540();
    r0 = sub_100845df4(&stack[-320]);
    if (r0 != 0x0) goto loc_1007cdd4c;

loc_1007cdd10:
    r23 = r23 + 0x1;
    if (r23 < r21) goto loc_1007cdcdc;

loc_1007cdd1c:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1007cdcd8;

loc_1007cdd4c:
    var_48 = **___stack_chk_guard;
    r0 = [r19 release];
    if (**___stack_chk_guard != var_48) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)resize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&saved_fp - 0x10 super] resize:&var_30];
    return;
}

-(void *)appEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_appEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)adView:(void *)arg2 didReceiveAppEvent:(void *)arg3 withInfo:(void *)arg4 {
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_appEventDelegate);
    [r0 adView:self didReceiveAppEvent:r21 withInfo:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void *)customRenderedBannerViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_customRenderedBannerViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCustomRenderedBannerViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_customRenderedBannerViewDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_customRenderedBannerViewDelegate);
    objc_destroyWeak((int64_t *)&self->_appEventDelegate);
    return;
}

@end