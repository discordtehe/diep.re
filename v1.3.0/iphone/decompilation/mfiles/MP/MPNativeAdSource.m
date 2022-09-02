@implementation MPNativeAdSource

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r21);
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            objc_storeWeak(r20 + 0x8, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadAdsWithAdUnitIdentifier:(void *)arg2 rendererConfigurations:(void *)arg3 andTargeting:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self deleteCacheForAdUnitIdentifier:r19];
    r23 = [objc_alloc() initWithAdUnitIdentifier:r19 rendererConfigurations:r21 andTargeting:r20];
    [r20 release];
    [r21 release];
    [r23 setDelegate:self];
    r0 = [self adQueueDictionary];
    r0 = [r0 retain];
    [r0 setObject:r23 forKey:r19];
    [r19 release];
    [r0 release];
    [r23 loadAds];
    [r23 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x140;
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
    r19 = self;
    var_110 = q0;
    r0 = *(self + 0x10);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 deleteCacheForAdUnitIdentifier:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)dequeueAdForAdUnitIdentifier:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adQueueDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r21] retain];
    [r21 release];
    [r0 release];
    r19 = [[r20 dequeueAdWithMaxAge:r21] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)deleteCacheForAdUnitIdentifier:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [self adQueueDictionary];
    r0 = [r0 retain];
    r23 = [[r0 objectForKey:r19] retain];
    [r0 release];
    [r23 setDelegate:0x0];
    [r23 cancelRequests];
    r0 = [self adQueueDictionary];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r19 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)adSourceQueueAdIsAvailable:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adSourceDidFinishRequest:self];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)adQueueDictionary {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setAdQueueDictionary:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end