@implementation FBNativeAdCollectionViewAdProvider

-(void *)init {
    r20 = [FBNativeAdsManager new];
    r19 = [self initWithManager:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithManager:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isValid] & 0x1) != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r0 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_manager, r21);
                    [r20->_manager setDelegate:r20];
            }
            r0 = [r20 retain];
            r20 = r0;
            r21 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:@"internal_inconsistency" code:0x1 description:@"FBNativeAdCollectionViewAdProvider: native ads manager is not valid"];
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self manager];
    r0 = [r0 retain];
    [r0 setExtraHint:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)extraHint {
    r0 = [self manager];
    r0 = [r0 retain];
    r20 = [[r0 extraHint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)nativeAdsLoaded {
    r0 = [self currentIndexPathToAdMap];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    return;
}

-(void)nativeAdsFailedToLoadWithError:(void *)arg2 {
    return;
}

-(bool)isAdCellAtIndexPath:(void *)arg2 forStride:(unsigned long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 row];
    if (r0 + 0x1 == (r0 + 0x1) / arg3 * arg3) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)collectionView:(void *)arg2 nativeAdForRowAtIndexPath:(void *)arg3 {
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
    r0 = [arg3 retain];
    r20 = r0;
    r21 = @selector(class);
    if (objc_msgSend(r0, r21) != objc_msgSend(@class(NSIndexPath), r21)) {
            r0 = [NSIndexPath indexPathForRow:[r20 row] inSection:[r20 section]];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
    }
    r0 = [r19 currentIndexPathToAdMap];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r19 setCurrentIndexPathToAdMap:r22];
    }
    else {
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r23 = [r0 retain];
            [r19 setCurrentIndexPathToAdMap:r23];
            [r23 release];
    }
    [r22 release];
    r0 = [r19 currentIndexPathToAdMap];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r0 = [r19 manager];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 nextNativeAd];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [r19 currentIndexPathToAdMap];
                    r0 = [r0 retain];
                    [r0 setObject:r22 forKeyedSubscript:r20];
                    [r0 release];
            }
    }
    [r22 setDelegate:r19];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(unsigned long long)adjustCount:(unsigned long long)arg2 forStride:(unsigned long long)arg3 {
    r2 = arg2;
    r8 = r2 - 0x1;
    asm { udiv       x8, x8, x9 };
    r0 = r8 + r2;
    return r0;
}

-(void *)adjustNonAdCellIndexPath:(void *)arg2 forStride:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if ([self isAdCellAtIndexPath:r19 forStride:r20] != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:@"FBNativeAdCollectionViewAdProvider: adjustNonAdCellIndexPath can only be called for non-ad cells"];
            r20 = 0x0;
    }
    else {
            r0 = [r19 row];
            r20 = [[NSIndexPath indexPathForRow:r0 - r0 / r20 inSection:[r19 section]] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)nativeAdDidClick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidClick:)] != 0x0) {
            [r20 nativeAdDidClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdDidFinishHandlingClick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidFinishHandlingClick:)] != 0x0) {
            [r20 nativeAdDidFinishHandlingClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdWillLogImpression:)] != 0x0) {
            [r20 nativeAdWillLogImpression:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentIndexPathToAdMap, 0x0);
    objc_storeStrong((int64_t *)&self->_manager, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_manager, arg2);
    return;
}

-(void *)manager {
    r0 = self->_manager;
    return r0;
}

-(void *)currentIndexPathToAdMap {
    r0 = self->_currentIndexPathToAdMap;
    return r0;
}

-(void)setCurrentIndexPathToAdMap:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentIndexPathToAdMap, arg2);
    return;
}

@end