@implementation ISAppStoreInsideSession

+(void *)sharedInstance {
    if (*qword_1011dad40 != -0x1) {
            dispatch_once(0x1011dad40, 0x100e8dd00);
    }
    r0 = *0x1011dad38;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setAppStoreDictionary:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)cleanupForViewUniqueId:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self appStoreObjectForViewUniqueId:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[r20 appStoreDictionary] retain];
            r21 = [[r19 viewUniqueId] retain];
            [r20 removeObjectForKey:r21];
            [r21 release];
            [r20 release];
            [r19 cleanup];
    }
    [r19 release];
    return;
}

-(void)loadStoreWithAppId:(void *)arg2 viewUniqueId:(void *)arg3 showIfSuccess:(bool)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0 && [SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0) {
            r0 = [ISAppStoreObject appStoreObjectWithViewId:r20 appId:r19];
            r0 = [r0 retain];
            [r0 setShowStoreWhenDoneLoading:r22];
            r22 = [[r21 appStoreDictionary] retain];
            r24 = [[r0 viewUniqueId] retain];
            [r22 setObject:r0 forKeyedSubscript:r24];
            [r24 release];
            [r22 release];
            [r21 loadStore:r0];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)isStorePresented:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self appStoreObjectForViewUniqueId:arg2] retain];
    if (r19 != 0x0) {
            r20 = [r20 isAppStoreVisible:r19];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)hasAppStorePageForViewUniqueId:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self appStoreObjectForViewUniqueId:arg2] retain];
    if (r19 != 0x0) {
            r20 = [r20 isAppStoreLoaded:r19];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)showStoreForUniqueId:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self appStoreObjectForViewUniqueId:arg2] retain];
    if (r20 != 0x0) {
            [r19 showStore:r20];
    }
    [r20 release];
    return;
}

-(void *)getAppStoreViewCtrlByViewUniqueId:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self appStoreObjectForViewUniqueId:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[[r19 appStoreViewController] retain] autorelease];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)cancelLoading:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self appStoreObjectForViewUniqueId:arg2] retain];
    if (r20 != 0x0) {
            [r19 cancelAppstorePageLoading:r20];
    }
    [r20 release];
    return;
}

-(void)showStore:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [[r0 appStoreViewController] retain];
    r22 = [[self viewControllerToPresentFrom] retain];
    r20 = [r0 retain];
    [r21 showForViewController:r22 completionHandler:&var_50];
    [r22 release];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)loadStore:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r22 = [[SupersonicLogManager sharedManager] retain];
    r26 = [[r19 viewUniqueId] retain];
    r27 = [[NSString stringWithFormat:@"%s for viewUniqueId: %@"] retain];
    [r22 log:r27 withLevel:r3 withTag:0x5];
    [r27 release];
    [r26 release];
    [r22 release];
    r0 = [r19 appStoreViewController];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 respondsToSelector:@selector(didStartAppStoreInsideSessionForAppId:andViewUniqueId:), 0x1];
    [r0 release];
    if (r21 != 0x0) {
            r21 = [[r20 delegate] retain];
            r27 = [[r19 appStorePageAppId] retain];
            r0 = [r19 viewUniqueId];
            r29 = r29;
            r25 = [r0 retain];
            [r21 didStartAppStoreInsideSessionForAppId:r27 andViewUniqueId:r25];
            [r25 release];
            [r27 release];
            [r21 release];
    }
    [r19 setLoadingStoreInProgress:0x1];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r0 = [NSString stringWithFormat:@"ISAppStoreInsideSession | loadStore with params"];
    r29 = r29;
    r23 = [r0 retain];
    [r21 log:r23 withLevel:0x1 withTag:0x5];
    [r23 release];
    [r21 release];
    if ([r19 showStoreWhenDoneLoading] != 0x0) {
            [r19 setTimerForTimeoutTask];
    }
    r21 = [[r19 appStoreViewController] retain];
    r22 = [[r19 appStorePageParams] retain];
    var_58 = r19;
    r19 = [r19 retain];
    [r21 loadProductWithParameters:r22 completionBlock:&var_80];
    [r22 release];
    [r21 release];
    [var_58 release];
    [r19 release];
    return;
}

-(bool)isAppStoreVisible:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 appStoreViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isViewLoaded] != 0x0) {
            r21 = @selector(appStoreViewController);
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 window];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r21 = @selector(appStoreViewController);
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
            [r23 release];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)executeTimeoutTasks:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([SSEReachabilityManager checkReachability] != 0x0) {
            [r20 performSelector:@selector(cancelLoading:) withObject:r3 afterDelay:r4];
    }
    else {
            [r20 cancelLoading:r19];
    }
    [r19 release];
    return;
}

-(void)cancelAppstorePageLoading:(void *)arg2 {
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
    r0 = [r0 viewUniqueId];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r21 isStorePresented:r22];
    [r22 release];
    if ((r23 & 0x1) == 0x0) {
            [r19 setShouldCancelLoading:0x1];
            [r19 setLoadingStoreInProgress:0x0];
            r0 = [r21 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(didFinishAppStoreInsideSession:forAppId:andViewUniqueId:), r3, r4];
            [r0 release];
            if (r25 != 0x0) {
                    r21 = [[r21 delegate] retain];
                    r23 = [[r19 appStorePageAppId] retain];
                    r20 = [[r19 viewUniqueId] retain];
                    [r21 didFinishAppStoreInsideSession:0x0 forAppId:r23 andViewUniqueId:r20];
                    [r20 release];
                    [r23 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(bool)isAppStoreLoaded:(void *)arg2 {
    r0 = [arg2 hasAppStorePage];
    return r0;
}

-(void *)appStoreObjectForViewUniqueId:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self appStoreDictionary];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:r2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setViewControllerToPresentFrom:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_viewControllerToPresentFrom, arg2);
    return;
}

-(void *)viewControllerToPresentFrom {
    r0 = objc_loadWeakRetained((int64_t *)&self->_viewControllerToPresentFrom);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)extraDataToReports {
    r0 = self->_extraDataToReports;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
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
    r21 = self;
    var_128 = [arg2 retain];
    r0 = [r21 appStoreDictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-232];
    var_150 = r1;
    var_148 = r0;
    r0 = objc_msgSend(r0, r1);
    var_120 = r0;
    if (r0 != 0x0) {
            var_130 = 0x0;
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_148);
                            }
                            r28 = @selector(isEqual:);
                            r24 = *(0x0 + r22 * 0x8);
                            r25 = r21;
                            r0 = [r21 appStoreDictionary];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 objectForKeyedSubscript:r24];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 appStoreViewController];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = objc_msgSend(r0, r28);
                            [r0 release];
                            [r20 release];
                            [r19 release];
                            if (r21 != 0x0) {
                                    r19 = [r24 retain];
                                    [var_130 release];
                                    var_130 = r19;
                            }
                            r22 = r22 + 0x1;
                            r21 = r25;
                    } while (r22 < var_120);
                    r3 = &stack[-232];
                    r0 = objc_msgSend(var_148, var_150);
                    var_120 = r0;
            } while (r0 != 0x0);
    }
    else {
            var_130 = 0x0;
    }
    [var_148 release];
    r0 = [SSAHelperMethods topMostController];
    r29 = r29;
    r23 = [r0 retain];
    [ISSplitViewController class];
    if (([r23 isKindOfClass:r2] & 0x1) == 0x0) {
            r0 = [r21 viewControllerToPresentFrom];
            r29 = r29;
            r0 = [r0 retain];
            r3 = 0x0;
            [r0 dismissViewControllerAnimated:0x1 completion:r3];
            [r0 release];
    }
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(didFinishAppStoreInsideSession:forAppId:andViewUniqueId:), r3, 0x10];
    [r0 release];
    if ((r20 & 0x1) != 0x0) {
            r19 = [[r21 delegate] retain];
            r0 = [r21 appStoreDictionary];
            r0 = [r0 retain];
            r20 = r0;
            r25 = var_130;
            r0 = [r0 objectForKeyedSubscript:r25];
            r0 = [r0 retain];
            r22 = [[r0 appStorePageAppId] retain];
            [r19 didFinishAppStoreInsideSession:0x1 forAppId:r22 andViewUniqueId:r25];
            [r22 release];
            [r0 release];
            [r20 release];
            [r19 release];
    }
    else {
            r25 = var_130;
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r25 release];
    [var_128 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setExtraDataToReports:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraDataToReports, arg2);
    return;
}

-(void *)loadingTimer {
    r0 = self->_loadingTimer;
    return r0;
}

-(void)setLoadingTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadingTimer, arg2);
    return;
}

-(void)setAppStoreDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appStoreDictionary, arg2);
    return;
}

-(void *)appStoreDictionary {
    r0 = self->_appStoreDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_appStoreDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_extraDataToReports, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_viewControllerToPresentFrom);
    return;
}

@end