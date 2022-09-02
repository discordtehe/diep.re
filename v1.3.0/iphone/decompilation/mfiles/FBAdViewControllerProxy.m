@implementation FBAdViewControllerProxy

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
    r0 = objc_getClass("FBAdViewControllerProxy");
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

+(void *)viewController {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self alloc];
    r0 = [r0 initWithViewController:0x0 withView:0x0];
    var_28 = r0;
    r19 = [r0 retain];
    r0 = objc_retainBlock(&var_48);
    r20 = r0;
    if (*qword_1011ddc58 != -0x1) {
            dispatch_once(0x1011ddc58, r20);
    }
    r21 = objc_retainAutoreleaseReturnValue(*0x1011ddc60);
    [r20 release];
    [var_28 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)proxyWithViewController:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([r20 isViewControllerProxy:r19] != 0x0) {
                    r0 = [r19 retain];
            }
            else {
                    r0 = [r20 alloc];
                    r0 = [r0 initWithViewController:r19 withView:0x0];
            }
    }
    else {
            r0 = [r20 viewController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)proxyWithViewController:(void *)arg2 withView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            if ([r21 isViewControllerProxy:r19] != 0x0) {
                    r0 = [r19 retain];
            }
            else {
                    r0 = [r21 alloc];
                    r0 = [r0 initWithViewController:r19 withView:r20];
            }
    }
    else {
            r0 = [r21 viewController];
            r0 = [r0 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)isViewControllerProxy:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = @selector(class);
    r21 = objc_msgSend(arg2, r20);
    r0 = objc_msgSend(self, r20);
    if (r21 == r0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)initWithViewController:(void *)arg2 withView:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    objc_storeWeak((int64_t *)&self->__fb_ad_viewController, r21);
    [r21 release];
    objc_storeWeak((int64_t *)&self->__fb_ad_view, r19);
    [r19 release];
    r0 = self;
    return r0;
}

-(void)forwardInvocation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self currentViewController] retain];
    [r19 selector];
    if ([r20 respondsToSelector:r2] != 0x0) {
            [r19 setTarget:r20];
            [r19 invoke];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)methodSignatureForSelector:(void *)arg2 {
    r0 = [self currentViewController];
    r0 = [r0 retain];
    r19 = [[r0 methodSignatureForSelector:arg2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)currentViewController {
    [self checkAndUpdateCurrentViewControllerWithCondition:0x100eac710];
    [self checkAndUpdateCurrentViewControllerWithCondition:0x100eac730];
    r0 = objc_loadWeakRetained((int64_t *)&self->__fb_ad_viewController);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)respondsToSelector:(void *)arg2 {
    r0 = [self currentViewController];
    r0 = [r0 retain];
    r19 = [r0 respondsToSelector:r2];
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)conformsToProtocol:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self currentViewController];
    r0 = [r0 retain];
    r20 = [r0 conformsToProtocol:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isKindOfClass:(void *)arg2 {
    r0 = [self currentViewController];
    r0 = [r0 retain];
    r19 = [r0 isKindOfClass:r2];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)checkAndUpdateCurrentViewControllerWithCondition:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r21 = self;
    r19 = (int64_t *)&self->__fb_ad_viewController;
    r22 = [arg2 retain];
    r20 = objc_loadWeakRetained(r19);
    r23 = (*(r22 + 0x10))(r22, r20);
    r0 = [r22 release];
    if (r23 == 0x3) goto loc_100abd0d0;

loc_100abcf50:
    if (r23 == 0x0) goto loc_100abcf84;

loc_100abcf5c:
    if (r23 == 0x2) goto loc_100abcf90;

loc_100abcf64:
    if (r23 != 0x1) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"Missing";
            }
            else {
                    r0 = @"";
            }
    }
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r23 = @"Missing";
            }
            else {
                    r23 = @"";
            }
    }
    goto loc_100abcf9c;

loc_100abcf9c:
    [r0 retain];
    r24 = [[r23 autorelease] retain];
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdViewControllerProxy.m" lineNumber:0x83 format:@"Current view controller state: %@"];
    [r24 release];
    r0 = [FBAdUtility topViewController];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdViewControllerProxy.m" lineNumber:0x86 format:@"Switched to top view controller %@."];
    }
    else {
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdViewControllerProxy.m" lineNumber:0x8a format:@"Top view controller not found, trying to find from view..."];
            r23 = @class(FBAdUtility);
            r21 = objc_loadWeakRetained((int64_t *)&r21->__fb_ad_view);
            r23 = [[r23 viewControllerFromView:r21] retain];
            [r22 release];
            [r21 release];
            r22 = r23;
    }
    r21 = [r22 retain];
    [r20 release];
    objc_storeWeak(r19, r21);
    [r21 release];
    r20 = r21;
    goto loc_100abd0d0;

loc_100abd0d0:
    [r20 release];
    return;

loc_100abcf90:
    r0 = @"Presenting";
    goto loc_100abcf98;

loc_100abcf98:
    r23 = r0;
    goto loc_100abcf9c;

loc_100abcf84:
    r0 = @"Unknown";
    goto loc_100abcf98;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->__fb_ad_view);
    objc_destroyWeak((int64_t *)&self->__fb_ad_viewController);
    return;
}

@end