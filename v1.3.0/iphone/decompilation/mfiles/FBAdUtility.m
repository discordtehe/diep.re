@implementation FBAdUtility

+(void)initializeAudienceNetwork {
    sub_100aab740(0x1011ddbd8, 0x100eaba70);
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
    r0 = objc_getClass("FBAdUtility");
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

+(void)enableCrashReporting {
    sub_100aab740(0x1011ddbd0, &var_28);
    return;
}

+(bool)safeObjcSetAssociatedObject:(void *)arg2 key:(void *)arg3 value:(void *)arg4 objc_AssociationPolicy:(unsigned long long)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r21 = arg4;
    r22 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r23 = 0x0;
    if (r0 != 0x0) {
            r23 = 0x0;
            if (r22 != 0x0) {
                    objc_setAssociatedObject(r19, r22, r21, r20);
                    r23 = 0x1;
            }
    }
    [r19 release];
    r0 = r23;
    return r0;
}

+(void)showTwoStepConfirmationDialogFrom:(void *)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 completionHandler:(void *)arg5 {
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [FBAdEventManager sharedManager];
    r0 = [r0 retain];
    [r0 logTwoStepDialogWithToken:r22 withExtraData:r21];
    [r0 release];
    r23 = [self class];
    var_48 = r22;
    r22 = [r22 retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r20;
    r20 = [r20 retain];
    [r23 showTwoStepConfirmationDialogFrom:r19 completionHandler:&var_68];
    [r19 release];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

+(void)showTwoStepConfirmationDialogFrom:(void *)arg2 completionHandler:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = @class(FBAdConfigManager);
    r22 = [arg3 retain];
    r0 = [r21 sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 adTwoStepConfirmationLocalizedTitle] retain];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 adTwoStepConfirmationLocalizedBody] retain];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 adTwoStepLocalizedCancelButtonText] retain];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r23 = [[r0 adTwoStepLocalizedConfirmButtonText] retain];
    [UIAlertController showAlertControllerWithViewController:r20 title:r21 message:r25 preferredStyle:0x1 cancelButtonTitle:r28 okButtonTitle:r23 completionHandler:r22];
    [r22 release];
    [r20 release];
    [r23 release];
    [r0 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

+(void)markView:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [@(YES) retain];
    [FBAdUtility safeObjcSetAssociatedObject:r22 key:"fb_is_ad_view" value:r20 objc_AssociationPolicy:0x1];
    [r22 release];
    [r20 release];
    return;
}

+(bool)isViewMarked:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [objc_getAssociatedObject(arg2, "fb_is_ad_view") retain];
    [NSNumber class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)findAdInViewController:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [[r0 view] retain];
    [self traverseView:r21 withBlock:&var_80];
    [r21 release];
    [*(&var_50 + 0x28) retain];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)findAdOnScreen {
    r31 = r31 - 0x130;
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
    r19 = [[self topViewController] retain];
    r0 = [r20 findAdInViewController:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) goto loc_100aa4d44;

loc_100aa4c68:
    r0 = [r19 childViewControllers];
    r29 = r29;
    r0 = [r0 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100aa4d28;

loc_100aa4cb4:
    r24 = r0;
    r26 = *var_110;
    goto loc_100aa4cc0;

loc_100aa4cc0:
    r27 = 0x0;
    goto loc_100aa4cc4;

loc_100aa4cc4:
    if (*var_110 != r26) {
            objc_enumerationMutation(r22);
    }
    r0 = [r20 findAdInViewController:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100aa4d30;

loc_100aa4cfc:
    r27 = r27 + 0x1;
    if (r27 < r24) goto loc_100aa4cc4;

loc_100aa4d08:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_100aa4cc0;

loc_100aa4d28:
    r25 = 0x0;
    goto loc_100aa4d34;

loc_100aa4d34:
    [r22 release];
    [r22 release];
    goto loc_100aa4d44;

loc_100aa4d44:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100aa4d30:
    r25 = r0;
    goto loc_100aa4d34;
}

+(void)setApplicationStatusBarHidden:(bool)arg2 {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 setStatusBarHidden:arg2 withAnimation:arg2];
    [r0 release];
    return;
}

+(void)setTopViewControllerOverride:(void *)arg2 {
    objc_storeStrong(0x1011ddc00, arg2);
    return;
}

+(void *)topViewControllerOverride {
    r0 = *0x1011ddc00;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)topViewController {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self topViewControllerOverride];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [r20 viewControllerFromView:0x0];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)traverseResponderChainForViewController:(void *)arg2 {
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
    [UIViewController class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            if ([r19 respondsToSelector:r2] != 0x0) {
                    r21 = [[r19 nextResponder] retain];
                    r20 = [[r20 traverseResponderChainForViewController:r21] retain];
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)viewControllerFromView:(void *)arg2 {
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
    if (arg2 != 0x0) {
            r0 = [r20 traverseResponderChainForViewController:r2];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (r0 == 0x0) {
                    r20 = [[r20 topViewController] retain];
                    [r19 release];
                    r19 = r20;
            }
    }
    else {
            r0 = [r20 currentWindow];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 rootViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 != 0x0) {
                    r0 = [r20 currentWindow];
                    r0 = [r0 retain];
                    r19 = [[r0 rootViewController] retain];
                    [r0 release];
                    r21 = @selector(presentedViewController);
                    r0 = objc_msgSend(r19, r21);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            do {
                                    r22 = [objc_msgSend(r19, r21) retain];
                                    [r19 release];
                                    r0 = [r22 presentedViewController];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    r19 = r22;
                                    r21 = @selector(presentedViewController);
                            } while (r0 != 0x0);
                            r19 = r22;
                    }
            }
            else {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 delegate];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r21 release];
                    if ([r20 respondsToSelector:r2] != 0x0) {
                            r0 = [r20 window];
                            r0 = [r0 retain];
                            r19 = [[r0 rootViewController] retain];
                            [r0 release];
                    }
                    else {
                            r19 = 0x0;
                    }
                    [r20 release];
            }
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)currentWindow {
    r31 = r31 - 0x140;
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
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100aa5218;

loc_100aa5200:
    r24 = *_UIWindowLevelNormal;
    [r20 windowLevel];
    if (d0 == *r24) goto loc_100aa5308;

loc_100aa5218:
    var_120 = q0;
    r0 = [r19 windows];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100aa52f4;

loc_100aa5260:
    r24 = *_UIWindowLevelNormal;
    r23 = r0;
    r27 = *var_120;
    d8 = *r24;
    r25 = r20;
    goto loc_100aa5274;

loc_100aa5274:
    r28 = 0x0;
    goto loc_100aa527c;

loc_100aa527c:
    if (*var_120 != r27) {
            objc_enumerationMutation(r21);
    }
    r20 = [*(var_128 + r28 * 0x8) retain];
    [r25 release];
    [r20 windowLevel];
    if (d0 == d8) goto loc_100aa5300;

loc_100aa52c0:
    r28 = r28 + 0x1;
    r25 = r20;
    if (r28 < r23) goto loc_100aa527c;

loc_100aa52d0:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    r25 = r20;
    if (r0 != 0x0) goto loc_100aa5274;

loc_100aa52f4:
    [r20 release];
    r20 = 0x0;
    goto loc_100aa5300;

loc_100aa5300:
    [r21 release];
    goto loc_100aa5308;

loc_100aa5308:
    var_70 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)traverseView:(void *)arg2 withBlock:(void *)arg3 {
    r31 = r31 - 0x120;
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
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            (*(r20 + 0x10))(r20, r19);
            var_100 = q0;
            r0 = [r19 subviews];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r24 = *var_100;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_100 != r24) {
                                            objc_enumerationMutation(r21);
                                    }
                                    (*(r20 + 0x10))(r20, *(var_108 + r25 * 0x8));
                                    r25 = r25 + 0x1;
                            } while (r25 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)loadRemoteImageWithURL:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadRemoteImageWithURL:r21 withBlock:arg3 retry:0x1];
    [r21 release];
    return;
}

+(void)loadRemoteImageWithURL:(void *)arg2 withBlock:(void *)arg3 queue:(void *)arg4 retry:(bool)arg5 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [FBAdCache sharedCache];
    r0 = [r0 retain];
    [r0 imageForURL:r20 withBlock:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)loadRemoteImageWithURL:(void *)arg2 withBlock:(void *)arg3 retry:(bool)arg4 {
    r22 = [arg2 retain];
    [self loadRemoteImageWithURL:r22 withBlock:arg3 queue:0x0 retry:arg4];
    [r22 release];
    return;
}

+(void)loadRemoteImagesWithURLs:(void *)arg2 withBlock:(void *)arg3 retry:(bool)arg4 {
    r31 = r31 - 0x1e0;
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
    r23 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    var_1B0 = dispatch_queue_create("com.facebook.image.load.serial", 0x0);
    r20 = dispatch_group_create();
    r24 = [[NSMutableDictionary dictionaryWithCapacity:[r22 count]] retain];
    var_130 = q0;
    *(int128_t *)(&var_140 + 0x20) = q0;
    *(int128_t *)(&var_140 + 0x30) = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1C0 = r1;
    var_1B8 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r27 = r0;
            var_1C8 = r19;
            r22 = *var_130;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_130 != r22) {
                                    objc_enumerationMutation(var_1B8);
                            }
                            dispatch_group_enter(r20);
                            var_158 = [r24 retain];
                            r26 = [r20 retain];
                            objc_msgSend(r23, r28);
                            [r0 release];
                            [var_158 release];
                            r25 = r25 + 0x1;
                    } while (r25 < r27);
                    r0 = objc_msgSend(var_1B8, var_1C0);
                    r27 = r0;
            } while (r0 != 0x0);
            r19 = var_1C8;
    }
    else {
            r26 = r20;
    }
    var_78 = **___stack_chk_guard;
    [var_1B8 release];
    [r19 retain];
    [r24 retain];
    dispatch_group_notify(r20, *__dispatch_main_q, &var_1A8);
    [r24 release];
    [r19 release];
    [r23 release];
    [r21 release];
    [r26 release];
    [var_1B0 release];
    [var_1B8 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

+(void)loadRemoteVideoWithURL:(void *)arg2 withBlock:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [FBAdCache sharedCache];
    r0 = [r0 retain];
    [r0 videoURLWrapperForURL:r20 withBlock:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)animateWithFadeIn:(void *)arg2 customAnimations:(void *)arg3 completion:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self animateWithFade:0x0 views:r22 animations:r20 completion:arg4];
    [r20 release];
    [r22 release];
    return;
}

+(void)animateWithFadeIn:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    [self animateWithFadeIn:r21 customAnimations:0x0 completion:arg3];
    [r21 release];
    return;
}

+(void)loadRemoteMarkupWithURL:(void *)arg2 withBlock:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [FBAdCache sharedCache];
    r0 = [r0 retain];
    [r0 markupForURL:r20 withBlock:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)animateWithFadeOut:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    [self animateWithFadeOut:r21 customAnimations:0x0 completion:arg3];
    [r21 release];
    return;
}

+(void)animateWithFadeIn:(void *)arg2 duration:(double)arg3 completion:(void *)arg4 {
    r21 = [arg2 retain];
    [self animateWithFadeIn:r21 duration:0x0 customAnimations:arg3 completion:r5];
    [r21 release];
    return;
}

+(void)animateWithFadeOut:(void *)arg2 customAnimations:(void *)arg3 completion:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self animateWithFade:0x1 views:r22 animations:r20 completion:arg4];
    [r20 release];
    [r22 release];
    return;
}

+(void)animateWithFadeIn:(void *)arg2 duration:(double)arg3 customAnimations:(void *)arg4 completion:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self animateWithFade:0x0 duration:r22 views:r20 animations:arg4 completion:r6];
    [r20 release];
    [r22 release];
    return;
}

+(void)animateWithFade:(bool)arg2 views:(void *)arg3 animations:(void *)arg4 completion:(void *)arg5 {
    r31 = r31 - 0x180;
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
    r20 = arg2;
    var_170 = self;
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    var_120 = q0;
    r21 = [arg5 retain];
    r0 = [r23 retain];
    r23 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r27 = *var_120;
            if (r20 != 0x0) {
                    asm { fcsel      d8, d1, d0, ne };
            }
            do {
                    r19 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(r23);
                            }
                            [*(var_128 + r19 * 0x8) setAlpha:r2];
                            r19 = r19 + 0x1;
                    } while (r19 < r25);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [r23 release];
    r20 = [r23 retain];
    var_140 = r22;
    r22 = [r22 retain];
    [var_170 animateWithStandardAnimations:&var_168 completion:r21];
    [r21 release];
    [var_140 release];
    [r23 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

+(void)animateWithFadeOut:(void *)arg2 duration:(double)arg3 completion:(void *)arg4 {
    r21 = [arg2 retain];
    [self animateWithFadeOut:r21 duration:0x0 customAnimations:arg3 completion:r5];
    [r21 release];
    return;
}

+(void)animateWithFadeOut:(void *)arg2 duration:(double)arg3 customAnimations:(void *)arg4 completion:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self animateWithFade:0x1 duration:r22 views:r20 animations:arg4 completion:r6];
    [r20 release];
    [r22 release];
    return;
}

+(void)animateWithStandardAnimations:(void *)arg2 duration:(double)arg3 completion:(void *)arg4 {
    r21 = [arg2 retain];
    [self animateWithStandardAnimations:r21 duration:0x84 options:arg3 completion:r5];
    [r21 release];
    return;
}

+(void)animateWithStandardAnimations:(void *)arg2 duration:(double)arg3 options:(unsigned long long)arg4 completion:(void *)arg5 {
    r22 = [arg2 retain];
    [self animateEnabled:0x1 withStandardAnimations:r22 duration:arg3 options:arg4 completion:r6];
    [r22 release];
    return;
}

+(void)animateWithFade:(bool)arg2 duration:(double)arg3 views:(void *)arg4 animations:(void *)arg5 completion:(void *)arg6 {
    r31 = r31 - 0x180;
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
    v8 = v0;
    r20 = arg2;
    var_170 = self;
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    var_120 = q0;
    r21 = [arg5 retain];
    r0 = [r23 retain];
    r23 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r27 = *var_120;
            if (r20 != 0x0) {
                    asm { fcsel      d9, d1, d0, ne };
            }
            do {
                    r19 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(r23);
                            }
                            [*(var_128 + r19 * 0x8) setAlpha:r2];
                            r19 = r19 + 0x1;
                    } while (r19 < r25);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [r23 release];
    r20 = [r23 retain];
    var_140 = r22;
    r22 = [r22 retain];
    [var_170 animateWithStandardAnimations:&var_168 duration:r21 completion:0x10];
    [r21 release];
    [var_140 release];
    [r23 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

+(void)animateEnabled:(bool)arg2 withStandardAnimations:(void *)arg3 duration:(double)arg4 completion:(void *)arg5 {
    r22 = [arg3 retain];
    [self animateEnabled:arg2 withStandardAnimations:r22 duration:0x84 options:arg4 completion:r6];
    [r22 release];
    return;
}

+(void)animateEnabled:(bool)arg2 withStandardAnimations:(void *)arg3 duration:(double)arg4 options:(unsigned long long)arg5 completion:(void *)arg6 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    v8 = v0;
    r19 = [arg3 retain];
    r20 = [arg5 retain];
    if (arg2 != 0x0) {
            [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
    }
    else {
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19);
            }
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x1);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)animateEnabled:(bool)arg2 withTransactionBlock:(void *)arg3 duration:(double)arg4 completion:(void *)arg5 {
    r19 = [arg3 retain];
    r22 = @class(CATransaction);
    r20 = [arg4 retain];
    [r22 begin];
    [CATransaction setDisableActions:arg2 ^ 0x1];
    [CATransaction setAnimationDuration:arg2 ^ 0x1];
    r21 = @class(CATransaction);
    r22 = [[CAMediaTimingFunction functionWithName:**_kCAMediaTimingFunctionEaseInEaseOut] retain];
    [r21 setAnimationTimingFunction:r22];
    [r22 release];
    [CATransaction setCompletionBlock:r20];
    [r20 release];
    (*(r19 + 0x10))(r19);
    [r19 release];
    [CATransaction commit];
    return;
}

+(void)animateWithStandardAnimations:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    [self animateWithStandardAnimations:r21 duration:arg3 completion:r4];
    [r21 release];
    return;
}

+(void *)allInteractableTargets:(void *)arg2 {
    r0 = [self allInteractableTargets:arg2 excluding:0x0];
    return r0;
}

+(void *)snapshotOfView:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 bounds];
    r20 = [[self snapshotOfView:r21 withRect:r19 withBlock:r4] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)snapshotOfView:(void *)arg2 withRect:(struct CGRect)arg3 withBlock:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    if (*qword_1011dcd38 != -0x1) {
            dispatch_once_f(0x1011dcd38, 0x1011c5cc8, 0x100a3d91c);
    }
    [*0x1011dcd40 flush];
    r0 = [r19 window];
    r0 = [r0 retain];
    r0 = [r0 screen];
    r29 = r29;
    r0 = [r0 retain];
    [r0 scale];
    UIGraphicsBeginImageContextWithOptions();
    [r22 release];
    [r21 release];
    [r19 drawViewHierarchyInRect:0x0 afterScreenUpdates:r3];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r19);
    }
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)isAdSizeType:(struct FBAdSize)arg2 sameWith:(struct FBAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (d0 == d2) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (d1 == d3) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r0 = r8 & r9;
    return r0;
}

+(struct CGSize)sizeThatFits:(struct CGSize)arg2 isFlexibileAdSize:(bool)arg3 actualAdSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    asm { fmaxnm     d0, d0, d3 };
    if (r2 != 0x0) {
            asm { fcsel      d0, d0, d2, ne };
    }
    return r0;
}

+(struct FBAdSize)adSizeForAdTemplateID:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 <= 0xc7) {
            if (r2 <= 0x64) {
                    if (r2 != 0x5 && r2 != 0x6) {
                    }
            }
            else {
                    if (r2 < 0x68) {
                            v0 = 0x0;
                    }
            }
    }
    else {
            if (r2 <= 0x18f) {
                    if (r2 < 0xca || r2 == 0x12c) {
                            v0 = 0xbff0000000000000;
                    }
            }
            else {
                    if (r2 == 0x190 || r2 == 0x1f4) {
                            v0 = 0xbff0000000000000;
                    }
            }
    }
    return r0;
}

+(bool)isValidAdTemplateIdValue:(long long)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 <= 0xc7) {
            r0 = 0x1;
            if (r2 >= 0x8) {
                    r0 = 0x1;
                    if (r2 >= 0x68) {
                            r0 = 0x0;
                    }
            }
    }
    else {
            if (r2 <= 0x18f) {
                    r0 = 0x1;
                    if (r2 >= 0xca) {
                            r0 = 0x1;
                            if (r2 != 0x12c) {
                                    r0 = 0x0;
                            }
                    }
            }
            else {
                    r0 = 0x1;
                    if (r2 != 0x190) {
                            r0 = 0x1;
                            if (r2 != 0x1f4) {
                                    r0 = 0x0;
                            }
                    }
            }
    }
    return r0;
}

+(void *)allInteractableTargets:(void *)arg2 excluding:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x230;
    var_270 = self;
    r26 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [NSHashTable weakObjectsHashTable];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r0 = [r26 isUserInteractionEnabled];
    var_268 = r25;
    if (r0 == 0x0) goto loc_100aa6520;

loc_100aa6510:
    r19 = &@selector(menu);
    r25 = 0x0;
    r24 = *(r19 + 0x868);
    goto loc_100aa6584;

loc_100aa6584:
    [FBNativeAdTemplateView class];
    r0 = objc_msgSend(@class(NSArray), r24);
    r29 = r29;
    r20 = [r0 retain];
    if ((sub_100aab3b8(r26, r20) & 0x1) != 0x0) {
            r24 = 0x0;
    }
    else {
            [FBNativeBannerAdTemplateView class];
            r0 = @class(NSArray);
            r0 = objc_msgSend(r0, r24);
            r29 = r29;
            r23 = [r0 retain];
            r24 = sub_100aab3b8(r26, r23) ^ 0x1;
            [r23 release];
    }
    [r20 release];
    if (r25 != 0x0) {
            [r19 release];
            r25 = var_268;
            if ((r24 & 0x1) != 0x0) {
                    [r22 addObject:r2];
            }
    }
    else {
            r25 = var_268;
            if (r24 != 0x0) {
                    [r22 addObject:r2];
            }
    }
    goto loc_100aa6664;

loc_100aa6664:
    var_1E0 = q0;
    var_278 = r26;
    r0 = [r26 subviews];
    r29 = r29;
    r0 = [r0 retain];
    var_250 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_238 = r0;
    if (r0 != 0x0) {
            var_248 = *var_1E0;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_1E0 != var_248) {
                                    objc_enumerationMutation(var_250);
                            }
                            r20 = *(var_1E8 + r28 * 0x8);
                            if (([r25 containsObject:r20] & 0x1) == 0x0) {
                                    [FBAdVideoPlayButton class];
                                    objc_msgSend(@class(FBMediaViewVideoRenderer), r27);
                                    objc_msgSend(@class(FBAdMultiProductView), r27);
                                    objc_msgSend(@class(FBAdChoicesView), r27);
                                    objc_msgSend(@class(FBAdOptionsView), r27);
                                    r0 = @class(NSArray);
                                    r0 = [r0 arrayWithObjects:&var_128 count:0x5];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    r23 = sub_100aab3b8(r20, r19);
                                    [r19 release];
                                    if ((r23 & 0x1) == 0x0) {
                                            r24 = @selector(countByEnumeratingWithState:objects:count:);
                                            r0 = [var_270 allInteractableTargets:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r20 = r0;
                                            var_220 = q0;
                                            r0 = objc_msgSend(r0, r24);
                                            if (r0 != 0x0) {
                                                    r19 = r0;
                                                    r25 = *var_220;
                                                    do {
                                                            r26 = 0x0;
                                                            do {
                                                                    if (*var_220 != r25) {
                                                                            objc_enumerationMutation(r20);
                                                                    }
                                                                    [r22 addObject:r2];
                                                                    r26 = r26 + 0x1;
                                                            } while (r26 < r19);
                                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r19 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                            [r20 release];
                                            r25 = var_268;
                                    }
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < var_238);
                    r0 = [var_250 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_238 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_250 release];
    [r25 release];
    [var_278 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100aa6520:
    [UILabel class];
    objc_msgSend(@class(UIImageView), r23);
    r0 = @class(NSArray);
    r24 = @selector(arrayWithObjects:count:);
    r0 = objc_msgSend(r0, r24);
    r29 = r29;
    r19 = [r0 retain];
    if ((sub_100aab3b8(r26, r19) & 0x1) == 0x0) goto loc_100aa665c;

loc_100aa6580:
    r25 = 0x1;
    goto loc_100aa6584;

loc_100aa665c:
    [r19 release];
    goto loc_100aa6664;
}

+(long long)getTemplateID:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (d0 == 0x4074000000000000) {
            asm { fccmp      d1, d2, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            if (d0 == 0xbff0000000000000) {
                    asm { fccmp      d1, d3, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    if (d0 == 0xbff0000000000000 && d1 == *0x100ba2d60) {
                            r0 = 0x6;
                    }
                    else {
                            if (d0 == 0x0 && d1 == 0x0) {
                                    [FBAdScreen sizeInOrientation];
                                    r0 = [UIDevice currentDevice];
                                    r0 = [r0 retain];
                                    r20 = [r0 userInterfaceIdiom];
                                    r0 = [r0 release];
                                    if (r20 == 0x1) {
                                            r0 = 0x67;
                                    }
                                    else {
                                            if (d9 > d8) {
                                                    if (!CPU_FLAGS & G) {
                                                            r0 = 0x65;
                                                    }
                                                    else {
                                                            r0 = 0x66;
                                                    }
                                            }
                                    }
                            }
                            else {
                                    if (d1 == *0x100ba2d58) {
                                            asm { fccmp      d0, d2, #0x0, eq };
                                    }
                                    if (CPU_FLAGS & E) {
                                            if (!CPU_FLAGS & E) {
                                                    r0 = 0xc8;
                                            }
                                            else {
                                                    r0 = 0x7;
                                            }
                                    }
                            }
                    }
            }
            else {
                    r0 = 0x5;
            }
    }
    else {
            r0 = 0x4;
    }
    return r0;
}

+(bool)isFBAdScheme:(void *)arg2 {
    r0 = [arg2 scheme];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lowercaseString];
    r0 = [r0 retain];
    r21 = [r0 isEqual:r2];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)imageWithColor:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[FBAdCache sharedCache] retain];
    r23 = [[r19 description] retain];
    r0 = [r20 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            UIGraphicsBeginImageContextWithOptions();
            r22 = UIGraphicsGetCurrentContext();
            if (r19 != 0x0) {
                    [r19 setFill];
            }
            else {
                    r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setFill];
                    [r23 release];
            }
            CGContextFillRect(r22, @selector(setFill));
            r22 = [UIGraphicsGetImageFromCurrentImageContext() retain];
            UIGraphicsEndImageContext();
            r21 = [[r19 description] retain];
            r8 = 0x101137000;
            objc_msgSend(r22, *(r8 + 0xa08));
            asm { fcvtzs     x8, d0 };
            r9 = r8 << 0x2;
            r10 = r9 + 0xf;
            if (r9 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r10 = r9;
                    }
                    else {
                            r10 = r10;
                    }
            }
            r9 = r9 - (r10 & 0xfffffffffffffff0);
            r10 = 0x10 - r9;
            r9 = 0x1f - r9;
            if (r10 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r9 = r10;
                    }
                    else {
                            r9 = r9;
                    }
            }
            r9 = r10 - (r9 & 0xfffffffffffffff0);
            r8 = r9 + 0x4044dc000;
            asm { fcvtzs     x9, d1 };
            [r20 setObject:r22 forKey:r21 cost:r8 * r9];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(bool)enforceTwoStepConfirmation {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdTwoStepConfirmationEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

+(union ?)timeUntilSkipOrEndForTime:(union ?)arg2 duration:(union ?)arg3 forcedViewTime:(union ?)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x1f0;
    r21 = r4;
    r22 = r3;
    r20 = r2;
    r19 = r8;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    r9 = *(r8 + 0x10);
    var_90 = *(int128_t *)r8;
    var_80 = r9;
    sub_100a3e440(r29 - 0xa8, r29 - 0xc0, r29 - 0xe0);
    sub_100a3e3a4(r19, r29 - 0x100, r29 - 0xa8);
    r0 = sub_100a3e318(&var_120, &var_140);
    if (r0 != 0x0) {
            sub_100a3e440(&stack[-384], &var_190, &var_1B0);
            sub_100a3e3a4(&var_158, &var_1D0, &stack[-384]);
            q0 = *(int128_t *)r19;
            var_1F0 = *(r19 + 0x10);
            var_200 = q0;
            var_220 = var_158;
            var_210 = var_148;
            if (*qword_1011dd1a8 != -0x1) {
                    dispatch_once_f(0x1011dd1a8, 0x1011c6280, 0x100a3d91c);
            }
            r0 = (*0x1011dd1b0)(r29 - 0x50, r29 - 0x70);
            *(r19 + 0x10) = var_1D8;
            *(int128_t *)r19 = var_1E8;
    }
    return r0;
}

+(void *)parseQueryString:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r20 = r0;
            r0 = [r2 query];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (r0 != 0x0) {
                    r0 = [r20 parseQuery:r19];
                    r0 = [r0 retain];
            }
            else {
                    r0 = **___NSDictionary0__;
                    r0 = [r0 retain];
            }
            r20 = r0;
            [r19 release];
    }
    else {
            r20 = [**___NSDictionary0__ retain];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)createQueryParameterFromKey:(void *)arg2 object:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = @class(NSString);
    r23 = [arg3 retain];
    r19 = [[r21 fb_URLEncodedString] retain];
    [r21 release];
    r21 = [[FBAdUtility attemptRecoveryOfObject:r23 ofClass:[NSString class]] retain];
    [r23 release];
    r22 = [[r21 fb_URLEncodedString] retain];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)createQueryStringFromParameters:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = &var_50;
    var_48 = r22;
    r0 = [NSMutableString stringWithString:r2];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    if (r19 != 0x0) {
            [r19 enumerateKeysAndObjectsUsingBlock:&var_80];
    }
    [[NSString stringWithString:r2] retain];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)parseQuery:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r19 = @class(NSMutableArray);
    r23 = [arg2 retain];
    var_150 = [r19 new];
    var_158 = [NSMutableArray new];
    r0 = [r23 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r19;
    var_168 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r21 = @selector(componentsSeparatedByString:);
            r28 = r0;
            r25 = *var_110;
            r24 = @"=";
            var_160 = r21;
            do {
                    r22 = 0x0;
                    r23 = @selector(count);
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(var_128);
                            }
                            r0 = *(var_118 + r22 * 0x8);
                            r0 = objc_msgSend(r0, r21);
                            r29 = r29;
                            r0 = [r0 retain];
                            r20 = r0;
                            if (objc_msgSend(r0, r23) == 0x2) {
                                    r0 = [r20 objectAtIndexedSubscript:0x1];
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    r0 = [r0 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
                                    r0 = [r0 retain];
                                    [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
                                    [r21 release];
                                    r25 = r25;
                                    r24 = r24;
                                    r23 = r23;
                                    [r0 release];
                                    r0 = [r20 objectAtIndexedSubscript:0x0];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_150 addObject:r2];
                                    r0 = r21;
                                    r21 = var_160;
                                    [r0 release];
                                    [var_158 addObject:r2];
                                    [r26 release];
                            }
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r28);
                    r0 = objc_msgSend(var_128, var_168);
                    r28 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r19 = [[NSDictionary dictionaryWithObjects:var_158 forKeys:var_150] retain];
    [var_128 release];
    [var_158 release];
    [var_150 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)currentLocale {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSLocale autoupdatingCurrentLocale];
    r0 = [r0 retain];
    r20 = [[r0 localeIdentifier] retain];
    r0 = [r0 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = @"en_US";
            }
    }
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)storeSheetParameters:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r22 = @"";
    [r22 retain];
    var_120 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    var_148 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100aa7d24;

loc_100aa7b94:
    r24 = r0;
    var_158 = r21;
    var_140 = *var_120;
    goto loc_100aa7bb8;

loc_100aa7bb8:
    r22 = 0x0;
    goto loc_100aa7bcc;

loc_100aa7bcc:
    if (*var_120 != var_140) {
            objc_enumerationMutation(var_148);
    }
    r23 = @selector(isEqualToString:);
    r0 = *(var_128 + r22 * 0x8);
    r0 = [r0 componentsSeparatedByString:r2];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r20 = [[r0 stringByRemovingPercentEncoding] retain];
    [r0 release];
    r0 = [r21 lastObject];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 stringByRemovingPercentEncoding];
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    objc_msgSend(r20, r23);
    if (r25 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_100aa7cf0;

loc_100aa7c90:
    [r25 release];
    [r20 release];
    [r21 release];
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_100aa7bcc;

loc_100aa7cb4:
    r0 = objc_msgSend(var_148, var_150);
    r24 = r0;
    if (r0 != 0x0) goto loc_100aa7bb8;

loc_100aa7ce0:
    r21 = var_158;
    r22 = @"";
    goto loc_100aa7d24;

loc_100aa7d24:
    [var_148 release];
    if ([r22 length] != 0x0) {
            if (*qword_1011dd0e8 != -0x1) {
                    dispatch_once_f(0x1011dd0e8, 0x1011c61a8, 0x100a3d91c);
            }
            r20 = [**qword_1011dd0f0 retain];
            r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r20 release];
    }
    else {
            r19 = [**___NSDictionary0__ retain];
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    [var_148 release];
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100aa7cf0:
    r22 = [r25 retain];
    [@"" release];
    [r22 release];
    [r20 release];
    [r21 release];
    r21 = var_158;
    goto loc_100aa7d24;
}

+(void)cleanCurrentUserAgent {
    r0 = *0x1011ddc28;
    *0x1011ddc28 = 0x0;
    [r0 release];
    *0x1011ddc08 = 0x0;
    *0x1011ddc18 = 0x0;
    [FBAdUtilityUserAgentProvider fbad_internalClearUserAgent];
    return;
}

+(void)currentUserAgentWithBlock:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 useNativeDispatchUserAgentGenerating];
    [r0 release];
    r8 = &@selector(currentUserAgentV1WithBlock:);
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(currentUserAgentV1WithBlock:);
            }
            else {
                    r8 = &@selector(currentUserAgentV2WithBlock:);
            }
    }
    objc_msgSend(r19, *r8);
    [r22 release];
    return;
}

+(void)currentUserAgentV2WithBlock:(void *)arg2 {
    [FBAdUtilityUserAgentProvider retrieveUserAgentWithHandler:arg2 transformBlock:&var_28];
    return;
}

+(void)currentUserAgentV1WithBlock:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_40 = d9;
    stack[-72] = d8;
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
    if (*qword_1011ddc08 != -0x1) {
            dispatch_once(0x1011ddc08, 0x100eabd90);
    }
    if (*0x1011ddc10 != 0x0) {
            r21 = *0x1011ddc10;
            r22 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_48 = [r19 retain];
            dispatch_group_notify(r21, r22, &var_68);
            [r22 release];
            sub_100aab740(0x1011ddc18, &var_90);
            [var_48 release];
    }
    else {
            (*(r19 + 0x10))(r19, 0x0);
    }
    [r19 release];
    return;
}

+(void *)cleanUserAgentString:(void *)arg2 {
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];
    r0 = [r0 retain];
    r19 = [[r0 stringByReplacingOccurrencesOfString:@";" withString:@"-"] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)generateUserAgentStringFromRawString:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x120;
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
    if (r2 != 0x0) {
            r20 = r0;
            r25 = [r2 retain];
            r19 = [[NSBundle mainBundle] retain];
            r0 = @class(FBAdDevice);
            r0 = [r0 machine];
            r0 = [r0 retain];
            var_60 = r0;
            var_80 = [[r20 cleanUserAgentString:r0] retain];
            r0 = @class(FBAdDevice);
            r0 = [r0 model];
            r0 = [r0 retain];
            var_68 = r0;
            var_90 = [[r20 cleanUserAgentString:r0] retain];
            r0 = @class(FBAdDevice);
            r0 = [r0 systemName];
            r0 = [r0 retain];
            var_78 = r0;
            var_98 = [[r20 cleanUserAgentString:r0] retain];
            r0 = @class(FBAdDevice);
            r0 = [r0 systemVersion];
            r0 = [r0 retain];
            var_88 = r0;
            r23 = [[r20 cleanUserAgentString:r0] retain];
            r0 = [r20 currentLocale];
            r0 = [r0 retain];
            var_A0 = r0;
            r0 = [r20 cleanUserAgentString:r0];
            r0 = [r0 retain];
            var_B8 = r0;
            r22 = [[r19 bundleIdentifier] retain];
            r0 = [r19 infoDictionary];
            r0 = [r0 retain];
            var_B0 = r0;
            r26 = [[r0 objectForKeyedSubscript:@"CFBundleShortVersionString"] retain];
            r0 = [r19 infoDictionary];
            r0 = [r0 retain];
            r27 = [[r0 objectForKeyedSubscript:@"CFBundleVersion"] retain];
            r24 = [[NSString stringWithFormat:@"%@ [FBAN/%@;FBDV/%@;FBMD/%@;FBSN/%@;FBSV/%@;FBLC/%@;FBVS/%@;FBAB/%@;FBAV/%@;FBBV/%@]"] retain];
            [r25 release];
            [r27 release];
            [r0 release];
            [r26 release];
            [var_B0 release];
            [r22 release];
            [var_B8 release];
            [var_A0 release];
            [r23 release];
            [var_88 release];
            [var_98 release];
            [var_78 release];
            [var_90 release];
            [var_68 release];
            [var_80 release];
            [var_60 release];
            [r19 release];
    }
    else {
            r24 = 0x0;
    }
    r0 = [r24 autorelease];
    return r0;
}

+(void *)getObjectFromJSONString:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r20 = [[r2 dataUsingEncoding:0x4] retain];
            r19 = [[r0 getObjectFromJSONData:r20] retain];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getObjectFromJSONData:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 retain];
            r21 = [[NSJSONSerialization JSONObjectWithData:r20 options:0x7 error:0x0] retain];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getJSONStringFromObject:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100aa8960;

loc_100aa88f0:
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:0x0];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100aa8958;

loc_100aa8920:
    r21 = [[NSString alloc] initWithData:r20 encoding:0x4];
    [r20 release];
    goto loc_100aa8964;

loc_100aa8964:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100aa8958:
    [r20 release];
    goto loc_100aa8960;

loc_100aa8960:
    r21 = 0x0;
    goto loc_100aa8964;
}

+(void *)getObjectFromPropertyList:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 retain];
            r21 = [[NSPropertyListSerialization propertyListWithData:r20 options:0x2 format:0x0 error:0x0] retain];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getPropertyListFromObject:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 retain];
            r21 = [[NSPropertyListSerialization dataWithPropertyList:r20 format:0xc8 options:0x0 error:0x0] retain];
            [r20 release];
            if (r21 == 0x0) {
                    [r21 release];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)isStringEmpty:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    if ([r19 length] == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r20 = 0x1;
                            }
                    }
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isStringNilEmptyOrWhiteSpace:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r19 = @class(NSCharacterSet);
            r21 = [r2 retain];
            r20 = [[r19 whitespaceCharacterSet] retain];
            r22 = [[r21 stringByTrimmingCharactersInSet:r20] retain];
            [r21 release];
            if ([r22 length] == 0x0) {
                    r19 = @class(NSCharacterSet);
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r22 release];
            [r20 release];
    }
    else {
            r19 = 0x1;
    }
    r0 = r19;
    return r0;
}

+(void *)stringValueForBool:(bool)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"false";
            }
            else {
                    r0 = @"true";
            }
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)attemptRecoveryOfObject:(void *)arg2 ofClass:(void *)arg3 {
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
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100aa8dd0;

loc_100aa8bd4:
    if ([NSString class] != r20) goto loc_100aa8c38;

loc_100aa8bf8:
    [NSNumber class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100aa8c38;

loc_100aa8c1c:
    r0 = [r19 stringValue];
    r0 = [r0 retain];
    goto loc_100aa8d44;

loc_100aa8d44:
    r20 = r0;
    goto loc_100aa8dd4;

loc_100aa8dd4:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100aa8c38:
    if ([NSNumber class] != r20) goto loc_100aa8ccc;

loc_100aa8c4c:
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100aa8ccc;

loc_100aa8c70:
    r22 = [r19 retain];
    r0 = [NSNumberFormatter defaultFormatter];
    r0 = [r0 retain];
    r21 = r0;
    r20 = [[r0 safeNumberFromString:r22] retain];
    [r22 release];
    goto loc_100aa8dc4;

loc_100aa8dc4:
    [r21 release];
    goto loc_100aa8dd4;

loc_100aa8ccc:
    if ([NSString class] != r20) goto loc_100aa8d04;

loc_100aa8ce0:
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) goto loc_100aa8d3c;

loc_100aa8d04:
    if ([NSNumber class] != r20) goto loc_100aa8d4c;

loc_100aa8d18:
    [NSNumber class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100aa8d4c;

loc_100aa8d3c:
    r0 = [r19 retain];
    goto loc_100aa8d44;

loc_100aa8d4c:
    if ([NSString class] != r20) goto loc_100aa8dd0;

loc_100aa8d60:
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100aa8dd0;

loc_100aa8d88:
    r0 = [FBAdUtility getJSONStringFromObject:r19];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"";
            }
    }
    r20 = [r0 retain];
    goto loc_100aa8dc4;

loc_100aa8dd0:
    r20 = 0x0;
    goto loc_100aa8dd4;
}

+(void)displayDebugMessage:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    var_28 = &saved_fp + 0x10;
    if ([FBAdSettings isTestMode] != 0x0) {
            r21 = [[NSString alloc] initWithFormat:r19 arguments:var_28];
            [FBAdLogger logAtLevel:0x1 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdUtility.m" lineNumber:0x32b format:@"%@ (displayed for test ads only)"];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void)displayVerboseDebugMessage:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    var_28 = &saved_fp + 0x10;
    if ([FBAdSettings isTestMode] != 0x0) {
            r21 = [[NSString alloc] initWithFormat:r19 arguments:var_28];
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdUtility.m" lineNumber:0x335 format:@"%@ (displayed for test ads only)"];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void)logTracker:(void *)arg2 withExtraData:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [FBAdUtility sendRequestInternal:r20 withExtraData:r19 withPostData:0x0];
    }
    [r20 release];
    return;
}

+(void)sendRequestInternal:(void *)arg2 withExtraData:(void *)arg3 withPostData:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r19 != 0x0) {
            [r22 addEntriesFromDictionary:r19];
    }
    r23 = @"GET";
    if (r20 != 0x0) {
            r23 = @"GET";
            [r22 addEntriesFromDictionary:r20];
            if ([r20 count] == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r23 = @"POST";
                    }
                    else {
                            r23 = @"GET";
                    }
            }
    }
    r0 = [FBAdURLSession sharedSession];
    r0 = [r0 retain];
    [r0 requestWithURL:r21 HTTPMethod:r23 queryParameters:r22 responseHandler:0x100eabec0];
    [r21 release];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)touchDictionaryForEvent:(void *)arg2 delayTime:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[r21 allTouches] retain];
    [r21 release];
    r21 = [[r22 allObjects] retain];
    [r22 release];
    r20 = [[self touchDictionaryForTouches:r21 delayTime:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)touchDictionaryForGesture:(void *)arg2 delayTime:(void *)arg3 {
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [r19 numberOfTouches];
    [r19 locationInView:0x0];
    v8 = v0;
    v9 = v1;
    [r19 locationInView:0x0];
    v11 = v0;
    v12 = v1;
    r0 = [NSDate date];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v10 = v0;
    [r23 release];
    r22 = r22 - 0x1;
    if (r22 >= 0x0) {
            [r19 locationOfTouch:0x0 inView:0x0];
            v8 = v0;
            v9 = v1;
            [r19 locationOfTouch:r22 inView:0x0];
            v11 = v0;
            v12 = v1;
    }
    r21 = [[r21 touchDictionaryWithStartLocation:0x0 currentLocation:0x0 endLocation:r20 startTime:r5 endTime:r6 touchForce:r7 touchRadius:var_60 delayTime:stack[-104]] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)touchDictionaryForTouches:(void *)arg2 delayTime:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [r21 firstObject];
    r0 = [r0 retain];
    [r0 locationInView:0x0];
    [r0 release];
    r0 = [r21 lastObject];
    r0 = [r0 retain];
    [r0 locationInView:0x0];
    [r0 release];
    r0 = [r21 lastObject];
    r0 = [r0 retain];
    [r0 force];
    [r0 release];
    r22 = [[r21 lastObject] retain];
    [r21 release];
    [r22 majorRadius];
    [r22 release];
    r22 = [[NSNumber numberWithDouble:0x0] retain];
    r21 = [[NSNumber numberWithDouble:0x0] retain];
    r20 = [[self touchDictionaryWithStartLocation:r22 currentLocation:r21 endLocation:r19 startTime:r5 endTime:r6 touchForce:r7 touchRadius:var_70 delayTime:stack[-120]] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isDynamicLibrary {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = dladdr(self, &var_40);
    if (r0 != 0x0 && var_40 != 0x0) {
            r0 = [NSString stringWithCString:r2 encoding:0x4];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 lastPathComponent];
            r0 = [r0 retain];
            r19 = [r0 isEqualToString:r2];
            [r0 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

+(bool)isDebuggerAttached {
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffe0 - 0x2b0;
    var_18 = **___stack_chk_guard;
    getpid();
    r0 = sysctl(&var_2B0, 0x4, &stack[-688], &var_2B8, 0x0, 0x0);
    if (**___stack_chk_guard == var_18) {
            asm { ubfx       w0, w8, #0xb, #0x1 };
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isAdHocBuild {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 pathForResource:@"embedded" ofType:@"mobileprovision"];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)touchDictionaryWithStartLocation:(struct CGPoint)arg2 currentLocation:(struct CGPoint)arg3 endLocation:(struct CGPoint)arg4 startTime:(double)arg5 endTime:(double)arg6 touchForce:(void *)arg7 touchRadius:(void *)arg8 delayTime:(void *)arg9 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x160;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    *(&var_10 + 0xffffffffffffff60) = **___stack_chk_guard;
    var_150 = [r2 retain];
    var_148 = [r3 retain];
    r22 = [r4 retain];
    var_158 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    r25 = [[NSNumber numberWithDouble:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r28 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r20 = r22;
    r0 = [NSDictionary dictionaryWithObjects:&var_F8 forKeys:&var_140 count:0x9];
    r29 = &var_10;
    r0 = [r0 retain];
    r26 = [r0 mutableCopy];
    [r0 release];
    [r19 release];
    r0 = r21;
    r21 = var_150;
    [r0 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [var_158 release];
    if (r21 != 0x0) {
            [r26 setObject:r21 forKeyedSubscript:@"force"];
    }
    r22 = var_148;
    if (r22 != 0x0) {
            [r26 setObject:r22 forKeyedSubscript:@"radiusX"];
            [r26 setObject:r22 forKeyedSubscript:@"radiusY"];
    }
    [r20 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
            r0 = [r26 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isBuiltWithReactNative {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = NSClassFromString(@"RCTRootView");
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)isTestFlightBuild {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = [[r0 appStoreReceiptURL] retain];
            [r0 release];
            r0 = [r20 lastPathComponent];
            r0 = [r0 retain];
            r21 = [r0 isEqualToString:r2];
            [r0 release];
            [r20 release];
            r0 = r21;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void)startObservingBackgroundNotifications:(void *)arg2 usingBackgroundBlock:(void *)arg3 usingForegroundBlock:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[UIApplication sharedApplication] retain];
    r23 = [[FBAdNotificationCenter notificationCenterForObject:r21] retain];
    [r21 release];
    [r23 addNotificationWithName:**_UIApplicationDidEnterBackgroundNotification object:r22 block:r20];
    [r20 release];
    [r23 addNotificationWithName:**_UIApplicationDidBecomeActiveNotification object:r22 block:r19];
    [r19 release];
    [r23 release];
    [r22 release];
    return;
}

+(void)stopObservingBackgroundNotifications:(void *)arg2 {
    [FBAdNotificationCenter removeAllObserversForObject:arg2];
    return;
}

+(bool)isAdvertisingTrackingEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dd088 != -0x1) {
            dispatch_once_f(0x1011dd088, 0x1011c6160, 0x100a3d91c);
    }
    r0 = *0x1011dd090;
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)getAdvertisingIdentifier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dd088 != -0x1) {
            dispatch_once_f(0x1011dd088, 0x1011c6160, 0x100a3d91c);
    }
    r0 = *0x1011dd090;
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getFBLoginASID {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 shouldSendFBLoginASID];
    [r0 release];
    if (r20 != 0x0) {
            r0 = NSClassFromString(@"FBSDKAccessToken");
            if (r0 != 0x0) {
                    r0 = [r0 currentAccessToken];
                    r0 = [r0 retain];
                    r19 = [[r0 userID] retain];
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)userHashedPIIData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 shouldSendHashedUserPIIData];
    [r0 release];
    if (r20 != 0x0) {
            r0 = NSClassFromString(@"FBSDKUserDataStore");
            r0 = [r0 getHashedData];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)anonymousIdentifier {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdUtility retrievePersistedAnonymousID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r23 = [[r0 UUIDString] retain];
            r21 = [[NSString stringWithFormat:@"XZ%@"] retain];
            [r20 release];
            [r23 release];
            [r0 release];
            [r19 persistAnonymousID:r21];
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)persistenceFilePath:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x5, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r22 = [[r0 stringByAppendingPathComponent:r19] retain];
    [r19 release];
    [r0 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void)persistAnonymousID:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    r21 = [[r0 retain] retain];
    r0 = sub_100aaaebc(&var_60);
    r22 = [r0 retain];
    r20 = [[[self class] persistenceFilePath:@"com-facebook-sdk-PersistedAnonymousID.json"] retain];
    [r22 writeToFile:r20 atomically:0x1 encoding:0x1 error:0x0];
    [r20 release];
    [r22 release];
    [r21 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

+(void *)retrievePersistedAnonymousID {
    r19 = [[[self class] persistenceFilePath:@"com-facebook-sdk-PersistedAnonymousID.json"] retain];
    r20 = [[[NSString alloc] initWithContentsOfFile:r19 encoding:0x1 error:0x0] retain];
    r0 = sub_100aaae18(&var_48);
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"anon_id"] retain];
    [r0 release];
    [r20 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(bool)isArbitraryLoadAllowed {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 objectForInfoDictionaryKey:@"NSAppTransportSecurity"] retain];
    [r0 release];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = 0x1;
    }
    else {
            if ([FBAdDevice systemVersionIsGreaterThanOrEqualToiOS10] != 0x0) {
                    r20 = @selector(objectForKey:);
                    r0 = objc_msgSend(r19, r20);
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)testHashForAdvertiserID:(void *)arg2 {
    r0 = sub_100a5b120();
    return r0;
}

+(void *)testHashForSelf {
    r20 = [[self getAdvertisingIdentifier] retain];
    r19 = [[self testHashForAdvertiserID:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(double)deviceVolume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dd498 != -0x1) {
            dispatch_once_f(0x1011dd498, 0x1011c66d0, 0x100a3d91c);
    }
    r0 = *0x1011dd4a0;
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 outputVolume];
    asm { fcvt       d8, s0 };
    r0 = [r19 release];
    return r0;
}

+(bool)canOpenURLInInternalBrowser:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 lowercaseString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r25 = @selector(isEqualToString:);
            r0 = [r19 scheme];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 lowercaseString];
            r0 = [r0 retain];
            r24 = r0;
            if (objc_msgSend(r0, r25) != 0x0) {
                    r21 = [r21 isArbitraryLoadAllowed];
            }
            else {
                    r21 = 0x0;
            }
            [r24 release];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)interfaceOrientationMaskSupportsPortrait:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((arg2 & 0x6) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)interfaceOrientationMaskSupportsLandscape:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((arg2 & 0x18) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(long long)interfaceOrientationFromServerOrientation:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r10 = 0x3;
    if (r2 == 0x7) {
            if (!CPU_FLAGS & E) {
                    r10 = 0x0;
            }
            else {
                    r10 = 0x3;
            }
    }
    r9 = 0x4;
    if (r2 == 0x6) {
            if (!CPU_FLAGS & E) {
                    r9 = r10;
            }
            else {
                    r9 = 0x4;
            }
    }
    r8 = 0x2;
    if (r2 == 0x5) {
            if (!CPU_FLAGS & E) {
                    r8 = r9;
            }
            else {
                    r8 = 0x2;
            }
    }
    r11 = 0x1;
    if (r2 == 0x4) {
            if (!CPU_FLAGS & E) {
                    r11 = 0x0;
            }
            else {
                    r11 = 0x1;
            }
    }
    r10 = 0x4;
    if (r2 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r10 = r11;
            }
            else {
                    r10 = 0x4;
            }
    }
    r9 = 0x1;
    if (r2 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r9 = r10;
            }
            else {
                    r9 = 0x1;
            }
    }
    if (r2 > 0x4) {
            if (!CPU_FLAGS & G) {
                    r0 = r9;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

+(long long)serverOrientationFromInterfaceOrientation:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r10 = 0x6;
    if (r2 == 0x4) {
            if (!CPU_FLAGS & E) {
                    r10 = 0x3;
            }
            else {
                    r10 = 0x6;
            }
    }
    r9 = 0x7;
    if (r2 == 0x3) {
            if (!CPU_FLAGS & E) {
                    r9 = r10;
            }
            else {
                    r9 = 0x7;
            }
    }
    r8 = 0x3;
    if (r2 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x3;
            }
            else {
                    r8 = 0x5;
            }
    }
    if (r2 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = 0x4;
            }
    }
    if (r2 > 0x2) {
            if (!CPU_FLAGS & G) {
                    r0 = r8;
            }
            else {
                    r0 = r9;
            }
    }
    return r0;
}

+(long long)serverOrientationFromInterfaceOrientationMask:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self interfaceOrientationMaskSupportsPortrait:r2];
    r0 = [self interfaceOrientationMaskSupportsLandscape:arg2];
    if (r0 != 0x0) {
            asm { csinc      x8, x8, xzr, ne };
    }
    CMP(r19, 0x0);
    if (r0 != 0x0) {
            r9 = 0x2;
    }
    else {
            r9 = 0x3;
    }
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r0 = r9;
            }
            else {
                    r0 = 0x3;
            }
    }
    return r0;
}

+(unsigned long long)supportedInterfaceOrientationsForWindow:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    if (*(int8_t *)0x1011ddc30 != 0x1) goto loc_100aab100;

loc_100aab0f4:
    r21 = @selector(sharedApplication);
    goto loc_100aab194;

loc_100aab194:
    r0 = objc_msgSend(@class(UIApplication), r21);
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 supportedInterfaceOrientationsForWindow:r19];
    goto loc_100aab1c0;

loc_100aab1c0:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100aab100:
    *(int8_t *)0x1011ddc30 = 0x1;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:@selector(application:supportedInterfaceOrientationsForWindow:), r3] & 0x1) == 0x0) goto loc_100aab184;

loc_100aab15c:
    r21 = [r22 application:r20 supportedInterfaceOrientationsForWindow:r19];
    *(int8_t *)0x1011ddc30 = 0x0;
    [r22 release];
    goto loc_100aab1c0;

loc_100aab184:
    r21 = @selector(sharedApplication);
    [r22 release];
    [r20 release];
    goto loc_100aab194;
}

+(bool)enforceAdClickguard:(double)arg2 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isAdClickguardEnabled];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            [r0 adClickguardThresholdInterval];
            [r0 release];
            if (d8 != 0xbff0000000000000) {
                    [NSDate timeIntervalSinceReferenceDate];
                    if (0xbff0000000000000 - d8 >= d9) {
                            r0 = 0x0;
                    }
                    else {
                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdUtility.m" lineNumber:0xf8 format:@"Premature click event (threshold = %f)."];
                            r0 = 0x1;
                    }
            }
            else {
                    [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdUtility.m" lineNumber:0xf8 format:@"Premature click event (threshold = %f)."];
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(bool)enforceAdClickguard:(double)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([self enforceAdClickguard:r2] != 0x0) {
            r0 = [FBAdEventManager sharedManager];
            r0 = [r0 retain];
            [r0 logClickGuardEventForToken:r19 withExtraData:r20];
            [r0 release];
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end