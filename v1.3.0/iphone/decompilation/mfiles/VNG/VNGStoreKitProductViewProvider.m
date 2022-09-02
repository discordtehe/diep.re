@implementation VNGStoreKitProductViewProvider

-(void *)initProductViewProviderWithWithAppStoreParams:(void *)arg2 {
    r0 = [self initProductViewProviderWithWithAppStoreParams:arg2 numberOfPreloadedProductView:0x3];
    return r0;
}

-(void *)initProductViewProviderWithWithAppStoreParams:(void *)arg2 numberOfPreloadedProductView:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r20 + 0x28, r22);
            *(r20 + 0x10) = r21;
            r0 = [NSMutableArray new];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            *(r20 + 0x30) = 0x0;
            [r20 loadNewProductViewToQueueWithNumber:*(r20 + 0x10)];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getProductViewController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isReady] != 0x0) {
            r0 = [r19 preloadedProductViewQueue];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 count];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 preloadedProductViewQueue];
                    r0 = [r0 retain];
                    r19 = [[r0 firstObject] retain];
                    [r0 release];
            }
            else {
                    if ([r19 activeLoadingCount] == 0x0) {
                            [r19 loadNewProductViewToQueueWithNumber:[r19 numberOfPreloadedProductView]];
                    }
                    r19 = 0x0;
            }
    }
    else {
            if ([r19 activeLoadingCount] == 0x0) {
                    [r19 loadNewProductViewToQueueWithNumber:[r19 numberOfPreloadedProductView]];
            }
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)loadNewProductViewToQueueWithNumber:(long long)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = arg2;
    r20 = self;
    objc_initWeak(&stack[-120], r20);
    if (r19 >= 0x1) {
            r25 = 0x0;
            r23 = &var_98 + 0x28;
            do {
                    [r20 setActiveLoadingCount:[r20 activeLoadingCount] + 0x1];
                    objc_copyWeak(r23, &stack[-120]);
                    dispatch_async(r24, &var_98);
                    objc_destroyWeak(r23);
                    r25 = r25 + 0x1;
            } while (r25 < r19);
    }
    objc_destroyWeak(&stack[-120]);
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self preloadedProductViewQueue];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 productViewControllerDidDismiss:r20];
    [r0 release];
    r0 = [r19 preloadedProductViewQueue];
    r0 = [r0 retain];
    [r0 removeObjectAtIndex:0x0];
    [r0 release];
    r0 = [r19 preloadedProductViewQueue];
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) {
            [r19 setIsReady:0x0];
    }
    [r19 loadNewProductViewToQueueWithNumber:0x1];
    [r20 release];
    return;
}

+(void *)numberFromAppStoreID:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x70;
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
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [NSNumberFormatter new];
    r20 = r0;
    [r0 setNumberStyle:0x1];
    r0 = [r20 numberFromString:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r21 != 0x0 && r22 == 0x0) {
            r24 = [[NSString stringWithFormat:@"Invalid `appStoreID` %@"] retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            *r21 = [[[NSError errorWithDomain:@"com.vungle.providers.productView" code:0xffffffffffff1882 userInfo:r25] retain] autorelease];
            [r25 release];
            [r24 release];
    }
    else {
            [r22 retain];
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(unsigned char)isReady {
    r0 = *(int8_t *)(self + 0x8) & 0xff;
    return r0;
}

-(void)setIsReady:(unsigned char)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(long long)numberOfPreloadedProductView {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)preloadedProductViewQueue {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setPreloadedProductViewQueue:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)appStoreParams {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setAppStoreParams:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setActiveLoadingCount:(long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(long long)activeLoadingCount {
    r0 = *(self + 0x30);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_destroyWeak(self + 0x18);
    return;
}

@end