@implementation CLSCrashReportingController

-(void *)initWithFileManager:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_fileMananger, r22);
            objc_storeWeak((int64_t *)&r21->_delegate, r20);
            r0 = [NSOperationQueue new];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_operationQueue));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [*(r21 + r22) setMaxConcurrentOperationCount:0x1];
            [*(r21 + r22) setName:@"com.twitter.crashlytics.ios.work-queue"];
            r0 = [r21 clientWithOperationQueue:*(r21 + r22)];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkClient));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_promptChoice = 0x0;
            r22 = [r21 retain];
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

-(void *)clientWithOperationQueue:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[CLSNetworkClient alloc] initWithQueue:r22 fileManager:self->_fileMananger delegate:self];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)startWithProfilingMark:(unsigned long long)arg2 betaToken:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    if ([r21 checkPreconditions] == 0x0) goto loc_100112210;

loc_100112040:
    r0 = [r21 settings];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 crashReportingEnabled];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_1001121ec;

loc_100112078:
    if ([r21 prepareForNewLaunch] != 0x0) {
            r24 = [r21 checkForAndCreateLaunchMarker];
            r22 = [[r21->_fileMananger activePathContents] retain];
            r0 = [r21 setupCurrentReport];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 == 0x0) {
                    NSLog(@"[Crashlytics:Crash] Unable to setup a new report");
            }
            r25 = [[r21 APIKey] retain];
            r26 = [r21 startCrashReporterWithAPIKey:r25 betaToken:r19 profilingMark:r20 report:r23];
            [r25 release];
            if ((r26 & 0x1) == 0x0) {
                    NSLog(@"[Crashlytics:Crash] Unable to start crash reporter");
                    [r23 release];
                    r23 = 0x0;
            }
            [r21 processExistingReportPaths:r22 asUrgent:r24];
            [r21 handleContentsInOtherReportingDirectories];
            if (r23 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            if (r23 != 0x0) {
                    sub_10010bb80(r20);
                    dispatch_async(*0x1011e2d68, &var_68);
            }
            [r23 release];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    goto loc_100112214;

loc_100112214:
    [r19 release];
    r0 = r21;
    return r0;

loc_1001121ec:
    NSLog(@"[Crashlytics:Crash] Reporting is disabled");
    [r21->_fileMananger removeContentsOfAllPaths];
    goto loc_100112210;

loc_100112210:
    r21 = 0x0;
    goto loc_100112214;
}

-(void)crashReportingSetupCompleted:(unsigned long long)arg2 {
    sub_10011b188(*__dispatch_main_q, &var_58);
    dispatch_async(r21, &var_88);
    return;
}

-(bool)startCrashReporterWithAPIKey:(void *)arg2 betaToken:(void *)arg3 profilingMark:(unsigned long long)arg4 report:(void *)arg5 {
    r31 = r31 - 0xc0;
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
    r24 = arg5;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r24 != 0x0) {
            memset(&var_B0, 0x0, 0x50);
            r25 = [r24 retain];
            r23 = [[r22 settings] retain];
            [r22 firstInstall];
            [objc_retainAutorelease(r19) UTF8String];
            r0 = [r22 installIdentifier];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r0 UTF8String];
            [r0 release];
            r0 = [r24 identifier];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r0 UTF8String];
            [r0 release];
            [objc_retainAutorelease(r20) UTF8String];
            r24 = [[r24 path] retain];
            [r25 release];
            r0 = objc_retainAutorelease(r24);
            [r0 UTF8String];
            [r0 release];
            [r22 machExceptionMask];
            [r23 errorReportingEnabled];
            [r23 customExceptionsEnabled];
            [r23 maxCustomExceptions];
            [r23 errorLogBufferSize];
            [r23 logBufferSize];
            [r23 maxCustomKeys];
            r0 = [r22 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 shouldInstallCrashCallback];
            [r0 release];
            if ([r22 installCrashReportingHandlers:&var_B0] != 0x0) {
                    if ([r23 firebaseCrashlyticsEnabled] != 0x0) {
                            [r22 registerAnalyticsEventListener];
                    }
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r22 selector:@selector(fabricSettingsDownloaded:) name:*0x100e67d58 object:0x0];
                    [r0 release];
                    [r22 crashReportingSetupCompleted:r21];
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
            }
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)checkPreconditions {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self bundleIdentifier];
    r0 = [r0 retain];
    r20 = [r0 length];
    [r0 release];
    if (r20 != 0x0) {
            r0 = 0x1;
    }
    else {
            NSLog(@"[Crashlytics] An application must have a valid bundle idenifier in its Info.plist");
            r0 = 0x0;
    }
    return r0;
}

-(void *)reportsController {
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_reportsController));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r20 = [CLSReportsController alloc];
            r21 = [[r19 operationQueue] retain];
            r22 = [[r19 networkClient] retain];
            r0 = [r20 initWithQueue:r21 delegate:r19 client:r22 fileManager:r19->_fileMananger];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
            r0 = *(r19 + r23);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)firstInstall {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [r0 isFirstInstallForCrashReportingController:self];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)installIdentifier {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 installIDForCrashReportingController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)APIKey {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 APIKeyForCrashReportingController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)settings {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 settingsForCrashReportingController:r19];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(unsigned int)machExceptionMask {
    sub_10010ab00(&var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)deliverCrashDelegateCallback {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 detectedCrash];
    [r0 release];
    return;
}

-(bool)attemptCurrentReportSubmission {
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
    r20 = self;
    sub_100111778(0x3, "WARN  [%s:%d] Attempting to submit the current report\n");
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_fileMananger));
    r0 = *(r20 + r23);
    r0 = [r0 activePathContents];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] == 0x1) {
            r0 = [r19 firstObject];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 stringByAppendingString:@"-submit"] retain];
            r0 = *(r20 + r23);
            r0 = [r0 underlyingFileManager];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 copyItemAtPath:r21 toPath:r22 error:0x0];
            [r0 release];
            if ((r24 & 0x1) != 0x0) {
                    r23 = [[CLSInternalReport reportWithPath:r22] retain];
                    r0 = [r20 reportsController];
                    r0 = [r0 retain];
                    r20 = [r0 prepareAndSubmitReport:r23 asUrgent:0x1 withProcessing:0x1];
                    [r0 release];
                    [r23 release];
            }
            else {
                    sub_100111778(0x3, "WARN  [%s:%d] Error: unable to copy report for submission\n");
                    r20 = 0x0;
            }
            [r22 release];
            [r21 release];
    }
    else {
            sub_100111778(0x3, "WARN  [%s:%d] More than one directory in active - cannot submit\n");
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)potentiallySubmittableCrashOccurred {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self canProcessUrgentReports];
    if (r0 != 0x0) {
            sub_100111778(0x3, "WARN  [%s:%d] Attempting submission\n");
            r0 = [r19 attemptCurrentReportSubmission];
    }
    return r0;
}

-(bool)packagingEnabled {
    r0 = [self settings];
    r0 = [r0 retain];
    r20 = [r0 shouldPackageReports];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)checkForUserPromptSetting {
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
    r21 = [r0 userPromptEnabled];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r19 = [r0 reportingControllerMustInformDelegateOfReports:r19];
            [r0 release];
            if ((r19 & 0x1) == 0x0) {
                    NSLog(@"[Crashlytics:Crash] WARNING: the user prompt feature is enabled. As of Crashlytics 3.0.0, implementing a user prompt is the application's responsibility. See Crashlytics.h's notes about -crashlyticsDidDetectReportForLastExecution:completionHandler:");
            }
    }
    return;
}

-(bool)delegateNeedsToBeInformedOfReports {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [r0 reportingControllerMustInformDelegateOfReports:self];
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)canProcessUrgentReports {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self settings];
    r0 = [r0 retain];
    r21 = [r0 canProcessUrgentReports];
    [r0 release];
    if (r21 != 0x0 && ([r19 needsToPrompt] & 0x1) == 0x0) {
            r0 = [r19 delegateNeedsToBeInformedOfReports];
            r0 = r0 ^ 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)prepareForNewLaunch {
    r0 = [self operationQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_38];
    [r0 release];
    r0 = self->_fileMananger;
    r0 = [r0 prepareForNewLaunch];
    return r0;
}

-(void *)bundleIdentifier {
    r0 = sub_10009523c();
    return r0;
}

-(bool)needsToPrompt {
    r0 = self;
    if ((r0->_promptChoice & 0xfffffffffffffffe) == 0x2) {
            r0 = 0x0;
    }
    else {
            r0 = [r0 settings];
            r0 = [r0 retain];
            r20 = [r0 userPromptEnabled];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void *)setupCurrentReport {
    [self createLaunchFailureMarker];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [[r0 executionIdentifier] retain];
    [r0 release];
    r19 = [[self->_fileMananger setupNewPathForExecutionIdentifier:r21] retain];
    r20 = [[CLSInternalReport alloc] initWithPath:r19 executionIdentifier:r21];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)installCrashReportingHandlers:(union ? *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_100115d14(arg2);
    if (r0 != 0x0) {
            [r19 setupStateNotifications];
            r0 = 0x1;
    }
    return r0;
}

-(void)processExistingReportPaths:(void *)arg2 asUrgent:(bool)arg3 {
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
    r19 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 processExistingActiveReportPath:r2 asUrgent:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)processExistingActiveReportPath:(void *)arg2 asUrgent:(bool)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [CLSInternalReport reportWithPath:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 needsToBeSubmitted] & 0x1) != 0x0) {
            r23 = (int64_t *)&r21->_delegate;
            r0 = objc_loadWeakRetained(r23);
            [r0 reportingController:r21 internalDidDetectReportForLastExecution:r20];
            [r0 release];
            if (r22 != 0x0 && [r21 canProcessUrgentReports] != 0x0) {
                    r0 = [r21 reportsController];
                    r0 = [r0 retain];
                    [r0 prepareAndSubmitReport:r20 asUrgent:0x1 withProcessing:0x1];
                    r0 = r0;
            }
            else {
                    r22 = objc_loadWeakRetained(r23);
                    r0 = [r20 retain];
                    [r22 reportingController:r21 didDetectReportForLastExecution:r0 completionHandler:&var_90];
                    [r22 release];
                    r0 = r0;
            }
    }
    else {
            r22 = [[r21 operationQueue] retain];
            var_38 = [r19 retain];
            [r22 addOperationWithBlock:&var_60];
            [r22 release];
            r0 = var_38;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleDelegateCompletionForReport:(void *)arg2 submit:(bool)arg3 {
    r21 = [arg2 retain];
    r22 = [[self operationQueue] retain];
    r20 = [r21 retain];
    [r22 addOperationWithBlock:&var_58];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)removeReport:(void *)arg2 {
    r19 = self->_fileMananger;
    r20 = [[arg2 path] retain];
    [r19 removeItemAtPath:r20];
    [r20 release];
    return;
}

-(void)handleContentsInOtherReportingDirectories {
    [self handleExistingFilesInProcessing];
    [self handleExistingFilesInPrepared];
    return;
}

-(void)handleExistingFilesInProcessing {
    r20 = [[self->_fileMananger processingPathContents] retain];
    r21 = [[self operationQueue] retain];
    var_30 = r20;
    r20 = [r20 retain];
    [r21 addOperationWithBlock:&var_50];
    [r21 release];
    [var_30 release];
    [r20 release];
    return;
}

-(void)handleExistingFilesInPrepared {
    r20 = [[self->_fileMananger preparedPathContents] retain];
    r21 = [[self networkClient] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 attemptToReconnectBackgroundSessionWithCompletionBlock:&var_50];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)retryUploadForReportAtPath:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self operationQueue] retain];
    [r20 retain];
    sub_10011b234(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)uploadPreexistingFiles:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_138 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_fileMananger));
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r27 = *(0x0 + r26 * 0x8);
                            r0 = *(r19 + r25);
                            r0 = [r0 underlyingFileManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = [r0 fileExistsAtPath:r27];
                            [r0 release];
                            if (r21 != 0x0) {
                                    r0 = [r19 reportsController];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 uploadPackagedReportAtPath:r2 asUrgent:r3];
                                    [r21 release];
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = objc_msgSend(var_120, var_138);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)displayPermissionAlertForReport:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r21 = self;
    r20 = [arg2 retain];
    if (sub_10010b158() != 0x0) {
            r19 = [[r21 operationQueue] retain];
            var_58 = r20;
            r20 = [r20 retain];
            [r19 addOperationWithBlock:&var_80];
            [r19 release];
            [var_58 release];
            r0 = r20;
    }
    else {
            r0 = [r21 settings];
            r0 = [r0 retain];
            r19 = r0;
            r22 = [[r0 interactivePromptTitle] retain];
            r23 = [[r19 interactivePromptMessage] retain];
            r24 = [[r19 interactivePromptCancelTitle] retain];
            r25 = [[r19 interactivePromptSendTitle] retain];
            r26 = [[r19 interactivePromptAlwaysSendTitle] retain];
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r28 = [r0 debug];
            [r0 release];
            if (r28 != 0x0) {
                    NSLog(@"[Crashlytics:Crash] Displaying permission alert");
            }
            var_B0 = r22;
            [r22 retain];
            var_A8 = r23;
            [r23 retain];
            var_A0 = r24;
            [r24 retain];
            var_98 = r25;
            [r25 retain];
            [r26 retain];
            var_88 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_D8);
            [var_88 release];
            [r26 release];
            [var_98 release];
            [var_A0 release];
            [var_A8 release];
            [var_B0 release];
            [r20 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            r0 = r19;
    }
    [r0 release];
    return;
}

-(void)setupAndDisplayAlertWithTitle:(void *)arg2 message:(void *)arg3 cancel:(void *)arg4 send:(void *)arg5 alwaysSend:(void *)arg6 report:(void *)arg7 {
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
    r26 = arg7;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    r25 = [r26 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_promptChoice));
    r8 = *(r23 + r8);
    if (r8 < 0x4) {
            [r23 handlePromptCompleteForReport:r2 shouldSubmit:r3 shouldMarkAlwaysSubmit:r4];
    }
    else {
            if (r8 == 0x1) {
                    [r23 handlePromptCompleteForReport:r2 shouldSubmit:r3 shouldMarkAlwaysSubmit:r4];
            }
            else {
                    objc_storeStrong((int64_t *)&r23->_promptedReport, r26);
                    r0 = [CLSAlert alertWithTitle:r19 message:r20 delegate:r23 cancelButtonTitle:r21 otherButtonTitle:0x0];
                    r0 = [r0 retain];
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_crashReportSubmissionAlert));
                    r8 = *(r23 + r27);
                    *(r23 + r27) = r0;
                    [r8 release];
                    [*(r23 + r27) addButtonWithTitle:r22];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_alwaysSendButtonIndex));
                    *(r23 + r28) = 0xfffffffffffffac7;
                    if (r24 != 0x0) {
                            *(r23 + r28) = [*(r23 + r27) addButtonWithTitle:r24];
                    }
                    [*(r23 + r27) show];
            }
    }
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handlePromptCompleteForReport:(void *)arg2 shouldSubmit:(bool)arg3 shouldMarkAlwaysSubmit:(bool)arg4 {
    r22 = [arg2 retain];
    r23 = [[self operationQueue] retain];
    r20 = [r22 retain];
    [r23 addOperationWithBlock:&var_68];
    [r23 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)alertViewCancel:(void *)arg2 {
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
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
    r20 = arg3;
    r19 = self;
    r23 = [arg2 retain];
    r21 = [arg2 cancelButtonIndex];
    r22 = r19->_crashReportSubmissionAlert;
    [r23 release];
    if (r22 == r23) {
            if (r21 == r20) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            r0 = [r19 operationQueue];
            r0 = [r0 retain];
            [r0 addOperationWithBlock:&var_60];
            [r0 release];
    }
    return;
}

-(void *)launchFailureMarkerPath {
    r0 = self->_fileMananger;
    r0 = [r0 structurePath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"launchmarker"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)createLaunchFailureMarker {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self launchFailureMarkerPath];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = [r0 fileSystemRepresentation];
    [r0 release];
    r0 = open_dprotected_np(r20, 0x601, 0x4, 0x0);
    if (r0 != -0x1) {
            r0 = close(r0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)launchFailureMarkerPresent {
    r20 = [[self->_fileMananger underlyingFileManager] retain];
    r19 = [[self launchFailureMarkerPath] retain];
    r21 = [r20 fileExistsAtPath:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)removeLaunchFailureMarker {
    r19 = self->_fileMananger;
    r20 = [[self launchFailureMarkerPath] retain];
    r19 = [r19 removeItemAtPath:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)checkForAndCreateLaunchMarker {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [self launchFailureMarkerPresent];
    if (r19 != 0x0) {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Crashlytics:Crash] Last launch failed: this may indicate a crash shortly after app launch.");
            }
    }
    else {
            [r20 createLaunchFailureMarker];
    }
    r0 = r19;
    return r0;
}

-(void)registerAnalyticsEventListener {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_registeredAnalyticsEventListener));
    if (*(int8_t *)(r19 + r20) == 0x0) {
            [CLSFCRAnalytics registerAnalyticsEventListener:0x100e6b4e8];
            *(int8_t *)(r19 + r20) = 0x1;
    }
    return;
}

-(void)setupStateNotifications {
    r20 = [[NSNotificationCenter defaultCenter] retain];
    [self captureInitialNotificationStates];
    [r20 addObserver:self selector:@selector(willBecomeActive:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r20 addObserver:self selector:@selector(didBecomeInactive:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r20 addObserver:self selector:@selector(didChangeOrientation:) name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r20 addObserver:self selector:@selector(didChangeUIOrientation:) name:**_UIApplicationDidChangeStatusBarOrientationNotification object:0x0];
    [r20 release];
    return;
}

-(void)captureInitialNotificationStates {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 orientation];
    [r0 release];
    r0 = sub_10010b30c();
    r0 = [r0 retain];
    [r0 statusBarOrientation];
    [r0 release];
    dispatch_async(*0x1011e2d68, &var_50);
    return;
}

-(void)willBecomeActive:(void *)arg2 {
    sub_1001222ec(*0x100e6bb70, [[NSNumber numberWithBool:r2] retain]);
    [r20 release];
    return;
}

-(void)didBecomeInactive:(void *)arg2 {
    sub_1001222ec(*0x100e6bb70, [[NSNumber numberWithBool:r2] retain]);
    [r20 release];
    return;
}

-(void)didChangeOrientation:(void *)arg2 {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 orientation];
    [r0 release];
    sub_1001222ec(*0x100e6bb78, [[NSNumber numberWithInteger:r20] retain]);
    [r20 release];
    return;
}

-(void)fabricSettingsDownloaded:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 settingsForCrashReportingController:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if ([r20 firebaseCrashlyticsEnabled] != 0x0) {
            [r19 registerAnalyticsEventListener];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2 name:r3 object:r4];
    [r21 release];
    [r20 release];
    return;
}

-(bool)networkClientCanUseBackgroundSessions:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r19 = [r0 reportingControllerCanUseBackgroundSessions:self];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)didChangeUIOrientation:(void *)arg2 {
    r0 = sub_10010b30c();
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    sub_1001222ec(*0x100e6bb80, [[NSNumber numberWithInteger:r20] retain]);
    [r20 release];
    return;
}

-(void)networkClient:(void *)arg2 didFinishUploadWithPath:(void *)arg3 error:(void *)arg4 {
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [self reportsController];
    r0 = [r0 retain];
    [r0 reportUploadAtPath:r21 completedWithError:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void *)APIKeyForReportsController:(void *)arg2 {
    r0 = [self APIKey];
    return r0;
}

-(void *)settingsForReportsController:(void *)arg2 {
    r0 = [self settings];
    return r0;
}

-(void *)bundleIdentifierForReportsController:(void *)arg2 {
    r0 = [self bundleIdentifier];
    return r0;
}

-(void)reportsControllerDidCompleteAllSubmissions:(void *)arg2 {
    r0 = [self operationQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_38];
    [r0 release];
    return;
}

-(void)reportsController:(void *)arg2 didCompletePackageSubmission:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 debug];
    [r0 release];
    if (r20 != 0x0) {
            if (r22 != 0x0) {
                    NSLog(@"[Crashlytics:Crash] report submission failed with error %@", @selector(debug));
            }
            r0 = [r20 description];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r0 UTF8String];
            sub_100111778(0x3, "WARN  [%s:%d] Error: failed to submit report '%s'\n");
            [r22 release];
            [r21 retryUploadForReportAtPath:r19];
    }
    else {
            if (r22 != 0x0) {
                    NSLog(@"[Crashlytics:Crash] report submission successful");
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)operationQueue {
    r0 = self->_operationQueue;
    return r0;
}

-(void)setOperationQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_operationQueue, arg2);
    return;
}

-(void *)networkClient {
    r0 = self->_networkClient;
    return r0;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void)setNetworkClient:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_networkClient, arg2);
    return;
}

-(void)setFileManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fileManager, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_promptedReport, 0x0);
    objc_storeStrong((int64_t *)&self->_crashReportSubmissionAlert, 0x0);
    objc_storeStrong((int64_t *)&self->_settings, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_reportsController, 0x0);
    objc_storeStrong((int64_t *)&self->_networkClient, 0x0);
    objc_storeStrong((int64_t *)&self->_fileMananger, 0x0);
    return;
}

@end