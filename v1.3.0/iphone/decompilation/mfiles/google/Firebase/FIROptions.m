@implementation FIROptions

+(void *)defaultOptions {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1dd8 != 0x0) {
            r20 = [*0x1011d1dd8 retain];
    }
    else {
            r19 = [[r0 defaultOptionsDictionary] retain];
            if (r19 != 0x0) {
                    r0 = [FIROptions alloc];
                    r0 = [r0 initInternalWithOptionsDictionary:r19];
                    r8 = *0x1011d1dd8;
                    *0x1011d1dd8 = r0;
                    [r8 release];
                    r20 = [*0x1011d1dd8 retain];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void)initialize {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[NSString stringWithUTF8String:*0x100e6a9c8] retain];
    [FIRApp registerLibrary:@"fire-ios" withVersion:r21];
    [r21 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 infoDictionary] retain];
    [r0 release];
    r21 = [[r20 objectForKeyedSubscript:@"DTXcodeBuild"] retain];
    r22 = [[r20 objectForKeyedSubscript:@"DTSDKBuild"] retain];
    if (r21 != 0x0) {
            [FIRApp registerLibrary:@"xcode" withVersion:r21];
    }
    if (r22 != 0x0) {
            [FIRApp registerLibrary:@"apple-sdk" withVersion:r22];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

+(void *)defaultOptionsDictionary {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1de0 != 0x0) {
            r20 = [*0x1011d1de0 retain];
    }
    else {
            r0 = [FIROptions plistFilePathWithName:@"GoogleService-Info"];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r0 = [NSDictionary dictionaryWithContentsOfFile:r19];
                    r0 = [r0 retain];
                    r8 = *0x1011d1de0;
                    *0x1011d1de0 = r0;
                    [r8 release];
                    if (*0x1011d1de0 == 0x0) {
                            sub_100102750(*0x100e6a928, @"I-COR000011", @"The configuration file is not a dictionary: '%@.%@'.");
                    }
                    r20 = [*0x1011d1de0 retain];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)plistFilePathWithName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[FIRBundleUtil relevantBundles] retain];
    r21 = [[FIRBundleUtil optionsDictionaryPathWithResourceName:r19 andFileType:@"plist" inBundles:r20] retain];
    if (r21 == 0x0) {
            sub_100102750(*0x100e6a928, @"I-COR000012", @"Could not locate configuration file: '%@.%@'.");
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)resetDefaultOptions {
    r0 = *0x1011d1dd8;
    *0x1011d1dd8 = 0x0;
    [r0 release];
    r0 = *0x1011d1de0;
    *0x1011d1de0 = 0x0;
    [r0 release];
    return;
}

-(void *)initInternalWithOptionsDictionary:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_optionsDictionary));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_usingOptionsFromDefaultPlist = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [[[self class] allocWithZone:arg2] init];
    if (r20 != 0x0) {
            r21 = [[r19 optionsDictionary] retain];
            [r20 setOptionsDictionary:r21];
            [r21 release];
            r21 = [[r19 deepLinkURLScheme] retain];
            [r20 setDeepLinkURLScheme:r21];
            [r21 release];
            [r20 setEditingLocked:[r19 isEditingLocked]];
            [r20 setUsingOptionsFromDefaultPlist:[r19 usingOptionsFromDefaultPlist]];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithContentsOfFile:(void *)arg2 {
    r31 = r31 - 0x50;
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
    if (r20 == 0x0) goto loc_100102f4c;

loc_100102ef0:
    if (r19 == 0x0) goto loc_100102f5c;

loc_100102ef4:
    r0 = [NSDictionary dictionaryWithContentsOfFile:r19];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 mutableCopy];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_optionsDictionary));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    [r21 release];
    if (*(r20 + r22) == 0x0) goto loc_100102f7c;

loc_100102f4c:
    r21 = [r20 retain];
    goto loc_100102fa4;

loc_100102fa4:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100102f7c:
    r1 = @"I-COR000014";
    r2 = @"The configuration file at %@ does not exist or is not a well-formed plist file.";
    goto loc_100102f9c;

loc_100102f9c:
    sub_100102750(*0x100e6a928, r1, r2);
    r21 = 0x0;
    goto loc_100102fa4;

loc_100102f5c:
    r1 = @"I-COR000013";
    r2 = @"The plist file path is nil.";
    goto loc_100102f9c;
}

-(void *)initWithGoogleAppID:(void *)arg2 GCMSenderID:(void *)arg3 {
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
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r22 = r0;
            [r0 setValue:r19 forKey:@"GOOGLE_APP_ID"];
            [r22 setValue:r20 forKey:@"GCM_SENDER_ID"];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r25 = [[r0 bundleIdentifier] retain];
            [r22 setValue:r25 forKey:@"BUNDLE_ID"];
            [r25 release];
            [r0 release];
            [r21 setOptionsDictionary:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)APIKey {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"API_KEY"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)checkEditingLocked {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ([self isEditingLocked] != 0x0) {
            [NSException raise:*0x100e6a920 format:@"Attempted to modify options after it's set on FIRApp. Please modify all properties before initializing FIRApp."];
    }
    return;
}

-(void)setAPIKey:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"API_KEY"];
    [r19 release];
    return;
}

-(void *)clientID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"CLIENT_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setClientID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"CLIENT_ID"];
    [r19 release];
    return;
}

-(void *)trackingID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"TRACKING_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)GCMSenderID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"GCM_SENDER_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setTrackingID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"TRACKING_ID"];
    [r19 release];
    return;
}

-(void)setGCMSenderID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"GCM_SENDER_ID"];
    [r19 release];
    return;
}

-(void *)projectID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"PROJECT_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)androidClientID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"ANDROID_CLIENT_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setProjectID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"PROJECT_ID"];
    [r19 release];
    return;
}

-(void *)googleAppID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"GOOGLE_APP_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setAndroidClientID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"ANDROID_CLIENT_ID"];
    [r19 release];
    return;
}

-(void)setGoogleAppID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"GOOGLE_APP_ID"];
    [r19 release];
    return;
}

-(void *)libraryVersionID {
    if (*qword_1011d1de8 != -0x1) {
            dispatch_once(0x1011d1de8, 0x100e6a9a0);
    }
    r0 = *0x1011e2d48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)databaseURL {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"DATABASE_URL"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setLibraryVersionID:(void *)arg2 {
    r20 = [arg2 copy];
    [self->_optionsDictionary setObject:r20 forKeyedSubscript:*0x1011e2d48];
    [r20 release];
    return;
}

-(void)setDatabaseURL:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"DATABASE_URL"];
    [r19 release];
    return;
}

-(void *)storageBucket {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"STORAGE_BUCKET"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)bundleID {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"BUNDLE_ID"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDeepLinkURLScheme:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deepLinkURLScheme));
    r0 = *(self + r8);
    *(self + r8) = r19;
    [r0 release];
    return;
}

-(void)setStorageBucket:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"STORAGE_BUCKET"];
    [r19 release];
    return;
}

-(void)setBundleID:(void *)arg2 {
    r22 = [arg2 retain];
    [self checkEditingLocked];
    r19 = [arg2 copy];
    [r22 release];
    [self->_optionsDictionary setObject:r19 forKeyedSubscript:@"BUNDLE_ID"];
    [r19 release];
    return;
}

-(void *)analyticsOptionsDictionary {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 infoDictionary] retain];
    r19 = [[self analyticsOptionsDictionaryWithInfoDictionary:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isMeasurementEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isAnalyticsCollectionDeactivated] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [r19 analyticsOptionsDictionary];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:@"IS_MEASUREMENT_ENABLED"];
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            if (r19 != 0x0) {
                    r20 = [r19 boolValue];
            }
            else {
                    if ([FIRApp isDefaultAppConfigured] != 0x0) {
                            r0 = [FIRApp defaultApp];
                            r0 = [r0 retain];
                            r20 = [r0 isDataCollectionDefaultEnabled];
                            [r0 release];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            [r19 release];
    }
    r0 = r20;
    return r0;
}

-(void *)analyticsOptionsDictionaryWithInfoDictionary:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r20 = self;
    r19 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsOptionsDictionary));
    r0 = *(r20 + r8);
    if (r0 == 0x0) {
            var_158 = r8;
            r21 = [[NSMutableDictionary alloc] init];
            r0 = [NSArray arrayWithObjects:r29 - 0x70 count:0x3];
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_140 = r0;
            var_150 = r1;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    r22 = *0x0;
                    do {
                            r26 = 0x0;
                            r27 = @selector(setObject:forKeyedSubscript:);
                            do {
                                    if (*0x0 != r22) {
                                            objc_enumerationMutation(var_140);
                                    }
                                    r28 = *(0x0 + r26 * 0x8);
                                    r0 = [r19 objectForKeyedSubscript:r28];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    if (r23 == 0x0) {
                                            r0 = [r20 optionsDictionary];
                                            r0 = [r0 retain];
                                            r24 = r27;
                                            r27 = r22;
                                            r22 = r21;
                                            r21 = r19;
                                            r19 = r20;
                                            r20 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r28];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            r0 = r20;
                                            r20 = r19;
                                            r19 = r21;
                                            r21 = r22;
                                            r22 = r27;
                                            r27 = r24;
                                            [r0 release];
                                            if (r23 != 0x0) {
                                                    objc_msgSend(r21, r27);
                                                    [r23 release];
                                            }
                                    }
                                    else {
                                            objc_msgSend(r21, r27);
                                            [r23 release];
                                    }
                                    r26 = r26 + 0x1;
                            } while (r26 < r25);
                            r25 = objc_msgSend(var_140, var_150);
                    } while (r25 != 0x0);
            }
            [var_140 release];
            r0 = *(r20 + var_158);
            *(r20 + var_158) = r21;
            [r0 release];
            [var_140 release];
            r0 = *(r20 + var_158);
    }
    var_58 = **___stack_chk_guard;
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isAnalyticsCollectionExpicitlySet {
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
    if (([self isAnalyticsCollectionDeactivated] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r0 = [r20 analyticsOptionsDictionary];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r23 release];
            if (r19 != 0x0) {
                    [NSNumber class];
                    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                            r21 = 0x1;
                    }
                    else {
                            r0 = [r20 analyticsOptionsDictionary];
                            r0 = [r0 retain];
                            r20 = [[r0 objectForKeyedSubscript:r2] retain];
                            [r0 release];
                            if (r20 != 0x0) {
                                    [NSNumber class];
                                    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                                            r21 = 0x1;
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    r21 = 0x0;
                            }
                            [r20 release];
                    }
            }
            else {
                    r0 = [r20 analyticsOptionsDictionary];
                    r0 = [r0 retain];
                    r20 = [[r0 objectForKeyedSubscript:r2] retain];
                    [r0 release];
                    if (r20 != 0x0) {
                            [NSNumber class];
                            if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                                    r21 = 0x1;
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r20 release];
            }
            [r19 release];
    }
    r0 = r21;
    return r0;
}

-(bool)isAnalyticsCollectionEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isAnalyticsCollectionDeactivated] & 0x1) != 0x0) {
            r19 = 0x0;
    }
    else {
            r0 = [r19 analyticsOptionsDictionary];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:@"FIREBASE_ANALYTICS_COLLECTION_ENABLED"] retain];
            [r0 release];
            if (r20 != 0x0) {
                    r1 = @selector(boolValue);
                    r0 = r20;
            }
            else {
                    r1 = @selector(isMeasurementEnabled);
                    r0 = r19;
            }
            r19 = objc_msgSend(r0, r1);
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isAnalyticsCollectionDeactivated {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self analyticsOptionsDictionary];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:@"FIREBASE_ANALYTICS_COLLECTION_DEACTIVATED"] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isAnalyticsEnabled {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"IS_ANALYTICS_ENABLED"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)deepLinkURLScheme {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deepLinkURLScheme)), 0x0);
    return r0;
}

-(bool)isSignInEnabled {
    r0 = [self optionsDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"IS_SIGNIN_ENABLED"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)optionsDictionary {
    r0 = self->_optionsDictionary;
    return r0;
}

-(void)setOptionsDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionsDictionary, arg2);
    return;
}

-(bool)usingOptionsFromDefaultPlist {
    r0 = *(int8_t *)(int64_t *)&self->_usingOptionsFromDefaultPlist;
    return r0;
}

-(void)setUsingOptionsFromDefaultPlist:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_usingOptionsFromDefaultPlist = arg2;
    return;
}

-(bool)isEditingLocked {
    r0 = *(int8_t *)(int64_t *)&self->_editingLocked;
    return r0;
}

-(void)setEditingLocked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_editingLocked = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_optionsDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_deepLinkURLScheme, 0x0);
    objc_storeStrong((int64_t *)&self->_analyticsOptionsDictionary, 0x0);
    return;
}

@end