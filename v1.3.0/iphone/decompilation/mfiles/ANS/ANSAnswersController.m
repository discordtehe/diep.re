@implementation ANSAnswersController

-(void *)initWithBetaToken:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[[self class] rootDirectory] retain];
    r19 = [self initWithBetaToken:r21 rootDirectory:r20];
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithBetaToken:(void *)arg2 rootDirectory:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r22);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            [*(r21 + r23) setName:@"io.answers.EventQueue"];
            [*(r21 + r23) setMaxConcurrentOperationCount:0x1];
            if ([*(r21 + r23) respondsToSelector:@selector(setQualityOfService:)] != 0x0) {
                    [*(r21 + r23) setQualityOfService:0x9];
            }
            r23 = [[r21 eventQueue] retain];
            r22 = [r21 retain];
            var_68 = r22;
            var_60 = [r20 retain];
            var_58 = [r19 retain];
            [r23 addOperationWithBlock:&var_88];
            [r23 release];
            [r22 registerForApplicationLifecycleEvents];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(fabricSettingsDidBecomeAvailable:) name:*0x100e67d58 object:0x0];
            [r0 release];
            r0 = [r22 sharedFabricSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 isFirstInstall];
            [r0 release];
            if ((r25 & 0x1) != 0x0) {
                    r0 = [ANSLifecycleEvent installEvent];
                    r29 = r29;
                    [r0 retain];
                    [r22 enqueueEvent:r2];
                    [r25 release];
            }
            [[ANSLifecycleEvent appLaunchedEvent] retain];
            [r22 enqueueEvent:r2];
            [r25 release];
            r0 = [r22 sharedFabricSDK];
            r0 = [r0 retain];
            r24 = [[r0 settings] retain];
            [r22 initializeSettingsIfNeededWithFabricSettings:r24];
            [r24 release];
            [r0 release];
            r22 = [r22 retain];
            [var_58 release];
            [var_60 release];
            [var_68 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

+(void *)rootDirectory {
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = [[r0 lastObject] retain];
    [r0 release];
    r21 = [[r20 stringByAppendingPathComponent:@"com.crashlytics.data"] retain];
    [r20 release];
    r20 = [sub_10009523c() retain];
    r22 = [[r21 stringByAppendingPathComponent:r20] retain];
    [r21 release];
    [r20 release];
    r20 = [[r22 stringByAppendingPathComponent:@"analytics"] retain];
    [r22 release];
    r19 = [[r20 stringByAppendingPathComponent:@"v2"] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)eventDirectoryForRootDirectory:(void *)arg2 {
    r0 = [arg2 stringByAppendingPathComponent:@"events"];
    return r0;
}

-(void *)crashMetadataPathForRootDirectory:(void *)arg2 {
    r0 = [arg2 stringByAppendingPathComponent:@"crash_metadata"];
    return r0;
}

-(void *)sharedFabricSDK {
    r0 = [Fabric sharedSDK];
    return r0;
}

-(void *)uploaderWithQueue:(void *)arg2 delegate:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[ANSUploader alloc] initWithQueue:r20 delegate:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)applicationLifecycleEvent:(void *)arg2 {
    r20 = [[ANSLifecycleEvent eventWithNotification:arg2] retain];
    [self enqueueEvent:r20];
    [r20 release];
    return;
}

-(void)registerForApplicationLifecycleEvents {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationWillTerminateNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationDidReceiveMemoryWarningNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationLifecycleEvent:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    return;
}

-(void *)generateNewLogPath {
    r19 = [[self rootEventDirectory] retain];
    r20 = [sub_100096bfc() retain];
    r21 = [[r19 stringByAppendingPathComponent:r20] retain];
    [r20 release];
    [r19 release];
    r19 = [[r21 stringByAppendingPathExtension:@"log"] retain];
    [r21 release];
    r20 = [[NSURL fileURLWithPath:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)fabricSettingsDidBecomeAvailable:(void *)arg2 {
    r0 = [self sharedFabricSDK];
    r0 = [r0 retain];
    r21 = [[r0 settings] retain];
    [self initializeSettingsIfNeededWithFabricSettings:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)initializeSettingsIfNeededWithFabricSettings:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self eventQueue] retain];
    var_30 = r20;
    r20 = [r20 retain];
    [r21 addOperationWithBlock:&var_50];
    [r21 release];
    [var_30 release];
    [r20 release];
    return;
}

-(void)setupFlushTimer {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self eventQueue];
    r0 = [r0 retain];
    sub_100134a90(r0, "-[ANSAnswersController setupFlushTimer]");
    [r21 release];
    r0 = [r19 settings];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 flushInterval];
    v8 = v0;
    [r0 release];
    if (d8 >= 0x0) {
            objc_initWeak(&stack[-72], r19);
            [ANSTimer alloc];
            [[r19 eventQueue] retain];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            r0 = [r21 initWithTimeInterval:r22 onQueue:@"io.answers.TimedEventsFlush" timerIdentifier:&var_60 block:r5];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_flushTimer));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_flushTimer));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    return;
}

-(void)flushTimerFired {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self eventQueue];
    r0 = [r0 retain];
    sub_100134a90(r0, "-[ANSAnswersController flushTimerFired]");
    [r20 release];
    r0 = [r19 settings];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 flushInterval];
    [r0 release];
    if (d8 >= 0x0) {
            r20 = [[r19 currentLogURL] retain];
            r21 = [r19 shouldSubmitLogAtURL:r20];
            [r20 release];
            if (r21 != 0x0) {
                    [r19 rotateAndSubmitCurrentLog];
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_flushTimer));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    return;
}

-(void *)replacePreviousExecutionMetadataWithCurrentMetadata:(void *)arg2 inRootDirectory:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self crashMetadataPathForRootDirectory:arg3] retain];
    r20 = [[NSURL fileURLWithPath:r19] retain];
    r22 = [[ANSRotateCrashMetadataOperation alloc] initWithCrashMetadataURL:r20 currentMetadata:r21];
    [r21 release];
    [r22 main];
    r21 = [[r22 crashMetadata] retain];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)removeAllLogs {
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
    r21 = [[self rootEventDirectory] retain];
    r20 = [[NSURL fileURLWithPath:r21] retain];
    r0 = [ANSFileUtils allFilesInDirectory:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    [r21 release];
    var_108 = q0;
    r0 = [r19 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            r26 = *var_108;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_108 != r26) {
                                    objc_enumerationMutation(r19);
                            }
                            r0 = [NSFileManager defaultManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 removeItemAtURL:r2 error:r3];
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)logEvent:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:@"Logging Answers event: %@"];
    [r0 release];
    [self enqueueEvent:r22];
    [r22 release];
    return;
}

-(bool)shouldLogEvent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self settings];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 settings];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 valid];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 settings];
                    r0 = [r0 retain];
                    r20 = [r0 shouldCollectAnalytics];
                    [r0 release];
                    r0 = r20;
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)logCrashEvent:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r0 = [arg2 retain];
    [r0 triggersFlush];
    objc_initWeak(&stack[-96], [[ANSActivityOperation operationByStartingActivityName:@"io.answers.RecordCrashEvent" options:*0x100ba1fb8] retain]);
    [r21 retain];
    objc_copyWeak(&var_88 + 0x30, &stack[-96]);
    r23 = [[NSBlockOperation blockOperationWithBlock:&var_88] retain];
    [r19 addDependency:r23];
    r22 = [[self eventQueue] retain];
    r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
    r24 = [r0 retain];
    [r22 addOperations:r24 waitUntilFinished:0x0];
    [r24 release];
    [r22 release];
    [r23 release];
    objc_destroyWeak(&var_88 + 0x30);
    [r21 release];
    objc_destroyWeak(&stack[-96]);
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)enqueueEvent:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r0 = [arg2 retain];
    [r0 triggersFlush];
    objc_initWeak(&stack[-96], [[ANSActivityOperation operationByStartingActivityName:@"io.answers.RecordEvent" options:*0x100ba1fb8] retain]);
    [r21 retain];
    objc_copyWeak(&var_88 + 0x30, &stack[-96]);
    r23 = [[NSBlockOperation blockOperationWithBlock:&var_88] retain];
    [r19 addDependency:r23];
    r22 = [[self eventQueue] retain];
    r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
    r24 = [r0 retain];
    [r22 addOperations:r24 waitUntilFinished:0x0];
    [r24 release];
    [r22 release];
    [r23 release];
    objc_destroyWeak(&var_88 + 0x30);
    [r21 release];
    objc_destroyWeak(&stack[-96]);
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)logEventToFirebase:(void *)arg2 {
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
    r0 = [r20 settings];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 shouldForwardToFirebaseAnalytics];
    [r0 release];
    if (r23 == 0x0) goto loc_100135da4;

loc_100135cd8:
    [ANSPredefinedEvent class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100135d70;

loc_100135d04:
    r0 = [r19 predefinedEventName];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != *0x100e6bd80) goto loc_100135d68;

loc_100135d34:
    r0 = [r20 settings];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 shouldIncludePurchaseEventsInForwardedFirebaseEvents];
    [r0 release];
    if (r23 == 0x0) goto loc_100135dbc;

loc_100135d68:
    [r22 release];
    goto loc_100135d70;

loc_100135d70:
    r0 = [r20 firebaseAnalyticsBridge];
    r0 = [r0 retain];
    [r0 logEvent:r19];
    r0 = r0;
    goto loc_100135da0;

loc_100135da0:
    [r0 release];
    goto loc_100135da4;

loc_100135da4:
    [r19 release];
    return;

loc_100135dbc:
    r0 = r22;
    goto loc_100135da0;
}

-(bool)shouldSubmitLogAtURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ANSFileUtils fileSizeAtURL:arg2];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 integerValue];
    [r20 release];
    r0 = [self settings];
    r0 = [r0 retain];
    r19 = r0;
    if (r21 > [r0 maximumPayloadSize]) {
            if (CPU_FLAGS & G) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)rotateAndSubmitCurrentLog {
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
    r21 = self;
    r19 = [[ANSActivityOperation operationByStartingActivityName:@"io.answers.RotateAndSubmit" options:*0x100ba1fb8 | 0xff] retain];
    r20 = [[r21 currentLogURL] retain];
    r0 = [r21 generateNewLogPath];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogURL));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r21 operationsForUncompressedLog:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 addDependency:r2];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    r21 = [[r21 eventQueue] retain];
    r23 = [[r22 arrayByAddingObject:r19] retain];
    [r21 addOperations:r23 waitUntilFinished:0x0];
    [r23 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)operationsForUncompressedLog:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 pathExtension];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [ANSLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:@"Error: attempted to submit file with invalid extension %@, should be %@"];
            [r0 release];
    }
    var_68 = **___stack_chk_guard;
    r0 = [r20 URLByDeletingPathExtension];
    r0 = [r0 retain];
    r25 = [[r0 URLByAppendingPathExtension:@"gz"] retain];
    [r0 release];
    r21 = [[FABMultipartMimeStreamEncoder generateBoundary] retain];
    r23 = [[r22 multipartMimeURLWithBoundary:r21] retain];
    r24 = [[ANSCompressLogOperation alloc] initWithUncompressedLogURL:r20 compressedLogURL:r25];
    r26 = [[ANSPackageLogOperation alloc] initWithCompressedLogURL:r25 packagedLogURL:r23 multipartMimeBoundary:r21];
    r22 = [[r22 uploadOperationForFileAtURL:r23 withBoundary:r21] retain];
    var_88 = r20;
    r20 = [r20 retain];
    [r24 setCompletionBlock:&var_A8];
    var_B0 = r25;
    r28 = [r25 retain];
    [r26 setCompletionBlock:&var_D0];
    [r26 addDependency:r24];
    [r22 addDependency:r26];
    r0 = [NSArray arrayWithObjects:&var_80 count:0x3];
    r25 = [r0 retain];
    [var_B0 release];
    [var_88 release];
    [r28 release];
    [r20 release];
    [r22 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)operationsForCompressedLog:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 pathExtension];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [ANSLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:@"Error: attempted to submit file with invalid extension %@, should be %@"];
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    r21 = [[FABMultipartMimeStreamEncoder generateBoundary] retain];
    r23 = [[r22 multipartMimeURLWithBoundary:r21] retain];
    r24 = [[ANSPackageLogOperation alloc] initWithCompressedLogURL:r20 packagedLogURL:r23 multipartMimeBoundary:r21];
    r22 = [[r22 uploadOperationForFileAtURL:r23 withBoundary:r21] retain];
    var_60 = r20;
    r26 = [r20 retain];
    [r24 setCompletionBlock:&var_80];
    [r22 addDependency:r24];
    r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
    r20 = [r0 retain];
    [var_60 release];
    [r26 release];
    [r22 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)uploadOperationForFileAtURL:(void *)arg2 withBoundary:(void *)arg3 {
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
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [ANSUploadOperation alloc];
    r21 = [[self uploader] retain];
    r0 = [self settings];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r0 answersURL] retain];
    r0 = [self metadata];
    r0 = [r0 retain];
    r27 = [[r0 APIKey] retain];
    r24 = [r24 initWithUploader:r21 answersURL:r25 apiKey:r27 multipartURL:r20 multipartMimeBoundary:r22];
    [r22 release];
    [r20 release];
    [r27 release];
    [r0 release];
    [r25 release];
    [r23 release];
    [r21 release];
    if (([self->_settings valid] & 0x1) == 0x0) {
            [r24 cancel];
    }
    r0 = [r24 autorelease];
    return r0;
}

-(void)cleanupAndProcessExistingFiles {
    r21 = [[self rootEventDirectory] retain];
    r20 = [[NSURL fileURLWithPath:r21 isDirectory:0x1] retain];
    [r21 release];
    r21 = [ANSCleanupFilesOperation alloc];
    r0 = [self settings];
    r0 = [r0 retain];
    r21 = [r21 initWithDirectoryURL:r20 maximumPendingMulitpartFiles:[r0 maxPendingSendFiles]];
    [r0 release];
    [r21 setSuccessBlock:&var_48];
    r0 = [self eventQueue];
    r0 = [r0 retain];
    [r0 addOperation:r21];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)uploadAllMultipartFiles {
    r22 = [[self rootEventDirectory] retain];
    r21 = [[NSURL fileURLWithPath:r22] retain];
    r20 = [[ANSFileUtils filesWithExtension:@"multipartmime" inDirectory:r21] retain];
    [r21 release];
    [r22 release];
    [self uploadMultipartFiles:r20];
    [r20 release];
    return;
}

-(void)uploadMultipartFiles:(void *)arg2 {
    [arg2 enumerateObjectsUsingBlock:&var_28];
    return;
}

-(void *)boundaryFromURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r19 pathExtension];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [@"multipartmime" isEqualToString:r2];
            [r20 release];
            if (r21 != 0x0) {
                    r0 = [r19 lastPathComponent];
                    r0 = [r0 retain];
                    r20 = [[r0 stringByDeletingPathExtension] retain];
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)multipartMimeURLWithBoundary:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self rootEventDirectory] retain];
    r20 = [[NSURL fileURLWithPath:r19] retain];
    [r19 release];
    r19 = [[r20 URLByAppendingPathComponent:r22] retain];
    [r22 release];
    r21 = [[r19 URLByAppendingPathExtension:@"multipartmime"] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)uploader:(void *)arg2 filePathForUniqueName:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self rootEventDirectory];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    r21 = [[r20 stringByAppendingPathExtension:@"multipartmime"] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)uploader:(void *)arg2 session:(void *)arg3 didReceiveChallenge:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [self networkRetryHandler];
    r0 = [r0 retain];
    [r0 handleChallenge:r20 fromURLSession:r22 completionHandler:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)uploader:(void *)arg2 didFinishUploadWithUniqueName:(void *)arg3 error:(void *)arg4 {
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
    r23 = arg4;
    r21 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (r23 != 0x0) {
            [r23 retain];
            r0 = [ANSLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:r2];
            [r25 release];
            [r24 release];
    }
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:r2];
    [r22 release];
    r21 = [[r21 uploader:r20 filePathForUniqueName:r19] retain];
    [r20 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtPath:r21 error:0x0];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)uploader:(void *)arg2 completedRequest:(void *)arg3 withResponse:(void *)arg4 uniqueName:(void *)arg5 error:(void *)arg6 completionHandler:(void *)arg7 {
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    r21 = [arg7 retain];
    r24 = [[self networkRetryHandler] retain];
    var_58 = r22;
    r22 = [r22 retain];
    var_50 = r23;
    r23 = [r23 retain];
    var_48 = r21;
    r21 = [r21 retain];
    [r24 handleCompletedRequest:r19 withResponse:r20 forIdentifier:r23 error:r22 completionHandler:&var_78];
    [r20 release];
    [r19 release];
    [r24 release];
    [var_48 release];
    [var_50 release];
    [var_58 release];
    [r21 release];
    [r23 release];
    [r22 release];
    return;
}

-(void *)rootEventDirectory {
    r0 = self->_rootEventDirectory;
    return r0;
}

-(void *)eventQueue {
    r0 = self->_eventQueue;
    return r0;
}

-(void *)metadata {
    r0 = self->_metadata;
    return r0;
}

-(void *)previousExecutionMetadata {
    r0 = self->_previousExecutionMetadata;
    return r0;
}

-(void *)uploader {
    r0 = self->_uploader;
    return r0;
}

-(void *)networkRetryHandler {
    r0 = self->_networkRetryHandler;
    return r0;
}

-(void *)flushTimer {
    r0 = self->_flushTimer;
    return r0;
}

-(void *)currentLogURL {
    r0 = self->_currentLogURL;
    return r0;
}

-(void *)eventFilter {
    r0 = self->_eventFilter;
    return r0;
}

-(void *)settings {
    r0 = self->_settings;
    return r0;
}

-(void *)firebaseAnalyticsBridge {
    r0 = self->_firebaseAnalyticsBridge;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_firebaseAnalyticsBridge, 0x0);
    objc_storeStrong((int64_t *)&self->_flushTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_settings, 0x0);
    objc_storeStrong((int64_t *)&self->_eventFilter, 0x0);
    objc_storeStrong((int64_t *)&self->_currentLogURL, 0x0);
    objc_storeStrong((int64_t *)&self->_networkRetryHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_uploader, 0x0);
    objc_storeStrong((int64_t *)&self->_previousExecutionMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    objc_storeStrong((int64_t *)&self->_rootEventDirectory, 0x0);
    objc_storeStrong((int64_t *)&self->_eventQueue, 0x0);
    return;
}

@end