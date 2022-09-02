@implementation FBAdSafariDelegateTranslator

-(void)safariViewController:(void *)arg2 didCompleteInitialLoad:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/browser/util/FBAdSafariViewControllerUtility.mm" lineNumber:0x44 format:@"SFSafariViewController load completed successfully? %d"];
    if (arg3 != 0x0) {
            [r19 setResponseEndMs:[FBAdSafariViewController currentTimeMs]];
            [r19 setDomContentLoadedMs:[FBAdSafariViewController currentTimeMs]];
            [r19 setScrollReadyMs:[FBAdSafariViewController currentTimeMs]];
            [r19 setLoadFinishMs:[FBAdSafariViewController currentTimeMs]];
    }
    return;
}

-(void)safariViewControllerDidFinish:(void *)arg2 {
    [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/browser/util/FBAdSafariViewControllerUtility.mm" lineNumber:0x4f format:@"Dismissing SFSafariViewController %@"];
    sub_100a87884();
    objc_unsafeClaimAutoreleasedReturnValue();
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_80 + 0x30, &saved_fp - 0x28);
    r0 = [r20 retain];
    r20 = r0;
    var_60 = r0;
    r0 = objc_retainBlock(&var_80);
    [r20 dismissViewControllerAnimated:0x1 completion:r0];
    dispatch_after(dispatch_time(0x0, 0x3b9aca00), *__dispatch_main_q, r0);
    [r21 release];
    [var_60 release];
    objc_destroyWeak(&var_80 + 0x30);
    _Block_object_dispose(&var_48, 0x8);
    objc_destroyWeak(&saved_fp - 0x28);
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_safariViewController, 0x0);
    return;
}

-(void *)safariViewController {
    r0 = self->_safariViewController;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSafariViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_safariViewController, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void)setInlineClientToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)handlerTimeMs {
    r0 = self->_handlerTimeMs;
    return r0;
}

-(unsigned long long)loadStartMs {
    r0 = self->_loadStartMs;
    return r0;
}

-(void)setHandlerTimeMs:(unsigned long long)arg2 {
    self->_handlerTimeMs = arg2;
    return;
}

-(unsigned long long)responseEndMs {
    r0 = self->_responseEndMs;
    return r0;
}

-(void)setLoadStartMs:(unsigned long long)arg2 {
    self->_loadStartMs = arg2;
    return;
}

-(unsigned long long)domContentLoadedMs {
    r0 = self->_domContentLoadedMs;
    return r0;
}

-(void)setResponseEndMs:(unsigned long long)arg2 {
    self->_responseEndMs = arg2;
    return;
}

-(void)setDomContentLoadedMs:(unsigned long long)arg2 {
    self->_domContentLoadedMs = arg2;
    return;
}

-(unsigned long long)scrollReadyMs {
    r0 = self->_scrollReadyMs;
    return r0;
}

-(void)setScrollReadyMs:(unsigned long long)arg2 {
    self->_scrollReadyMs = arg2;
    return;
}

-(unsigned long long)loadFinishMs {
    r0 = self->_loadFinishMs;
    return r0;
}

-(void)setLoadFinishMs:(unsigned long long)arg2 {
    self->_loadFinishMs = arg2;
    return;
}

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
    r0 = objc_getClass("FBAdSafariDelegateTranslator");
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

+(void *)translatorForObject:(void *)arg2 update:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = objc_getAssociatedObject(r19, @selector(translatorForObject:));
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    asm { ccmp       w22, #0x0, #0x4, eq };
            }
            if (!CPU_FLAGS & E) {
                    r21 = [FBAdSafariDelegateTranslator new];
                    [r20 setNotificationCenter:r21 forObject:r19];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)translatorForObject:(void *)arg2 {
    r0 = [self translatorForObject:arg2 update:0x1];
    return r0;
}

+(void)setNotificationCenter:(void *)arg2 forObject:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    [r20 setSafariViewController:r19];
    objc_setAssociatedObject(r19, @selector(translatorForObject:), r20, 0x1);
    [r19 release];
    [r20 release];
    return;
}

@end