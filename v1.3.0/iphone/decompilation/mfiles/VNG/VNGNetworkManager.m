@implementation VNGNetworkManager

-(void *)configOperationWithBackgroundInit:(bool)arg2 complete:(void *)arg3 {
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
    r0 = [arg3 retain];
    r0 = [r0 retain];
    r19 = r0;
    var_48 = r0;
    r0 = objc_retainBlock(&var_68);
    r20 = r0;
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r25 = [[r0 configURL] retain];
    r22 = [[self operationWithURL:r25 name:@"Config Network Operation" complete:r20] retain];
    [r25 release];
    [r0 release];
    r24 = objc_alloc();
    r25 = [[self publisherInformation] retain];
    r23 = [r24 initWithPublisherInformation:r25];
    [r25 release];
    r24 = [[r23 buildRequestBody] retain];
    [r22 setParameters:r24];
    [r24 release];
    r0 = r22;
    if (arg2 != 0x0) {
            r2 = 0xffffffffffffffff;
    }
    else {
            r2 = 0xf;
    }
    [r0 setMaxAttempts:r2];
    [r22 setTimeout:r2];
    [r23 release];
    [r20 release];
    [var_48 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)networkError:(void *)arg2 errorCode:(long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.network" code:arg3 userInfo:r21] retain];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)adsOperationWithPlacement:(void *)arg2 headerBiddingEnabled:(bool)arg3 complete:(void *)arg4 {
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
    var_48 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r24 = [arg4 retain];
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r25 = [[r0 adsURL] retain];
    r21 = [[self operationWithURL:r25 name:@"Ads Network Operation" complete:r24] retain];
    [r24 release];
    [r25 release];
    [r0 release];
    r23 = objc_alloc();
    r22 = [[self publisherInformation] retain];
    r24 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
    r20 = [r23 initWithPublisherInformation:r22 placements:r24 headerBiddingEnabled:arg3];
    [r24 release];
    [r22 release];
    r22 = [[r20 buildRequestBody] retain];
    [r21 setParameters:r22];
    [r19 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)reportIncentivizedOperationWithInfo:(void *)arg2 complete:(void *)arg3 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = objc_alloc();
    r23 = [[self publisherInformation] retain];
    r20 = [r20 initWithReportInfo:r22 publisherInformation:r23];
    [r22 release];
    [r23 release];
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r23 = [[r0 reportIncentivizedURL] retain];
    r24 = [[r20 buildRequestBody] retain];
    r25 = [[self vungleUploadOperationWithRemoteURL:r23 content:r24 responseBlock:r21] retain];
    [r21 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r25 setIsInternal:0x1];
    [r25 setMaxAttempts:0x1];
    [self logNetworkOperation:r25];
    [r20 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void *)requestStreamingAdOperationWithPlacement:(void *)arg2 playOptions:(void *)arg3 complete:(void *)arg4 {
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [arg4 retain];
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r25 = [[r0 willPlayAdURL] retain];
    r21 = [[self operationWithURL:r25 name:@"Will Play Ad Network Operation" complete:r24] retain];
    [r24 release];
    [r25 release];
    [r0 release];
    r23 = objc_alloc();
    r24 = [[self publisherInformation] retain];
    r23 = [r23 initWithPlacement:r20 publisherInformation:r24 playOptions:r22];
    [r22 release];
    [r20 release];
    [r24 release];
    r20 = [[r23 buildRequestBody] retain];
    [r21 setParameters:r20];
    [r20 release];
    [self streamingRequestTimeout];
    [r21 setTimeout:r20];
    [r23 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)reportAdOperationWithInfo:(void *)arg2 complete:(void *)arg3 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = objc_alloc();
    r23 = [[self publisherInformation] retain];
    r20 = [r20 initWithReportInfo:r22 publisherInformation:r23];
    [r22 release];
    [r23 release];
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r23 = [[r0 reportAdURL] retain];
    r24 = [[r20 buildRequestBody] retain];
    r25 = [[self vungleUploadOperationWithRemoteURL:r23 content:r24 responseBlock:r21] retain];
    [r21 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r25 setIsInternal:0x1];
    [r25 setMaxAttempts:0x1];
    [self logNetworkOperation:r25];
    [r20 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void *)TPATRequestOperationWithURL:(void *)arg2 complete:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self vungleOperationWithURL:r21 requestType:0x0 name:@"Dispatch Ad Event Network Operation" responseBlock:arg3] retain];
    [r21 release];
    [r19 setTPAT:0x1];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r21 = [[r0 pluginName] retain];
    [r19 setPluginName:r21];
    [r21 release];
    [r0 release];
    [r19 setIsInternal:0x1];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)CTARequestOperationWithURL:(void *)arg2 complete:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self vungleOperationWithURL:r21 requestType:0x0 name:@"CTA Network Operation (Background)" responseBlock:arg3] retain];
    [r21 release];
    [r19 setIsInternal:0x1];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)operationWithURL:(void *)arg2 name:(void *)arg3 complete:(void *)arg4 {
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r26 = [arg4 retain];
    r23 = [[arg2 absoluteString] retain];
    r20 = [[NSString stringWithFormat:@"Name: %@ - URL: %@"] retain];
    [r22 release];
    [r23 release];
    r22 = [[self vungleOperationWithURL:r21 requestType:0x1 name:r20 responseBlock:r26] retain];
    [r26 release];
    [r21 release];
    [r22 setIsInternal:0x1];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r21 = [[r0 pluginName] retain];
    [r22 setPluginName:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)registerUserOperation:(void *)arg2 {
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
    var_58 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r0 = [self URLConfiguration];
    r0 = [r0 retain];
    r23 = [[r0 registerUserURL] retain];
    var_80 = r19;
    r19 = [r19 retain];
    r21 = [[self operationWithURL:r23 name:@"Install Attribution Network Operation" complete:&var_A0] retain];
    [r23 release];
    [r0 release];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 IFA] retain];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r26 = [[r0 appID] retain];
    r27 = [[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] retain];
    [r21 setParameters:r27];
    [r27 release];
    [r26 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r21 setHasQueryParameters:0x1];
    [r21 setMaxAttempts:0xa];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r22 = [[r0 pluginName] retain];
    [r21 setPluginName:r22];
    [r22 release];
    [r0 release];
    [r21 setIsInternal:0x1];
    [var_80 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)sharedManager {
    if (*qword_1011da8e0 != -0x1) {
            dispatch_once(0x1011da8e0, 0x100e89158);
    }
    r0 = *0x1011da8e8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)didCancelOperation:(void *)arg2 {
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
    r0 = [r0 networkCompletionBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 networkCompletionBlock] retain];
            r0 = [r19 response];
            r0 = [r0 retain];
            r0 = [r0 error];
            r0 = [r0 retain];
            (*(r20 + 0x10))(r20, 0x0, [r0 copy]);
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)didAbortOperation:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 networkCompletionBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 networkCompletionBlock] retain];
            r21 = objc_alloc();
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            (*(r20 + 0x10))(r20, 0x0, [r21 initWithDomain:@"com.vungle.networkmanager" code:0xffffffffffff6980 userInfo:[r0 retain]]);
            [r21 release];
            [r22 release];
            [r20 release];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isURLSessionValid {
    [self retain];
    objc_sync_enter(self);
    objc_sync_exit(self);
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)willTerminateOperation:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 networkCompletionBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_10061bd10;

loc_10061bc30:
    r22 = [r19 isCancelled];
    [r21 release];
    if (r22 == 0x0) goto loc_10061bd18;

loc_10061bc50:
    r20 = [[r19 networkCompletionBlock] retain];
    r21 = objc_alloc();
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    (*(r20 + 0x10))(r20, 0x0, [r21 initWithDomain:@"com.vungle.networkmanager" code:0xffffffffffff6980 userInfo:[r0 retain]]);
    [r21 release];
    [r22 release];
    r0 = r20;
    goto loc_10061bd14;

loc_10061bd14:
    [r0 release];
    goto loc_10061bd18;

loc_10061bd18:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10061bd10:
    r0 = r21;
    goto loc_10061bd14;
}

-(void)didTerminateOperation:(void *)arg2 {
    return;
}

-(void)willCancelOperation:(void *)arg2 {
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self setQueue:0x0];
    [self setDelegateQueue:0x0];
    [self setSession:0x0];
    [self setSessionConfiguration:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)countOfQueuedOperations {
    r0 = [self queue];
    r0 = [r0 retain];
    r20 = [r0 operationCount];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)cancelAllTransactions {
    r31 = r31 - 0x160;
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
    var_140 = [objc_alloc() init];
    r0 = [self queue];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 operations] retain];
    r0 = [NSArray arrayWithArray:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    [r20 release];
    var_110 = q0;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_148 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r20 = *var_110;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(var_128);
                            }
                            r28 = *(var_118 + r25 * 0x8);
                            if ([r28 isKindOfClass:[VungleDownloadOperation class]] != 0x0) {
                                    r0 = [r28 retain];
                                    r21 = r0;
                                    r0 = [r0 placementID];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    [var_140 addObject:r19];
                                    [r21 release];
                                    [r19 release];
                            }
                            [r28 cancel];
                            r25 = r25 + 0x1;
                    } while (r25 < r22);
                    r0 = objc_msgSend(var_128, var_148);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_140 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 reachability:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [[&var_78 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    r25 = 0x0;
                    r24 = r19;
            }
            else {
                    r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = 0x1;
            }
            objc_storeStrong(r21 + 0x58, r24);
            if (r25 != 0x0) {
                    [r24 release];
            }
            r23 = @selector(init);
            [*(r21 + 0x58) setRequestCachePolicy:0x1];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r23);
            r8 = *(r21 + 0x48);
            *(r21 + 0x48) = r0;
            [r8 release];
            [*(r21 + 0x48) setMaxConcurrentOperationCount:0x1];
            [*(r21 + 0x48) setName:@"NetworkManager NSURLSession delegate queue"];
            *(r21 + 0x38) = 0x400c000000000000;
            r0 = [NSURLSession sessionWithConfiguration:*(r21 + 0x58) delegate:r21 delegateQueue:*(r21 + 0x48)];
            r0 = [r0 retain];
            r8 = *(r21 + 0x50);
            *(r21 + 0x50) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r23);
            r8 = *(r21 + 0x10);
            *(r21 + 0x10) = r0;
            [r8 release];
            [*(r21 + 0x10) setMaxConcurrentOperationCount:0x8];
            [*(r21 + 0x10) setName:@"vungle-net-queue"];
            objc_storeStrong(r21 + 0x60, r22);
            *(int8_t *)(r21 + 0x8) = 0x1;
            r0 = [VungleURLConfiguration defaultConfigURL];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 length] != 0x0) {
                    r0 = [r22 scheme];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 hasPrefix:@"http"];
                    [r0 release];
                    if (r25 != 0x0) {
                            r24 = objc_alloc();
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                            r29 = r29;
                            r25 = [r0 retain];
                            r0 = [r24 initWithDictionary:r25];
                            r8 = *(r21 + 0x40);
                            *(r21 + 0x40) = r0;
                            [r8 release];
                            [r25 release];
                    }
            }
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appWillEnterForeground) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            objc_storeStrong(r21 + 0x20, *0x1011c0ad8);
            [r23 release];
            [r22 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)appDidEnterBackground {
    r0 = [self queue];
    r0 = [r0 retain];
    [r0 setSuspended:0x1];
    [r0 release];
    return;
}

-(void)appWillEnterForeground {
    r0 = [self queue];
    r0 = [r0 retain];
    [r0 setSuspended:0x0];
    [r0 release];
    return;
}

-(bool)wifiAvailable {
    r0 = [self reachability];
    r0 = [r0 retain];
    r20 = [r0 wifiAvailable];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)networkAvailable {
    r0 = [self reachability];
    r0 = [r0 retain];
    r20 = [r0 networkAvailable];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)connectionQualityString {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self reachability];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 networkAvailable];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 reachability];
            r0 = [r0 retain];
            r20 = [r0 wifiAvailable];
            [r0 release];
            if (r20 != 0x0) {
                    r19 = @"wifi";
            }
            else {
                    r19 = @"wwan";
            }
    }
    else {
            r19 = @"not connected";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)errorForResponseWithCode:(long long)arg2 headerFields:(void *)arg3 {
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
    r19 = [arg3 retain];
    if (r20 >= 0x190) goto loc_10061c6a8;

loc_10061c6a0:
    r20 = 0x0;
    goto loc_10061cbfc;

loc_10061cbfc:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10061c6a8:
    if (r20 > 0x1c0) goto loc_10061c7b4;

loc_10061c6b0:
    r8 = r20 - 0x190;
    if (r8 > 0x4) goto loc_10061cc3c;

loc_10061c6bc:
    r0 = (0x10061c6d4 + *(int16_t *)(0x100bf2e98 + r8 * 0x2) * 0x4)();
    return r0;

loc_10061cc3c:
    r21 = @"Unknown error";
    [r21 retain];
    r22 = @"Unknown Recovery means";
    [r22 retain];
    goto loc_10061cb68;

loc_10061cb68:
    r23 = [[NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2] retain];
    r20 = [[NSError errorWithDomain:@"com.vungle.networkError" code:r20 userInfo:r23] retain];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_10061cbfc;

loc_10061c7b4:
    if (r20 == 0x1c1) goto loc_10061ca2c;

loc_10061c7bc:
    if (r20 == 0x1f4) goto loc_10061cac4;

loc_10061c7c4:
    if (r20 != 0x1f7) goto loc_10061cc3c;

loc_10061c7cc:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 localizedStringForKey:@"Unable to complete the requested item because the service was unavailable." value:@"" table:0x0] retain];
    [r0 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 localizedStringForKey:@"Try again later" value:@"" table:0x0];
    r29 = r29;
    goto loc_10061cb58;

loc_10061cb58:
    r22 = [r0 retain];
    [r23 release];
    goto loc_10061cb68;

loc_10061cac4:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 localizedStringForKey:@"Unable to complete the requested item because of a server issue." value:@"" table:0x0] retain];
    [r0 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 localizedStringForKey:@"Try again later" value:@"" table:0x0];
    r29 = r29;
    goto loc_10061cb58;

loc_10061ca2c:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 localizedStringForKey:@"Unable to complete the requested item because of a server issue." value:@"" table:0x0] retain];
    [r0 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 localizedStringForKey:@"Try again later" value:@"" table:0x0];
    r29 = r29;
    goto loc_10061cb58;
}

-(void *)getQueueString {
    r21 = [[VNGOperationQueue defaultQueue] retain];
    [self countOfExecutingOperations:r21];
    [r21 release];
    r0 = [self queue];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 operations];
    r0 = [r0 retain];
    [r0 count];
    [r0 release];
    [r25 release];
    r25 = [[self queue] retain];
    [self countOfExecutingOperations:r25];
    [r25 release];
    r0 = [self queue];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 operations];
    r0 = [r0 retain];
    [r0 count];
    [r0 release];
    [r20 release];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didFinishDownloadingToURL:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r24 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r24 operationForTask:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [VungleDownloadOperation class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10061d274;

loc_10061d230:
    r0 = [r21 retain];
    r23 = r0;
    r0 = [r0 response];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10061d3a8;

loc_10061d260:
    [r23 release];
    goto loc_10061d274;

loc_10061d274:
    r0 = [r19 response];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 expectedContentLength];
    [r0 release];
    if ((r23 & 0xffffffff80000000) != 0x0) {
            [r20 getResourceValue:&var_60 forKey:**_NSURLFileSizeKey error:&var_68];
            r23 = var_68;
            r22 = [var_60 retain];
            if (r23 != 0x0) {
                    r26 = [r23 retain];
                    r0 = [r23 localizedDescription];
                    r0 = [r0 retain];
                    r24 = [[NSString stringWithFormat:@"Error retrieving downloaded file size, error: %@"] retain];
                    [r0 release];
                    r0 = [VungleLogger sharedLogger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logMessage:r24 level:0xf4243 context:@"SDK Download File Size"];
                    [r26 release];
                    [r0 release];
                    [r24 release];
                    r23 = 0x0;
            }
            else {
                    r25 = [r23 retain];
                    r23 = [r22 longLongValue];
                    [r25 release];
            }
            [r22 release];
    }
    r0 = [VNGFileSizeTracker sharedInstance];
    r0 = [r0 retain];
    [r0 accumulateDownloadFileSize:r23];
    r0 = r0;
    goto loc_10061d554;

loc_10061d554:
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10061d3a8:
    r26 = [[r19 response] retain];
    r25 = [[VungleNetworkResponse vungleNetworkResponseWithNSHTTPURLResponse:r26] retain];
    [r23 setResponse:r25];
    [r25 release];
    [r26 release];
    r26 = [[r23 localFileURL] retain];
    r0 = [r23 response];
    r0 = [r0 retain];
    [r0 setLocalDownloadURL:r26];
    [r0 release];
    [r26 release];
    r0 = [r19 response];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [r0 statusCode];
    r28 = [[r26 allHeaderFields] retain];
    r0 = [r24 errorForResponseWithCode:r27 headerFields:r28];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    if (r0 == 0x0) goto loc_10061d590;

loc_10061d4dc:
    [r26 release];
    r0 = r23;
    goto loc_10061d554;

loc_10061d590:
    r27 = [[NSFileManager defaultManager] retain];
    r28 = [[r20 path] retain];
    [r27 fileExistsAtPath:r28];
    [r28 release];
    [r27 release];
    r24 = [[NSFileManager defaultManager] retain];
    r0 = [r23 localFileURL];
    r29 = r29;
    r25 = [r0 retain];
    [r24 moveItemAtURL:r20 toURL:r25 error:&var_58];
    [r25 release];
    [r24 release];
    [r26 release];
    goto loc_10061d260;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r2 = arg2;
    r31 = r31 - 0x70;
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
    r24 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[r24 operationForTask:r19] retain];
    r22 = [[r19 response] retain];
    r0 = [r21 response];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    var_58 = r22;
    if (r0 != 0x0) {
            r0 = [r21 response];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 statusCode];
            r28 = [r22 statusCode];
            [r0 release];
            if (r27 != r28) {
                    r25 = [r22 statusCode];
                    r0 = [r21 response];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setStatusCode:r25];
                    [r0 release];
            }
    }
    else {
            r0 = [VungleNetworkResponse vungleNetworkResponseWithNSHTTPURLResponse:r22];
            r29 = r29;
            r25 = [r0 retain];
            [r21 setResponse:r25];
            [r25 release];
    }
    r0 = [r19 response];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [r0 statusCode];
    r27 = [[r25 allHeaderFields] retain];
    r0 = [r24 errorForResponseWithCode:r26 headerFields:r27];
    r29 = r29;
    r26 = [r0 retain];
    [r27 release];
    r0 = [r20 copy];
    r28 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = r26;
            }
    }
    [r21 setError:r2];
    [r28 release];
    r28 = [[r21 response] retain];
    r22 = [[r21 error] retain];
    [r24 logResponse:r28 error:r22];
    [r22 release];
    [r28 release];
    r0 = [r21 networkCompletionBlock];
    r29 = r29;
    r24 = [r0 retain];
    if ((r20 | r26) != 0x0 && [r21 shouldKeepTrying] != 0x0) {
            [r21 retryBaseRequestWithBackoff];
            r28 = var_58;
    }
    else {
            r28 = var_58;
            if (r24 != 0x0) {
                    r0 = [r20 copy];
                    r22 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r0;
                            }
                            else {
                                    r0 = r26;
                            }
                    }
                    r27 = [r0 retain];
                    [r22 release];
                    if (r27 != 0x0) {
                            (*(r24 + 0x10))(r24, 0x0, r27);
                    }
                    else {
                            (*(r24 + 0x10))(r24, [[r21 response] retain], 0x0);
                            [r22 release];
                    }
                    [r27 release];
            }
            [r21 terminate];
    }
    [r24 release];
    [r26 release];
    [r25 release];
    [r28 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[r23 queue] retain];
    r0 = [r23 operationForTask:r19 inQueue:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    [VungleNetworkOperation class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            r22 = [r21 retain];
            if ([r23 isTerminating] != 0x0) {
                    [r19 cancel];
            }
            else {
                    r0 = [r22 response];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r23 = [objc_alloc() init];
                            [r22 setResponse:r23];
                            [r23 release];
                    }
                    r24 = [r22 handleData:r20 error:&var_38];
                    r23 = [var_38 retain];
                    if ((r24 & 0x1) == 0x0) {
                            [r22 terminate];
                    }
                    [r23 release];
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg3 retain];
    r20 = [arg5 retain];
    r22 = [[self queue] retain];
    r0 = [self operationForTask:r19 inQueue:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    [VungleNetworkOperation class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            r0 = [r21 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r23 = [[r19 response] retain];
                    r0 = [r22 response];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r25 = [[VungleNetworkResponse vungleNetworkResponseWithNSHTTPURLResponse:r23] retain];
                            [r22 setResponse:r25];
                            [r25 release];
                            r0 = [r22 response];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 parsedHTTPRetryAfterTime];
                            asm { fcvtzu     x25, d0 };
                            r0 = [r22 backoffCalculator];
                            r0 = [r0 retain];
                            [r0 setBackoffOverride:r25];
                            [r0 release];
                            [r24 release];
                    }
                    [r23 release];
            }
            [r22 release];
    }
    (*(r20 + 0x10))(r20, 0x1);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    [self setSession:0x0];
    return;
}

-(void)URLSessionDidFinishEventsForBackgroundURLSession:(void *)arg2 {
    return;
}

-(unsigned long long)ongoingOperationsCount {
    r0 = [self delegateQueue];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 operations];
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)terminateSessionWithCompletion:(void *)arg2 {
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
    r21 = self;
    [arg2 retain];
    *(int8_t *)(r21 + 0x8) = 0x0;
    objc_initWeak(&stack[-248], r21);
    var_168 = &var_118 + 0x28;
    objc_copyWeak(&var_118 + 0x28, &stack[-248]);
    r0 = [r20 retain];
    var_170 = r0;
    var_F8 = r0;
    r22 = [[NSBlockOperation blockOperationWithBlock:&var_118] retain];
    var_150 = q0;
    r0 = [r21 queue];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 operations];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r26 = r0;
    if (r0 != 0x0) {
            r28 = *var_150;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_150 != r28) {
                                    objc_enumerationMutation(r24);
                            }
                            [r22 addDependency:r2];
                            r20 = r20 + 0x1;
                    } while (r20 < r26);
                    r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r26 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r24 release];
    r0 = [r21 queue];
    r0 = [r0 retain];
    [r0 addOperation:r22];
    [r0 release];
    [r22 release];
    [var_F8 release];
    objc_destroyWeak(var_168);
    objc_destroyWeak(&stack[-248]);
    [var_170 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)setURLConfiguration:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[VungleURLConfiguration defaultConfigURL] retain];
    [r20 setConfigURL:r21];
    [r21 release];
    r0 = *(self + 0x40);
    *(self + 0x40) = r20;
    [r0 release];
    return;
}

-(void *)vungleOperationWithURL:(void *)arg2 requestType:(unsigned long long)arg3 name:(void *)arg4 responseBlock:(void *)arg5 {
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
    r23 = arg3;
    r20 = self;
    r24 = [arg2 retain];
    r25 = [arg4 retain];
    r26 = [arg5 retain];
    r19 = objc_retainBlock(0x100e891c8);
    r0 = objc_retainBlock(0x100e89208);
    r22 = r0;
    if (r26 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r26;
            }
            else {
                    r0 = r0;
            }
    }
    r21 = objc_retainBlock(r0);
    [r26 release];
    r23 = [objc_alloc() initWithURL:r24 requestType:r23 parameters:0x0 session:*(r20 + 0x50) taskSetupCompletionBlock:r19 taskCompletionBlock:r21];
    [r24 release];
    [r23 setName:r25];
    [r25 release];
    [r23 setDelegate:r20];
    r24 = [[r20 sdkVersionNumber] retain];
    [r23 setSdkVersion:r24];
    [r24 release];
    r20 = [[r20 defaultUserAgent] retain];
    [r23 setNavigatorUserAgent:r20];
    [r20 release];
    [r22 release];
    [r19 release];
    [r21 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)vungleUploadOperationWithRemoteURL:(void *)arg2 content:(void *)arg3 responseBlock:(void *)arg4 {
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
    r23 = arg3;
    r21 = self;
    r24 = [arg2 retain];
    r25 = [r23 retain];
    r22 = [arg4 retain];
    r0 = objc_retainBlock(0x100e89228);
    r19 = r0;
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r22;
            }
            else {
                    r0 = 0x100e89248;
            }
    }
    r20 = objc_retainBlock(r0);
    [r22 release];
    r22 = [objc_alloc() initWithURL:r24 content:r25 session:*(r21 + 0x50) taskSetupCompletionBlock:r19 taskCompletionBlock:r20];
    [r24 release];
    [r23 hash];
    [r25 release];
    r23 = [[NSString stringWithFormat:@"Upload '%lu'"] retain];
    [r22 setName:r23];
    [r22 setDelegate:r21];
    r24 = [[r21 sdkVersionNumber] retain];
    [r22 setSdkVersion:r24];
    [r24 release];
    r0 = [r21 publisherInformation];
    r0 = [r0 retain];
    r25 = [[r0 pluginName] retain];
    [r22 setPluginName:r25];
    [r25 release];
    [r0 release];
    r21 = [[r21 defaultUserAgent] retain];
    [r22 setNavigatorUserAgent:r21];
    [r21 release];
    [r23 release];
    [r19 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)vungleDownloadOperationWithRemoteURL:(void *)arg2 localFileURL:(void *)arg3 placementID:(void *)arg4 error:(void * *)arg5 responseBlock:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r26 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    r0 = [VNGPersistenceManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 checkFileSystemSizeAvailabilityForCase:0x3 withError:&var_58 withPlacementID:r21];
    r24 = [var_58 retain];
    [r0 release];
    if ((r27 & 0x1) != 0x0) {
            r0 = objc_retainBlock(0x100e89268);
            var_60 = r0;
            r25 = [objc_alloc() initWithURL:r19 fileURL:r20 session:*(r23 + 0x50) placementID:r21 taskSetupCompletionBlock:r0 taskCompletionBlock:r22];
            r28 = [[r19 lastPathComponent] retain];
            r0 = [r20 path];
            r0 = [r0 retain];
            r27 = [[NSString stringWithFormat:@"Download '%@' -> '%@'"] retain];
            [r0 release];
            [r28 release];
            [r25 setName:r27];
            [r25 setDelegate:r23];
            r26 = [[r23 sdkVersionNumber] retain];
            [r25 setSdkVersion:r26];
            [r26 release];
            r23 = [[r23 defaultUserAgent] retain];
            [r25 setNavigatorUserAgent:r23];
            [r23 release];
            [r27 release];
            [var_60 release];
    }
    else {
            if (r26 != 0x0) {
                    r0 = objc_retainAutorelease(r24);
                    r25 = 0x0;
                    *r26 = r0;
            }
            else {
                    r25 = 0x0;
            }
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void)sendVungleOperation:(void *)arg2 {
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
    [r20 logNetworkOperation:r19];
    r0 = [r20 HTTPHeaders];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_10061e608;

loc_10061e59c:
    [VungleNetworkOperation class];
    r23 = [r19 isKindOfClass:r2];
    [r22 release];
    if (r23 == 0x0) goto loc_10061e610;

loc_10061e5d4:
    r0 = [r20 HTTPHeaders];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setExtraHeaders:r21];
    r0 = r21;
    goto loc_10061e60c;

loc_10061e60c:
    [r0 release];
    goto loc_10061e610;

loc_10061e610:
    r0 = [r20 queue];
    r0 = [r0 retain];
    [r0 addOperation:r19];
    [r0 release];
    [r19 release];
    return;

loc_10061e608:
    r0 = r22;
    goto loc_10061e60c;
}

-(void)addOperation:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self queue];
    r0 = [r0 retain];
    [r0 addOperation:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)sendVungleOperation:(void *)arg2 waitUntilFinished:(bool)arg3 {
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
    [r20 logNetworkOperation:r19];
    r0 = [r20 HTTPHeaders];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_10061e724;

loc_10061e6b8:
    [VungleNetworkOperation class];
    r23 = [r19 isKindOfClass:r2];
    [r22 release];
    if (r23 == 0x0) goto loc_10061e72c;

loc_10061e6f0:
    r0 = [r20 HTTPHeaders];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setExtraHeaders:r21];
    r0 = r21;
    goto loc_10061e728;

loc_10061e728:
    [r0 release];
    goto loc_10061e72c;

loc_10061e72c:
    r0 = [r20 queue];
    r0 = [r0 retain];
    [r0 addOperation:r19];
    [r0 release];
    [r19 release];
    return;

loc_10061e724:
    r0 = r22;
    goto loc_10061e728;
}

-(void *)operationForTask:(void *)arg2 {
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
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r23 = [[r20 delegateQueue] retain];
    r0 = [r20 operationForTask:r2 inQueue:r3];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r23 = [[r20 queue] retain];
            r22 = [[r20 operationForTask:r2 inQueue:r3] retain];
            [r23 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(long long)countOfExecutingOperations:(void *)arg2 {
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
    var_110 = q0;
    r0 = [arg2 operations];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r21 = 0x0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            r21 = r21 + [*(var_118 + r26 * 0x8) isExecuting];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)operationForTask:(void *)arg2 inQueue:(void *)arg3 {
    r31 = r31 - 0x160;
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
    var_130 = [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    var_140 = r19;
    r0 = [r19 queue];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 operations];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    var_110 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    r25 = r0;
    var_148 = r20;
    r21 = 0x0;
    if (r0 == 0x0) goto loc_10061f748;

loc_10061f660:
    r21 = 0x0;
    r23 = *var_110;
    goto loc_10061f678;

loc_10061f678:
    r22 = 0x0;
    goto loc_10061f688;

loc_10061f688:
    if (*var_110 != r23) {
            objc_enumerationMutation(var_128);
    }
    r26 = @selector(class);
    r24 = *(var_118 + r22 * 0x8);
    objc_msgSend(@class(VungleNetworkOperation), r26);
    if (objc_msgSend(r24, r27) == 0x0) goto loc_10061f708;

loc_10061f6c8:
    r24 = [r24 retain];
    [r21 release];
    r0 = [r24 task];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r21 = r24;
    if (r0 == var_130) goto loc_10061f744;

loc_10061f708:
    r22 = r22 + 0x1;
    if (r22 < r25) goto loc_10061f688;

loc_10061f714:
    r0 = objc_msgSend(var_128, var_138);
    r25 = r0;
    if (r0 != 0x0) goto loc_10061f678;

loc_10061f748:
    var_60 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    objc_sync_exit(var_140);
    [var_140 release];
    [var_148 release];
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10061f744:
    r21 = r24;
    goto loc_10061f748;
}

-(void *)queue {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)defaultUserAgent {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setDefaultUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)logNetworkOperation:(void *)arg2 {
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
    r24 = self;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 boolForKey:@"vungle.network_logging"] & 0x1) == 0x0) goto loc_10061ec7c;

loc_10061e7e0:
    r0 = [r19 url];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_10061ec84;

loc_10061e810:
    r20 = objc_alloc();
    r22 = [[r19 url] retain];
    r20 = [r20 initWithURL:r22 resolvingAgainstBaseURL:0x0];
    [r22 release];
    [r20 setQuery:0x0];
    r23 = [[r20 string] retain];
    r22 = [[NSURL URLWithString:r23] retain];
    [r23 release];
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 configURL];
    r29 = r29;
    r25 = [r0 retain];
    var_58 = r22;
    if ([r22 isEqual:r2] == 0x0) goto loc_10061e928;

loc_10061e914:
    [r25 release];
    [r23 release];
    goto loc_10061ea60;

loc_10061ea60:
    r0 = [r19 parameters];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10061eab4;

loc_10061ea88:
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 description];
    r29 = r29;
    goto loc_10061eb0c;

loc_10061eb0c:
    r23 = [r0 retain];
    [r24 release];
    goto loc_10061eb1c;

loc_10061eb1c:
    if ([r23 length] != 0x0) {
            r0 = [r23 dataUsingEncoding:0x4];
            r29 = r29;
            r25 = [r0 retain];
            r24 = [objc_alloc() initWithData:r25 encoding:0x4];
            [r25 release];
    }
    else {
            r24 = 0x0;
    }
    r25 = [[VungleSDK sharedSDK] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 description] retain];
    r0 = [r19 url];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r0 = [r0 retain];
    r28 = r0;
    r8 = @"N/A";
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r24;
            }
            else {
                    r8 = @"N/A";
            }
    }
    [r25 log:@"Request -\nRequest Timestamp: %@\nRequest URL: %@\nRequest Body: %@\n"];
    [r28 release];
    [r21 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r24 release];
    goto loc_10061ec74;

loc_10061ec74:
    [var_58 release];
    goto loc_10061ec7c;

loc_10061ec7c:
    [r20 release];
    goto loc_10061ec84;

loc_10061ec84:
    [r19 release];
    return;

loc_10061eab4:
    [VungleUploadOperation class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10061eca8;

loc_10061eae0:
    r0 = [r19 getOperationContent];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 description];
    r29 = r29;
    goto loc_10061eb0c;

loc_10061eca8:
    r23 = 0x0;
    goto loc_10061eb1c;

loc_10061e928:
    r26 = @selector(isEqual:);
    var_60 = r20;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adsURL];
    r29 = r29;
    r27 = [r0 retain];
    if ((objc_msgSend(var_58, r26) & 0x1) == 0x0) goto loc_10061e980;

loc_10061e970:
    [r27 release];
    r0 = r20;
    goto loc_10061ea48;

loc_10061ea48:
    [r0 release];
    [r25 release];
    [r23 release];
    r20 = var_60;
    goto loc_10061ea60;

loc_10061e980:
    r26 = @selector(isEqual:);
    var_70 = r27;
    var_68 = r20;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 willPlayAdURL];
    r29 = r29;
    r0 = [r0 retain];
    r27 = var_58;
    r22 = r0;
    if ((objc_msgSend(r27, r26) & 0x1) == 0x0) goto loc_10061e9d4;

loc_10061e9cc:
    r0 = r22;
    goto loc_10061ea30;

loc_10061ea30:
    [r0 release];
    [r20 release];
    [var_70 release];
    r0 = var_68;
    goto loc_10061ea48;

loc_10061e9d4:
    r26 = @selector(isEqual:);
    var_78 = r22;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    var_80 = r0;
    r0 = [r0 reportAdURL];
    r29 = r29;
    r22 = [r0 retain];
    if ((objc_msgSend(r27, r26) & 0x1) == 0x0) goto loc_10061ecb0;

loc_10061ea1c:
    [r22 release];
    [var_80 release];
    r0 = var_78;
    goto loc_10061ea30;

loc_10061ecb0:
    r26 = @selector(isEqual:);
    var_90 = r22;
    var_88 = r20;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 registerUserURL];
    r29 = r29;
    r27 = [r0 retain];
    r0 = objc_msgSend(var_58, r26);
    r20 = var_60;
    if ((r0 & 0x1) != 0x0) {
            r26 = 0x1;
    }
    else {
            r26 = @selector(isEqual:);
            r0 = [r24 URLConfiguration];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 logURL];
            r29 = r29;
            r24 = [r0 retain];
            r26 = objc_msgSend(var_58, r26);
            [r24 release];
            [r28 release];
    }
    [r27 release];
    [r22 release];
    [var_90 release];
    [var_80 release];
    [var_78 release];
    [var_88 release];
    [var_70 release];
    [var_68 release];
    [r25 release];
    [r23 release];
    if ((r26 & 0x1) != 0x0) goto loc_10061ea60;
}

-(void *)sdkVersionNumber {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)logResponse:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 boolForKey:@"vungle.network_logging"] & 0x1) == 0x0) goto loc_10061ef6c;

loc_10061ee28:
    r0 = [r19 requestURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_10061f340;

loc_10061ee58:
    r21 = objc_alloc();
    r22 = [[r19 requestURL] retain];
    r25 = [r21 initWithURL:r22 resolvingAgainstBaseURL:0x0];
    [r22 release];
    [r25 setQuery:0x0];
    var_60 = r25;
    r25 = [[r25 string] retain];
    r22 = [[NSURL URLWithString:r25] retain];
    [r25 release];
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 configURL];
    r29 = r29;
    r26 = [r0 retain];
    if ([r22 isEqual:r2] == 0x0) goto loc_10061ef74;

loc_10061ef5c:
    [r26 release];
    r0 = r25;
    goto loc_10061f0a8;

loc_10061f0a8:
    [r0 release];
    r0 = [r19 requestURL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"UNKKNOWN";
            }
    }
    r23 = [r0 retain];
    [r24 release];
    [r21 release];
    r24 = [r19 statusCode];
    r0 = [r19 data];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            r27 = [[r19 data] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r27 options:0x0 error:r29 - 0x58];
            r29 = r29;
            r21 = [r0 retain];
            r25 = [0x0 retain];
            [r27 release];
    }
    else {
            r0 = [NSDictionary dictionary];
            r29 = r29;
            r21 = [r0 retain];
            r25 = 0x0;
    }
    [r26 release];
    r26 = 0x0;
    var_70 = r23;
    var_68 = r22;
    r23 = r24;
    if (r25 == 0x0) {
            r26 = 0x0;
            if (r21 != 0x0) {
                    r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x1 error:0x0];
                    r29 = r29;
                    r27 = [r0 retain];
                    r26 = [objc_alloc() initWithData:r27 encoding:0x4];
                    [r27 release];
            }
    }
    r27 = [[r20 description] retain];
    r22 = [[VungleSDK sharedSDK] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 description];
    r0 = [r0 retain];
    r28 = r0;
    if (r26 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r26;
            }
            else {
                    r9 = @"None";
            }
    }
    r8 = @"None";
    if (r27 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r27;
            }
            else {
                    r8 = @"None";
            }
    }
    [r22 log:@"Response - \nResponse Timestamp: %@\nRequest URL: %@\nResponse Code: %ld\nResponse Body: %@\nResponse Error: %@\n"];
    [var_70 release];
    [r28 release];
    [r24 release];
    [r22 release];
    [r27 release];
    [r26 release];
    [r21 release];
    [r25 release];
    r22 = var_68;
    goto loc_10061f330;

loc_10061f330:
    [r22 release];
    r0 = var_60;
    goto loc_10061f33c;

loc_10061f33c:
    [r0 release];
    goto loc_10061f340;

loc_10061f340:
    [r20 release];
    [r19 release];
    return;

loc_10061ef74:
    r27 = @selector(isEqual:);
    var_70 = r25;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 adsURL];
    r29 = r29;
    r25 = [r0 retain];
    if ((objc_msgSend(r22, r27) & 0x1) == 0x0) goto loc_10061efcc;

loc_10061efbc:
    [r25 release];
    r0 = r28;
    goto loc_10061f098;

loc_10061f098:
    [r0 release];
    [r26 release];
    r0 = var_70;
    goto loc_10061f0a8;

loc_10061efcc:
    r27 = @selector(isEqual:);
    var_80 = r25;
    var_78 = r28;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 willPlayAdURL];
    r29 = r29;
    r28 = [r0 retain];
    if ((objc_msgSend(r22, r27) & 0x1) == 0x0) goto loc_10061f024;

loc_10061f014:
    [r28 release];
    r0 = r25;
    goto loc_10061f088;

loc_10061f088:
    [r0 release];
    [var_80 release];
    r0 = var_78;
    goto loc_10061f098;

loc_10061f024:
    r27 = @selector(isEqual:);
    var_88 = r25;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    var_90 = r0;
    r0 = [r0 reportAdURL];
    r29 = r29;
    r25 = [r0 retain];
    if ((objc_msgSend(r22, r27) & 0x1) == 0x0) goto loc_10061f370;

loc_10061f06c:
    [r25 release];
    [var_90 release];
    [r28 release];
    r0 = var_88;
    goto loc_10061f088;

loc_10061f370:
    r27 = @selector(isEqual:);
    var_A0 = r25;
    var_98 = r28;
    r0 = [r24 URLConfiguration];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 registerUserURL];
    r29 = r29;
    r28 = [r0 retain];
    if ((objc_msgSend(r22, r27) & 0x1) != 0x0) {
            r27 = 0x1;
    }
    else {
            r27 = @selector(isEqual:);
            r0 = [r24 URLConfiguration];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 logURL];
            r29 = r29;
            r21 = [r0 retain];
            r27 = objc_msgSend(r22, r27);
            [r21 release];
            [r24 release];
    }
    [r28 release];
    [r25 release];
    [var_A0 release];
    [var_90 release];
    [var_98 release];
    [var_88 release];
    [var_80 release];
    [var_78 release];
    [r26 release];
    [var_70 release];
    if ((r27 & 0x1) != 0x0) {
            r0 = [r19 requestURL];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r0;
                    }
                    else {
                            r0 = @"UNKKNOWN";
                    }
            }
            r23 = [r0 retain];
            [r24 release];
            [r21 release];
            r24 = [r19 statusCode];
            r0 = [r19 data];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (r0 != 0x0) {
                    r27 = [[r19 data] retain];
                    r0 = [NSJSONSerialization JSONObjectWithData:r27 options:0x0 error:r29 - 0x58];
                    r29 = r29;
                    r21 = [r0 retain];
                    r25 = [0x0 retain];
                    [r27 release];
            }
            else {
                    r0 = [NSDictionary dictionary];
                    r29 = r29;
                    r21 = [r0 retain];
                    r25 = 0x0;
            }
            [r26 release];
            r26 = 0x0;
            var_70 = r23;
            var_68 = r22;
            r23 = r24;
            if (r25 == 0x0) {
                    r26 = 0x0;
                    if (r21 != 0x0) {
                            r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x1 error:0x0];
                            r29 = r29;
                            r27 = [r0 retain];
                            r26 = [objc_alloc() initWithData:r27 encoding:0x4];
                            [r27 release];
                    }
            }
            r27 = [[r20 description] retain];
            r22 = [[VungleSDK sharedSDK] retain];
            r0 = [NSDate date];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 description];
            r0 = [r0 retain];
            r28 = r0;
            if (r26 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r9 = r26;
                    }
                    else {
                            r9 = @"None";
                    }
            }
            r8 = @"None";
            if (r27 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r27;
                    }
                    else {
                            r8 = @"None";
                    }
            }
            [r22 log:@"Response - \nResponse Timestamp: %@\nRequest URL: %@\nResponse Code: %ld\nResponse Body: %@\nResponse Error: %@\n"];
            [var_70 release];
            [r28 release];
            [r24 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r21 release];
            [r25 release];
            r22 = var_68;
    }
    goto loc_10061f330;

loc_10061ef6c:
    r0 = r21;
    goto loc_10061f33c;
}

-(void)setSdkVersionNumber:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)HTTPHeaders {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setHTTPHeaders:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(double)streamingRequestTimeout {
    r0 = self;
    return r0;
}

-(void *)publisherInformation {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setStreamingRequestTimeout:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(void)setDelegateQueue:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)delegateQueue {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)URLConfiguration {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)session {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setSession:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)sessionConfiguration {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setSessionConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)reachability {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setIsValidSession:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)isValidSession {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setReachability:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(bool)isTerminating {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setTerminating:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end