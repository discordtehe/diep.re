@implementation VungleSDKInitializer

-(void *)initWithNewRequestController:(void *)arg2 configController:(void *)arg3 reportAdController:(void *)arg4 placementsCoordinator:(void *)arg5 playabilityCoordinator:(void *)arg6 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r25 = @selector(init);
            r0 = [NSOperationQueue new];
            r8 = *(r23 + 0x30);
            *(r23 + 0x30) = r0;
            [r8 release];
            r26 = [[VunglePublisherInformationProvider sharedProvider] retain];
            r0 = [VNGNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 setPublisherInformation:r26];
            [r0 release];
            [r26 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r25);
            r8 = *(r23 + 0x28);
            *(r23 + 0x28) = r0;
            [r8 release];
            *(r23 + 0x40) = 0x0;
            [*(r23 + 0x30) setMaxConcurrentOperationCount:0x3];
            [*(r23 + 0x30) setName:@"Vungle Initial Kickstart Queue"];
            *(int8_t *)(r23 + 0xa) = 0x0;
            *(int16_t *)(r23 + 0x8) = 0x0;
            objc_storeWeak(r23 + 0x48, r19);
            objc_storeWeak(r23 + 0x50, r20);
            objc_storeWeak(r23 + 0x58, r21);
            objc_storeWeak(r23 + 0x60, r24);
            objc_storeWeak(r23 + 0x68, r22);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r25);
            r25 = r0;
            [r0 setIDFACollectionEnabled:0x1];
            r0 = [VNGMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            [r0 startWithOptions:r25];
            [r0 release];
            [r25 release];
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)initializeWithCompletionBlock:(void *)arg2 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x1c0;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isInitializing] & 0x1) == 0x0 && ([r19 didInitialize] & 0x1) == 0x0) {
            [r19 isInitializing:0x1];
            objc_initWeak(r29 - 0xa8, r19);
            if (([VungleSDK shouldPublishIDFV] & 0x1) != 0x0) {
                    objc_copyWeak((r29 - 0xd0) + 0x20, r29 - 0xa8);
                    r0 = [VungleBackoffIdentifierOperation operationWithIdentifierBlock:r2 resultBlock:r3];
                    r29 = r29;
                    var_1D8 = [r0 retain];
                    objc_destroyWeak(r22);
            }
            else {
                    var_1D8 = 0x0;
            }
            objc_copyWeak((r29 - 0xf8) + 0x20, r29 - 0xa8);
            var_1F0 = (r29 - 0xf8) + 0x20;
            var_1E0 = [[VungleBackoffIdentifierOperation operationWithIdentifierBlock:r2 resultBlock:r3] retain];
            objc_alloc();
            objc_copyWeak(&var_120 + 0x20, r29 - 0xa8);
            var_1F8 = &var_120 + 0x20;
            var_1E8 = [r21 initWithResultBlock:&var_120];
            objc_copyWeak(&var_148 + 0x20, r29 - 0xa8);
            var_200 = &var_148 + 0x20;
            r27 = [[NSBlockOperation blockOperationWithBlock:&var_148] retain];
            r21 = [[r19 publisherInformation] retain];
            r0 = [r19 configController];
            r0 = [r0 retain];
            [r0 setPublisherInformation:r21];
            [r0 release];
            [r21 release];
            objc_alloc();
            [[r19 configController] retain];
            [[r19 userAgent] retain];
            objc_copyWeak(&var_178 + 0x28, r29 - 0xa8);
            r0 = [r20 retain];
            var_158 = r0;
            var_208 = &var_178 + 0x28;
            r21 = [r21 initWithConfigController:r26 userAgent:r28 backgroundInit:0x0 resultBlock:&var_178];
            var_220 = r20;
            [r28 release];
            [r26 release];
            objc_alloc();
            [[r19 requestNewController] retain];
            [[r19 userAgent] retain];
            var_218 = &var_1A8 + 0x28;
            objc_copyWeak(&var_1A8 + 0x28, r29 - 0xa8);
            var_188 = [r25 retain];
            r25 = [r26 initWithNewRequestController:r28 userAgent:r23 resultBlock:&var_1A8];
            [r23 release];
            [r28 release];
            r28 = &var_1D0 + 0x20;
            objc_copyWeak(r28, r29 - 0xa8);
            r0 = [NSBlockOperation blockOperationWithBlock:&var_1D0];
            r22 = var_1D8;
            r29 = r29;
            r24 = [r0 retain];
            [r27 addDependency:r2];
            if (r22 != 0x0) {
                    [r27 addDependency:r2];
            }
            [r27 addDependency:r2];
            [r21 addDependency:r2];
            [r25 addDependency:r2];
            r2 = r25;
            [r24 addDependency:r2];
            r0 = [NSArray arrayWithObjects:r29 - 0xa0 count:0x6];
            r20 = var_220;
            r29 = r29;
            r26 = [r0 retain];
            if (var_1D8 != 0x0) {
                    r0 = [NSArray arrayWithObject:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 arrayByAddingObjectsFromArray:r26];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r26 release];
                    [r23 release];
                    r26 = r22;
            }
            r0 = [r19 queue];
            r0 = [r0 retain];
            [r0 addOperations:r26 waitUntilFinished:0x0];
            [r0 release];
            [r26 release];
            [r24 release];
            objc_destroyWeak(r28);
            [r25 release];
            [var_188 release];
            objc_destroyWeak(var_218);
            [r21 release];
            [var_158 release];
            objc_destroyWeak(var_208);
            [r27 release];
            objc_destroyWeak(var_200);
            [var_1E8 release];
            objc_destroyWeak(var_1F8);
            [var_1E0 release];
            objc_destroyWeak(var_1F0);
            [var_1D8 release];
            objc_destroyWeak(r29 - 0xa8);
    }
    var_70 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)initializeFromBackgroundWithCompletionBlock:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isAdPlaying];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [VNGNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 cancelAllTransactions];
            r29 = r29;
            objc_unsafeClaimAutoreleasedReturnValue();
            [r21 release];
    }
    if (([r19 isInitializingFromBackground] & 0x1) == 0x0 && ([r19 isInitializing] & 0x1) == 0x0) {
            r0 = @class(VungleLogger);
            r0 = [r0 sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:@"Initializing SDK on return from background" level:0xf4240 context:@"SDK Initialization"];
            [r0 release];
            [r19 isInitializingFromBackground:0x1];
            objc_initWeak(&stack[-160], r19);
            r0 = @class(VungleLogger);
            r0 = [r0 sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:@"Sending cached reports" level:0xf4240 context:@"SDK Initialization"];
            [r0 release];
            r0 = [r19 reportAdController];
            r0 = [r0 retain];
            [r0 sendSavedReports:0x100e898c8];
            [r0 release];
            objc_copyWeak(&var_B8 + 0x20, &stack[-160]);
            [[NSBlockOperation blockOperationWithBlock:&var_B8] retain];
            objc_copyWeak(&var_E0 + 0x20, &stack[-160]);
            [[VungleBackoffIdentifierOperation operationWithIdentifierBlock:0x100e898e8 resultBlock:&var_E0] retain];
            r26 = [[r19 publisherInformation] retain];
            r0 = [r19 configController];
            r0 = [r0 retain];
            [r0 setPublisherInformation:r26];
            [r0 release];
            [r26 release];
            objc_alloc();
            [[r19 configController] retain];
            [[r19 userAgent] retain];
            objc_copyWeak(&var_110 + 0x28, &stack[-160]);
            var_F0 = [r20 retain];
            r26 = [r26 initWithConfigController:r27 userAgent:r28 backgroundInit:0x1 resultBlock:&var_110];
            [r28 release];
            [r27 release];
            [r24 addDependency:r23];
            [r26 addDependency:r24];
            r27 = [[r19 queue] retain];
            r28 = [[NSArray arrayWithObjects:r29 - 0x88 count:0x3] retain];
            [r27 addOperations:r28 waitUntilFinished:0x0];
            [r28 release];
            [r27 release];
            [r26 release];
            [var_F0 release];
            objc_destroyWeak(&var_110 + 0x28);
            [r24 release];
            objc_destroyWeak(&var_E0 + 0x20);
            [r23 release];
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&stack[-160]);
    }
    var_70 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)abortInitializationWithError:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self queue];
    r0 = [r0 retain];
    [r0 cancelAllOperations];
    [r0 release];
    [self isInitializing:0x0];
    if (r20 != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)retryInitializationWithCompletionBlock:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self backoffCalculator];
    r0 = [r0 retain];
    [r0 increaseAttempts];
    [r0 release];
    r0 = [self backoffCalculator];
    r0 = [r0 retain];
    r22 = [r0 backoffTime];
    [r0 release];
    r21 = dispatch_time(0x0, r22 * 0x3b9aca00);
    [r20 retain];
    dispatch_after(r21, *__dispatch_main_q, &var_50);
    [r20 release];
    [r19 release];
    return;
}

-(void *)publisherInformation {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)cleanupAdUnits {
    r31 = r31 - 0x1b0;
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
    r24 = self;
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    [r0 removeOrphanedCreatives];
    [r0 release];
    r0 = [r24 reportAdController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 placementAdDataFromSavedReports];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if ([r19 count] == 0x0) goto loc_100647d20;

loc_100647984:
    var_110 = q0;
    var_1A0 = r19;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r0;
    var_198 = r1;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 == 0x0) goto loc_100647d14;

loc_1006479c4:
    var_148 = *var_110;
    goto loc_1006479d0;

loc_1006479d0:
    r19 = 0x0;
    r21 = @selector(objectForKeyedSubscript:);
    var_138 = r21;
    goto loc_100647a54;

loc_100647a54:
    if (*var_110 != var_148) {
            objc_enumerationMutation(var_160);
    }
    r27 = *(var_118 + r19 * 0x8);
    r20 = [[r24 placementsCoordinator] retain];
    r25 = [objc_msgSend(r27, r21) retain];
    r22 = [[r20 placementWithReferenceID:r25] retain];
    [r25 release];
    [r20 release];
    r0 = [r22 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_100647cd4;

loc_100647af8:
    r0 = [r22 adUnit];
    r0 = [r0 retain];
    r26 = r0;
    r20 = [[r0 adToken] retain];
    r0 = objc_msgSend(r27, r21);
    r29 = r29;
    r27 = [r0 retain];
    if ([r20 isEqualToString:r27] == 0x0) goto loc_100647cbc;

loc_100647b58:
    r0 = [r22 adUnit];
    r0 = [r0 retain];
    r28 = r24;
    r24 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    r0 = r24;
    r24 = r28;
    [r0 release];
    [r27 release];
    [r20 release];
    [r26 release];
    [r25 release];
    if (r21 == 0x0) goto loc_100647cdc;

loc_100647bbc:
    r0 = [r24 playabilityCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 placementAdUnitIsFeedbased:r22];
    [r0 release];
    if (r21 != 0x0) {
            r20 = [[r24 playabilityCoordinator] retain];
            r21 = [[r22 referenceID] retain];
            r0 = [r22 adUnit];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 cacheKey];
            r29 = r29;
            r25 = [r0 retain];
            [r20 updateAdPlayableState:0x3 feedBasedPlacement:r21 adCacheKey:r25];
            [r25 release];
            r0 = r24;
            r24 = r28;
            [r0 release];
            [r21 release];
            [r20 release];
    }
    r0 = [r24 placementsCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    [r0 resetPlacement:r2 completionBlock:r3];
    r0 = r20;
    goto loc_100647cd8;

loc_100647cd8:
    [r0 release];
    goto loc_100647cdc;

loc_100647cdc:
    [r22 release];
    r19 = r19 + 0x1;
    r21 = var_138;
    if (r19 < var_130) goto loc_100647a54;

loc_100647cf4:
    r0 = objc_msgSend(var_160, var_198);
    var_130 = r0;
    if (r0 != 0x0) goto loc_1006479d0;

loc_100647d14:
    [var_160 release];
    r19 = var_1A0;
    goto loc_100647d20;

loc_100647d20:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100647cbc:
    [r27 release];
    [r20 release];
    [r26 release];
    goto loc_100647cd4;

loc_100647cd4:
    r0 = r25;
    goto loc_100647cd8;
}

-(void *)userAgent {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setUserAgent:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x20);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x20, arg2);
    return;
}

-(void *)backoffCalculator {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setBackoffCalculator:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)queue {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)advertisingIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setAdvertisingIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isInitializing {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)isInitializing:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)isInitializingFromBackground {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)isInitializingFromBackground:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)didInitialize {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setDidInitialize:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(unsigned long long)retryIndex {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setRetryIndex:(unsigned long long)arg2 {
    *(self + 0x40) = arg2;
    return;
}

-(void *)requestNewController {
    r0 = objc_loadWeakRetained(self + 0x48);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRequestNewController:(void *)arg2 {
    objc_storeWeak(self + 0x48, arg2);
    return;
}

-(void *)configController {
    r0 = objc_loadWeakRetained(self + 0x50);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConfigController:(void *)arg2 {
    objc_storeWeak(self + 0x50, arg2);
    return;
}

-(void *)reportAdController {
    r0 = objc_loadWeakRetained(self + 0x58);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)playabilityCoordinator {
    r0 = objc_loadWeakRetained(self + 0x60);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportAdController:(void *)arg2 {
    objc_storeWeak(self + 0x58, arg2);
    return;
}

-(void)setPlayabilityCoordinator:(void *)arg2 {
    objc_storeWeak(self + 0x60, arg2);
    return;
}

-(void *)placementsCoordinator {
    r0 = objc_loadWeakRetained(self + 0x68);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlacementsCoordinator:(void *)arg2 {
    objc_storeWeak(self + 0x68, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x68);
    objc_destroyWeak(self + 0x60);
    objc_destroyWeak(self + 0x58);
    objc_destroyWeak(self + 0x50);
    objc_destroyWeak(self + 0x48);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_destroyWeak(self + 0x20);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end