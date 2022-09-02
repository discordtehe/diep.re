@implementation GADNativeAdViewTracker

+(void *)sharedInstance {
    if (*qword_1011dbe60 != -0x1) {
            dispatch_once(0x1011dbe60, 0x100e99758);
    }
    r0 = *0x1011dbe68;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMapTable);
            r0 = [r0 weakToWeakObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAdMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 weakToWeakObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adToAdViewMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)removeAdViewForNativeAd:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adToAdViewMap));
    r22 = *(r21 + r24);
    r23 = @selector(objectForKey:);
    r20 = [r19 retain];
    r0 = objc_msgSend(r22, r23);
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    else {
            r23 = 0x0;
    }
    if ([r22 conformsToProtocol:@protocol(GADNativeAdViewOverlayProtocol)] != 0x0) {
            [r22 performSelector:@selector(setOverlayView:) withObject:r3];
    }
    var_38 = **___stack_chk_guard;
    sub_1008833e8(*0x100e9c530, r19, r23);
    sub_100822100(*(r21 + r24), r19);
    sub_100822100(r21->_adViewToAdMap, r22);
    [r19 setAssetViewTracker:0x0];
    [r20 release];
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adViewForNativeAd:(void *)arg2 {
    r0 = self->_adToAdViewMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adToAdViewMap, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewToAdMap, 0x0);
    return;
}

-(void)registerAdView:(void *)arg2 assetViewTracker:(void *)arg3 forNativeAd:(void *)arg4 {
    r31 = r31 - 0xe0;
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
    r26 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAdMap));
    r0 = *(r26 + r28);
    r0 = [r0 objectForKey:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 isEqual:r2] & 0x1) == 0x0) {
            r23 = @selector(dictionaryWithObjects:forKeys:count:);
            r1 = r23;
            r0 = objc_msgSend(@class(NSDictionary), r1);
            r29 = r29;
            r27 = [r0 retain];
            var_C0 = r23;
            var_B8 = r20;
            if (r22 != 0x0) {
                    if ([r19 conformsToProtocol:@protocol(GADNativeAdViewOverlayProtocol)] != 0x0) {
                            [r19 performSelector:@selector(setOverlayView:) withObject:r3];
                    }
                    sub_1008833e8(*0x100e9c530, r22, r27);
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adToAdViewMap));
                    sub_100822100(*(r26 + r20), r22);
                    r1 = @selector(setAssetViewTracker:);
                    objc_msgSend(r22, r1);
            }
            else {
                    r20 = *(int32_t *)ivar_offset(_adToAdViewMap);
            }
            r25 = @selector(objectForKey:);
            var_C8 = r27;
            asm { sxtw       x23, w20 };
            r0 = *(r26 + (r20 << r1));
            r0 = objc_msgSend(r0, r25);
            r29 = r29;
            r25 = [r0 retain];
            var_D0 = r25;
            if (r25 != 0x0) {
                    r0 = [r25 conformsToProtocol:r2];
                    r20 = var_B8;
                    if (r0 != 0x0) {
                            [r25 performSelector:@selector(setOverlayView:) withObject:r3];
                    }
                    r0 = objc_msgSend(@class(NSDictionary), var_C0);
                    r29 = r29;
                    sub_1008833e8(*0x100e9c530, r21, [r0 retain]);
                    sub_100822100(*(r26 + r28), r25);
                    [r24 release];
            }
            else {
                    r20 = var_B8;
            }
            r23 = @selector(dictionaryWithObjects:forKeys:count:);
            [*(r26 + r28) setObject:r21 forKey:r19];
            [*(r26 + r23) setObject:r19 forKey:r21];
            [r21 setAssetViewTracker:r20];
            if ([r19 conformsToProtocol:r2] != 0x0) {
                    r0 = [r21 overlayView];
                    r29 = r29;
                    [r0 retain];
                    [r19 performSelector:@selector(setOverlayView:) withObject:r3];
                    [r26 release];
            }
            r0 = [r20 clickableAssetViewsForAdView:r19];
            r0 = [r0 retain];
            r26 = [[r0 dictionaryRepresentation] retain];
            [r0 release];
            r0 = [r20 nonclickableAssetViewsForAdView:r19];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 dictionaryRepresentation];
            r29 = r29;
            r27 = [r0 retain];
            [r24 release];
            r23 = var_C0;
            if (r26 != 0x0) {
                    r20 = 0x0;
                    r28 = r26;
            }
            else {
                    r0 = objc_msgSend(@class(NSDictionary), r23);
                    r29 = r29;
                    r28 = [r0 retain];
                    r20 = 0x1;
            }
            if (r27 != 0x0) {
                    r25 = 0x0;
                    r24 = r27;
            }
            else {
                    r0 = @class(NSDictionary);
                    r0 = objc_msgSend(r0, r23);
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = 0x1;
            }
            r23 = [objc_msgSend(*(&@class(MCConfigurationData) + 0x18), r23) retain];
            [var_C8 release];
            if (r25 != 0x0) {
                    [r24 release];
            }
            if (r20 != 0x0) {
                    [r28 release];
            }
            sub_1008833e8(*0x100e9c528, r21, r23);
            [r27 release];
            [r26 release];
            [var_D0 release];
            [r23 release];
            r20 = var_B8;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end