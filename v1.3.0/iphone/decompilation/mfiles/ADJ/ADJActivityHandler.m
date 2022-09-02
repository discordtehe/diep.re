@implementation ADJActivityHandler

+(void *)handlerWithConfig:(void *)arg2 sessionParametersActionsArray:(void *)arg3 deviceToken:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[ADJActivityHandler alloc] initWithConfig:r21 sessionParametersActionsArray:r20 deviceToken:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)applicationDidBecomeActive {
    r0 = [self internalState];
    r0 = [r0 retain];
    [r0 setBackground:0x0];
    [r0 release];
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8a680];
    [r21 release];
    return;
}

-(void)applicationWillResignActive {
    r0 = [self internalState];
    r0 = [r0 retain];
    [r0 setBackground:0x1];
    [r0 release];
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8a6c0];
    [r21 release];
    return;
}

-(void *)initWithConfig:(void *)arg2 sessionParametersActionsArray:(void *)arg3 deviceToken:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_1006841c8;

loc_100683f5c:
    if (r19 == 0x0) goto loc_100684154;

loc_100683f60:
    if (([r19 isValid] & 0x1) == 0x0) goto loc_100684188;

loc_100683f74:
    r23 = @selector(init);
    [r22 setAdjustConfig:r19];
    r24 = [[r19 delegate] retain];
    [r22 setAdjustDelegate:r24];
    [r24 release];
    r25 = [[ADJAdjustFactory logger] retain];
    [r22 setLogger:r25];
    [r25 release];
    r0 = [r22 logger];
    r0 = [r0 retain];
    [r0 lockLogLevel];
    [r0 release];
    r25 = [[r19 appToken] retain];
    [ADJActivityState saveAppToken:r25];
    [r25 release];
    [r22 readAttribution];
    [r22 readActivityState];
    r23 = objc_msgSend([ADJInternalState alloc], r23);
    [r22 setInternalState:r23];
    [r23 release];
    r0 = [r22 activityState];
    r0 = [r0 retain];
    r26 = r0;
    [r0 release];
    r0 = [r22 internalState];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [r22 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 enabled];
            [r25 setEnabled:r2];
            [r26 release];
    }
    else {
            [r25 setEnabled:r2];
    }
    [r25 release];
    r0 = [r22 internalState];
    r0 = [r0 retain];
    [r0 setOffline:0x0];
    [r0 release];
    r0 = [r22 internalState];
    r0 = [r0 retain];
    [r0 setBackground:0x1];
    [r0 release];
    r0 = [r22 internalState];
    r0 = [r0 retain];
    [r0 setDelayStart:0x0];
    [r0 release];
    r0 = [r22 activityState];
    r0 = [r0 retain];
    r26 = r0;
    [r0 release];
    r0 = [r22 internalState];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [r22 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r25 setUpdatePackages:[r0 updatePackages]];
            [r0 release];
    }
    else {
            [r25 setUpdatePackages:0x0];
    }
    [r25 release];
    r0 = [r22 activityState];
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    r0 = [r22 internalState];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 != 0x0) {
            r0 = r24;
    }
    else {
            r0 = r24;
    }
    [r0 setFirstLaunch:r2];
    [r24 release];
    r0 = [r22 internalState];
    r0 = [r0 retain];
    [r0 setSessionResponseProcessed:0x0];
    [r0 release];
    [r22 setDeviceTokenData:r21];
    r23 = dispatch_queue_create("io.adjust.ActivityQueue", 0x0);
    [r22 setInternalQueue:r23];
    [r23 release];
    r24 = [[r22 internalQueue] retain];
    var_58 = [r20 retain];
    [ADJUtil launchInQueue:r24 selfInject:r22 block:&var_78];
    [r24 release];
    [r22 addNotificationObserver];
    r23 = [r22 retain];
    [var_58 release];
    goto loc_1006841cc;

loc_1006841cc:
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;

loc_100684188:
    r23 = [[ADJAdjustFactory logger] retain];
    goto loc_1006841b8;

loc_1006841b8:
    [r23 error:r2];
    [r23 release];
    goto loc_1006841c8;

loc_1006841c8:
    r23 = 0x0;
    goto loc_1006841cc;

loc_100684154:
    r23 = [[ADJAdjustFactory logger] retain];
    goto loc_1006841b8;
}

-(void)trackEvent:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)launchEventResponseTasks:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)finishedTracking:(void *)arg2 {
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
    [ADJSessionResponseData class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10068497c;

loc_100684954:
    r20 = [[r20 attributionHandler] retain];
    r1 = @selector(checkSessionResponse:);
    goto loc_1006849c4;

loc_1006849c4:
    objc_msgSend(r20, r1);
    [r20 release];
    goto loc_1006849d8;

loc_1006849d8:
    [r19 release];
    return;

loc_10068497c:
    r22 = @selector(isKindOfClass:);
    [ADJSdkClickResponseData class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_1006849ec;

loc_1006849a0:
    r20 = [[r20 attributionHandler] retain];
    r1 = @selector(checkSdkClickResponse:);
    goto loc_1006849c4;

loc_1006849ec:
    r22 = @selector(isKindOfClass:);
    [ADJEventResponseData class];
    if (objc_msgSend(r19, r22) != 0x0) {
            [r20 launchEventResponseTasks:r19];
    }
    goto loc_1006849d8;
}

-(void)launchSessionResponseTasks:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)launchSdkClickResponseTasks:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)launchAttributionResponseTasks:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)setEnabled:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([r20 hasChangedState:[self isEnabled] nextState:r19 trueMessage:@"Adjust already enabled" falseMessage:@"Adjust already disabled"] != 0x0) {
            r0 = [r20 internalState];
            r0 = [r0 retain];
            [r0 setEnabled:r19];
            [r0 release];
            r0 = [r20 activityState];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 retain];
                    [r0 writeActivityStateS:r0 changesInStateBlock:&var_50];
                    [r0 updateState:r19 ^ 0x1 pausingMessage:@"Pausing handlers due to SDK being disabled" remainsPausedMessage:@"Handlers remain paused" unPausingMessage:@"Resuming handlers due to SDK being enabled"];
                    [r0 release];
            }
            else {
                    [r20 updateState:r19 ^ 0x1 pausingMessage:@"Handlers will start as paused due to the SDK being disabled" remainsPausedMessage:@"Handlers will still start as paused" unPausingMessage:@"Handlers will start as active due to the SDK being enabled"];
            }
    }
    return;
}

-(bool)isEnabled {
    r0 = [self isEnabledI:self];
    return r0;
}

-(void)setOfflineMode:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self internalState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r20 hasChangedState:[r0 isOffline] nextState:r19 trueMessage:@"Adjust already in offline mode" falseMessage:@"Adjust already in online mode"];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r20 internalState];
            r0 = [r0 retain];
            [r0 setOffline:r19];
            [r0 release];
            r0 = [r20 activityState];
            r0 = [r0 retain];
            [r0 release];
            [r20 updateState:r2 pausingMessage:r3 remainsPausedMessage:r4 unPausingMessage:r5];
    }
    return;
}

-(void *)adid {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            r19 = [[r0 adid] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)hasChangedState:(bool)arg2 nextState:(bool)arg3 trueMessage:(void *)arg4 falseMessage:(void *)arg5 {
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
    r21 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    if (r21 != arg3) {
            r21 = 0x1;
    }
    else {
            r0 = [r22 logger];
            r0 = [r0 retain];
            r22 = r0;
            if (r21 != 0x0) {
                    [r0 debug:r2];
                    [r22 release];
                    r21 = 0x0;
            }
            else {
                    [r0 debug:r2];
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)updateState:(bool)arg2 pausingMessage:(void *)arg3 remainsPausedMessage:(void *)arg4 unPausingMessage:(void *)arg5 {
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
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (arg2 == 0x0) goto loc_10068531c;

loc_1006852f0:
    r0 = [r20 logger];
    r0 = [r0 retain];
    r23 = r0;
    goto loc_1006853b0;

loc_1006853b0:
    [r0 info:r2];
    goto loc_1006853b4;

loc_1006853b4:
    [r23 release];
    [r20 updateHandlersStatusAndSend];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_10068531c:
    if ([r20 pausedI:r2 sdkClickHandlerOnly:r3] == 0x0) goto loc_100685388;

loc_10068533c:
    r24 = [r20 pausedI:r2 sdkClickHandlerOnly:r3];
    r0 = [r20 logger];
    r29 = r29;
    r23 = [r0 retain];
    if (r24 == 0x0) goto loc_1006853f4;

loc_100685374:
    r0 = r23;
    goto loc_1006853b0;

loc_1006853f4:
    r24 = [[r21 stringByAppendingString:@", except the Sdk Click Handler"] retain];
    [r23 info:r24];
    [r24 release];
    goto loc_1006853b4;

loc_100685388:
    r0 = [r20 logger];
    r0 = [r0 retain];
    r23 = r0;
    goto loc_1006853b0;
}

-(void)appWillOpenUrl:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)setDeviceToken:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)setIadDate:(void *)arg2 withPurchaseDate:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self internalQueue] retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [ADJUtil launchInQueue:r23 selfInject:self block:&var_60];
    [r23 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)setAttributionDetails:(void *)arg2 error:(void *)arg3 retriesLeft:(int)arg4 {
    r31 = r31 - 0xd0;
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([ADJUtil isNull:r20] & 0x1) == 0x0) goto loc_10068590c;

loc_100685808:
    if ([ADJUtil checkAttributionDetails:r19] == 0x0) goto loc_100685ab4;

loc_100685820:
    r0 = [r21 activityState];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r21 activityState];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 attributionDetails];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r0 != 0x0) {
                    r23 = [[r21 internalQueue] retain];
                    var_A0 = [r19 retain];
                    [ADJUtil launchInQueue:r23 selfInject:r21 block:&var_C0];
                    [r23 release];
                    r0 = var_A0;
            }
            else {
                    [r21 sendIad3ClickPackage:r21 attributionDetails:r19];
                    r22 = @class(ADJUtil);
                    r23 = [[r21 internalQueue] retain];
                    var_78 = [r19 retain];
                    [r22 launchInQueue:r23 selfInject:r21 block:&var_98];
                    [r23 release];
                    r0 = var_78;
            }
    }
    else {
            [r22 release];
            [r21 sendIad3ClickPackage:r21 attributionDetails:r19];
            r22 = @class(ADJUtil);
            r23 = [[r21 internalQueue] retain];
            var_78 = [r19 retain];
            [r22 launchInQueue:r23 selfInject:r21 block:&var_98];
            [r23 release];
            r0 = var_78;
    }
    goto loc_100685ab0;

loc_100685ab0:
    [r0 release];
    goto loc_100685ab4;

loc_100685ab4:
    [r20 release];
    [r19 release];
    return;

loc_10068590c:
    r0 = [r21 logger];
    r29 = r29;
    r0 = [r0 retain];
    [r0 warn:r2];
    [r25 release];
    if ((r22 & 0xffffffff80000000) != 0x0) goto loc_1006859e4;

loc_100685950:
    r0 = [r20 code];
    if (r0 != 0x0) goto loc_100685ab4;

loc_100685964:
    r23 = dispatch_time(r0, 0x77359400);
    r24 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_50 = [r21 retain];
    dispatch_after(r23, r24, &var_70);
    [r24 release];
    r0 = var_50;
    goto loc_100685ab0;

loc_1006859e4:
    r0 = [r21 logger];
    r0 = [r0 retain];
    [r0 warn:r2];
    r0 = r21;
    goto loc_100685ab0;
}

-(void)sendIad3ClickPackage:(void *)arg2 attributionDetails:(void *)arg3 {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r0 release];
    r0 = [r19 activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            [r0 lastActivity];
            [r0 release];
            r0 = [r19 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setLastInterval:r2];
            [r0 release];
    }
    r22 = [ADJPackageBuilder alloc];
    r23 = [[r19 deviceInfo] retain];
    r24 = [[r19 activityState] retain];
    r25 = [[r19 adjustConfig] retain];
    r21 = [r22 initWithDeviceInfo:r23 activityState:r24 config:r25 createdAt:r5];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 setAttributionDetails:r20];
    [r20 release];
    r20 = [[r19 sessionParameters] retain];
    r22 = [[r21 buildClickPackage:@"iad3" sessionParameters:r20] retain];
    [r20 release];
    r0 = [r19 sdkClickHandler];
    r0 = [r0 retain];
    [r0 sendSdkClick:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)saveAttributionDetailsI:(void *)arg2 attributionDetails:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [arg2 activityState];
    r0 = [r0 retain];
    [r0 setAttributionDetails:r19];
    [r19 release];
    [r0 release];
    [arg2 writeAttributionI:r21];
    [r21 release];
    return;
}

-(void)setAskingAttribution:(bool)arg2 {
    r0 = [self retain];
    [r0 writeActivityStateS:r0 changesInStateBlock:&var_40];
    [r0 release];
    return;
}

-(void)updateHandlersStatusAndSend {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8a970];
    [r21 release];
    return;
}

-(void)foregroundTimerFired {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8a9b0];
    [r21 release];
    return;
}

-(void)backgroundTimerFired {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8a9f0];
    [r21 release];
    return;
}

-(void)sendFirstPackages {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8aa30];
    [r21 release];
    return;
}

-(void)addSessionCallbackParameter:(void *)arg2 value:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self internalQueue] retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [ADJUtil launchInQueue:r23 selfInject:self block:&var_60];
    [r23 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)addSessionPartnerParameter:(void *)arg2 value:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self internalQueue] retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [ADJUtil launchInQueue:r23 selfInject:self block:&var_60];
    [r23 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)removeSessionCallbackParameter:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)removeSessionPartnerParameter:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)resetSessionCallbackParameters {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8ab30];
    [r21 release];
    return;
}

-(void)resetSessionPartnerParameters {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8ab70];
    [r21 release];
    return;
}

-(void)teardown:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 verbose:@"ADJActivityHandler teardown"];
    [r0 release];
    [r19 removeNotificationObserver];
    r0 = [r19 backgroundTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 backgroundTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    r0 = [r19 foregroundTimer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 foregroundTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    r0 = [r19 delayStartTimer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 delayStartTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    r0 = [r19 attributionHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 attributionHandler];
            r29 = r29;
            r0 = [r0 retain];
            [r0 teardown];
            [r0 release];
    }
    r0 = [r19 packageHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 packageHandler];
            r29 = r29;
            r0 = [r0 retain];
            [r0 teardown:r20];
            [r0 release];
    }
    r0 = [r19 sdkClickHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sdkClickHandler];
            r0 = [r0 retain];
            [r0 teardown];
            [r0 release];
    }
    [r19 teardownActivityStateS:r20];
    [r19 teardownAttributionS:r20];
    [r19 teardownAllSessionParametersS:r20];
    [r19 setInternalQueue:0x0];
    [r19 setPackageHandler:0x0];
    [r19 setAttributionHandler:0x0];
    [r19 setSdkClickHandler:0x0];
    [r19 setForegroundTimer:0x0];
    [r19 setBackgroundTimer:0x0];
    [r19 setAdjustDelegate:0x0];
    [r19 setAdjustConfig:0x0];
    [r19 setInternalState:0x0];
    [r19 setDeviceInfo:0x0];
    [r19 setDelayStartTimer:0x0];
    [r19 setLogger:0x0];
    return;
}

-(void)startI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 activityState];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            r22 = [r0 enabled];
            [r0 release];
            [r20 release];
            if (r22 != 0x0) {
                    [r19 updateHandlersStatusAndSendI:r19];
                    [r19 processSessionI:r19];
                    [r19 checkAttributionStateI:r19];
            }
    }
    else {
            [r20 release];
            [r19 updateHandlersStatusAndSendI:r19];
            [r19 processSessionI:r19];
            [r19 checkAttributionStateI:r19];
    }
    [r19 release];
    return;
}

-(void)initI:(void *)arg2 sessionParametersActionsArray:(void *)arg3 {
    r31 = r31 - 0x100;
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
    r22 = [arg2 retain];
    r20 = @class(ADJAdjustFactory);
    var_E0 = [arg3 retain];
    [r20 sessionInterval];
    *0x1011daa98 = d0;
    [ADJAdjustFactory subsessionInterval];
    *0x1011daaa0 = d0;
    [ADJAdjustFactory timerStart];
    *0x1011daaa8 = d0;
    [ADJAdjustFactory timerInterval];
    *0x1011daab0 = d0;
    [ADJAdjustFactory timerInterval];
    *0x1011daab8 = d0;
    r0 = [r22 adjustConfig];
    r0 = [r0 retain];
    r24 = [[r0 sdkPrefix] retain];
    r21 = [[ADJDeviceInfo deviceInfoWithSdkPrefix:r24] retain];
    [r22 setDeviceInfo:r21];
    [r21 release];
    [r24 release];
    [r0 release];
    r23 = [[ADJSessionParameters alloc] init];
    [r22 setSessionParameters:r23];
    [r23 release];
    [r22 readSessionCallbackParametersI:r22];
    [r22 readSessionPartnerParametersI:r22];
    r0 = [r22 adjustConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 eventBufferingEnabled];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r22 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 info:@"Event buffering is enabled"];
            [r0 release];
    }
    r0 = [r22 adjustConfig];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 defaultTracker];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r24 = [[r22 logger] retain];
            r0 = [r22 adjustConfig];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 defaultTracker];
            r29 = r29;
            r23 = [r0 retain];
            [r24 info:@"Default tracker: '%@'"];
            [r23 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r22 deviceTokenData];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r22 logger] retain];
            r25 = [[r22 deviceTokenData] retain];
            [r24 info:@"Push token: '%@'"];
            [r25 release];
            [r24 release];
            r0 = [r22 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r22 deviceTokenData];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 setDeviceToken:r23];
                    [r23 release];
            }
    }
    r0 = [r22 retain];
    r22 = r0;
    var_68 = r22;
    r25 = [[r0 internalQueue] retain];
    r23 = [[ADJTimerCycle timerWithBlock:&var_88 queue:r25 startTime:@"Foreground timer" intervalTime:r5 name:r6] retain];
    [r22 setForegroundTimer:r23];
    [r23 release];
    [r25 release];
    r0 = [r22 adjustConfig];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 sendInBackground];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r22 logger];
            r0 = [r0 retain];
            [r0 info:@"Send in background configured"];
            [r0 release];
            r0 = [r22 retain];
            r25 = r0;
            r26 = [[r0 internalQueue] retain];
            r0 = [ADJTimerOnce timerWithBlock:&var_B0 queue:r26 name:@"Background timer"];
            r29 = r29;
            r23 = [r0 retain];
            [r25 setBackgroundTimer:r23];
            [r23 release];
            [r26 release];
            [r25 release];
    }
    r0 = [r22 activityState];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100687160;

loc_100687158:
    r0 = r25;
    goto loc_1006872ac;

loc_1006872ac:
    [r0 release];
    goto loc_1006872b0;

loc_1006872b0:
    r25 = [[r22 adjustConfig] retain];
    [ADJUtil updateUrlSessionConfiguration:r25];
    [r25 release];
    r0 = [ADJAdjustFactory packageHandlerForActivityHandler:r22 startsSending:[r22 toSendI:r22 sdkClickHandlerOnly:0x0]];
    r29 = r29;
    r25 = [r0 retain];
    [r22 setPackageHandler:r25];
    [r25 release];
    if ([r22 isToUpdatePackagesI:r22] != 0x0) {
            [r22 updatePackagesI:r22];
    }
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r21 = [ADJPackageBuilder alloc];
    r25 = [[r22 deviceInfo] retain];
    r23 = [[r22 activityState] retain];
    r26 = [[r22 adjustConfig] retain];
    r20 = [r21 initWithDeviceInfo:r25 activityState:r23 config:r26 createdAt:r5];
    [r26 release];
    [r23 release];
    [r25 release];
    r21 = [[r20 buildAttributionPackage] retain];
    r23 = @class(ADJAdjustFactory);
    r23 = [[r23 attributionHandlerForActivityHandler:r22 withAttributionPackage:r21 startsSending:[r22 toSendI:r22 sdkClickHandlerOnly:0x0]] retain];
    [r22 setAttributionHandler:r23];
    [r23 release];
    r23 = @class(ADJAdjustFactory);
    r23 = [[r23 sdkClickHandlerWithStartsPaused:r22 startsSending:[r22 toSendI:r22 sdkClickHandlerOnly:0x1]] retain];
    [r22 setSdkClickHandler:r23];
    [r23 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 adjSetIad:r22 triesV3Left:0x2];
    [r0 release];
    [r22 sessionParametersActionsI:r22 sessionParametersActionsArray:var_E0];
    [var_E0 release];
    [r22 startI:r22];
    [r21 release];
    [r20 release];
    [var_68 release];
    [r22 release];
    return;

loc_100687160:
    r0 = [r22 adjustConfig];
    r29 = r29;
    r0 = [r0 retain];
    [r0 delayStart];
    [r0 release];
    [r25 release];
    if (d8 <= 0x0) goto loc_1006872b0;

loc_1006871a0:
    r0 = [r22 logger];
    r0 = [r0 retain];
    [r0 info:@"Delay start configured"];
    [r0 release];
    r0 = [r22 internalState];
    r0 = [r0 retain];
    [r0 setDelayStart:0x1];
    [r0 release];
    r0 = [r22 retain];
    r26 = r0;
    r24 = [[r0 internalQueue] retain];
    r0 = [ADJTimerOnce timerWithBlock:&var_D8 queue:r24 name:@"Delay Start timer"];
    r29 = r29;
    r25 = [r0 retain];
    [r26 setDelayStartTimer:r25];
    [r25 release];
    [r24 release];
    r0 = r26;
    goto loc_1006872ac;
}

-(void)transferSessionPackageI:(void *)arg2 now:(double)arg3 {
    r20 = [arg2 retain];
    r21 = [ADJPackageBuilder alloc];
    r22 = [[arg2 deviceInfo] retain];
    r23 = [[arg2 activityState] retain];
    r24 = [[arg2 adjustConfig] retain];
    r21 = [r21 initWithDeviceInfo:r22 activityState:r23 config:r24 createdAt:r5];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = [[arg2 sessionParameters] retain];
    r0 = [arg2 internalState];
    r0 = [r0 retain];
    r24 = [[r21 buildSessionPackage:r22 isInDelay:[r0 isDelayStart]] retain];
    [r0 release];
    [r22 release];
    r0 = [arg2 packageHandler];
    r0 = [r0 retain];
    [r0 addPackage:r24];
    [r0 release];
    r19 = [arg2 packageHandler];
    [r20 release];
    r0 = [r19 retain];
    [r0 sendFirstPackage];
    [r0 release];
    [r24 release];
    [r21 release];
    return;
}

-(void)endI:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 toSendI:r19] & 0x1) == 0x0) {
            [r19 pauseSendingI:r19];
    }
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    if ([r19 updateActivityStateI:r19 now:r3] != 0x0) {
            [r19 writeActivityStateI:r19];
    }
    [r19 release];
    return;
}

-(void)checkAttributionStateI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 checkActivityStateI:r19] != 0x0) {
            r0 = [r19 internalState];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isFirstLaunch];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 internalState];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 hasSessionResponseNotProcessed];
                    [r0 release];
                    if ((r21 & 0x1) == 0x0) {
                            r0 = [r19 attribution];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r20 != 0x0) {
                                    r0 = [r19 activityState];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = [r0 askingAttribution];
                                    [r0 release];
                                    [r20 release];
                                    if (r22 != 0x0) {
                                            r0 = [r19 attributionHandler];
                                            r0 = [r0 retain];
                                            [r0 getAttribution];
                                            [r0 release];
                                    }
                            }
                            else {
                                    [r20 release];
                                    r0 = [r19 attributionHandler];
                                    r0 = [r0 retain];
                                    [r0 getAttribution];
                                    [r0 release];
                            }
                    }
            }
            else {
                    r0 = [r19 attribution];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r0 = [r19 activityState];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 askingAttribution];
                            [r0 release];
                            [r20 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 attributionHandler];
                                    r0 = [r0 retain];
                                    [r0 getAttribution];
                                    [r0 release];
                            }
                    }
                    else {
                            [r20 release];
                            r0 = [r19 attributionHandler];
                            r0 = [r0 retain];
                            [r0 getAttribution];
                            [r0 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)processSessionI:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r0 release];
    r0 = [r19 activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100687824;

loc_100687790:
    r0 = [r19 activityState];
    r29 = r29;
    r0 = [r0 retain];
    [r0 lastActivity];
    d9 = d8 - d0;
    [r0 release];
    if (d9 >= 0x0) goto loc_100687a28;

loc_1006877c8:
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 error:@"Time travel!"];
    [r0 release];
    r20 = [[r19 activityState] retain];
    r1 = @selector(setLastActivity:);
    goto loc_100687ae0;

loc_100687ae0:
    objc_msgSend(r20, r1);
    goto loc_100687aec;

loc_100687aec:
    r0 = r20;
    goto loc_100687af0;

loc_100687af0:
    [r0 release];
    [r19 writeActivityStateI:r19];
    goto loc_100687b08;

loc_100687b08:
    [r19 release];
    return;

loc_100687a28:
    if (d9 <= *0x1011daa98) goto loc_100687b28;

loc_100687a38:
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r2 = [r0 sessionCount] + 0x1;
    [r0 setSessionCount:r2];
    [r0 release];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 setLastInterval:r2];
    [r0 release];
    [r19 transferSessionPackageI:r19 now:r3];
    r20 = [[r19 activityState] retain];
    r1 = @selector(resetSessionAttributes:);
    goto loc_100687ae0;

loc_100687b28:
    if (d9 <= *0x1011daaa0) goto loc_100687c84;

loc_100687b38:
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r2 = [r0 subsessionCount] + 0x1;
    [r0 setSubsessionCount:r2];
    [r0 release];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 sessionLength];
    [r0 setSessionLength:r2];
    [r0 release];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 setLastActivity:r2];
    [r0 release];
    r22 = [[r19 logger] retain];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r23 = r0;
    [r0 subsessionCount];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r20 = r0;
    [r0 sessionCount];
    [r22 verbose:@"Started subsession %d of session %d"];
    [r20 release];
    [r23 release];
    r0 = r22;
    goto loc_100687af0;

loc_100687c84:
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 verbose:@"Time span since last activity too short for a new subsession"];
    [r0 release];
    goto loc_100687b08;

loc_100687824:
    r21 = [[ADJActivityState alloc] init];
    [r19 setActivityState:r21];
    [r21 release];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 setSessionCount:0x1];
    [r0 release];
    r21 = [[r19 activityState] retain];
    r23 = [[r19 deviceTokenData] retain];
    r22 = [[ADJUtil convertDeviceToken:r23] retain];
    [r21 setDeviceToken:r22];
    [r22 release];
    [r23 release];
    [r21 release];
    [r19 transferSessionPackageI:r19 now:r3];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 resetSessionAttributes:r19];
    [r0 release];
    r21 = [[r19 activityState] retain];
    r0 = [r19 internalState];
    r0 = [r0 retain];
    [r21 setEnabled:[r0 isEnabled]];
    [r0 release];
    [r21 release];
    r20 = [[r19 activityState] retain];
    r0 = [r19 internalState];
    r0 = [r0 retain];
    [r20 setUpdatePackages:[r0 isToUpdatePackages]];
    [r0 release];
    goto loc_100687aec;
}

-(void)launchSdkClickResponseTasksI:(void *)arg2 sdkClickResponseData:(void *)arg3 {
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
    r0 = [arg3 retain];
    r20 = r0;
    r21 = [[r0 adid] retain];
    [r19 updateAdidI:r19 adid:r21];
    [r21 release];
    r0 = [r20 attribution];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r19 updateAttributionI:r19 attribution:r22];
    [r22 release];
    if (r23 != 0x0) {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 debug:@"Launching attribution changed delegate"];
            [r0 release];
            r23 = [[r19 adjustDelegate] retain];
            r21 = [[r20 attribution] retain];
            [ADJUtil launchInMainThread:r23 selector:@selector(adjustAttributionChanged:) withObject:r21];
            [r21 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)launchEventResponseTasksI:(void *)arg2 eventResponseData:(void *)arg3 {
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
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 adid];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r19 updateAdidI:r19 adid:r21];
    [r21 release];
    if ([r20 success] == 0x0) goto loc_10068863c;

loc_100688584:
    r0 = [r19 adjustDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(adjustEventTrackingSucceeded:)];
    [r0 release];
    if (r25 == 0x0) goto loc_10068863c;

loc_1006885cc:
    r21 = @selector(adjustEventTrackingSucceeded:);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 debug:@"Launching success event tracking delegate"];
    [r0 release];
    r22 = [[r19 adjustDelegate] retain];
    r0 = [r20 successResponseData];
    goto loc_100688700;

loc_100688700:
    r24 = [r0 retain];
    [ADJUtil launchInMainThread:r22 selector:r21 withObject:r24];
    [r24 release];
    [r22 release];
    goto loc_100688734;

loc_100688734:
    [r20 release];
    [r19 release];
    return;

loc_10068863c:
    if (([r20 success] & 0x1) != 0x0) goto loc_100688734;

loc_10068864c:
    r0 = [r19 adjustDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(adjustEventTrackingFailed:)];
    [r0 release];
    if (r24 == 0x0) goto loc_100688734;

loc_100688694:
    r21 = @selector(adjustEventTrackingFailed:);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 debug:@"Launching failed event tracking delegate"];
    [r0 release];
    r22 = [[r19 adjustDelegate] retain];
    r0 = [r20 failureResponseData];
    goto loc_100688700;
}

-(void)eventI:(void *)arg2 event:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 isEnabledI:r19] != 0x0 && [r19 checkEventI:r19 event:r20] != 0x0) {
            r0 = [r20 transactionId];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 checkTransactionIdI:r19 transactionId:r21];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r0 release];
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 setEventCount:[r0 eventCount] + 0x1];
                    [r0 release];
                    [r19 updateActivityStateI:r19 now:r3];
                    r23 = [ADJPackageBuilder alloc];
                    r24 = [[r19 deviceInfo] retain];
                    r25 = [[r19 activityState] retain];
                    r26 = [[r19 adjustConfig] retain];
                    r21 = [r23 initWithDeviceInfo:r24 activityState:r25 config:r26 createdAt:r5];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    r25 = [[r19 sessionParameters] retain];
                    r0 = [r19 internalState];
                    r0 = [r0 retain];
                    r23 = [[r21 buildEventPackage:r20 sessionParameters:r25 isInDelay:[r0 isDelayStart]] retain];
                    [r0 release];
                    [r25 release];
                    r0 = [r19 packageHandler];
                    r0 = [r0 retain];
                    [r0 addPackage:r23];
                    [r0 release];
                    r0 = [r19 adjustConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 eventBufferingEnabled];
                    [r0 release];
                    if (r27 != 0x0) {
                            r25 = [[r19 logger] retain];
                            r0 = [r23 suffix];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r25 info:@"Buffered event %@"];
                            [r26 release];
                    }
                    else {
                            r0 = [r19 packageHandler];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = r0;
                            [r0 sendFirstPackage];
                    }
                    [r25 release];
                    r0 = [r19 adjustConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (([r0 sendInBackground] & 0x1) != 0x0) {
                            r0 = [r19 internalState];
                            r0 = [r0 retain];
                            r25 = [r0 isBackground];
                            [r0 release];
                            [r22 release];
                            if (r25 != 0x0) {
                                    [r19 startBackgroundTimerI:r19];
                            }
                    }
                    else {
                            [r22 release];
                    }
                    [r19 writeActivityStateI:r19];
                    [r23 release];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)launchSessionResponseTasksI:(void *)arg2 sessionResponseData:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r22 = [[r0 adid] retain];
    [r19 updateAdidI:r19 adid:r22];
    [r22 release];
    r0 = [r20 attribution];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r23 = [r19 updateAttributionI:r19 attribution:r24];
    [r24 release];
    if ([r20 success] != 0x0) {
            r0 = [r19 adjustDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 respondsToSelector:@selector(adjustSessionTrackingSucceeded:)];
            [r0 release];
            if (r28 != 0x0) {
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 debug:@"Launching success session tracking delegate"];
                    [r0 release];
                    r26 = [[r19 adjustDelegate] retain];
                    r0 = [r20 successResponseData];
                    r29 = r29;
                    r28 = [r0 retain];
                    [ADJUtil launchInMainThread:r26 selector:@selector(adjustSessionTrackingSucceeded:) withObject:r28];
                    [r28 release];
                    [r26 release];
            }
    }
    if (([r20 success] & 0x1) == 0x0) {
            r0 = [r19 adjustDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 respondsToSelector:@selector(adjustSessionTrackingFailed:)];
            [r0 release];
            if (r27 != 0x0) {
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 debug:@"Launching failed session tracking delegate"];
                    [r0 release];
                    r25 = [[r19 adjustDelegate] retain];
                    r0 = [r20 failureResponseData];
                    r29 = r29;
                    r27 = [r0 retain];
                    [ADJUtil launchInMainThread:r25 selector:@selector(adjustSessionTrackingFailed:) withObject:r27];
                    [r27 release];
                    [r25 release];
            }
    }
    if (r23 != 0x0) {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 debug:@"Launching attribution changed delegate"];
            [r0 release];
            r24 = [[r19 adjustDelegate] retain];
            r0 = [r20 attribution];
            r29 = r29;
            r22 = [r0 retain];
            [ADJUtil launchInMainThread:r24 selector:@selector(adjustAttributionChanged:) withObject:r22];
            [r22 release];
            [r24 release];
    }
    r0 = [r21 internalState];
    r0 = [r0 retain];
    [r0 setSessionResponseProcessed:0x1];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)launchAttributionResponseTasksI:(void *)arg2 attributionResponseData:(void *)arg3 {
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
    r0 = [arg3 retain];
    r20 = r0;
    r21 = [[r0 adid] retain];
    [r19 updateAdidI:r19 adid:r21];
    [r21 release];
    r0 = [r20 attribution];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r19 updateAttributionI:r19 attribution:r22];
    [r22 release];
    if (r23 != 0x0) {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 debug:@"Launching attribution changed delegate"];
            [r0 release];
            r23 = [[r19 adjustDelegate] retain];
            r21 = [[r20 attribution] retain];
            [ADJUtil launchInMainThread:r23 selector:@selector(adjustAttributionChanged:) withObject:r21];
            [r21 release];
            [r23 release];
    }
    [r19 prepareDeeplinkI:r19 responseData:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void)prepareDeeplinkI:(void *)arg2 responseData:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r0 = [r20 deeplink];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [[r19 logger] retain];
                    r0 = [r20 deeplink];
                    r0 = [r0 retain];
                    r23 = [[r0 absoluteString] retain];
                    [r22 info:@"Open deep link (%@)"];
                    [r23 release];
                    [r0 release];
                    [r22 release];
                    var_40 = [r19 retain];
                    var_38 = [r20 retain];
                    [ADJUtil launchInMainThread:&var_60];
                    [var_38 release];
                    [var_40 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)updateAdidI:(void *)arg2 adid:(void *)arg3 {
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
    if (r20 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 adid];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r20 isEqualToString:r2];
            [r23 release];
            [r22 release];
            if ((r24 & 0x1) == 0x0) {
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 setAdid:r20];
                    [r0 release];
                    [r19 writeActivityStateI:r19];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)updateAttributionI:(void *)arg2 attribution:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r0 = [r19 attribution];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r20 isEqual:r2];
            [r21 release];
            if ((r22 & 0x1) == 0x0) {
                    [r19 setAttribution:r20];
                    [r19 writeAttributionI:r19];
                    r0 = [r19 adjustDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 adjustDelegate];
                            r0 = [r0 retain];
                            r21 = [r0 respondsToSelector:@selector(adjustAttributionChanged:)];
                            [r0 release];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)trySetAttributionDeeplink:(void *)arg2 withKey:(void *)arg3 withValue:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100689ad4;

loc_100689ac8:
    r1 = @selector(setTrackerName:);
    goto loc_100689b3c;

loc_100689b3c:
    objc_msgSend(r19, r1);
    r22 = 0x1;
    goto loc_100689b4c;

loc_100689b4c:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_100689ad4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100689af8;

loc_100689aec:
    r1 = @selector(setCampaign:);
    goto loc_100689b3c;

loc_100689af8:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100689b1c;

loc_100689b10:
    r1 = @selector(setAdgroup:);
    goto loc_100689b3c;

loc_100689b1c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100689b78;

loc_100689b34:
    r1 = @selector(setCreative:);
    goto loc_100689b3c;

loc_100689b78:
    r22 = 0x0;
    goto loc_100689b4c;
}

-(bool)readDeeplinkQueryStringI:(void *)arg2 queryString:(void *)arg3 adjustDeepLinks:(void *)arg4 attribution:(void *)arg5 {
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
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg3 componentsSeparatedByString:@"="];
    [r23 release];
    r0 = [r22 retain];
    r22 = r0;
    if ([r0 count] == 0x2) {
            r0 = [r22 objectAtIndex:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 hasPrefix:@"adjust_"] != 0x0) {
                    r24 = [[r23 adjUrlDecode] retain];
                    r0 = [r22 objectAtIndex:0x1];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if ([r0 length] != 0x0) {
                            r27 = @selector(length);
                            r26 = [[r25 adjUrlDecode] retain];
                            r0 = [r24 substringFromIndex:objc_msgSend(@"adjust_", r27)];
                            r0 = [r0 retain];
                            r28 = r0;
                            if (objc_msgSend(r0, r27) != 0x0) {
                                    if (([r19 trySetAttributionDeeplink:r21 withKey:r28 withValue:r26] & 0x1) == 0x0) {
                                            [r20 setObject:r2 forKey:r3];
                                    }
                                    r27 = 0x1;
                            }
                            else {
                                    r27 = 0x0;
                            }
                            [r28 release];
                            [r26 release];
                    }
                    else {
                            r27 = 0x0;
                    }
                    [r25 release];
                    [r24 release];
            }
            else {
                    r27 = 0x0;
            }
            [r23 release];
    }
    else {
            r27 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r27;
    return r0;
}

-(void)setDeviceTokenI:(void *)arg2 deviceToken:(void *)arg3 {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r0 = [ADJUtil convertDeviceToken:arg3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 deviceToken];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r20 isEqualToString:r2];
            [r23 release];
            [r22 release];
            if ((r24 & 0x1) == 0x0) {
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 setDeviceToken:r20];
                    [r0 release];
                    [r19 writeActivityStateI:r19];
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r0 release];
                    r22 = [ADJPackageBuilder alloc];
                    r23 = [[r19 deviceInfo] retain];
                    r24 = [[r19 activityState] retain];
                    r25 = [[r19 adjustConfig] retain];
                    r21 = [r22 initWithDeviceInfo:r23 activityState:r24 config:r25 createdAt:r5];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    r22 = [[r21 buildInfoPackage:@"push"] retain];
                    r0 = [r19 packageHandler];
                    r0 = [r0 retain];
                    [r0 addPackage:r22];
                    [r0 release];
                    r0 = [r19 packageHandler];
                    r0 = [r0 retain];
                    [r0 sendFirstPackage];
                    [r0 release];
                    [r22 release];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)appWillOpenUrlI:(void *)arg2 url:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([ADJUtil isNull:r20] & 0x1) == 0x0) {
            r0 = [r20 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 length];
            [r0 release];
            if (r23 != 0x0) {
                    var_138 = r20;
                    r0 = [r20 query];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 componentsSeparatedByString:@"&"];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r22 release];
                    if (r24 == 0x0) {
                            r0 = [NSArray arrayWithObjects:&stack[-256] count:0x0];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r24 release];
                            r24 = r22;
                    }
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r22 = [r0 retain];
                    r23 = [[ADJAttribution alloc] init];
                    r0 = [r24 retain];
                    r24 = r0;
                    r2 = &var_130;
                    r27 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r27 != 0x0) {
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r5 = r23;
                                            [r19 readDeeplinkQueryStringI:r2 queryString:r3 adjustDeepLinks:r4 attribution:r5];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r27);
                                    r2 = &var_130;
                                    r27 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r27 != 0x0);
                    }
                    [r24 release];
                    r0 = @class(NSDate);
                    r0 = [r0 date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r0 release];
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 lastActivity];
                    [r0 release];
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 setLastInterval:r2];
                    [r0 release];
                    r25 = [ADJPackageBuilder alloc];
                    r28 = [[r19 deviceInfo] retain];
                    r27 = [[r19 activityState] retain];
                    r21 = [[r19 adjustConfig] retain];
                    r25 = [r25 initWithDeviceInfo:r28 activityState:r27 config:r21 createdAt:r5];
                    [r21 release];
                    [r27 release];
                    [r28 release];
                    [r25 setDeeplinkParameters:r22];
                    [r25 setAttribution:r23];
                    r21 = [[NSDate date] retain];
                    [r25 setClickTime:r21];
                    [r21 release];
                    r20 = var_138;
                    r21 = [[r20 absoluteString] retain];
                    [r25 setDeeplink:r21];
                    [r21 release];
                    r21 = [[r19 sessionParameters] retain];
                    r26 = [[r25 buildClickPackage:@"deeplink" sessionParameters:r21] retain];
                    [r21 release];
                    r0 = [r19 sdkClickHandler];
                    r0 = [r0 retain];
                    [r0 sendSdkClick:r26];
                    [r0 release];
                    [r26 release];
                    [r25 release];
                    [r23 release];
                    [r22 release];
                    [r24 release];
            }
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)setIadDateI:(void *)arg2 iAdImpressionDate:(void *)arg3 withPurchaseDate:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 logger];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r20 != 0x0) {
            [r23 debug:r2];
            [r23 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            v8 = v0;
            [r0 release];
            r0 = [r19 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 lastActivity];
                    [r0 release];
                    r0 = [r19 activityState];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setLastInterval:@"iAdImpressionDate received: %@"];
                    [r0 release];
            }
            r24 = [ADJPackageBuilder alloc];
            r25 = [[r22 deviceInfo] retain];
            r26 = [[r22 activityState] retain];
            r27 = [[r22 adjustConfig] retain];
            r23 = [r24 initWithDeviceInfo:r25 activityState:r26 config:r27 createdAt:r5];
            [r27 release];
            [r26 release];
            [r25 release];
            [r23 setPurchaseTime:r21];
            [r23 setClickTime:r20];
            r24 = [[r19 sessionParameters] retain];
            r25 = [[r23 buildClickPackage:@"iad" sessionParameters:r24] retain];
            [r24 release];
            r0 = [r22 sdkClickHandler];
            r0 = [r0 retain];
            [r0 sendSdkClick:r25];
            [r0 release];
            [r25 release];
    }
    else {
            [r23 debug:r2];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isEnabledI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [r20 activityState];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [r20 activityState];
            [r19 release];
            r20 = [r20 retain];
            r1 = @selector(enabled);
    }
    else {
            r20 = [r20 internalState];
            [r19 release];
            r20 = [r20 retain];
            r1 = @selector(isEnabled);
    }
    r19 = objc_msgSend(r20, r1);
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)isToUpdatePackagesI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [r20 activityState];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [r20 activityState];
            [r19 release];
            r20 = [r20 retain];
            r1 = @selector(updatePackages);
    }
    else {
            r20 = [r20 internalState];
            [r19 release];
            r20 = [r20 retain];
            r1 = @selector(isToUpdatePackages);
    }
    r19 = objc_msgSend(r20, r1);
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)updateActivityStateI:(void *)arg2 now:(double)arg3 {
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
    v8 = v0;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 checkActivityStateI:r19] != 0x0) {
            r0 = [r19 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 lastActivity];
            d9 = d8 - d0;
            [r0 release];
            if (d9 > *0x1011daa98) {
                    r20 = 0x0;
            }
            else {
                    r0 = [r19 activityState];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setLastActivity:r2];
                    [r0 release];
                    if (d9 < 0x0) {
                            r0 = [r19 logger];
                            r0 = [r0 retain];
                            r20 = r0;
                            [r0 error:@"Time travel!"];
                    }
                    else {
                            r0 = [r19 activityState];
                            r0 = [r0 retain];
                            [r0 sessionLength];
                            [r0 setSessionLength:r2];
                            [r0 release];
                            r0 = [r19 activityState];
                            r0 = [r0 retain];
                            r20 = r0;
                            [r0 timeSpent];
                            [r20 setTimeSpent:r2];
                    }
                    [r20 release];
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)writeActivityStateI:(void *)arg2 {
    [arg2 writeActivityStateS:r2 changesInStateBlock:0x0];
    return;
}

-(void)writeActivityStateS:(void *)arg2 changesInStateBlock:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [ADJActivityState class];
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = [r19 activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20);
            }
            r22 = [[r19 activityState] retain];
            [ADJUtil writeObject:r22 filename:@"AdjustIoActivityState" objectName:@"Activity state"];
            [r22 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)teardownActivityStateS:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [ADJActivityState class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 activityState];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    [ADJUtil deleteFile:@"AdjustIoActivityState"];
            }
            [r20 setActivityState:0x0];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)writeAttributionI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [ADJAttribution class];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 attribution];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 attribution] retain];
            [ADJUtil writeObject:r21 filename:@"AdjustIoAttribution" objectName:@"Attribution"];
            [r21 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)teardownAttributionS:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [ADJAttribution class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 attribution];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    [ADJUtil deleteFile:@"AdjustIoAttribution"];
            }
            [r20 setAttribution:0x0];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)readAttribution {
    r20 = [[ADJUtil readObject:@"AdjustIoAttribution" objectName:@"Attribution" class:[ADJAttribution class]] retain];
    [self setAttribution:r20];
    [r20 release];
    return;
}

-(void)readActivityState {
    [NSKeyedUnarchiver setClass:[ADJActivityState class] forClassName:@"AIActivityState"];
    r20 = [[ADJUtil readObject:@"AdjustIoActivityState" objectName:@"Activity state" class:[ADJActivityState class]] retain];
    [self setActivityState:r20];
    [r20 release];
    return;
}

-(void)writeSessionCallbackParametersI:(void *)arg2 {
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
    r0 = [ADJSessionParameters class];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 sessionParameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            r23 = [[r0 callbackParameters] retain];
            [ADJUtil writeObject:r23 filename:@"AdjustSessionCallbackParameters" objectName:@"Session Callback parameters"];
            [r23 release];
            [r0 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)writeSessionPartnerParametersI:(void *)arg2 {
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
    r0 = [ADJSessionParameters class];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 sessionParameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            r23 = [[r0 partnerParameters] retain];
            [ADJUtil writeObject:r23 filename:@"AdjustSessionPartnerParameters" objectName:@"Session Partner parameters"];
            [r23 release];
            [r0 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)readSessionCallbackParametersI:(void *)arg2 {
    r19 = [[arg2 sessionParameters] retain];
    r20 = [[ADJUtil readObject:@"AdjustSessionCallbackParameters" objectName:@"Session Callback parameters" class:[NSDictionary class]] retain];
    [r19 setCallbackParameters:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void)teardownAllSessionParametersS:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r20 = self;
    r0 = [ADJSessionParameters class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 sessionParameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r22 != 0x0) {
                    [ADJUtil deleteFile:@"AdjustSessionCallbackParameters"];
                    [ADJUtil deleteFile:@"AdjustSessionPartnerParameters"];
            }
            r0 = [r20 sessionParameters];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 callbackParameters];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            [r23 release];
            r0 = [r20 sessionParameters];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 partnerParameters];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            [r21 release];
            [r20 setSessionParameters:0x0];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)readSessionPartnerParametersI:(void *)arg2 {
    r19 = [[arg2 sessionParameters] retain];
    r20 = [[ADJUtil readObject:@"AdjustSessionPartnerParameters" objectName:@"Session Partner parameters" class:[NSDictionary class]] retain];
    [r19 setPartnerParameters:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void)updateHandlersStatusAndSendI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 toSendI:r19] & 0x1) != 0x0) {
            [r19 resumeSendingI:r19];
            r0 = [r19 adjustConfig];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 eventBufferingEnabled];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = [r19 packageHandler];
                    r0 = [r0 retain];
                    [r0 sendFirstPackage];
                    [r0 release];
            }
    }
    else {
            [r19 pauseSendingI:r19];
    }
    [r19 release];
    return;
}

-(void)resumeSendingI:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [arg2 attributionHandler];
    r0 = [r0 retain];
    [r0 resumeSending];
    [r0 release];
    r0 = [arg2 packageHandler];
    r0 = [r0 retain];
    [r0 resumeSending];
    [r0 release];
    r19 = [arg2 sdkClickHandler];
    [r21 release];
    r0 = [r19 retain];
    [r0 resumeSending];
    [r0 release];
    return;
}

-(void)pauseSendingI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [arg2 attributionHandler];
    r0 = [r0 retain];
    [r0 pauseSending];
    [r0 release];
    r0 = [arg2 packageHandler];
    r0 = [r0 retain];
    [r0 pauseSending];
    [r0 release];
    r22 = [arg2 toSendI:r21 sdkClickHandlerOnly:0x1];
    r20 = [arg2 sdkClickHandler];
    [r21 release];
    r20 = [r20 retain];
    if ((r22 & 0x1) != 0x0) {
            r1 = @selector(resumeSending);
            r0 = r20;
    }
    else {
            r0 = r20;
            r1 = @selector(pauseSending);
    }
    objc_msgSend(r0, r1);
    [r20 release];
    return;
}

-(bool)pausedI:(void *)arg2 {
    r0 = [arg2 pausedI:r2 sdkClickHandlerOnly:0x0];
    return r0;
}

-(bool)toSendI:(void *)arg2 {
    r0 = [arg2 toSendI:r2 sdkClickHandlerOnly:0x0];
    return r0;
}

-(bool)pausedI:(void *)arg2 sdkClickHandlerOnly:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 internalState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 isOffline];
    if (arg3 != 0x0) {
            if ((r0 & 0x1) == 0x0) {
                    r21 = [r19 isEnabledI:r19] ^ 0x1;
            }
            else {
                    r21 = 0x1;
            }
    }
    else {
            if ((r0 & 0x1) == 0x0 && [r19 isEnabledI:r19] != 0x0) {
                    r0 = [r19 internalState];
                    r0 = [r0 retain];
                    r21 = [r0 isDelayStart];
                    [r0 release];
            }
            else {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)toSendI:(void *)arg2 sdkClickHandlerOnly:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 pausedI:r19 sdkClickHandlerOnly:arg3] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [r19 adjustConfig];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 sendInBackground];
            [r0 release];
            if ((r21 & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r0 = [r19 internalState];
                    r0 = [r0 retain];
                    r20 = [r0 isForeground];
                    [r0 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)startForegroundTimerI:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEnabledI:r19] != 0x0) {
            r0 = [r19 foregroundTimer];
            r0 = [r0 retain];
            [r0 resume];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)stopForegroundTimerI:(void *)arg2 {
    r0 = [arg2 foregroundTimer];
    r0 = [r0 retain];
    [r0 suspend];
    [r0 release];
    return;
}

-(void)foregroundTimerFiredI:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEnabledI:r19] & 0x1) == 0x0) goto loc_10068b418;

loc_10068b370:
    if ([r19 toSendI:r19] != 0x0) {
            r0 = [r19 packageHandler];
            r29 = r29;
            r0 = [r0 retain];
            [r0 sendFirstPackage];
            [r0 release];
    }
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    if ([r19 updateActivityStateI:r19 now:r3] == 0x0) goto loc_10068b42c;

loc_10068b40c:
    r1 = @selector(writeActivityStateI:);
    goto loc_10068b420;

loc_10068b420:
    objc_msgSend(r19, r1);
    goto loc_10068b42c;

loc_10068b42c:
    [r19 release];
    return;

loc_10068b418:
    r1 = @selector(stopForegroundTimerI:);
    goto loc_10068b420;
}

-(void)startBackgroundTimerI:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 backgroundTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0 && [r19 toSendI:r19] != 0x0) {
            r0 = [r19 backgroundTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 fireIn];
            [r0 release];
            if (d8 <= 0x0) {
                    r0 = [r19 backgroundTimer];
                    r0 = [r0 retain];
                    [r0 startIn:r2];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)stopBackgroundTimerI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 backgroundTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 backgroundTimer];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)backgroundTimerFiredI:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 toSendI:r19] != 0x0) {
            r0 = [r19 packageHandler];
            r0 = [r0 retain];
            [r0 sendFirstPackage];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)sendFirstPackagesI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 internalState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isToStartNow];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 info:@"Start delay expired or never configured"];
            [r0 release];
    }
    else {
            [r19 updatePackagesI:r19];
            r0 = [r19 internalState];
            r0 = [r0 retain];
            [r0 setDelayStart:0x0];
            [r0 release];
            r0 = [r19 delayStartTimer];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            [r19 setDelayStartTimer:0x0];
            [r19 updateHandlersStatusAndSendI:r19];
    }
    [r19 release];
    return;
}

-(void)updatePackagesI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 packageHandler] retain];
    r21 = [[r19 sessionParameters] retain];
    [r20 updatePackages:r21];
    [r21 release];
    [r20 release];
    r0 = [r19 internalState];
    r0 = [r0 retain];
    [r0 setUpdatePackages:0x0];
    [r0 release];
    r0 = [r19 activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityState];
            r0 = [r0 retain];
            [r0 setUpdatePackages:0x0];
            [r0 release];
            [r19 writeActivityStateI:r19];
    }
    [r19 release];
    return;
}

-(void)delayStartI:(void *)arg2 {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = r0;
    r0 = [r0 internalState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isToStartNow];
    [r0 release];
    if ((r22 & 0x1) == 0x0 && ([r19 isToUpdatePackagesI:r19] & 0x1) == 0x0) {
            r0 = [r19 adjustConfig];
            r29 = r29;
            r0 = [r0 retain];
            [r0 delayStart];
            v8 = v0;
            [r0 release];
            [ADJAdjustFactory maxDelayStart];
            v9 = v0;
            if (d8 > d9) {
                    r23 = [[ADJUtil secondsNumberFormat:r2] retain];
                    r24 = [[ADJUtil secondsNumberFormat:r2] retain];
                    r0 = [r19 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 warn:@"Delay start of %@ seconds bigger than max allowed value of %@ seconds"];
                    [r0 release];
                    [r24 release];
                    [r23 release];
                    v8 = v9;
            }
            r21 = [[ADJUtil secondsNumberFormat:r2] retain];
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 info:@"Waiting %@ seconds before starting first session"];
            [r0 release];
            r0 = [r19 delayStartTimer];
            r0 = [r0 retain];
            [r0 startIn:@"Waiting %@ seconds before starting first session"];
            [r0 release];
            r0 = [r19 internalState];
            r0 = [r0 retain];
            [r0 setUpdatePackages:0x1];
            [r0 release];
            r0 = [r19 activityState];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 activityState];
                    r0 = [r0 retain];
                    [r0 setUpdatePackages:0x1];
                    [r0 release];
                    [r19 writeActivityStateI:r19];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)addSessionCallbackParameterI:(void *)arg2 key:(void *)arg3 value:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] == 0x0 || [ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] == 0x0) goto loc_10068bdd4;

loc_10068bbe0:
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 callbackParameters];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) {
            r24 = [[r19 sessionParameters] retain];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r25 = [r0 retain];
            [r24 setCallbackParameters:r25];
            [r25 release];
            [r24 release];
    }
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 callbackParameters];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    [r25 release];
    if (r24 == 0x0) goto loc_10068bd68;

loc_10068bce4:
    r26 = [r24 isEqualToString:r21];
    r0 = [r19 logger];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_10068bd44;

loc_10068bd1c:
    [r25 verbose:@"Key %@ already present with the same value"];
    [r25 release];
    goto loc_10068bdcc;

loc_10068bdcc:
    [r24 release];
    goto loc_10068bdd4;

loc_10068bdd4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10068bd44:
    [r25 warn:@"Key %@ will be overwritten"];
    [r25 release];
    goto loc_10068bd68;

loc_10068bd68:
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 callbackParameters];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:r20];
    [r0 release];
    [r22 release];
    [r19 writeSessionCallbackParametersI:r19];
    goto loc_10068bdcc;
}

-(void)addSessionPartnerParameterI:(void *)arg2 key:(void *)arg3 value:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] == 0x0 || [ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] == 0x0) goto loc_10068c094;

loc_10068bea0:
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 partnerParameters];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) {
            r24 = [[r19 sessionParameters] retain];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r25 = [r0 retain];
            [r24 setPartnerParameters:r25];
            [r25 release];
            [r24 release];
    }
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 partnerParameters];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    [r25 release];
    if (r24 == 0x0) goto loc_10068c028;

loc_10068bfa4:
    r26 = [r24 isEqualToString:r21];
    r0 = [r19 logger];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_10068c004;

loc_10068bfdc:
    [r25 verbose:@"Key %@ already present with the same value"];
    [r25 release];
    goto loc_10068c08c;

loc_10068c08c:
    [r24 release];
    goto loc_10068c094;

loc_10068c094:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10068c004:
    [r25 warn:@"Key %@ will be overwritten"];
    [r25 release];
    goto loc_10068c028;

loc_10068c028:
    r0 = [r19 sessionParameters];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 partnerParameters];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:r20];
    [r0 release];
    [r22 release];
    [r19 writeSessionPartnerParametersI:r19];
    goto loc_10068c08c;
}

-(void)resetSessionCallbackParametersI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 sessionParameters];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 callbackParameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            [r0 setCallbackParameters:0x0];
            [r0 release];
            [r19 writeSessionCallbackParametersI:r19];
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 warn:@"Session Callback parameters are not set"];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)removeSessionCallbackParameterI:(void *)arg2 key:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([ADJUtil isValidParameter:r20 attributeType:@"key" parameterName:@"Session Callback"] != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 callbackParameters];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r19 sessionParameters];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 callbackParameters];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKey:r20] retain];
                    [r0 release];
                    [r24 release];
                    r0 = [r19 logger];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r23 != 0x0) {
                            [r24 debug:@"Key %@ will be removed"];
                            [r24 release];
                            r0 = [r19 sessionParameters];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 callbackParameters];
                            r0 = [r0 retain];
                            [r0 removeObjectForKey:r20];
                            [r0 release];
                            [r21 release];
                            [r19 writeSessionCallbackParametersI:r19];
                    }
                    else {
                            [r24 warn:@"Key %@ does not exist"];
                            [r24 release];
                    }
                    r0 = r23;
            }
            else {
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 warn:@"Session Callback parameters are not set"];
                    r0 = r0;
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)removeSessionPartnerParameterI:(void *)arg2 key:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([ADJUtil isValidParameter:r20 attributeType:@"key" parameterName:@"Session Partner"] != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 partnerParameters];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r19 sessionParameters];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 partnerParameters];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKey:r20] retain];
                    [r0 release];
                    [r24 release];
                    r0 = [r19 logger];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r23 != 0x0) {
                            [r24 debug:@"Key %@ will be removed"];
                            [r24 release];
                            r0 = [r19 sessionParameters];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 partnerParameters];
                            r0 = [r0 retain];
                            [r0 removeObjectForKey:r20];
                            [r0 release];
                            [r21 release];
                            [r19 writeSessionPartnerParametersI:r19];
                    }
                    else {
                            [r24 warn:@"Key %@ does not exist"];
                            [r24 release];
                    }
                    r0 = r23;
            }
            else {
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 warn:@"Session Partner parameters are not set"];
                    r0 = r0;
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)resetSessionPartnerParametersI:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 sessionParameters];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 partnerParameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 != 0x0) {
            r0 = [r19 sessionParameters];
            r0 = [r0 retain];
            [r0 setPartnerParameters:0x0];
            [r0 release];
            [r19 writeSessionPartnerParametersI:r19];
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 warn:@"Session Partner parameters are not set"];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)addNotificationObserver {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 addObserver:self selector:@selector(applicationDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 addObserver:self selector:@selector(applicationWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 addObserver:self selector:@selector(removeNotificationObserver) name:**_UIApplicationWillTerminateNotification object:0x0];
    [r0 release];
    return;
}

-(void)removeNotificationObserver {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)sessionParametersActionsI:(void *)arg2 sessionParametersActionsArray:(void *)arg3 {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    do {
                            r24 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r0 = *(0x0 + r24 * 0x8);
                                    (*(r0 + 0x10))(r0, r19);
                                    r24 = r24 + 0x1;
                            } while (r24 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)attribution {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attribution)), 0x0);
    return r0;
}

-(bool)checkActivityStateI:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 activityState];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = 0x1;
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 error:@"Missing activity state"];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)checkTransactionIdI:(void *)arg2 transactionId:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 == 0x0 || [r20 length] == 0x0) goto loc_10068cb7c;

loc_10068c9c8:
    r0 = [r19 activityState];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 findTransactionId:r20];
    [r0 release];
    if (r23 == 0x0) goto loc_10068cacc;

loc_10068ca08:
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 info:@"Skipping duplicate transaction ID '%@'"];
    [r0 release];
    r22 = [[r19 logger] retain];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r23 = [[r0 transactionIds] retain];
    [r22 verbose:@"Found transaction ID in %@"];
    [r23 release];
    [r0 release];
    [r22 release];
    r21 = 0x0;
    goto loc_10068cb80;

loc_10068cb80:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10068cacc:
    r0 = [r19 activityState];
    r0 = [r0 retain];
    [r0 addTransactionId:r20];
    [r0 release];
    r22 = [[r19 logger] retain];
    r0 = [r19 activityState];
    r0 = [r0 retain];
    r23 = [[r0 transactionIds] retain];
    [r22 verbose:@"Added transaction ID %@"];
    [r23 release];
    [r0 release];
    [r22 release];
    goto loc_10068cb7c;

loc_10068cb7c:
    r21 = 0x1;
    goto loc_10068cb80;
}

-(bool)checkEventI:(void *)arg2 event:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 == 0x0) goto loc_10068cbf8;

loc_10068cbdc:
    if (([r20 isValid] & 0x1) == 0x0) goto loc_10068cc28;

loc_10068cbf0:
    r21 = 0x1;
    goto loc_10068cc68;

loc_10068cc68:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10068cc28:
    r21 = [[r19 logger] retain];
    goto loc_10068cc54;

loc_10068cc54:
    [r21 error:r2];
    [r21 release];
    r21 = 0x0;
    goto loc_10068cc68;

loc_10068cbf8:
    r21 = [[r19 logger] retain];
    goto loc_10068cc54;
}

-(void)setAttribution:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setInternalQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalQueue, arg2);
    return;
}

-(void *)internalQueue {
    r0 = self->_internalQueue;
    return r0;
}

-(void *)packageHandler {
    r0 = self->_packageHandler;
    return r0;
}

-(void *)attributionHandler {
    r0 = self->_attributionHandler;
    return r0;
}

-(void)setPackageHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_packageHandler, arg2);
    return;
}

-(void)setAttributionHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributionHandler, arg2);
    return;
}

-(void *)sdkClickHandler {
    r0 = self->_sdkClickHandler;
    return r0;
}

-(void)setSdkClickHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sdkClickHandler, arg2);
    return;
}

-(void *)activityState {
    r0 = self->_activityState;
    return r0;
}

-(void *)foregroundTimer {
    r0 = self->_foregroundTimer;
    return r0;
}

-(void)setActivityState:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activityState, arg2);
    return;
}

-(void)setForegroundTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_foregroundTimer, arg2);
    return;
}

-(void *)backgroundTimer {
    r0 = self->_backgroundTimer;
    return r0;
}

-(void)setBackgroundTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundTimer, arg2);
    return;
}

-(void *)internalState {
    r0 = self->_internalState;
    return r0;
}

-(void)setInternalState:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalState, arg2);
    return;
}

-(void *)deviceInfo {
    r0 = self->_deviceInfo;
    return r0;
}

-(void)setDeviceInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_deviceInfo, arg2);
    return;
}

-(void *)delayStartTimer {
    r0 = self->_delayStartTimer;
    return r0;
}

-(void)setDelayStartTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delayStartTimer, arg2);
    return;
}

-(void *)sessionParameters {
    r0 = self->_sessionParameters;
    return r0;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSessionParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionParameters, arg2);
    return;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)adjustDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adjustDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdjustDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adjustDelegate, arg2);
    return;
}

-(void *)adjustConfig {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adjustConfig)), 0x0);
    return r0;
}

-(void)setAdjustConfig:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deviceTokenData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceTokenData)), 0x0);
    return r0;
}

-(void)setDeviceTokenData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deviceTokenData, 0x0);
    objc_storeStrong((int64_t *)&self->_adjustConfig, 0x0);
    objc_destroyWeak((int64_t *)&self->_adjustDelegate);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_sessionParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_delayStartTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_internalState, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_foregroundTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_activityState, 0x0);
    objc_storeStrong((int64_t *)&self->_sdkClickHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_packageHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_attribution, 0x0);
    return;
}

@end