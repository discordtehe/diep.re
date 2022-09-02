@implementation FBAdDSLBridgeViewController

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void *)initWithAdData:(void *)arg2 withNativeAdDataModel:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 == 0x0) goto loc_100a31c38;

loc_100a31b08:
    objc_storeStrong((int64_t *)&r21->_model, r22);
    r23 = [FBAdDSLViewController alloc];
    r24 = [[FBAdSettings urlPrefix] retain];
    r23 = [r23 initWithDelegateHandler:r21 withAdData:r19 withSandboxAddress:r24];
    [r21 setDynamicViewController:r23];
    [r23 release];
    [r24 release];
    r0 = [r21 dynamicViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100a31c48;

loc_100a31bc0:
    r22 = [[FBAdReportingCoordinator alloc] initWithData:r20 viewController:r21];
    [r21 setReportingCoordinator:r22];
    [r22 release];
    r0 = [r21 reportingCoordinator];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r0 release];
    goto loc_100a31c38;

loc_100a31c38:
    r22 = [r21 retain];
    goto loc_100a31c4c;

loc_100a31c4c:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_100a31c48:
    r22 = 0x0;
    goto loc_100a31c4c;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_dynamicViewController));
    [*(self + r22) willMoveToParentViewController:self];
    [self addChildViewController:*(self + r22)];
    r21 = [[self view] retain];
    r20 = [[*(self + r22) view] retain];
    [r21 addSubview:r20];
    [r20 release];
    [r21 release];
    [*(self + r22) didMoveToParentViewController:self];
    [self setupNotifications];
    return;
}

-(void)dealloc {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)dynamicAdViewControllerDidFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 dynamicAdViewController:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)dynamicAdViewControllerDidLoad {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 dynamicAdViewControllerDidLoad:self];
    [r0 release];
    return;
}

-(void)setupNotifications {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    objc_initWeak(&stack[-104], self);
    [[NSOperationQueue mainQueue] retain];
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r21 addNotificationWithName:r23 object:0x0 queue:r19 block:&var_80];
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    [r21 addNotificationWithName:r24 object:0x0 queue:r19 block:&var_A8];
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    [r21 release];
    [r19 release];
    objc_destroyWeak(&stack[-104]);
    return;
}

-(void)assetForURL:(void *)arg2 type:(unsigned long long)arg3 block:(void *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if (r22 <= 0x2) {
            if (r22 >= 0x3) {
                    r21 = 0x0;
                    if (r22 == 0x0) {
                            r21 = 0x3;
                    }
            }
            else {
                    r21 = 0x2;
            }
    }
    else {
            if (r22 != 0x3) {
                    if (r22 != 0x4) {
                            r21 = 0x0;
                            if (r22 == 0x5) {
                                    r21 = 0x1;
                            }
                    }
                    else {
                            r21 = 0x2;
                    }
            }
            else {
                    r21 = 0x4;
            }
    }
    r0 = [r19 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r23 = [[FBAdCache sharedCache] retain];
            var_48 = [r20 retain];
            r0 = [r19 retain];
            [r23 objectForKey:r22 withURL:r0 withFetchType:r21 withBlock:&var_68];
            [r23 release];
            [r0 release];
            [var_48 release];
    }
    else {
            (*(r20 + 0x10))(r20, 0x0);
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)CTATappedFromController:(void *)arg2 {
    r20 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r21 = [UIEvent new];
    [r20 dynamicAdViewControllerWantsToProcessCTA:self withEvent:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)reportFlowStartedFromController:(void *)arg2 {
    [self->_dynamicViewController notifyAdReportFlowStarted];
    r0 = [self reportingCoordinator];
    r0 = [r0 retain];
    [r0 startAdReportingFlow];
    [r0 release];
    return;
}

-(void)closeButtonTappedFromController:(void *)arg2 {
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self model];
    r0 = [r0 retain];
    r22 = [[r0 inlineClientToken] retain];
    [r20 logCloseEventForToken:r22 withExtraData:0x0];
    [r22 release];
    [r0 release];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 dynamicAdViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)didReceivedLogEventFromController:(void *)arg2 withData:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/viewControllers/dsl_bridge/FBAdDSLBridgeViewController.m" lineNumber:0xa3 format:@"%@"];
    r20 = [[FBAdEventManager sharedManager] retain];
    r19 = [[self->_model inlineClientToken] retain];
    [r20 logDSLEventForToken:r19 extraData:r22];
    [r22 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)didReceivedDebugEventFromController:(void *)arg2 withData:(void *)arg3 {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/viewControllers/dsl_bridge/FBAdDSLBridgeViewController.m" lineNumber:0xaf format:@"%@"];
    return;
}

-(void)didReceiveErrorFromController:(void *)arg2 withData:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/viewControllers/dsl_bridge/FBAdDSLBridgeViewController.m" lineNumber:0xa9 format:@"%@"];
    r0 = [self model];
    r0 = [r0 retain];
    r21 = [[r0 requestId] retain];
    [FBAdDebugLogging logDSLErrorForRequestId:r21 withData:r22];
    [r22 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 dynamicAdViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(void *)arg2 {
    [self->_dynamicViewController notifyAdReportFlowFinished];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    [self->_dynamicViewController notifyAdReportFlowFinished];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_model, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_dynamicViewController, 0x0);
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

-(void *)dynamicViewController {
    r0 = self->_dynamicViewController;
    return r0;
}

-(void)setDynamicViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dynamicViewController, arg2);
    return;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

-(void *)model {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_model)), 0x0);
    return r0;
}

-(void)setModel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end