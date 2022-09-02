@implementation TJYMoatBootstrap

+(void)initialize {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [TJYMoatOnOff getStatus];
    if ([TJYMoatBootstrap class] == r21) {
            r0 = [r21 retain];
            objc_sync_enter(r0);
            r0 = [NSMutableArray new];
            r8 = *0x1011dc2a0;
            *0x1011dc2a0 = r0;
            [r8 release];
            objc_sync_exit(r21);
            [r21 release];
            if (r20 == 0x1) {
                    [TJYMoatBootstrap initializeAppHooks];
            }
            else {
                    [TJYMoatOnOff onResurrectionDo:0x100ea3920 withQueue:@"MoatBootstrap" withKey:[TJYMoatBootstrap class]];
            }
    }
    return;
}

+(void)initializeAppHooks {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [TJYMoatBootstrap class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ((*(int8_t *)0x1011dc2a8 & 0x1) != 0x0) {
            objc_sync_exit(r19);
            [r19 release];
    }
    else {
            *(int8_t *)0x1011dc2a8 = 0x1;
            objc_sync_exit(r19);
            [r19 release];
            [TJYMoatUIUtil setFocusListener];
    }
    return;
}

+(void *)digForUIWebView:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [self digForWebView:r22 webViewType:[UIWebView class]];
    [r22 release];
    r0 = [r19 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)injectDelegateWrapper:(void *)arg2 tracking:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r2 = r19;
            r0 = [r22 digForUIWebView:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [r22 installUIWebViewBridge:r21 tracking:r20 forNativeAd:0x0];
            }
            else {
                    if ([TJYMoatOnOff getDebug] != 0x0) {
                            var_30 = @"MoatBootstrap";
                            stack[-56] = r19;
                            NSLog(@"[%@] WebView not found inside container: %@", @selector(getDebug), r2);
                    }
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            if ([TJYMoatOnOff getDebug] != 0x0) {
                    var_30 = @"MoatBootstrap";
                    NSLog(@"[%@] view or WebView reference is nil. Not tracking.", @selector(getDebug));
            }
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void)pruneDelegates {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r19 = self;
    if ([TJYMoatOnOff getStatus] != 0x0) {
            r0 = [r19 retain];
            var_70 = r0;
            objc_sync_enter(r0);
            var_58 = [NSMutableArray new];
            for (r22 = 0x0; r22 < [*0x1011dc2a0 count]; r22 = r22 + 0x1) {
                    r0 = *0x1011dc2a0;
                    r0 = [r0 objectAtIndexedSubscript:r22];
                    r29 = r29;
                    r19 = [r0 retain];
                    if (([r19 isMemberOfClass:[TJYMoatUIWebViewBridge class]] & 0x1) != 0x0) {
                            r0 = [r19 retain];
                            r20 = r0;
                            if ([r0 hasWebView] != 0x0) {
                                    [var_58 addObject:r2];
                            }
                            else {
                                    if ([TJYMoatOnOff getDebug] != 0x0) {
                                            NSLog(@"Moat-enabled WebView got deallocated.");
                                    }
                            }
                            [r20 release];
                    }
                    [r19 release];
            }
            if ([*0x1011dc2a0 count] != [var_58 count]) {
                    objc_storeStrong(0x1011dc2a0, var_58);
            }
            [var_58 release];
            objc_sync_exit(var_70);
            [var_70 release];
    }
    return;
}

+(bool)isBlocksKitDelegate:(void *)arg2 {
    r0 = object_getClass(arg2);
    r0 = [r0 description];
    r0 = [r0 retain];
    r20 = [r0 hasPrefix:@"A2Dynamic"];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)digForWebView:(void *)arg2 webViewType:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    r29 = &saved_fp;
    r21 = arg3;
    r0 = [arg2 retain];
    r27 = r0;
    if ([r0 isKindOfClass:r2] == 0x0) goto loc_10096efcc;

loc_10096efbc:
    r19 = [r27 retain];
    goto loc_10096f1fc;

loc_10096f1fc:
    [r27 release];
    r0 = [r19 autorelease];
    return r0;

loc_10096efcc:
    r19 = @class(NSMutableArray);
    var_68 = @selector(subviews);
    r23 = [[r27 subviews] retain];
    r0 = [r19 arrayWithArray:r23];
    r29 = r29;
    r20 = [r0 retain];
    [r23 release];
    var_58 = [[NSMutableArray alloc] init];
    if ([r20 count] == 0x0) goto loc_10096f1c8;

loc_10096f054:
    var_70 = r27;
    r28 = 0x0;
    r25 = 0x0;
    r24 = @selector(removeAllObjects);
    var_78 = r24;
    var_60 = @selector(addObjectsFromArray:);
    goto loc_10096f080;

loc_10096f080:
    r0 = [r20 count];
    if (r28 > 0x63 || r0 == 0x0) goto loc_10096f140;

loc_10096f098:
    r27 = 0x0;
    goto loc_10096f09c;

loc_10096f09c:
    r22 = @selector(isKindOfClass:);
    r0 = [r20 objectAtIndexedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    r2 = r21;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_10096f0dc;

loc_10096f0c8:
    if (r25 != 0x0) goto loc_10096f184;

loc_10096f0cc:
    r25 = [r24 retain];
    goto loc_10096f108;

loc_10096f108:
    r26 = @selector(count);
    r23 = 0x1 + r28 + r27;
    [r24 release];
    r27 = r27 + 0x1;
    r0 = objc_msgSend(r20, r26);
    if (r23 > 0x63 || r27 >= r0) goto loc_10096f138;
    goto loc_10096f09c;

loc_10096f138:
    r28 = r28 + r27;
    r24 = var_78;
    goto loc_10096f140;

loc_10096f140:
    var_60 = @selector(addObjectsFromArray:);
    objc_msgSend(r20, r24);
    objc_msgSend(r20, var_60);
    objc_msgSend(var_58, r24);
    r0 = objc_msgSend(r20, r26);
    if (r28 > 0x63 || r0 == 0x0) goto loc_10096f1d0;
    goto loc_10096f080;

loc_10096f1d0:
    r25 = [r25 retain];
    r19 = r25;
    r27 = var_70;
    goto loc_10096f1e4;

loc_10096f1e4:
    [r25 release];
    [var_58 release];
    [r20 release];
    goto loc_10096f1fc;

loc_10096f184:
    r0 = [TJYMoatOnOff getDebug];
    r27 = var_70;
    if (r0 != 0x0) {
            var_90 = @"MoatBootstrap";
            stack[-152] = r27;
            NSLog(@"[%@] %@ contained multiple WebViews. Expected one.", @selector(getDebug), r2);
    }
    [r24 release];
    r19 = 0x0;
    goto loc_10096f1e4;

loc_10096f0dc:
    var_68 = @selector(subviews);
    var_60 = @selector(addObjectsFromArray:);
    r0 = objc_msgSend(r24, var_68);
    r29 = r29;
    [r0 retain];
    objc_msgSend(var_58, var_60);
    [r23 release];
    goto loc_10096f108;

loc_10096f1c8:
    var_70 = r27;
    r25 = 0x0;
    goto loc_10096f1d0;
}

+(void *)getWrappedDelegate:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    r0 = [arg2 retain];
    r19 = r0;
    r26 = [[r0 delegate] retain];
    r0 = [TJYMoatCoreUtil getNestedDelegates:r2 withProtocol:r3];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r1 = @selector(count);
            var_60 = r1;
            if (objc_msgSend(r21, r1) != 0x0) {
                    var_58 = [TJYMoatDummyWebViewDelegate new];
                    [r19 setDelegate:var_58];
                    r0 = [r19 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != var_58) {
                            r22 = [[r19 delegate] retain];
                            var_68 = [[TJYMoatCoreUtil getNestedDelegates:r2 withProtocol:r3] retain];
                            [r22 release];
                            r0 = [r21 allKeys];
                            var_78 = r26;
                            var_70 = r19;
                            r29 = r29;
                            r26 = [r0 retain];
                            r27 = 0x0;
                            r24 = 0x0;
                            do {
                                    if (r27 >= objc_msgSend(r26, var_60)) {
                                        break;
                                    }
                                    r23 = [[r26 objectAtIndexedSubscript:r27] retain];
                                    r0 = [var_68 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    if (r22 != 0x0) {
                                            asm { ccmp       x22, x8, #0x0, ne };
                                    }
                                    if (!CPU_FLAGS & NE) {
                                            r0 = [r21 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r24 release];
                                            r19 = 0x1;
                                            r24 = r20;
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                                    [r22 release];
                                    [r23 release];
                                    r27 = r27 + 0x1;
                            } while (r19 == 0x0);
                            [r26 release];
                            [var_68 release];
                            r26 = var_78;
                            r19 = var_70;
                    }
                    else {
                            r24 = 0x0;
                    }
                    [var_58 release];
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    [r21 release];
    [r19 setDelegate:r26];
    if (0x0 == 0x0) {
            [r26 release];
            [r19 release];
            r0 = [r24 autorelease];
    }
    else {
            r0 = objc_exception_rethrow();
    }
    return r0;
}

+(bool)installUIWebViewBridge:(void *)arg2 tracking:(void *)arg3 forNativeAd:(bool)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r24 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r1 = @selector(getDebug);
    if (objc_msgSend(@class(TJYMoatOnOff), r1) != 0x0) {
            var_70 = @"MoatBootstrap";
            NSLog(@"[%@] attempting to install bridge into WebView.", r1);
    }
    r0 = [r22 class];
    r0 = [r0 description];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 hasPrefix:@"TJYMoat"];
    [r0 release];
    if (r26 == 0x0) goto loc_10096f680;

loc_10096f638:
    r1 = @selector(getDebug);
    if (objc_msgSend(@class(TJYMoatOnOff), r1) != 0x0) {
            var_70 = @"MoatBootstrap";
            NSLog(@"[%@] a Moat bridge is already installed. Discarding existing one.", r1);
    }
    [r22 release];
    [r19 setDelegate:0x0];
    goto loc_10096f704;

loc_10096f704:
    r22 = 0x0;
    r25 = 0x0;
    goto loc_10096f77c;

loc_10096f77c:
    r26 = [TJYMoatUIWebViewBridge alloc];
    r0 = [r20 layer];
    r29 = r29;
    r27 = [r0 retain];
    r24 = [r26 initWithDelegate:r25 target:r27 withWebView:r19 forNativeAd:r24];
    [r27 release];
    r0 = [r23 retain];
    r23 = r0;
    objc_sync_enter(r0);
    if (*0x1011dc2a0 == 0x0) {
            r0 = [NSMutableArray new];
            r8 = *0x1011dc2a0;
            *0x1011dc2a0 = r0;
            [r8 release];
    }
    [*0x1011dc2a0 addObject:r24];
    objc_sync_exit(r23);
    [r23 release];
    [r19 setDelegate:r24];
    r26 = [[NSURL URLWithString:@"about:blank"] retain];
    r0 = [NSURLRequest requestWithURL:r26];
    r29 = r29;
    r23 = [r0 retain];
    [r26 release];
    r3 = r23;
    [r24 webView:r19 shouldStartLoadWithRequest:r3 navigationType:0x5];
    [r24 respondsToSelector:@selector(webViewDidStartLoad:)];
    r26 = [r24 detectedRecursion];
    r1 = @selector(getDebug);
    if (objc_msgSend(@class(TJYMoatOnOff), r1, @selector(webViewDidStartLoad:)) != 0x0) {
            r8 = @"";
            if (r26 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"";
                    }
                    else {
                            r8 = @"not";
                    }
            }
            var_60 = r19;
            var_70 = @"MoatBootstrap";
            stack[-120] = r8;
            NSLog(@"[%@] UI bridge %@installed into: %@", r1, @selector(webViewDidStartLoad:), r3);
    }
    r21 = r26 ^ 0x1;
    [r23 release];
    [r24 release];
    goto loc_10096f94c;

loc_10096f94c:
    [r25 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10096f680:
    r22 = [r22 retain];
    if (r22 == 0x0) goto loc_10096f704;

loc_10096f690:
    r1 = @selector(getDebug);
    if (objc_msgSend(@class(TJYMoatOnOff), r1) != 0x0) {
            var_70 = @"MoatBootstrap";
            stack[-120] = r22;
            NSLog(@"[%@] There's an existing delegate on the WebView: %@", r1, @"TJYMoat");
    }
    if ([r23 isBlocksKitDelegate:r22] == 0x0) goto loc_10096f710;

loc_10096f6d0:
    r1 = @selector(getDebug);
    if (objc_msgSend(@class(TJYMoatOnOff), r1) != 0x0) {
            var_70 = @"MoatBootstrap";
            NSLog(@"[%@] BlocksKit-wrapped WebView: tracking not supported.", r1);
    }
    r21 = 0x0;
    r25 = r22;
    goto loc_10096f94c;

loc_10096f710:
    r2 = r19;
    r0 = [r23 getWrappedDelegate:r2];
    r29 = r29;
    r26 = [r0 retain];
    r25 = r22;
    if (r26 != 0x0) {
            r1 = @selector(getDebug);
            if (objc_msgSend(@class(TJYMoatOnOff), r1) != 0x0) {
                    var_70 = @"MoatBootstrap";
                    stack[-120] = r26;
                    NSLog(@"[%@] Found the wrapped delegate: %@", r1, r2);
            }
            r25 = [r26 retain];
            [r22 release];
    }
    [r26 release];
    goto loc_10096f77c;
}

+(bool)injectDelegateWrapper:(void *)arg2 {
    r2 = arg2;
    var_40 = r26;
    stack[-72] = r25;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x40;
    r20 = self;
    r19 = [r2 retain];
    if ([TJYMoatOnOff getStatus] != 0x0) {
            r0 = [TJYMoatOnOff getDebug];
            if (r19 != 0x0) {
                    if (r0 != 0x0) {
                            var_80 = @"MoatBootstrap";
                            stack[-136] = r19;
                            NSLog(@"[%@] called to track %@", @selector(getDebug), r2);
                    }
                    r0 = [r19 class];
                    r0 = [r0 description];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 hasPrefix:r2];
                    [r0 release];
                    if (r25 != 0x0) {
                            r0 = [r19 superview];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 class];
                            r0 = [r0 description];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 hasPrefix:r2];
                            [r0 release];
                            [r25 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 superview];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    r20 = [r20 injectDelegateWrapper:r19 tracking:r21];
                                    [r21 release];
                            }
                            else {
                                    r20 = [r20 injectDelegateWrapper:r19 tracking:r19];
                            }
                    }
                    else {
                            r20 = [r20 injectDelegateWrapper:r19 tracking:r19];
                    }
            }
            else {
                    if (r0 != 0x0) {
                            var_80 = @"MoatBootstrap";
                            NSLog(@"[%@] nil view reference. Not tracking.", @selector(getDebug));
                    }
                    r20 = 0x0;
            }
    }
    else {
            r0 = objc_initWeak(&stack[-88], r19);
            var_68 = 0xffffffffc2000000;
            var_60 = 0x10096fc70;
            var_58 = 0x100ea3940;
            [r0 retain];
            objc_initWeak(&var_70 + 0x20, r19);
            [r19 release];
            r0 = objc_loadWeakRetained(&stack[-88]);
            r22 = r0;
            r0 = [NSValue valueWithNonretainedObject:r22];
            r29 = r29;
            r23 = [r0 retain];
            r0 = [r21 onResurrectionDo:&var_70 withQueue:@"MoatBootstrap" withKey:r23];
            [r23 release];
            [r22 release];
            objc_destroyWeak(&var_70 + 0x20);
            r0 = objc_destroyWeak(&stack[-88]);
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end