@implementation APMScreenViewReporter

+(void *)sharedInstance {
    if (*qword_1011d20a8 != -0x1) {
            dispatch_once(0x1011d20a8, 0x100e6ef70);
    }
    r0 = *0x1011d20b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isAppActive {
    r0 = *(int8_t *)(int64_t *)&self->_isAppActive;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_isAppActive = 0x0;
            *(int8_t *)(int64_t *)&r19->_allowScreenParameters = 0x1;
            *(int8_t *)(int64_t *)&r19->_allowPostScreenDidChangeNotification = 0x1;
            *(int8_t *)(int64_t *)&r19->_allowScreenViewEvent = 0x1;
            r19->_currentScreenInstanceID = [APMNumericUtil randomInt64];
            r0 = dispatch_queue_create("APMScreenViewReporter", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r19->_firebasePerfDelegate, 0x0);
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(handleWindowDidResign:) name:**_UIWindowDidResignKeyNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(handleApplicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(handleApplicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)getScreenName:(void * *)arg2 screenClass:(void * *)arg3 {
    r0 = self;
    r31 = r31 - 0xc0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = arg2;
    if ((r20 | r19) != 0x0) {
            var_38 = r29 - 0x40;
            var_68 = &var_70;
            dispatch_sync(*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_A8);
            if (r20 != 0x0) {
                    *r20 = objc_retainAutorelease(*(var_38 + 0x28));
            }
            if (r19 != 0x0) {
                    *r19 = objc_retainAutorelease(*(var_68 + 0x28));
            }
            _Block_object_dispose(&var_70, 0x8);
            [0x0 release];
            _Block_object_dispose(r29 - 0x40, 0x8);
            [0x0 release];
    }
    return;
}

-(void)setScreenName:(void *)arg2 screenClass:(void *)arg3 {
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
    r23 = self;
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    if ((sub_100190710() & 0x1) == 0x0) goto loc_1001917f0;

loc_1001916f8:
    r20 = @selector(copy);
    r19 = objc_msgSend(r21, r20);
    [r21 release];
    r20 = objc_msgSend(r22, r20);
    [r22 release];
    if (r19 == 0x0 || ([APMDataTypeValidator isValidScreenParameterValue:r19 failureCode:0x0] & 0x1) != 0x0) goto loc_100191754;

loc_100191838:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    goto loc_1001918b4;

loc_1001918b4:
    [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r21 release];
    r21 = r19;
    r22 = r20;
    goto loc_1001918c8;

loc_1001918c8:
    [r22 release];
    [r21 release];
    return;

loc_100191754:
    if (r20 == 0x0 || ([APMDataTypeValidator isValidScreenParameterValue:r20 failureCode:0x0] & 0x1) != 0x0) goto loc_100191778;

loc_100191878:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    goto loc_1001918b4;

loc_100191778:
    r24 = r23->_queue;
    r21 = [r19 retain];
    r22 = [r20 retain];
    dispatch_sync(r24, &var_68);
    [r22 release];
    r0 = r21;
    goto loc_100191830;

loc_100191830:
    [r0 release];
    goto loc_1001918c8;

loc_1001917f0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x3 messageCode:0x7918 message:@"Ignoring call to setScreenName:screenClass:. Screen reporting is disabled."];
    r0 = r0;
    goto loc_100191830;
}

-(void *)screenParameters {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary alloc] init];
    if (sub_100190710() != 0x0 && *(int8_t *)(int64_t *)&r20->_isAppActive != 0x0) {
            r21 = r20->_queue;
            [r19 retain];
            dispatch_sync(r21, &var_50);
            r21 = r20;
            r20 = [r20 retain];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)viewControllerDidDisappear:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = sub_10019375c();
    r29 = &saved_fp;
    r20 = [r0 retain];
    r8 = sub_100190834(r19, r20);
    if (r8 != 0x0 && r8 != 0x7fffffffffffffff) {
            [r20 removePointerAtIndex:r8];
    }
    sub_100191130(r20);
    r0 = sub_1001908ec();
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0 && sub_100192438() != 0x0) {
            r0 = [APMScreenViewReporter sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setCurrentViewController:r22];
            [r0 release];
    }
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isScreenViewReporterDelegateEnabled];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r21 firebasePerfDelegate];
            r0 = [r0 retain];
            [r0 viewControllerDidDisappear:r19];
            [r0 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setFirebasePerfDelegate:(void *)arg2 {
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
    r0 = [r0 respondsToSelector:@selector(viewControllerDidAppear:trackedByAnalytics:), r3];
    if (r0 != 0x0) {
            r0 = [r19 respondsToSelector:@selector(viewControllerDidDisappear:), r3];
    }
    if ((r0 & 0x1) != 0x0 || r19 == 0x0) goto loc_100192800;

loc_1001927c4:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100192858;

loc_100192858:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    goto loc_100192878;

loc_100192878:
    [r19 release];
    return;

loc_100192800:
    r20 = (int64_t *)&r20->_firebasePerfDelegate;
    r0 = objc_loadWeakRetained(r20);
    if (r0 == 0x0) goto loc_10019286c;

loc_100192818:
    [r0 release];
    if (r19 == 0x0) goto loc_10019286c;

loc_100192820:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100192858;

loc_10019286c:
    objc_storeWeak(r20, r19);
    goto loc_100192878;
}

-(void)viewControllerDidAppear:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = [sub_10019375c() retain];
    r0 = [APMAEU sharedApplication];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 rootViewController];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if (r26 != r19) {
            [r26 release];
            [r25 release];
            [r24 release];
    }
    else {
            if ([r21 count] != 0x0) {
                    r27 = [r21 pointerAtIndex:0x0];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    if (r27 != r19) {
                            r24 = [[NSPointerArray weakObjectsPointerArray] retain];
                            [r21 release];
                            r0 = @class(APMAEU);
                            r0 = [r0 sharedApplication];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 keyWindow];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setApmStack:r24];
                            [r0 release];
                            [r21 release];
                            r21 = r24;
                    }
            }
            else {
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
    }
    r8 = sub_100190834(r19, r21);
    if (r8 != 0x7fffffffffffffff) {
            [r21 removePointerAtIndex:r8];
    }
    r22 = sub_100192438();
    if (r22 != 0x0) {
            [r21 addPointer:r19];
    }
    sub_100191130(r21);
    r0 = sub_1001908ec();
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0 && sub_100192438() != 0x0) {
            r0 = [APMScreenViewReporter sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setCurrentViewController:r23];
            [r0 release];
    }
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isScreenViewReporterDelegateEnabled];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r20 firebasePerfDelegate];
            r0 = [r0 retain];
            [r0 viewControllerDidAppear:r19 trackedByAnalytics:r22];
            [r0 release];
    }
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)firebasePerfDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_firebasePerfDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCurrentViewController:(void *)arg2 {
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
    if (r19 != 0x0) {
            r21 = r20->_queue;
            var_28 = [r19 retain];
            dispatch_sync(r21, &var_50);
            r0 = var_28;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x791d message:@"Received nil view controller"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)postScreenDidChangeNotificationWithPreviousScreen:(void *)arg2 newScreen:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(int8_t *)(int64_t *)&self->_isAppActive != 0x0) {
            r0 = [APMMeasurement hasSharedInstance];
            if (r19 != 0x0 && (r0 & 0x1) != 0x0) {
                    r0 = [APMMeasurement sharedInstance];
                    r0 = [r0 retain];
                    r0 = [r0 sessionReporter];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 handleScreenDidChangeFromScreen:r2 toScreen:r3];
                    [r24 release];
                    [r23 release];
            }
            r0 = [APMAdExposureReporter sharedInstance];
            r0 = [r0 retain];
            [r0 handleScreenDidChangeFromScreen:r2 toScreen:r3];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)handleWindowDidResign:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sub_10019375c();
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r0 = sub_1001908ec();
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0 && sub_100192438() != 0x0) {
                    r0 = [APMScreenViewReporter sharedInstance];
                    r0 = [r0 retain];
                    [r0 setCurrentViewController:r20];
                    [r0 release];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)logViewScreenEventWithPreviousScreen:(void *)arg2 newScreen:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = sub_100190710();
    if (r20 == 0x0 || r0 == 0x0) goto loc_100193228;

loc_100192fc4:
    if (*(int8_t *)(int64_t *)&r23->_isAppActive == 0x0) goto loc_10019319c;

loc_100192fd4:
    r21 = [[NSMutableDictionary alloc] init];
    r0 = sub_1001901d8();
    r29 = r29;
    [r0 retain];
    [r21 addEntriesFromDictionary:r2];
    [r26 release];
    if (r19 != 0x0) {
            r0 = sub_1001904d8();
            r29 = r29;
            [r0 retain];
            [r21 addEntriesFromDictionary:r2];
            [r26 release];
            if ([APMMeasurement hasSharedInstance] != 0x0) {
                    r0 = [APMMeasurement remoteConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 efficientEngagementReportingEnabled];
                    [r0 release];
                    if (r26 != 0x0) {
                            r0 = [APMMeasurement sharedInstance];
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 sessionReporter];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 cutFreerideEngagementTimeMillis];
                            [r0 release];
                            [r26 release];
                            if (r25 >= 0x1) {
                                    r24 = [[APMValue alloc] initWithInt64:r25];
                                    [r21 setObject:r24 forKeyedSubscript:@"_et"];
                                    [r24 release];
                            }
                    }
            }
    }
    if ((sub_100197214() & 0x1) == 0x0) goto loc_1001931dc;

loc_100193160:
    objc_storeStrong((int64_t *)&r23->_previousScreen, r22);
    r0 = @class(APMAnalytics);
    r1 = @selector(logInternalEventWithOrigin:name:parameters:);
    goto loc_1001931d4;

loc_1001931d4:
    objc_msgSend(r0, r1);
    goto loc_100193220;

loc_100193220:
    [r21 release];
    goto loc_100193228;

loc_100193228:
    [r20 release];
    [r19 release];
    return;

loc_1001931dc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x7924 message:@"Screen view event not logged. Screen parameters were empty"];
    [r0 release];
    goto loc_100193220;

loc_10019319c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(logWithLevel:messageCode:message:);
    goto loc_1001931d4;
}

-(void)handleApplicationDidBecomeActive:(void *)arg2 {
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
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_isAppActive = 0x1;
    if (([APMMeasurement hasSharedInstance] & 0x1) != 0x0) {
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 sessionReporter];
            r29 = r29;
            r0 = [r0 retain];
            [r0 handleAppDidBecomeActive];
            [r23 release];
            [r22 release];
    }
    r0 = [APMAdExposureReporter sharedInstance];
    r0 = [r0 retain];
    [r0 handleAppDidBecomeActive];
    [r20 release];
    dispatch_async(r19->_queue, &var_58);
    return;
}

-(void)handleApplicationWillResignActive:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    var_58 = &var_60;
    if (sub_100190710() != 0x0 && *(int8_t *)(int64_t *)&r20->_isAppActive != 0x0) {
            dispatch_sync(r20->_queue, &var_90);
    }
    if (([APMMeasurement hasSharedInstance] & 0x1) != 0x0) {
            r21 = @selector(sharedInstance);
            r0 = objc_msgSend(@class(APMMeasurement), r21);
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sessionReporter];
            r29 = r29;
            r0 = [r0 retain];
            [r0 handleAppWillResignActiveWithScreen:*(var_58 + 0x28)];
            [r0 release];
            [r22 release];
    }
    else {
            r21 = @selector(sharedInstance);
    }
    r0 = objc_msgSend(@class(APMAdExposureReporter), r21);
    r0 = [r0 retain];
    [r0 handleAppWillResignActiveWithScreen:*(var_58 + 0x28)];
    [r0 release];
    *(int8_t *)(int64_t *)&r20->_isAppActive = 0x0;
    _Block_object_dispose(&var_60, 0x8);
    [0x0 release];
    [r19 release];
    return;
}

+(void)notCalled {
    sub_100193e94();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_previousScreen, 0x0);
    objc_storeStrong((int64_t *)&self->_currentScreen, 0x0);
    objc_destroyWeak((int64_t *)&self->_firebasePerfDelegate);
    objc_destroyWeak((int64_t *)&self->_currentViewController);
    return;
}

@end