@implementation CLSReportsController

-(void *)settings {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 settingsForReportsController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)appBundleIdentifier {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 bundleIdentifierForReportsController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithQueue:(void *)arg2 delegate:(void *)arg3 client:(void *)arg4 fileManager:(void *)arg5 {
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
    r22 = arg5;
    r25 = arg4;
    r26 = arg2;
    r19 = [r26 retain];
    r20 = [arg3 retain];
    r21 = [r25 retain];
    r24 = [r22 retain];
    r0 = [[&var_50 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_operationQueue, r26);
            objc_storeWeak((int64_t *)&r23->_delegate, r20);
            objc_storeStrong((int64_t *)&r23->_networkClient, r25);
            objc_storeStrong((int64_t *)&r23->_fileManager, r22);
            r22 = [r23 retain];
    }
    else {
            r22 = 0x0;
    }
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r22;
    return r0;
}

-(void *)reportEndpoint {
    r0 = [self settings];
    r0 = [r0 retain];
    r20 = [[r0 reportsEndpoint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)submissionEnabled {
    r0 = [self settings];
    r0 = [r0 retain];
    r20 = [r0 shouldSubmitReports];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)reportURL {
    r21 = [[self reportEndpoint] retain];
    r19 = [[FABURLBuilder URLWithBase:r21] retain];
    [r21 release];
    [r19 appendComponent:@"/sdk-api/v1/platforms/"];
    [r19 appendComponent:@"ios"];
    [r19 appendComponent:@"/apps/"];
    r20 = [[self appBundleIdentifier] retain];
    [r19 appendComponent:r20];
    [r20 release];
    [r19 appendComponent:@"/reports"];
    r20 = [[r19 URL] retain];
    [r19 release];
    r0 = [r20 autorelease];
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

-(void *)localeIdentifier {
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r20 = [[r0 localeIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)APIKey {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 APIKeyForReportsController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)mutableRequestWithURL:(void *)arg2 timeout:(double)arg3 {
    r19 = [[NSMutableURLRequest requestWithURL:arg2 cachePolicy:0x1 timeoutInterval:r4] retain];
    r21 = [[self localeIdentifier] retain];
    r23 = [[NSString stringWithUTF8String:"Crashlytics iOS SDK/3.13.0"] retain];
    [r19 setValue:r23 forHTTPHeaderField:@"User-Agent"];
    [r23 release];
    [r19 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [r19 setValue:@"utf-8" forHTTPHeaderField:@"Accept-Charset"];
    [r19 setValue:r21 forHTTPHeaderField:@"Accept-Language"];
    [r19 setValue:r21 forHTTPHeaderField:@"Content-Language"];
    [r19 setValue:@"77f0789d8e230eccdb4b99b82dccd78d47f9b604" forHTTPHeaderField:@"X-Crashlytics-Developer-Token"];
    [r19 setValue:@"com.twitter.crashlytics.ios" forHTTPHeaderField:@"X-Crashlytics-API-Client-Id"];
    [r19 setValue:@"3.13.0" forHTTPHeaderField:@"X-Crashlytics-API-Client-Display-Version"];
    [r19 setValue:@"138" forHTTPHeaderField:@"X-Crashlytics-API-Client-Build-Version"];
    r20 = [[self APIKey] retain];
    [r19 setValue:r20 forHTTPHeaderField:@"X-Crashlytics-API-Key"];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)fillInRequest:(void *)arg2 forMultipartMimeDataAtPath:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = [arg3 lastPathComponent];
    r0 = [r0 retain];
    r20 = [[r0 stringByDeletingPathExtension] retain];
    [r0 release];
    r24 = [[FABMultipartMimeStreamEncoder contentTypeHTTPHeaderValueWithBoundary:r20] retain];
    [r19 setValue:r24 forHTTPHeaderField:@"Content-Type"];
    [r24 release];
    r0 = [self fileManager];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 fileSizeAtPath:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    [r24 release];
    if (r22 != 0x0) {
            r21 = [[r22 stringValue] retain];
            [r19 setValue:r21 forHTTPHeaderField:@"Content-Length"];
            [r21 release];
            r21 = 0x1;
    }
    else {
            NSLog(@"[Crashlytics:Crash:Reports] Could not determine size of multipart mime file");
            r21 = 0x0;
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)prepareAndSubmitReport:(void *)arg2 asUrgent:(bool)arg3 withProcessing:(bool)arg4 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r20 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    var_38 = &var_40;
    if (([Fabric isCrashlyticsCollectionEnabled] & 0x1) != 0x0) {
            var_58 = [r19 retain];
            sub_10010b6dc(0xc000, @"Crashlytics Crash Report Processing", &var_80);
            if (*(int8_t *)(var_38 + 0x18) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [var_58 release];
    }
    else {
            NSLog(@"[Crashlytics:Crash:Reports] Data collection disabled and will not submit report");
            r20 = 0x1;
    }
    _Block_object_dispose(&var_40, 0x8);
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)submitPackageMultipartMimeAtPath:(void *)arg2 synchronously:(bool)arg3 {
    r2 = arg2;
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
    r20 = arg3;
    r21 = self;
    r19 = [r2 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(debug);
    r25 = objc_msgSend(r0, r1);
    [r0 release];
    if (r25 != 0x0) {
            r8 = @"async";
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"async";
                    }
                    else {
                            r8 = @"sync";
                    }
            }
            NSLog(@"[Crashlytics:Crash:Reports] Submitting %@ %@", r1, r2);
    }
    r0 = [r21 fileManager];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 fileSizeAtPath:r19];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 unsignedIntegerValue];
    [r0 release];
    [r24 release];
    if (r26 != 0x0) {
            if (r20 != 0x0) {
                    r0 = [r21 networkClient];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 supportsBackgroundRequests];
                    [r0 release];
                    if (r23 != 0x0) {
                            asm { fcsel      d8, d1, d0, ne };
                    }
            }
            r23 = [[r21 reportURL] retain];
            r0 = [r21 mutableRequestWithURL:r23 timeout:r3];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            [r22 setHTTPMethod:@"POST"];
            if ([r21 fillInRequest:r22 forMultipartMimeDataAtPath:r19] != 0x0) {
                    r0 = [r21 networkClient];
                    r0 = [r0 retain];
                    [r0 startUploadRequest:r22 filePath:r19 immediately:r20];
                    [r0 release];
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
            [r22 release];
    }
    else {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Crashlytics:Crash:Reports] Already-submitted report being ignored");
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)cleanUpSubmittedReportAtPath:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self fileManager];
    r0 = [r0 retain];
    r20 = [r0 removeItemAtPath:r21];
    [r21 release];
    [r0 release];
    if ((r20 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            NSLog(@"[Crashlytics:Crash:Reports] Unable to remove packaged submission");
            r0 = 0x0;
    }
    return r0;
}

-(bool)uploadPackagedReportAtPath:(void *)arg2 asUrgent:(bool)arg3 {
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (([r21 submissionEnabled] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r23 = [r0 debug];
            [r0 release];
            if (r23 != 0x0) {
                    r8 = @"";
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = @"";
                            }
                            else {
                                    r8 = @" as urgent";
                            }
                    }
                    NSLog(@"[Crashlytics:Crash:Reports] Submitting report%@", @selector(debug));
            }
            r20 = [r21 submitPackageMultipartMimeAtPath:r19 synchronously:r20];
    }
    else {
            NSLog(@"[Crashlytics:Crash:Reports] Submission disabled");
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)reportUploadAtPath:(void *)arg2 completedWithError:(void *)arg3 {
    r31 = r31 - 0x50;
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
    r21 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 != 0x0) {
            NSLog(@"[Crashlytics:Crash:Reports] completed submission of %@", @selector(debug));
    }
    if (r21 == 0x0) {
            [r20 cleanUpSubmittedReportAtPath:r19];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 reportsController:r20 didCompletePackageSubmission:r19 error:r21];
    [r21 release];
    [r0 release];
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

-(void *)networkClient {
    r0 = self->_networkClient;
    return r0;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_networkClient, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end