@implementation GADNativeCustomTemplateAd

-(void *)initWithInternalNativeAd:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_50 super] initWithInternalNativeAd:r2];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r26);
            *(r20 + r26) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.custom-template-ad", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 assetForKey:*0x100e96758];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 videoController];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 hasVideoContent];
            [r0 release];
            if ((r25 & 0x1) == 0x0) {
                    r0 = [GADDisplayAdMeasurement alloc];
                    r0 = [r0 initWithInternalNativeAd:r2];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayAdMeasurement));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            objc_initWeak(&stack[-104], r20);
            r0 = r20->_internalNativeAd;
            r0 = [r0 nativeAdContext];
            r0 = [r0 retain];
            [[r0 context] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c350 object:r25 queue:0x0 usingBlock:&var_80];
            [r25 release];
            [r23 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r0 = [self availableAssetKeys];
    r0 = [r0 retain];
    r21 = [[r0 componentsJoinedByString:@", "] retain];
    r22 = [NSString alloc];
    r23 = [NSStringFromClass([self class]) retain];
    r20 = [r22 initWithFormat:@"<%@: %p, availableAssetKeys:[%@]>"];
    [r23 release];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)templateID {
    r0 = self->_internalNativeAd;
    r0 = [r0 customTemplateID];
    return r0;
}

-(void *)imageForKey:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_internalNativeAd;
    r23 = [arg2 retain];
    r0 = [r19 assetForKey:*0x100e967a8];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 objectForKeyedSubscript:arg2];
    [r23 release];
    r20 = [r20 retain];
    [GADNativeAdImage class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_internalNativeAd;
    r23 = [arg2 retain];
    r0 = [r19 assetForKey:*0x100e967a8];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 objectForKeyedSubscript:arg2];
    [r23 release];
    r20 = [r20 retain];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)adType {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e978c0);
    return r0;
}

-(void *)mediaView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r20 = [[r19 internalMediaContent] retain];
            if (r20 != 0x0) {
                    r0 = [GADMediaView alloc];
                    r0 = [r0 init];
                    r8 = *(r19 + r21);
                    *(r19 + r21) = r0;
                    [r8 release];
                    [*(r19 + r21) setInternalMediaContent:r20];
                    r19 = [*(r19 + r21) retain];
            }
            else {
                    r19 = 0x0;
            }
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)videoController {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [GADVideoController alloc];
            r0 = [r0 init];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            r20 = *(r19 + r23);
            r0 = [r19 internalMediaContent];
            r0 = [r0 retain];
            r22 = [[r0 videoController] retain];
            [r20 setInternalVideoController:r22];
            [r22 release];
            [r0 release];
            r0 = *(r19 + r23);
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDisplayAdMeasurement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_displayAdMeasurement, arg2);
    return;
}

-(void *)displayAdMeasurement {
    r0 = self->_displayAdMeasurement;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)availableAssetKeys {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[self->_internalNativeAd assetForKey:*0x100e967a8] retain];
    r22 = [NSMutableArray alloc];
    r23 = [[r20 allKeys] retain];
    r22 = [r22 initWithArray:r23];
    [r23 release];
    r0 = [self internalMediaContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_100822370(r22, @"_videoMediaView");
    }
    r19 = [[r22 sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)] retain];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)performClickOnAssetWithKey:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r0 = [r20 availableAssetKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 containsObject:r2];
    [r0 release];
    if ((r22 & 0x1) != 0x0) {
            var_68 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x60 count:0x0] retain];
            r22 = r20->_lockQueue;
            [r20 retain];
            dispatch_sync(r22, &var_C0);
            r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x48 forKeys:r29 - 0x58 count:0x2] retain];
            [[&var_D0 super] postDidReceiveUnapprovedClickNotificationWithUserInfo:r21];
            [r21 release];
            [r20 release];
            _Block_object_dispose(&var_90, 0x8);
            [var_68 release];
    }
    else {
            NSLog(@"<Google> Asset is unavailable. Cannot perform click on \"%@\".", @selector(containsObject:));
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)performClickOnAssetWithKey:(void *)arg2 customClickHandler:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r0 = [r21 availableAssetKeys];
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r23 = &var_50;
            var_48 = r23;
            if (r20 != 0x0) {
                    r22 = r21->_lockQueue;
                    var_68 = [r21 retain];
                    var_60 = [r20 retain];
                    dispatch_sync(r22, &var_88);
                    [var_60 release];
                    [var_68 release];
                    if (*(int8_t *)(var_48 + 0x18) != 0x0) {
                            [r21 performClickOnAssetWithKey:r19];
                    }
            }
            else {
                    [r21 performClickOnAssetWithKey:r19];
            }
            _Block_object_dispose(&var_50, 0x8);
    }
    else {
            NSLog(@"<Google> Asset is unavailable. Cannot perform click on \"%@\".", @selector(containsObject:));
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)recordImpression {
    [[&var_10 super] postDidMakeImpressionNotificationWithUserInfo:0x0];
    return;
}

-(void)setCustomClickHandler:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)customClickHandler {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    objc_retainBlock(*(&var_40 + 0x28));
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)handleNativeAdCustomClick:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_deprecatedCustomClickHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_customClickHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_displayAdMeasurement, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end