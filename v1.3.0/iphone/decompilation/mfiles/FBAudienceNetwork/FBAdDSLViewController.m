@implementation FBAdDSLViewController

-(void)viewDidAppear:(bool)arg2 {
    [[&var_20 super] viewDidAppear:arg2];
    [self->_fullScreenWebView sendEvent:0x6];
    return;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fullScreenWebView));
    [self addChildViewController:*(self + r22)];
    r21 = [[self view] retain];
    r20 = [[*(self + r22) view] retain];
    [r21 addSubview:r20];
    [r20 release];
    [r21 release];
    [*(self + r22) didMoveToParentViewController:self];
    return;
}

-(void *)initWithDelegateHandler:(void *)arg2 withAdData:(void *)arg3 withSandboxAddress:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r0 = [[&var_68 super] init];
    r22 = r0;
    if (r0 == 0x0) goto loc_100b8b068;

loc_100b8af88:
    objc_storeWeak((int64_t *)&r22->_delegate, r19);
    r0 = [FBAdDSLViewModel alloc];
    r0 = [r0 initWithMetadata:r20 withSandboxAddress:r21];
    if (r0 == 0x0) goto loc_100b8b078;

loc_100b8afc8:
    r23 = r0;
    r0 = [FBAdDSLDataLoader new];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_dataLoader));
    r8 = *(r22 + r26);
    *(r22 + r26) = r0;
    [r8 release];
    [*(r22 + r26) setDelegate:r22];
    [*(r22 + r26) loadAssetsInModel:r23];
    r0 = [FBAdDSLFullScreenAdViewController new];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_fullScreenWebView));
    r8 = *(r22 + r24);
    *(r22 + r24) = r0;
    [r8 release];
    [*(r22 + r24) setDelegate:r22];
    [r23 release];
    goto loc_100b8b068;

loc_100b8b068:
    r23 = [r22 retain];
    goto loc_100b8b118;

loc_100b8b118:
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b8b078:
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r23 = [[NSError errorWithDomain:@"" code:0x0 userInfo:r24] retain];
    [r24 release];
    [r19 dynamicAdViewControllerDidFailWithError:r23];
    [r23 release];
    r23 = 0x0;
    goto loc_100b8b118;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)notifyAdReportFlowStarted {
    [self->_fullScreenWebView sendEvent:0x0];
    return;
}

-(void)notifyAdReportFlowFinished {
    [self->_fullScreenWebView sendEvent:0x1];
    return;
}

-(void)notifyAppActive {
    [self->_fullScreenWebView sendEvent:0x2];
    return;
}

-(void)notifyAppInactive {
    [self->_fullScreenWebView sendEvent:0x3];
    return;
}

-(void)notifyAppBackground {
    [self->_fullScreenWebView sendEvent:0x4];
    return;
}

-(void)notifyAppSuspended {
    [self->_fullScreenWebView sendEvent:0x5];
    return;
}

-(void)didFailToLoadAssets {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"" code:0x0 userInfo:r21] retain];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 dynamicAdViewControllerDidFailWithError:r20];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleEvent:(unsigned long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 == 0x0) goto loc_100b8b4f0;

loc_100b8b4d4:
    if (r2 == 0x2) goto loc_100b8b4fc;

loc_100b8b4dc:
    if (r2 != 0x1) goto .l1;

loc_100b8b4e4:
    r21 = &@selector(reportFlowStartedFromController:);
    goto loc_100b8b504;

loc_100b8b504:
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    objc_msgSend(r0, *r21);
    [r20 release];
    return;

.l1:
    return;

loc_100b8b4fc:
    r21 = &@selector(closeButtonTappedFromController:);
    goto loc_100b8b504;

loc_100b8b4f0:
    r21 = &@selector(CTATappedFromController:);
    goto loc_100b8b504;
}

-(void)logErrorWithData:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 didReceiveErrorFromController:self withData:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)printDebugWithInfo:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 didReceivedDebugEventFromController:self withData:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)logWithData:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 didReceivedLogEventFromController:self withData:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)didFailToLoadModel:(void *)arg2 withError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 dynamicAdViewControllerDidFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)didLoadModel:(void *)arg2 {
    [self->_fullScreenWebView setupWithDataModel:arg2];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 dynamicAdViewControllerDidLoad];
    [r0 release];
    return;
}

-(void)assetForURL:(void *)arg2 withType:(unsigned long long)arg3 withBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 assetForURL:r22 type:arg3 block:r19];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_dataLoader, 0x0);
    objc_storeStrong((int64_t *)&self->_fullScreenWebView, 0x0);
    return;
}

-(void *)fullScreenWebView {
    r0 = self->_fullScreenWebView;
    return r0;
}

-(void)setFullScreenWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fullScreenWebView, arg2);
    return;
}

-(void *)dataLoader {
    r0 = self->_dataLoader;
    return r0;
}

-(void)setDataLoader:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataLoader, arg2);
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

@end