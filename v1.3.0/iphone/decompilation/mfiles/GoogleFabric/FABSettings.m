@implementation FABSettings

-(void *)settingsDictionary {
    r31 = r31 - 0x70;
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
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_settingsDictionary));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r22 = [[r19 settingsPath] retain];
            r0 = [NSData dataWithContentsOfFile:r22];
            r29 = r29;
            r20 = [r0 retain];
            [r22 release];
            if (r20 != 0x0) {
                    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x0 error:&var_48];
                    r29 = r29;
                    r23 = [r0 retain];
                    r22 = [var_48 retain];
                    r0 = *(r19 + r25);
                    *(r19 + r25) = r23;
                    [r0 release];
                    r0 = *(r19 + r25);
                    if (r0 == 0x0) {
                            [[r22 localizedDescription] retain];
                            NSLog(@"[Fabric] Could not load settings with error: %@", @selector(localizedDescription));
                            [r23 release];
                            r23 = [[r19 fileManager] retain];
                            r21 = [[r19 settingsPath] retain];
                            [r23 removeItemAtPath:r21 error:&var_50];
                            r24 = [var_50 retain];
                            [r22 release];
                            [r21 release];
                            [r23 release];
                            r0 = *(r19 + r25);
                            r22 = r24;
                    }
                    r19 = [r0 retain];
                    [r22 release];
            }
            else {
                    r19 = 0x0;
            }
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithSettingsPath:(void *)arg2 fileManager:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_settingsPath, r22);
            objc_storeStrong((int64_t *)&r23->_fileManager, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)appUpdateRequired {
    r0 = [self appSettings];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"update_required"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)appNeedsOnboarding {
    r0 = [self appStatus];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)appBundleIdentifier {
    r0 = sub_10009523c();
    return r0;
}

-(void *)appPlatform {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e68150);
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

-(void)clearSettingsDictionary {
    [self setSettingsDictionary:0x0];
    return;
}

-(void *)appSource {
    r0 = [NSNumber numberWithInteger:sub_100095458()];
    return r0;
}

-(void *)appStatus {
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
    r19 = self;
    r0 = [self appSettings];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 appSettings];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 objectForKey:@"status"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            if (r24 != r0) {
                    r0 = [r19 appSettings];
                    r0 = [r0 retain];
                    r19 = [[r0 objectForKey:@"status"] retain];
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            [r22 release];
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)appSettings {
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
    r19 = self;
    r0 = [self settingsDictionary];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 settingsDictionary];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 objectForKey:@"app"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            if (r24 != r0) {
                    r0 = [r19 settingsDictionary];
                    r0 = [r0 retain];
                    r19 = [[r0 objectForKey:@"app"] retain];
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            [r22 release];
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)reportingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_reportingEnabled;
    return r0;
}

-(void *)settingsURLForEndpoint:(void *)arg2 appInstanceIdentifer:(void *)arg3 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [[FABURLBuilder URLWithBase:r23] retain];
    [r23 release];
    [r19 appendComponent:@"/spi/v2/platforms/"];
    r24 = [[self appPlatform] retain];
    [r19 escapeAndAppendComponent:r24];
    [r24 release];
    [r19 appendComponent:@"/apps/"];
    r24 = [[self appBundleIdentifier] retain];
    [r19 escapeAndAppendComponent:r24];
    [r24 release];
    [r19 appendComponent:@"/settings"];
    r24 = [[self appBuildVersion] retain];
    [r19 appendValue:r24 forQueryParam:@"build_version"];
    [r24 release];
    r24 = [[self appDisplayVersion] retain];
    [r19 appendValue:r24 forQueryParam:@"display_version"];
    [r24 release];
    [r19 appendValue:arg3 forQueryParam:@"instance"];
    [r22 release];
    r20 = [[self appSource] retain];
    [r19 appendValue:r20 forQueryParam:@"source"];
    [r20 release];
    r20 = [[r19 URL] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)errorReportingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_errorReportingEnabled;
    return r0;
}

-(void *)logBufferSize {
    r0 = self->_logBufferSize;
    return r0;
}

-(void *)maxErrors {
    r0 = self->_maxErrors;
    return r0;
}

-(void)setSettingsDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settingsDictionary, arg2);
    return;
}

-(void *)settingsPath {
    r0 = self->_settingsPath;
    return r0;
}

-(void *)maxCustomKeys {
    r0 = self->_maxCustomKeys;
    return r0;
}

-(void)setSettingsPath:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settingsPath, arg2);
    return;
}

-(void)setFileManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fileManager, arg2);
    return;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsPath, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_maxCustomKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_maxErrors, 0x0);
    objc_storeStrong((int64_t *)&self->_logBufferSize, 0x0);
    return;
}

@end