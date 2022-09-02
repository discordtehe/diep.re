@implementation FABDownloadAndSaveSettingsOperation

-(void *)initWithAPIKey:(void *)arg2 delegate:(void *)arg3 settingsURL:(void *)arg4 settingsDirectoryPath:(void *)arg5 settingsFilePath:(void *)arg6 fileManager:(void *)arg7 installIdentifier:(void *)arg8 networkClient:(void *)arg9 {
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
    r23 = arg7;
    r28 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r24 = [r23 retain];
    r26 = [arg8 retain];
    r27 = [arg9 retain];
    r0 = [[&var_60 super] initWithAPIKey:r28];
    r25 = r0;
    [r28 release];
    if (r25 != 0x0) {
            r25->_delegate = r19;
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_settingsURL));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_settingsDirectoryPath));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            r0 = [r22 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_settingsFilePath));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r25->_fileManager, r23);
            r0 = [r26 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_installIdentifier));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r25->_networkClient, r27);
    }
    [r27 release];
    [r26 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void *)initWithAPIKey:(void *)arg2 {
    [self release];
    return 0x0;
}

-(void *)mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:(void *)arg2 {
    r0 = [[&var_30 super] mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:arg2];
    r0 = [r0 retain];
    [r0 setHTTPMethod:@"GET"];
    [r0 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    r21 = [[self installIdentifier] retain];
    [r0 setValue:r21 forHTTPHeaderField:@"X-Crashlytics-Installation-ID"];
    [r21 release];
    r21 = [sub_10009a270() retain];
    [r0 setValue:r21 forHTTPHeaderField:@"X-Crashlytics-Device-Model"];
    [r21 release];
    r21 = [sub_10009a18c() retain];
    [r0 setValue:r21 forHTTPHeaderField:@"X-Crashlytics-OS-Build-Version"];
    [r21 release];
    r21 = [sub_10009a224() retain];
    [r0 setValue:r21 forHTTPHeaderField:@"X-Crashlytics-OS-Display-Version"];
    [r21 release];
    [r0 setValue:*0x100e68140 forHTTPHeaderField:@"X-Crashlytics-API-Client-Version"];
    r0 = [r0 autorelease];
    return r0;
}

-(void)main {
    r20 = [[self settingsURL] retain];
    r21 = [[self mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:r20] retain];
    [r20 release];
    r0 = [self networkClient];
    r0 = [r0 retain];
    [r0 startDownloadTaskWithRequest:r21 retryLimit:0x1 completionHandler:&var_48];
    [r0 release];
    [r21 release];
    return;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void *)settingsURL {
    r0 = self->_settingsURL;
    return r0;
}

-(void *)settingsDirectoryPath {
    r0 = self->_settingsDirectoryPath;
    return r0;
}

-(void *)settingsFilePath {
    r0 = self->_settingsFilePath;
    return r0;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void *)installIdentifier {
    r0 = self->_installIdentifier;
    return r0;
}

-(void *)networkClient {
    r0 = objc_loadWeakRetained((int64_t *)&self->_networkClient);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_networkClient);
    objc_storeStrong((int64_t *)&self->_installIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsFilePath, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsDirectoryPath, 0x0);
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsURL, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    return;
}

@end