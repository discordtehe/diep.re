@implementation FBNativeAdCollectionViewCell

-(long long)type {
    r0 = [self class];
    r0 = objc_getAssociatedObject(r0, "type");
    r0 = [r0 retain];
    r20 = [r0 integerValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [r19 type];
            r22 = [[r19 attributes] retain];
            r20 = [[FBNativeAdView nativeAdViewWithType:r21 withAttributes:r22] retain];
            [r22 release];
            [r19 setAdLoaded:0x0];
            [r19 bounds];
            [r20 setFrame:0x0];
            [r19 setNativeAdView:r20];
            r0 = [r19 contentView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)attributes {
    r0 = [self class];
    r0 = objc_getAssociatedObject(r0, "attributes");
    return r0;
}

-(void)populate:(void *)arg2 {
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
    r0 = [r20 nativeAdView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 mediaView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 populate:r19];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r21 allInteractableTargets];
            r29 = r29;
            r23 = [r0 retain];
            [r19 registerViewForInteraction:r21 mediaView:r22 iconView:0x0 viewController:0x0 clickableViews:r23];
            [r23 release];
    }
    if (([r20 adLoaded] & 0x1) == 0x0) {
            r24 = [[r19 placementID] retain];
            [FBAdDebugOverlay updatePlacementID:r24 inView:r21];
            [r24 release];
            [r20 setAdLoaded:0x1];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_nativeAdView);
    return;
}

-(void *)nativeAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setNativeAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdView, arg2);
    return;
}

-(bool)adLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_adLoaded;
    return r0;
}

-(void)setAdLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adLoaded = arg2;
    return;
}

+(void *)specializeCellForType:(long long)arg2 forAttributes:(void *)arg3 {
    [arg3 retain];
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 UUIDString] retain];
    r0 = [NSString stringWithFormat:@"FBNativeAdCollectionViewCell-%@"];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r24 = [r0 UTF8String];
    [r0 release];
    [r23 release];
    [r22 release];
    objc_setAssociatedObject(sub_100aab634(r24, [FBNativeAdCollectionViewCell class], 0x0, 0x0), "type", [[NSNumber numberWithInteger:arg2] retain], 0x1);
    [r20 release];
    objc_setAssociatedObject(r21, "attributes", r19, 0x1);
    [r19 release];
    r0 = objc_retainAutoreleaseReturnValue(r21);
    return r0;
}

@end