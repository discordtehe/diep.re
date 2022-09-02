@implementation FBANBannerAdAdapter

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBANBannerAdAdapter");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [r5 retain];
    r22 = [[FBAdViewInternal alloc] initWithAdData:r21 placementDefinition:r20 adSize:0x0 rootViewController:r5];
    [r20 release];
    [r21 release];
    [r19 setAdView:r22];
    [r22 release];
    r0 = [r19 adView];
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    r0 = [r19 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isAdValid];
    [r0 release];
    if ((r22 & 0x1) != 0x0) {
            r0 = [r19 adView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 loadAd];
    }
    else {
            r20 = [[r19 delegate] retain];
            r21 = [[FBAdError getNSError:0x3e9] retain];
            [r20 adapter:r19 didFailWithError:r21];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void *)adDataModel {
    r0 = [self adView];
    r0 = [r0 retain];
    r20 = [[r0 offsiteAd] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r0 = [self startAdFromRootViewController:arg2 animated:0x1];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 adView];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 rootViewController];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqual:r2];
            [r0 release];
            [r22 release];
            if ((r24 & 0x1) == 0x0) {
                    r0 = [r20 adView];
                    r0 = [r0 retain];
                    [r0 setRootViewControllerInternal:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return 0x1;
}

-(void)adViewDidFinishHandlingClick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adapterDidFinishHandlingClick:)] != 0x0) {
            [r20 adapterDidFinishHandlingClick:r19];
    }
    [r20 release];
    return;
}

-(void)adViewDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidClick:self url:0x0 playerHandles:0x0];
    [r0 release];
    return;
}

-(void)adViewDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:self];
    [r0 release];
    return;
}

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)adViewWillLogImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillLogImpression:self];
    [r0 release];
    return;
}

@end