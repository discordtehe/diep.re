@implementation FBAdSafariViewController

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
    r0 = objc_getClass("FBAdSafariViewController");
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

+(bool)supportsSafariServices {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dd0a8 != -0x1) {
            r0 = dispatch_once_f(0x1011dd0a8, 0x1011c6178, 0x100a3d91c);
    }
    if (*qword_1011dd0b0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)supportsWebKit {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dd858 != -0x1) {
            r0 = dispatch_once_f(0x1011dd858, 0x1011c6c28, 0x100a3d91c);
    }
    if (*qword_1011dd860 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(unsigned long long)currentTimeMs {
    r0 = [FBAdBrowserSessionData currentTimeMs];
    return r0;
}

+(void)presentSafariViewControllerWithURL:(void *)arg2 withRootViewController:(void *)arg3 withInlineClientToken:(void *)arg4 withHandlerTime:(unsigned long long)arg5 withDelegate:(void *)arg6 {
    r31 = r31 - 0x110;
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
    r23 = arg5;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    if ([r24 supportsSafariServices] != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/browser/FBAdSafariViewController.m" lineNumber:0x3b format:@"Creating SFSafariViewController for url: %@"];
            if (*qword_1011dd0a8 != -0x1) {
                    dispatch_once_f(0x1011dd0a8, 0x1011c6178, 0x100a3d91c);
            }
            r25 = [[*0x1011dd0b0 alloc] initWithURL:r19];
            r0 = [FBAdSafariDelegateTranslator translatorForObject:r25];
            r0 = [r0 retain];
            r24 = r0;
            [r0 setDelegate:r22];
            [r24 setUrl:r19];
            [r24 setInlineClientToken:r21];
            [r24 setHandlerTimeMs:r23];
            [r24 setLoadStartMs:[FBAdSafariViewController currentTimeMs]];
            [r25 performSelector:@selector(setDelegate:) withObject:r24];
            if ([r22 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                    [r22 willPresentViewController:r25];
            }
            r23 = [r25 retain];
            var_58 = [r22 retain];
            [r20 presentViewController:r23 animated:0x1 completion:&var_80];
            [var_58 release];
            [r25 release];
    }
    else {
            if ([r24 supportsWebKit] != 0x0) {
                    r0 = [FBAdWKWebViewBrowserController new];
                    r24 = r0;
                    [r0 setDelegate:r22];
                    [r24 setInlineClientToken:r21];
                    [r24 setHandlerTimeMs:r23];
                    if ([r22 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                            [r22 willPresentViewController:r24];
                    }
                    var_98 = r24;
                    r24 = [r24 retain];
                    var_90 = [r22 retain];
                    var_88 = [r19 retain];
                    [r20 presentViewController:r24 animated:0x1 completion:&var_B8];
                    [var_88 release];
                    [var_90 release];
                    r23 = var_98;
            }
            else {
                    r0 = [FBAdUIWebViewBrowserController new];
                    r24 = r0;
                    [r0 setDelegate:r22];
                    [r24 setInlineClientToken:r21];
                    [r24 setHandlerTimeMs:r23];
                    if ([r22 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                            [r22 willPresentViewController:r24];
                    }
                    var_D0 = r24;
                    r24 = [r24 retain];
                    var_C8 = [r22 retain];
                    var_C0 = [r19 retain];
                    [r20 presentViewController:r24 animated:0x1 completion:&var_F0];
                    [var_C0 release];
                    [var_C8 release];
                    r23 = var_D0;
            }
    }
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end