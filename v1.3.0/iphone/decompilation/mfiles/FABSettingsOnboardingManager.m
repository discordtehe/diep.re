@implementation FABSettingsOnboardingManager

-(void *)initWithApplicationIdentifierModel:(void *)arg2 {
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
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = @selector(init);
            r0 = [NSFileManager alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileManager));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_appIdentifierModel, r21);
            r21 = [FABNetworkClient alloc];
            r22 = [sub_10009e128() retain];
            r0 = [r21 initWithQueue:0x0 pinnedCertificates:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkClient));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
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

-(void)beginSettingsAndOnboardingOperationsWithAPIKey:(void *)arg2 kitVersionsByKitBundleIdentifier:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setAPIKey:r21];
    [r21 release];
    [self setKitVersionsByKitBundleIdentifier:r19];
    [r19 release];
    [self beginSettingsDownload];
    return;
}

-(void)beginSettingsDownload {
    r22 = [FABDownloadAndSaveSettingsOperation alloc];
    r19 = [[self APIKey] retain];
    r21 = [[self settingsURL] retain];
    r23 = [[FABSettingsOnboardingManager settingsDirectoryPath] retain];
    r24 = [[self settingsPath] retain];
    r25 = [[self fileManager] retain];
    r0 = [self appIdentifierModel];
    r0 = [r0 retain];
    r27 = [[r0 installID] retain];
    r28 = [[self networkClient] retain];
    r20 = [r22 initWithAPIKey:r19 delegate:self settingsURL:r21 settingsDirectoryPath:r23 settingsFilePath:r24 fileManager:r25 installIdentifier:r27 networkClient:r28];
    [r28 release];
    [r27 release];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [r20 start];
    [r20 release];
    return;
}

-(void *)settingsModel {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_settingsModel));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r20 = [FABSettings alloc];
            r21 = [[r19 settingsPath] retain];
            r22 = [[r19 fileManager] retain];
            r0 = [r20 initWithSettingsPath:r21 fileManager:r22];
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

-(void *)advertisingToken {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [[r0 advertisingToken] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)beginOnboarding:(bool)arg2 endpointString:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self onboardingOperation];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r25 = [FABOnboardingOperation alloc];
    r23 = [[self APIKey] retain];
    r24 = [[self kitVersionsByKitBundleIdentifier] retain];
    r26 = [[self appIdentifierModel] retain];
    r27 = [[self networkClient] retain];
    r22 = [r25 initWithDelegate:self shouldCreate:arg2 APIKey:r23 kitVersionsByKitBundleIdentifier:r24 appIdentifierModel:r26 endpointString:r21 networkClient:r27];
    [r21 release];
    [self setOnboardingOperation:r22];
    [r22 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r23 release];
    r0 = [self onboardingOperation];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    return;
}

-(void)finishNetworkingSession {
    r0 = [self networkClient];
    r0 = [r0 retain];
    [r0 invalidateAndCancel];
    [r0 release];
    return;
}

-(void *)configuration {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)defaultConfiguration {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_18 forKeys:&var_28 count:0x2];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)valueForConfigurationKey:(void *)arg2 {
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
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 environment];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r22 == 0x0) {
            r21 = @selector(objectForKey:);
            r0 = [r20 configuration];
            r0 = [r0 retain];
            r23 = r0;
            r0 = objc_msgSend(r0, r21);
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 == 0x0) {
                    r21 = @selector(objectForKey:);
                    r0 = [r20 defaultConfiguration];
                    r0 = [r0 retain];
                    r22 = [objc_msgSend(r0, r21) retain];
                    [r0 release];
            }
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)onboardingOperation:(void *)arg2 didCompleteAppCreationWithError:(void *)arg3 {
    r3 = arg3;
    r1 = _cmd;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r3 != 0x0) {
            NSLog(@"[Fabric] unable to complete application configure: %@", r1);
            r1 = @selector(finishNetworkingSession);
    }
    else {
            [r19 setOnboardingOperation:0x0];
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Fabric] completed configure");
            }
            r1 = @selector(beginSettingsDownload);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)onboardingOperation:(void *)arg2 didCompleteAppUpdateWithError:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    [r20 finishNetworkingSession];
    if (r19 == 0x0) goto loc_100095f0c;

loc_100095efc:
    r0 = @"[Fabric] unable to complete application update: %@";
    goto loc_100095f64;

loc_100095f64:
    NSLog(r0);
    goto loc_100095f68;

loc_100095f68:
    [r19 release];
    return;

loc_100095f0c:
    [r20 setOnboardingOperation:0x0];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 debug];
    [r0 release];
    if (r21 == 0x0) goto loc_100095f68;

loc_100095f5c:
    r0 = @"[Fabric] completed application update";
    goto loc_100095f64;
}

+(void *)settingsDirectoryPath {
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = [[r0 lastObject] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:r2] retain];
    r22 = [[r20 stringByAppendingPathComponent:r19] retain];
    [r20 release];
    [r19 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 bundleIdentifier] retain];
    r21 = [[r22 stringByAppendingPathComponent:r20] retain];
    [r22 release];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)settingsURL {
    r19 = [[self settingsModel] retain];
    r21 = [[self valueForConfigurationKey:@"SettingsEndpoint"] retain];
    r0 = [self appIdentifierModel];
    r0 = [r0 retain];
    r22 = [[r0 instanceIdentifier] retain];
    r23 = [[r19 settingsURLForEndpoint:r21 appInstanceIdentifer:r22] retain];
    [r22 release];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)operation:(void *)arg2 didDownloadAndSaveSettingsWithError:(void *)arg3 {
    r3 = arg3;
    r1 = _cmd;
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
    r19 = self;
    if (r3 == 0x0) goto loc_1000960f8;

loc_1000960e4:
    NSLog(@"[Fabric] failed to download settings %@", r1);
    goto loc_1000961dc;

loc_1000961dc:
    [r19 finishNetworkingSession];
    return;

loc_1000960f8:
    r0 = [Fabric sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 != 0x0) {
            NSLog(@"[Fabric] settings downloaded successfully");
    }
    r0 = [r19 settingsModel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 clearSettingsDictionary];
    [r0 release];
    if ([r19 hasAttemptedAppConfigure] == 0x0) goto loc_100096204;

loc_100096190:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [r0 debug];
    [r0 release];
    if (r20 != 0x0) {
            NSLog(@"[Fabric] App already onboarded in this run of the app");
    }
    [r19 postSettingsDownloadCompletedNotification];
    goto loc_1000961dc;

loc_100096204:
    r0 = [r19 settingsModel];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 appNeedsOnboarding];
    [r0 release];
    if (r24 == 0x0) goto loc_1000962c0;

loc_100096238:
    r0 = [Fabric sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 debug];
    [r0 release];
    if (r20 != 0x0) {
            NSLog(@"[Fabric] Starting onboarding with app create");
    }
    [r19 setHasAttemptedAppConfigure:0x1];
    r20 = [[r19 valueForConfigurationKey:*0x100e67f58] retain];
    goto loc_100096388;

loc_100096388:
    [r19 beginOnboarding:r2 endpointString:r3];
    [r20 release];
    return;

loc_1000962c0:
    [r19 postSettingsDownloadCompletedNotification];
    r0 = [r19 settingsModel];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 appUpdateRequired];
    [r0 release];
    if (r23 == 0x0) goto loc_1000961dc;

loc_100096304:
    r0 = [Fabric sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 debug];
    [r0 release];
    if (r20 != 0x0) {
            NSLog(@"[Fabric] Starting onboarding with app update");
    }
    [r19 setHasAttemptedAppConfigure:0x1];
    r20 = [[r19 valueForConfigurationKey:*0x100e67f58] retain];
    goto loc_100096388;
}

-(void *)settingsPath {
    r0 = [FABSettingsOnboardingManager settingsDirectoryPath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"settings.json"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)postSettingsDownloadCompletedNotification {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 debug];
    [r0 release];
    if (r20 != 0x0) {
            NSLog(@"[Fabric] Settings are available for consumption");
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:*0x100e67d58 object:0x0 userInfo:0x0];
    [r0 release];
    return;
}

-(void *)appIdentifierModel {
    r0 = self->_appIdentifierModel;
    return r0;
}

-(void)setAppIdentifierModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appIdentifierModel, arg2);
    return;
}

-(void)setSettingsModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settingsModel, arg2);
    return;
}

-(void *)onboardingOperation {
    r0 = self->_onboardingOperation;
    return r0;
}

-(void)setOnboardingOperation:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_onboardingOperation, arg2);
    return;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void)setFileManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fileManager, arg2);
    return;
}

-(bool)hasAttemptedAppConfigure {
    r0 = *(int8_t *)(int64_t *)&self->_hasAttemptedAppConfigure;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void)setHasAttemptedAppConfigure:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAttemptedAppConfigure = arg2;
    return;
}

-(void)setDefaultConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_defaultConfiguration, arg2);
    return;
}

-(void *)APIKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_APIKey)), 0x0);
    return r0;
}

-(void)setAPIKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)kitVersionsByKitBundleIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_kitVersionsByKitBundleIdentifier)), 0x0);
    return r0;
}

-(void)setKitVersionsByKitBundleIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)networkClient {
    r0 = self->_networkClient;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_networkClient, 0x0);
    objc_storeStrong((int64_t *)&self->_kitVersionsByKitBundleIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_APIKey, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_onboardingOperation, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsModel, 0x0);
    objc_storeStrong((int64_t *)&self->_appIdentifierModel, 0x0);
    return;
}

@end