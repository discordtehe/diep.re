@implementation FBANNativeAdAdapter

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
    r0 = objc_getClass("FBANNativeAdAdapter");
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

-(void *)adDataModel {
    r0 = [self nativeAdData];
    return r0;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r21 = [r5 retain];
    [FBAdLogger logInTestModeWithFile:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/adapters/FBANNativeAdAdapter.m" lineNumber:0x35 format:@"Audience Network Loading"];
    r22 = [FBAdCommandProcessor new];
    [r19 setCommandProcessor:r22];
    [r22 release];
    r0 = [r19 commandProcessor];
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    [r19 setHasLoggedImpression:0x0];
    r22 = [FBNativeAdDataModel alloc];
    r23 = [r21 type];
    [r21 release];
    r21 = [r22 initWithMetadata:r20 placementType:r23];
    [r20 release];
    [r19 setNativeAdData:r21];
    [r21 release];
    r20 = [[r19 delegate] retain];
    r23 = @class(FBAdCommandProcessor);
    r0 = [r19 nativeAdData];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([r23 shouldInvalidate:r21] != 0x0) {
            [r21 release];
            r21 = [[FBAdError getNSError:0x3e9] retain];
            [r20 adapter:r19 didFailWithError:r21];
            [r21 release];
    }
    else {
            r0 = [r19 nativeAdData];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isValid];
            [r0 release];
            [r21 release];
            if ((r23 & 0x1) != 0x0) {
                    [r20 adapterDidLoad:r19];
            }
            else {
                    r21 = [[FBAdError getNSError:0x3e9] retain];
                    [r20 adapter:r19 didFailWithError:r21];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r0 = [self startAdFromRootViewController:arg2 animated:0x1];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    r20 = [[FBAdViewControllerProxy proxyWithViewController:arg2] retain];
    [self setRootViewController:r20];
    [r20 release];
    return 0x1;
}

-(void)onImpressionWithExtraData:(void *)arg2 withPostData:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [FBAdLogger logInTestModeWithFile:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/adapters/FBANNativeAdAdapter.m" lineNumber:0x55 format:@"Audience Network Loaded"];
    if (([r20 hasLoggedImpression] & 0x1) == 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 adapterWillLogImpression:r20];
            [r0 release];
            r23 = [[FBAdEventManager sharedManager] retain];
            r0 = [r20 nativeAdData];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 inlineClientToken];
            r29 = r29;
            r25 = [r0 retain];
            [r23 logImpressionForToken:r25 withExtraData:r19];
            [r25 release];
            [r24 release];
            [r23 release];
            if (r21 != 0x0 && [r21 count] != 0x0) {
                    r4 = @"Audience Network Loaded";
                    r23 = @class(FBAdTimer);
                    r0 = [r20 nativeAdData];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 snapshotDelayPostInSecond];
                    asm { scvtf      d8, x0 };
                    var_68 = [r19 retain];
                    var_60 = [r21 retain];
                    r0 = [r23 scheduledTimerWithTimeInterval:0x0 repeats:&var_88 block:r4];
                    r23 = [r0 retain];
                    [r20 setSnapshotTimer:r23];
                    [r23 release];
                    [r22 release];
                    [var_60 release];
                    [var_68 release];
            }
            [r20 setHasLoggedImpression:0x1];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)onImpressionMissWithExtraData:(void *)arg2 withPostData:(void *)arg3 {
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
    r19 = [arg2 retain];
    if (([r20 hasLoggedImpressionMiss] & 0x1) == 0x0) {
            r21 = [[FBAdEventManager sharedManager] retain];
            r0 = [r20 nativeAdData];
            r0 = [r0 retain];
            r23 = [[r0 inlineClientToken] retain];
            [r21 logImpressionMissForToken:r23 withExtraData:r19];
            [r23 release];
            [r0 release];
            [r21 release];
            [r20 setHasLoggedImpressionMiss:0x1];
    }
    [r19 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 withViewController:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[FBAdViewControllerProxy proxyWithViewController:arg3 withView:r21] retain];
    [r21 release];
    [self setRootViewController:r19];
    [r19 release];
    return;
}

-(void)onClickForViewController:(void *)arg2 withExtraData:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 nativeAdData];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 commandURL];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r23 = [[r20 commandProcessor] retain];
            r0 = [r20 nativeAdData];
            r0 = [r0 retain];
            r24 = [[r0 inlineClientToken] retain];
            [r23 processCommand:r21 withExtraData:r19 inlineClientToken:r24 skipAppStore:0x0 completionHandler:&var_58];
            [r24 release];
            [r0 release];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self rootViewController];
    return r0;
}

-(void)viewControllerDismissed:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidFinishHandlingClick:self];
    [r0 release];
    return;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_snapshotTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_rootViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    return;
}

-(void)setHasLoggedImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasLoggedImpression = arg2;
    return;
}

-(bool)hasLoggedImpression {
    r0 = *(int8_t *)(int64_t *)&self->_hasLoggedImpression;
    return r0;
}

-(bool)hasLoggedImpressionMiss {
    r0 = *(int8_t *)(int64_t *)&self->_hasLoggedImpressionMiss;
    return r0;
}

-(void)setHasLoggedImpressionMiss:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasLoggedImpressionMiss = arg2;
    return;
}

-(bool)hasLoggedVideoPlay {
    r0 = *(int8_t *)(int64_t *)&self->_hasLoggedVideoPlay;
    return r0;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setHasLoggedVideoPlay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasLoggedVideoPlay = arg2;
    return;
}

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(void *)rootViewController {
    r0 = self->_rootViewController;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void *)snapshotTimer {
    r0 = self->_snapshotTimer;
    return r0;
}

-(void)setSnapshotTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_snapshotTimer, arg2);
    return;
}

@end