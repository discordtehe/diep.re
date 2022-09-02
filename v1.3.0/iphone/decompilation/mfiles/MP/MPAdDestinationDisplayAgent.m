@implementation MPAdDestinationDisplayAgent

+(void *)agentWithDelegate:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setDelegate:r20];
    [r20 release];
    r21 = [objc_alloc() initWithDelegate:r0];
    [r0 setOverlayView:r21];
    [r21 release];
    r20 = [objc_alloc() initWithDelegate:r0];
    [r0 setActivityViewControllerHelper:r20];
    [r20 release];
    [r0 setDisplayAgentType:[MOPUBExperimentProvider displayAgentType]];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [self dismissAllModalContent];
    r0 = [self overlayView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r20 = [[MPLastResortDelegate sharedDelegate] retain];
    r0 = [self storeKitController];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    [r20 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)dismissAllModalContent {
    r0 = [self overlayView];
    r0 = [r0 retain];
    [r0 hide];
    [r0 release];
    return;
}

+(bool)shouldDisplayContentInApp {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [MOPUBExperimentProvider displayAgentType];
    if (r0 != 0x1) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)displayDestinationForURL:(void *)arg2 {
    r31 = r31 - 0x70;
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
    if (([r20 isLoadingDestination] & 0x1) == 0x0) {
            [r20 setIsLoadingDestination:0x1];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 displayAgentWillPresentModal];
            [r0 release];
            r0 = [r20 overlayView];
            r0 = [r0 retain];
            [r0 show];
            [r0 release];
            r0 = [r20 resolver];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            r0 = [r20 enhancedDeeplinkFallbackResolver];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            objc_initWeak(&stack[-72], r20);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            r23 = [[MPURLResolver resolverWithURL:r19 completion:&var_60] retain];
            [r20 setResolver:r23];
            [r23 release];
            r0 = [r20 resolver];
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    [r19 release];
    return;
}

-(void)cancel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isLoadingDestination] != 0x0) {
            r0 = [r19 resolver];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            r0 = [r19 enhancedDeeplinkFallbackResolver];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            [r19 hideOverlay];
            [r19 completeDestinationLoading];
    }
    return;
}

-(bool)handleSuggestedURLAction:(void *)arg2 isResolvingEnhancedDeeplink:(bool)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_1004c0cc8;

loc_1004c0c80:
    r0 = [r19 actionType];
    if (r0 > 0x6) goto loc_1004c0d6c;

loc_1004c0c98:
    r0 = (0x1004c0cb0 + *(int8_t *)(0x100be3f38 + r0) * 0x4)();
    return r0;

loc_1004c0d6c:
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.mopub.displayagent" code:0xfffffffffffffffe userInfo:r22];
    goto loc_1004c0d38;

loc_1004c0d38:
    r21 = [r0 retain];
    [r20 failedToResolveURLWithError:r21];
    [r21 release];
    [r22 release];
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x0;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004c0cc8:
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.mopub.displayagent" code:0xffffffffffffffff userInfo:r22];
    goto loc_1004c0d38;
}

-(void)handleEnhancedDeeplinkRequest:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = r0;
    r22 = [[r0 primaryURL] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0];
    r23 = [r0 retain];
    var_40 = r20;
    r20 = [r20 retain];
    [MoPub openURL:r22 options:r23 completion:&var_68];
    [r23 release];
    [r22 release];
    [var_40 release];
    [r20 release];
    return;
}

-(void)handleEnhancedDeeplinkFallbackForRequest:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-72], self);
    r0 = [self enhancedDeeplinkFallbackResolver];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [[r22 fallbackURL] retain];
    objc_copyWeak(&var_68 + 0x28, &stack[-72]);
    r0 = [r22 retain];
    var_48 = r0;
    r24 = [[MPURLResolver resolverWithURL:r23 completion:&var_68] retain];
    [self setEnhancedDeeplinkFallbackResolver:r24];
    [r24 release];
    [r23 release];
    r0 = [self enhancedDeeplinkFallbackResolver];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    [var_48 release];
    objc_destroyWeak(&var_68 + 0x28);
    objc_destroyWeak(&stack[-72]);
    [r22 release];
    return;
}

-(void)showWebViewWithHTMLString:(void *)arg2 baseURL:(void *)arg3 actionType:(unsigned long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 displayAgentType];
    if (r0 != 0x2) {
            if (r0 != 0x1) {
                    if (r0 == 0x0) {
                            r0 = objc_alloc();
                            r0 = [r0 initWithURL:r19];
                            [r0 setDelegate:r20];
                            [r0 setModalTransitionStyle:0x2];
                            [r0 setModalPresentationStyle:0x0];
                            [r20 setSafariController:r0];
                            [r0 release];
                            [r20 showAdBrowserController];
                    }
            }
            else {
                    [r20 openURLInApplication:r19];
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 initWithURL:r19];
            [r0 setDelegate:r20];
            [r0 setModalTransitionStyle:0x2];
            [r0 setModalPresentationStyle:0x0];
            [r20 setSafariController:r0];
            [r0 release];
            [r20 showAdBrowserController];
    }
    [r19 release];
    return;
}

-(void)showAdBrowserController {
    [self hideOverlay];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = [[r0 viewControllerForPresentingModalView] retain];
    r19 = [[self safariController] retain];
    [r21 presentViewController:r19 animated:0x1 completion:0x0];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)showStoreKitProductWithParameters:(void *)arg2 fallbackURL:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if ([MPStoreKitProvider deviceHasStoreKit] != 0x0) {
            [r20 presentStoreKitControllerWithProductParameters:r19 fallbackURL:r21];
    }
    else {
            [r20 openURLInApplication:r21];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)openURLInApplication:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [r20 hideOverlay];
    if (([r19 mp_hasTelephoneScheme] & 0x1) == 0x0 && [r19 mp_hasTelephonePromptScheme] == 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
            r22 = [r0 retain];
            [MoPub openURL:r19 options:r22 completion:&var_50];
            [r22 release];
    }
    else {
            [r20 interceptTelephoneURL:r19];
    }
    [r19 release];
    return;
}

-(bool)openShareURL:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r26 = [[NSString stringWithFormat:@"MPAdDestinationDisplayAgent - loading Share URL: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r26 level:0x14];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    if ([r19 mp_MoPubShareHostCommand] != 0x0) {
            r25 = [[r19 absoluteString] retain];
            r21 = [[NSString stringWithFormat:@"MPAdDestinationDisplayAgent - unsupported Share URL: %@"] retain];
            r22 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r21 release];
            r20 = 0x0;
    }
    else {
            r0 = [r20 activityViewControllerHelper];
            r0 = [r0 retain];
            r25 = r0;
            r20 = [r0 presentActivityViewControllerWithTweetShareURL:r19];
    }
    [r25 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)interceptTelephoneURL:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-56], self);
    objc_alloc();
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    r22 = [r22 initWithURL:r19 clickHandler:&var_50];
    [self setTelephoneConfirmationController:r22];
    [r22 release];
    r0 = [self telephoneConfirmationController];
    r0 = [r0 retain];
    [r0 show];
    [r0 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r19 release];
    return;
}

-(void)failedToResolveURLWithError:(void *)arg2 {
    [self hideOverlay];
    [self completeDestinationLoading];
    return;
}

-(void)completeDestinationLoading {
    [self setIsLoadingDestination:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 displayAgentDidDismissModal];
    [r0 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    [self setIsLoadingDestination:0x0];
    [self hideModalAndNotifyDelegate];
    return;
}

-(void)safariViewControllerDidFinish:(void *)arg2 {
    [self setIsLoadingDestination:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 displayAgentDidDismissModal];
    [r0 release];
    return;
}

-(void)presentStoreKitControllerWithProductParameters:(void *)arg2 fallbackURL:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [[MPStoreKitProvider buildController] retain];
    [self setStoreKitController:r20];
    [r20 release];
    r0 = [self storeKitController];
    r0 = [r0 retain];
    [r0 setModalPresentationStyle:0x0];
    [r0 release];
    r0 = [self storeKitController];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self storeKitController];
    r0 = [r0 retain];
    [r0 loadProductWithParameters:r21 completionBlock:0x0];
    [r21 release];
    [r0 release];
    [self hideOverlay];
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = [[r0 viewControllerForPresentingModalView] retain];
    r19 = [[self storeKitController] retain];
    [r22 presentViewController:r19 animated:0x1 completion:0x0];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)overlayCancelButtonPressed {
    [self cancel];
    return;
}

-(void)hideModalAndNotifyDelegate {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewControllerForPresentingModalView];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:&var_48];
    [r0 release];
    [r20 release];
    return;
}

-(void)hideOverlay {
    r0 = [self overlayView];
    r0 = [r0 retain];
    [r0 hide];
    [r0 release];
    return;
}

-(void *)viewControllerForPresentingActivityViewController {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)activityViewControllerDidDismiss {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 displayAgentDidDismissModal];
    [r0 release];
    return;
}

-(void)activityViewControllerWillPresent {
    [self hideOverlay];
    [self setIsLoadingDestination:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 displayAgentWillPresentModal];
    [r0 release];
    return;
}

-(void)showStoreKitWithAction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 displayAgentType];
    if (r0 == 0x2) goto loc_1004c21c0;

loc_1004c21b4:
    if (r0 == 0x1) goto loc_1004c221c;

loc_1004c21bc:
    if (r0 != 0x0) goto loc_1004c2254;

loc_1004c21c0:
    r21 = [[r19 iTunesStoreParameters] retain];
    r22 = [[r19 iTunesStoreFallbackURL] retain];
    [r20 showStoreKitProductWithParameters:r21 fallbackURL:r22];
    [r22 release];
    goto loc_1004c224c;

loc_1004c224c:
    [r21 release];
    goto loc_1004c2254;

loc_1004c2254:
    [r19 release];
    return;

loc_1004c221c:
    r21 = [[r19 iTunesStoreFallbackURL] retain];
    [r20 openURLInApplication:r21];
    goto loc_1004c224c;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)resolver {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setResolver:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)enhancedDeeplinkFallbackResolver {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setEnhancedDeeplinkFallbackResolver:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)overlayView {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setOverlayView:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(bool)isLoadingDestination {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsLoadingDestination:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(long long)displayAgentType {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setDisplayAgentType:(long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void *)storeKitController {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setStoreKitController:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)safariController {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setSafariController:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)telephoneConfirmationController {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setTelephoneConfirmationController:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)activityViewControllerHelper {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setActivityViewControllerHelper:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end