@implementation CLSBetaController

+(void *)pinnnedCertificates {
    r0 = sub_10009e128();
    return r0;
}

+(bool)isBetaSupported {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((sub_10010b158() & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = sub_100095458();
            if (r0 == 0x3) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_delegate, r19);
            r0 = dispatch_queue_create("com.twitter.crashlytics.ios.beta", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_betaToken));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
            [r0 release];
            r21 = [FABNetworkClient alloc];
            r0 = [r20 class];
            r0 = [r0 pinnnedCertificates];
            r29 = r29;
            r22 = [r0 retain];
            r0 = [r21 initWithQueue:0x0 pinnedCertificates:r22];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_networkClient));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [r22 release];
            if (*(r20 + r21) == 0x0) {
                    r0 = [Fabric sharedSDK];
                    r0 = [r0 retain];
                    r22 = [r0 debug];
                    [r0 release];
                    if (r22 != 0x0) {
                            NSLog(@"[Crahlytics:Beta] Failed to configure networking");
                    }
            }
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)start {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self betaToken];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(fabricSettingsDownloaded:) name:*0x100e67d58 object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
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

-(void *)betaToken {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_betaToken));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = sub_1001085ac();
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)settings {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 settingsForBetaController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)betaUpdateSuspendDurationSecs {
    r0 = [self settings];
    r0 = [r0 retain];
    r20 = [[r0 betaSuspendDuration] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)appBundleIdentifier {
    r0 = sub_10009523c();
    return r0;
}

-(void *)betaEndpoint {
    r0 = [self settings];
    r0 = [r0 retain];
    r20 = [[r0 betaEndpoint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)appBuildVersion {
    r0 = sub_1000952d0();
    return r0;
}

-(void *)appDisplayVersion {
    r0 = sub_100095334();
    return r0;
}

-(void *)appInstallationSource {
    r0 = [NSNumber numberWithInteger:sub_100095458()];
    return r0;
}

-(void *)appInstanceIdentifier {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [[r0 instanceIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)APIKey {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 APIKeyForBetaController:self] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)checkForUpdate {
    [self maybeGetUpdate:&var_28];
    return;
}

-(void *)betaUpdateURL {
    r21 = [[self betaEndpoint] retain];
    r19 = [[FABURLBuilder URLWithBase:r21] retain];
    [r21 release];
    [r19 appendComponent:@"/spi/v2/platforms/"];
    [r19 appendComponent:@"ios"];
    [r19 appendComponent:@"/apps/"];
    r22 = [[self appBundleIdentifier] retain];
    [r19 appendComponent:r22];
    [r22 release];
    [r19 appendComponent:@"/beta_update_check"];
    r22 = [[self appBuildVersion] retain];
    [r19 appendValue:r22 forQueryParam:@"build_version"];
    [r22 release];
    r22 = [[self appDisplayVersion] retain];
    [r19 appendValue:r22 forQueryParam:@"display_version"];
    [r22 release];
    r22 = [[self appInstanceIdentifier] retain];
    [r19 appendValue:r22 forQueryParam:@"instance"];
    [r22 release];
    r20 = [[self appInstallationSource] retain];
    [r19 appendValue:r20 forQueryParam:@"source"];
    [r20 release];
    r20 = [[r19 URL] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)maybeGetUpdate:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)loadUpdateWithCompletionBlock:(void *)arg2 {
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
    r21 = self;
    r20 = [arg2 retain];
    r19 = [[r21 betaUpdateURL] retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 absoluteString];
            r29 = r29;
            [r0 retain];
            NSLog(@"[Crashlytics:Beta] Beta Update-Check url string: '%@'", @selector(absoluteString));
            [r22 release];
    }
    r0 = [NSMutableURLRequest alloc];
    r0 = [r0 initWithURL:r19 cachePolicy:0x1 timeoutInterval:r4];
    r22 = r0;
    [r0 setHTTPMethod:@"GET"];
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r23 = [[r0 localeIdentifier] retain];
    [r0 release];
    r25 = [[NSString stringWithUTF8String:"Crashlytics iOS SDK/3.13.0"] retain];
    [r22 setValue:r25 forHTTPHeaderField:@"User-Agent"];
    [r25 release];
    [r22 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [r22 setValue:@"utf-8" forHTTPHeaderField:@"Accept-Charset"];
    [r22 setValue:r23 forHTTPHeaderField:@"Accept-Language"];
    [r22 setValue:r23 forHTTPHeaderField:@"Content-Language"];
    [r22 setValue:@"77f0789d8e230eccdb4b99b82dccd78d47f9b604" forHTTPHeaderField:@"X-Crashlytics-Developer-Token"];
    [r22 setValue:@"com.twitter.crashlytics.ios" forHTTPHeaderField:@"X-Crashlytics-API-Client-Id"];
    [r22 setValue:@"3.13.0" forHTTPHeaderField:@"X-Crashlytics-API-Client-Display-Version"];
    [r22 setValue:@"138" forHTTPHeaderField:@"X-Crashlytics-API-Client-Build-Version"];
    r25 = [[r21 APIKey] retain];
    [r22 setValue:r25 forHTTPHeaderField:@"X-Crashlytics-API-Key"];
    [r25 release];
    r25 = [[r21 betaToken] retain];
    [r22 setValue:r25 forHTTPHeaderField:@"X-Crashlytics-Beta-Token"];
    [r25 release];
    r24 = [[r21 queue] retain];
    [r22 retain];
    var_48 = r20;
    [r20 retain];
    dispatch_async(r24, &var_78);
    [r24 release];
    [var_48 release];
    [r22 release];
    [r20 release];
    [r21 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)handledCompletedBetaRequestWithData:(void *)arg2 error:(void *)arg3 completionBlock:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r23 = [r0 debug];
            [r0 release];
            if (r23 != 0x0) {
                    NSLog(@"[Crashlytics:Beta] Failed to load update '%@'", @selector(debug));
            }
    }
    else {
            if ([r19 length] != 0x0) {
                    r23 = [[r22 queue] retain];
                    var_40 = [r19 retain];
                    var_38 = [r21 retain];
                    dispatch_async(r23, &var_68);
                    [r23 release];
                    [var_38 release];
                    [var_40 release];
            }
            else {
                    r0 = [Fabric sharedSDK];
                    r0 = [r0 retain];
                    r23 = [r0 debug];
                    [r0 release];
                    if (r23 != 0x0) {
                            NSLog(@"[Crashlytics:Beta] Failed to load update '%@'", @selector(debug));
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)updateWithData:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r0 = [NSJSONSerialization JSONObjectWithData:arg2 options:0x0 error:&var_38];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = [var_38 retain];
    if (r19 != 0x0) {
            [r21 release];
            r0 = [CLSBetaUpdate betaUpdateWithDictionary:r19 error:&var_40];
            r29 = r29;
            r22 = [r0 retain];
            r21 = [var_40 retain];
            if (r22 != 0x0) {
                    r23 = [r22 retain];
            }
            else {
                    r0 = [Fabric sharedSDK];
                    r0 = [r0 retain];
                    r24 = [r0 debug];
                    [r0 release];
                    if (r24 != 0x0) {
                            NSLog(@"[Crashlytics:Beta] Unable to read beta update data: %@", @selector(debug));
                    }
                    if (r20 != 0x0) {
                            r0 = objc_retainAutorelease(r21);
                            r23 = 0x0;
                            *r20 = r0;
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            [r22 release];
    }
    else {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r23 = [r0 debug];
            [r0 release];
            if (r23 != 0x0) {
                    NSLog(@"[Crashlytics:Beta] Unable to deserialize beta update data: %@", @selector(debug));
            }
            if (r20 != 0x0) {
                    r21 = objc_retainAutorelease(r21);
                    r23 = 0x0;
                    *r20 = r21;
            }
            else {
                    r23 = 0x0;
            }
    }
    [r19 release];
    [r21 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)temporarilySuspendChecks {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)allowChecks {
    *(int8_t *)(int64_t *)&self->_checksSuspended = 0x0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_checkSuspensionTimer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(void)applicationWillEnterForeground {
    [self maybeGetUpdate:&var_28];
    return;
}

-(bool)shouldGetUpdates {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self class];
    r0 = [r0 isBetaSupported];
    if (r0 != 0x0 && *(int8_t *)(int64_t *)&r19->_checksSuspended == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)didGetUpdate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 url];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
    }
    else {
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Crashlytics:Beta] Beta update url is invalid");
            }
    }
    [r19 release];
    return;
}

-(void)showBetaAlertForUpdate:(void *)arg2 {
    r20 = [arg2 retain];
    [self setActiveUpdate:r20];
    r22 = [NSString alloc];
    r23 = [[arg2 promptMessage] retain];
    r24 = [[arg2 version] retain];
    r22 = [r22 initWithFormat:@"%@\n%@"];
    [r24 release];
    [r23 release];
    r23 = [[arg2 promptTitle] retain];
    r25 = [[arg2 cancelLabel] retain];
    r21 = [[arg2 installLabel] retain];
    [r20 release];
    r0 = [CLSAlert alertWithTitle:r23 message:r22 delegate:self cancelButtonTitle:r25 otherButtonTitle:r21];
    r0 = [r0 retain];
    [r0 show];
    [r0 release];
    [r21 release];
    [r25 release];
    [r23 release];
    [r22 release];
    return;
}

-(void)fabricSettingsDownloaded:(void *)arg2 {
    [self checkForUpdate];
    return;
}

-(void)applicationWillEnterForeground:(void *)arg2 {
    [self checkForUpdate];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([arg2 cancelButtonIndex] != arg3) {
            r0 = [r19 activeUpdate];
            r0 = [r0 retain];
            r0 = [r0 url];
            r0 = [r0 retain];
            sub_10010b35c(r0, 0x0, 0x100e6b108);
            [r21 release];
            [r20 release];
    }
    [r19 setActiveUpdate:0x0];
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

-(void *)networkClient {
    r0 = self->_networkClient;
    return r0;
}

-(void *)activeUpdate {
    r0 = self->_activeUpdate;
    return r0;
}

-(void)setActiveUpdate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activeUpdate, arg2);
    return;
}

-(void *)checkSuspensionTimer {
    r0 = self->_checkSuspensionTimer;
    return r0;
}

-(void)setCheckSuspensionTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_checkSuspensionTimer, arg2);
    return;
}

-(bool)checksSuspended {
    r0 = *(int8_t *)(int64_t *)&self->_checksSuspended;
    return r0;
}

-(void)setChecksSuspended:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_checksSuspended = arg2;
    return;
}

-(void)setRetrying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_retrying = arg2;
    return;
}

-(bool)retrying {
    r0 = *(int8_t *)(int64_t *)&self->_retrying;
    return r0;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_checkSuspensionTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_activeUpdate, 0x0);
    objc_storeStrong((int64_t *)&self->_networkClient, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_betaToken, 0x0);
    return;
}

@end