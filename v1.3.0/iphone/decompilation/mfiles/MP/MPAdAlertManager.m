@implementation MPAdAlertManager

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
    if (r0 != 0x0) {
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            r21 = [[r0 buildMPAdAlertGestureRecognizerWithTarget:r19 action:@selector(handleAdAlertGesture)] retain];
            [r19 setAdAlertGestureRecognizer:r21];
            [r21 release];
            [r0 release];
            r0 = [r19 adAlertGestureRecognizer];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            [r19 setProcessedAlert:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = objc_loadWeakRetained(self + 0x28);
    [r0 removeGestureRecognizer:*(self + 0x38)];
    [r0 release];
    [*(self + 0x38) removeTarget:self action:0x0];
    [*(self + 0x38) setDelegate:0x0];
    r20 = [[MPLastResortDelegate sharedDelegate] retain];
    [*(self + 0x40) setMailComposeDelegate:r20];
    [r20 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)processAdAlert {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [[NSString stringWithFormat:@"MPAdAlertManager processing ad alert"] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x1e];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    if (([MFMailComposeViewController canSendMail] & 0x1) != 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, &var_58);
            [r20 release];
    }
    else {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(adAlertManagerDidProcessAlert:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 adAlertManagerDidProcessAlert:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)handleAdAlertGesture {
    r22 = [[NSString stringWithFormat:@"MPAdAlertManager alert gesture recognized"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adAlertManagerDidTriggerAlert:self];
    [r0 release];
    return;
}

-(void)mailComposeController:(void *)arg2 didFinishWithResult:(long long)arg3 error:(void *)arg4 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = self;
    [self setCurrentOpenMailVC:0x0];
    if (r20 == 0x3 || r20 == 0x0) {
            [r19 setProcessedAlert:0x0];
    }
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewControllerForPresentingMailVC];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:0x0];
    [r0 release];
    [r19 release];
    return;
}

-(void *)stringFromDictionary:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r19 = [arg2 retain];
    r20 = [[NSMutableString string] retain];
    var_110 = q0;
    r0 = [r19 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r22 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r22) {
                                    objc_enumerationMutation(var_128);
                            }
                            r0 = [r19 objectForKey:*(var_118 + r21 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            [r20 appendFormat:r2];
                            [r28 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r0 = objc_msgSend(var_128, var_130);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)beginMonitoringAlerts {
    r19 = self;
    [self endMonitoringAlerts];
    r21 = [[r19 targetAdView] retain];
    r22 = @selector(adAlertGestureRecognizer);
    r23 = [objc_msgSend(r19, r22) retain];
    r2 = r23;
    [r21 addGestureRecognizer:r2];
    [r23 release];
    [r21 release];
    r0 = [r19 targetAdView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 bounds];
    asm { fdiv       d8, d2, d0 };
    r0 = objc_msgSend(r19, r22);
    r0 = [r0 retain];
    [r0 setMinTrackedDistanceForZigZag:r2];
    [r0 release];
    [r20 release];
    [r19 setProcessedAlert:0x0];
    return;
}

-(void)endMonitoringAlerts {
    r20 = [[self targetAdView] retain];
    r19 = [[self adAlertGestureRecognizer] retain];
    [r20 removeGestureRecognizer:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)processAdParams:(void *)arg2 andScreenshot:(void *)arg3 {
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
    r24 = [arg2 retain];
    r19 = [UIImagePNGRepresentation() retain];
    r0 = [r20 stringFromDictionary:r24];
    r0 = [r0 retain];
    r21 = [[r0 dataUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r20 adConfiguration];
    r0 = [r0 retain];
    r22 = [[r0 adResponseData] retain];
    [r0 release];
    r23 = [objc_alloc() init];
    [r20 setCurrentOpenMailVC:r23];
    [r23 release];
    r0 = [r20 currentOpenMailVC];
    r0 = [r0 retain];
    [r0 setMailComposeDelegate:r20];
    [r0 release];
    r25 = [[r20 currentOpenMailVC] retain];
    r26 = [[NSArray arrayWithObject:@"creative-review@mopub.com"] retain];
    [r25 setToRecipients:r26];
    [r26 release];
    [r25 release];
    r25 = [[r20 currentOpenMailVC] retain];
    r27 = [[r24 objectForKey:@"timestamp"] retain];
    [r24 release];
    r24 = [[NSString stringWithFormat:@"New creative violation report - %@"] retain];
    [r25 setSubject:r24];
    [r24 release];
    [r27 release];
    [r25 release];
    r0 = [r20 currentOpenMailVC];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setMessageBody:@"" isHTML:0x1];
    [r0 release];
    if (r19 != 0x0) {
            r0 = [r20 currentOpenMailVC];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addAttachmentData:r2 mimeType:r3 fileName:r4];
            [r24 release];
    }
    if (r21 != 0x0) {
            r0 = [r20 currentOpenMailVC];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addAttachmentData:r2 mimeType:r3 fileName:r4];
            [r24 release];
    }
    if (r22 != 0x0) {
            r0 = [r20 currentOpenMailVC];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addAttachmentData:r2 mimeType:r3 fileName:r4];
            [r24 release];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r26 = [[r0 viewControllerForPresentingMailVC] retain];
    r23 = [[r20 currentOpenMailVC] retain];
    [r26 presentViewController:r23 animated:0x1 completion:0x0];
    [r23 release];
    [r26 release];
    [r0 release];
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(adAlertManagerDidProcessAlert:)];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 adAlertManagerDidProcessAlert:r20];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)processAdAlertOnce {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self processedAlert] & 0x1) == 0x0) {
            [r19 setProcessedAlert:0x1];
            [r19 processAdAlert];
    }
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldReceiveTouch:(void *)arg3 {
    r19 = [[arg3 view] retain];
    [UIButton class];
    r20 = [r19 isKindOfClass:r2];
    [r19 release];
    r0 = r20 ^ 0x1;
    return r0;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
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

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)adUnitId {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)targetAdView {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTargetAdView:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(void)setLocation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)location {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(bool)processedAlert {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setProcessedAlert:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)adAlertGestureRecognizer {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setAdAlertGestureRecognizer:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void)setCurrentOpenMailVC:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)currentOpenMailVC {
    r0 = *(self + 0x40);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_destroyWeak(self + 0x28);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end