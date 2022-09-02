@implementation MPNativeAdSourceQueue

-(void *)dequeueAd {
    r0 = [self adQueue];
    r0 = [r0 retain];
    r22 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [self adQueue];
    r0 = [r0 retain];
    [r0 removeObject:r22];
    [r0 release];
    [self loadAds];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)dequeueAdWithMaxAge:(double)arg2 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r0 = [self dequeueAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            do {
                    if (([r19 isAdAgeValid:r2 withMaxAge:r3] & 0x1) != 0x0) {
                        break;
                    }
                    r0 = [r19 dequeueAd];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 release];
                    r21 = r23;
            } while (r23 != 0x0);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithAdUnitIdentifier:(void *)arg2 rendererConfigurations:(void *)arg3 andTargeting:(void *)arg4 {
    r31 = r31 - 0x60;
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
    r23 = arg4;
    r24 = arg3;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r21 = [r23 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r22 + 0x30);
            *(r22 + 0x30) = r0;
            [r8 release];
            objc_storeStrong(r22 + 0x40, r24);
            objc_storeStrong(r22 + 0x38, r23);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r25);
            r8 = *(r22 + 0x18);
            *(r22 + 0x18) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)addNativeAd:(void *)arg2 {
    [arg2 retain];
    r0 = [self adQueue];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)cancelRequests {
    [self resetBackoff];
    return;
}

-(unsigned long long)count {
    r0 = [self adQueue];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isAdAgeValid:(void *)arg2 withMaxAge:(double)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 creationDate];
    r0 = [r0 retain];
    [r0 timeIntervalSinceNow];
    r0 = [r0 release];
    if (Abs(d9) < d8) {
            if (CPU_FLAGS & S) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)resetBackoff {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self setAdFetchRetryCounter:0x0];
    return;
}

-(void)loadAds {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self adFetchRetryCounter] == 0x0) {
            [r19 replenishCache];
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)replenishCache {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self count] == 0x0 && ([r19 isAdLoading] & 0x1) == 0x0) {
            [r19 setIsAdLoading:0x1];
            r21 = [[r19 adUnitIdentifier] retain];
            r22 = [[r19 rendererConfigurations] retain];
            r20 = [[MPNativeAdRequest requestWithAdUnitIdentifier:r21 rendererConfigurations:r22] retain];
            [r22 release];
            [r21 release];
            r21 = [[r19 targeting] retain];
            [r20 setTargeting:r21];
            [r21 release];
            [r20 startForAdSequence:[r19 currentSequence] withCompletionHandler:&var_48];
            [r20 release];
    }
    return;
}

-(void)setAdQueue:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)adQueue {
    r0 = *(self + 0x18);
    return r0;
}

-(unsigned long long)adFetchRetryCounter {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setAdFetchRetryCounter:(unsigned long long)arg2 {
    *(self + 0x20) = arg2;
    return;
}

-(unsigned long long)currentSequence {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setCurrentSequence:(unsigned long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(void *)adUnitIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setAdUnitIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)targeting {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)rendererConfigurations {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setRendererConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(bool)isAdLoading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsAdLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end