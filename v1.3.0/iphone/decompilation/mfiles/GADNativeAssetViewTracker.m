@implementation GADNativeAssetViewTracker

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
            r0 = [r0 weakToStrongObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAssetViewsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 weakToStrongObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToNonclickableAssetNamesMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 weakToStrongObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToClickableAssetViewsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 weakToStrongObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToNonclickableAssetViewsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 weakToWeakObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAdChoicesContentViewMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)registerClickableAssetViews:(void *)arg2 nonclickableAssetViews:(void *)arg3 forAdView:(void *)arg4 {
    r31 = r31 - 0x110;
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
    r20 = self;
    [arg2 retain];
    var_D0 = [arg3 retain];
    r19 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAssetViewsMap));
    var_F8 = r8;
    sub_100822100(*(r20 + r8), r19);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToNonclickableAssetNamesMap));
    var_E0 = r8;
    sub_100822100(*(r20 + r8), r19);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToClickableAssetViewsMap));
    var_F0 = r8;
    sub_100822100(*(r20 + r8), r19);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToNonclickableAssetViewsMap));
    var_E8 = r8;
    sub_100822100(*(r20 + r8), r19);
    r21 = [[NSMapTable weakToStrongObjectsMapTable] retain];
    r27 = [[NSMapTable strongToWeakObjectsMapTable] retain];
    r28 = [r21 retain];
    var_70 = r28;
    r21 = [r27 retain];
    var_68 = r21;
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_90];
    [r25 release];
    r25 = [[NSMapTable strongToWeakObjectsMapTable] retain];
    r26 = [[NSMutableSet alloc] init];
    r24 = [r28 retain];
    var_A8 = r24;
    r25 = [r25 retain];
    var_A0 = r25;
    r26 = [r26 retain];
    var_98 = r26;
    [arg3 enumerateKeysAndObjectsUsingBlock:&var_C8];
    [var_D0 release];
    if ([r24 count] != 0x0) {
            [*(r20 + var_F8) setObject:r2 forKey:r3];
    }
    if ([r21 count] != 0x0) {
            [*(r20 + var_F0) setObject:r2 forKey:r3];
    }
    if ([r25 count] != 0x0) {
            [*(r20 + var_E8) setObject:r2 forKey:r3];
    }
    if ([r26 count] != 0x0) {
            [*(r20 + var_E0) setObject:r2 forKey:r3];
    }
    [var_98 release];
    [var_A0 release];
    [var_A8 release];
    [r26 release];
    [r25 release];
    [var_68 release];
    [var_70 release];
    [r21 release];
    [r24 release];
    [r19 release];
    return;
}

-(void)setClickableAssetView:(void *)arg2 assetName:(void *)arg3 previousAssetViewPointer:(void * *)arg4 forAdView:(void *)arg5 {
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
    r29 = &saved_fp;
    r25 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    r23 = objc_loadWeakRetained(r25);
    if (r23 != r19) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToAssetViewsMap));
            var_58 = r8;
            r0 = *(r22 + r8);
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 == 0x0) {
                    r0 = [NSMapTable weakToStrongObjectsMapTable];
                    r29 = r29;
                    r24 = [r0 retain];
            }
            r27 = @selector(objectForKey:);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_adViewToClickableAssetViewsMap));
            r0 = *(r22 + r28);
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r26 = [r0 retain];
            if (r26 == 0x0) {
                    r0 = [NSMapTable strongToWeakObjectsMapTable];
                    r29 = r29;
                    r26 = [r0 retain];
            }
            objc_storeWeak(r25, r19);
            if (r23 != 0x0) {
                    [[r24 objectForKey:r2] retain];
                    sub_100822100(r24, r23);
                    sub_100822100(r26, r25);
                    [r25 release];
            }
            if (r19 != 0x0) {
                    sub_10083e760();
                    [r24 setObject:r2 forKey:r3];
                    objc_msgSend(r26, r25);
            }
            [*(r22 + var_58) setObject:r2 forKey:r3];
            objc_msgSend(*(r22 + r28), r25);
            [r26 release];
            [r24 release];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)assetViewsForAdView:(void *)arg2 {
    r0 = self->_adViewToAssetViewsMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)setAdChoicesContentView:(void *)arg2 forAdView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = self->_adViewToAdChoicesContentViewMap;
    if (r19 != 0x0) {
            [r0 setObject:r2 forKey:r3];
    }
    else {
            sub_100822100(r0, r20);
    }
    [r19 release];
    return;
}

-(void *)nonclickableAssetNamesForAdView:(void *)arg2 {
    r0 = self->_adViewToNonclickableAssetNamesMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)adChoicesContentViewForAdView:(void *)arg2 {
    r0 = self->_adViewToAdChoicesContentViewMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)clickableAssetViewsForAdView:(void *)arg2 {
    r0 = self->_adViewToClickableAssetViewsMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)nonclickableAssetViewsForAdView:(void *)arg2 {
    r0 = self->_adViewToNonclickableAssetViewsMap;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adViewToAdChoicesContentViewMap, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewToNonclickableAssetViewsMap, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewToClickableAssetViewsMap, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewToNonclickableAssetNamesMap, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewToAssetViewsMap, 0x0);
    return;
}

@end