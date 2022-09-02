@implementation Fabric

-(void *)init {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r19 readInstallationUUID];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_installID));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = [NSString stringWithFormat:@"%@%@%@"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = NSClassFromString(r0);
            [r0 release];
            [r19 regenerateInstallIDIfNeededWithManager:r21];
            if (*(r19 + r22) == 0x0) {
                    *(int8_t *)(int64_t *)&r19->_isFirstInstall = 0x1;
                    r0 = [r19 generateInstallationUUID];
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    r0 = [CLSUserDefaults standardUserDefaults];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 synchronize];
                    [r20 release];
            }
            r0 = sub_100096bfc();
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 stringByReplacingOccurrencesOfString:@"-" withString:@""];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 lowercaseString];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_executionIdentifier));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            [r20 release];
            r0 = [FABApplicationIdentifierModel alloc];
            r0 = [r0 initWithInstallID:*(r19 + r22)];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_applicationIdentifierModel));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [FABSettingsOnboardingManager alloc];
            r21 = [[r19 applicationIdentifierModel] retain];
            r0 = [r20 initWithApplicationIdentifierModel:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_settingsAndOnboardingManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r21 = [[r0 arguments] retain];
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_debug = [r21 containsObject:@"-FIRDebugEnabled"];
            r20 = [r19 retain];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)sharedSDK {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d1918 != -0x1) {
            dispatch_once(0x1011d1918, &var_28);
    }
    r0 = *0x1011d1910;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)with:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r8 = *0x1011d1920;
    if (r8 != 0x0) {
            NSLog(@"[Fabric] [Fabric +with] called multiple times. Only the first call is honored, please pass all kits you wish to initialize");
            r8 = *0x1011d1920;
            if (r8 == -0x1) {
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
    }
    var_28 = r19;
    r0 = r19;
    if ((r8 & 0x1) != 0x0) {
            r21 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d1920, &var_50);
            r21 = var_28;
    }
    r20 = [[r20 sharedSDK] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)kitClassesByAddingDigitsIfFound:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = NSClassFromString(@"Digits");
    if (r20 != 0x0 && [r19 indexOfObjectIdenticalTo:r20] == 0x7fffffffffffffff) {
            r0 = [r19 arrayByAddingObject:r20];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)convertToKitClassesIfNeeded:(void *)arg2 {
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
    r20 = [arg2 retain];
    r19 = [[NSMutableArray alloc] init];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(0x0 + r28 * 0x8) class];
                            objc_msgSend(r19, r24);
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)validateFABKitConformance:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_128 = self;
    r0 = [arg2 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_178 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r27 = *0x0;
            r24 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            do {
                    r25 = 0x0;
                    r26 = @selector(conformsToProtocol:);
                    r28 = @selector(sharedInstance);
                    r21 = @selector(respondsToSelector:);
                    var_158 = r21;
                    do {
                            if (*0x0 != r27) {
                                    objc_enumerationMutation(var_130);
                            }
                            r23 = *(0x0 + r25 * 0x8);
                            if ((objc_msgSend(r23, r26) & 0x1) == 0x0) {
                                    r20 = objc_msgSend(r23, r21);
                                    if (r20 != 0x0) {
                                            var_134 = [r23 instancesRespondToSelector:@selector(start)];
                                            [r23 instancesRespondToSelector:@selector(bundleIdentifier)];
                                            r21 = r28;
                                            r28 = r26;
                                            r26 = r22;
                                            r22 = r24;
                                            r24 = r27;
                                            r19 = [r23 instancesRespondToSelector:@selector(bundleIdentifier)];
                                            [var_128 class];
                                            NSLog(@"[%@] Please upgrade to the latest version of \"%@\"", @selector(class), @selector(version));
                                            if ((r20 & var_134) == 0x1) {
                                                    asm { ccmp       w27, #0x0, #0x4, eq };
                                            }
                                            r27 = r24;
                                            r24 = r22;
                                            r22 = r26;
                                            r26 = r28;
                                            r28 = r21;
                                            r21 = var_158;
                                            if (CPU_FLAGS & E || (r19 & 0x1) == 0x0) {
                                                    [var_128 class];
                                                    [NSException raise:r2 format:r3];
                                            }
                                    }
                                    else {
                                            [var_128 class];
                                            [NSException raise:r2 format:r3];
                                    }
                            }
                            r25 = r25 + 0x1;
                    } while (r25 < r22);
                    r22 = objc_msgSend(var_130, var_178);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_130 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void *)kitClassesByAddingAnswersIfFound:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r22 = NSClassFromString(@"Crashlytics");
    r20 = NSClassFromString(@"Answers");
    if (([r19 containsObject:r2] & 0x1) != 0x0 && r22 != 0x0 && r20 != 0x0) {
            if (([r20 conformsToProtocol:@protocol(FABKit)] & 0x1) != 0x0) {
                    if (([r19 containsObject:r2] & 0x1) != 0x0) {
                            r0 = [r19 retain];
                    }
                    else {
                            r0 = [r19 arrayByAddingObject:r20];
                            r0 = [r0 retain];
                    }
            }
            else {
                    r0 = [r19 retain];
            }
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)kitClassesByEnsuringAppseeIsFirst:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = NSClassFromString(@"Appsee");
    if (r20 != 0x0 && ([r19 containsObject:r2] & 0x1) != 0x0) {
            r0 = [r19 mutableCopy];
            r21 = r0;
            [r0 removeObject:r20];
            [r21 insertObject:r20 atIndex:0x0];
    }
    else {
            r21 = [r19 retain];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)kitClassesByAddingAdMobIfFound:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (NSClassFromString(@"GADMobileAds") != 0x0) {
            r0 = [r19 arrayByAddingObject:[AdMobKit class]];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)onboardAppAndDownloadSettings {
    r20 = [[self settingsAndOnboardingManager] retain];
    r21 = [[self APIKey] retain];
    r19 = [[self kitVersionsByKitBundleIdentifier] retain];
    [r20 beginSettingsAndOnboardingOperationsWithAPIKey:r21 kitVersionsByKitBundleIdentifier:r19];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

+(void)disableUninitializedKitMessagingForKit:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([r19 conformsToProtocol:@protocol(FABKit)] != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            [r19 disableUninitializedKitMessaging];
    }
    return;
}

+(void)initializeKit:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if ([r19 conformsToProtocol:@protocol(FABKit)] != 0x0) {
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 initializeIfNeeded];
            }
    }
    else {
            r0 = [r19 sharedInstance];
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
    }
    return;
}

-(void *)kitVersionsByKitBundleIdentifier {
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
    var_120 = [[NSMutableDictionary dictionary] retain];
    r0 = [self kitClasses];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_148 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r21 = *(0x0 + r27 * 0x8);
                            if ([r21 conformsToProtocol:@protocol()] != 0x0) {
                                    r20 = [[r21 kitDisplayVersion] retain];
                                    r0 = [r21 bundleIdentifier];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [var_120 setObject:r20 forKey:r21];
                            }
                            else {
                                    r0 = [r21 sharedInstance];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r21 = [[r0 version] retain];
                                    r0 = [r20 bundleIdentifier];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [var_120 setObject:r21 forKey:r24];
                                    [r24 release];
                            }
                            [r21 release];
                            [r20 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = objc_msgSend(var_128, var_148);
            } while (r22 != 0x0);
    }
    [var_128 release];
    [var_120 setObject:*0x100e68140 forKey:*0x100e68158];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 debug];
    [r0 release];
    if (r21 != 0x0) {
            NSLog(@"[Fabric] Initialized with kit versions: %@", @selector(debug));
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [var_120 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)readInstallationUUID {
    r0 = [CLSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyByMigratingFromNSUserDefaults:@"com.crashlytics.iuuid"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateInstallationUUID {
    [sub_100096bfc() retain];
    r0 = [CLSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)setCrashlyticsCollectionEnabled:(bool)arg2 {
    [CLSDataCollectionArbiter setCrashlyticsCollectionEnabled:arg2];
    return;
}

-(void *)fabricConfig {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fabricConfig));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = [[r0 infoDictionary] retain];
            [r0 release];
            r0 = [r19 validFabricConfigFromInfoPlist:r21];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r21 release];
            r0 = *(r19 + r22);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)isCrashlyticsCollectionEnabled {
    r0 = [CLSDataCollectionArbiter isCrashlyticsCollectionEnabled];
    return r0;
}

-(void *)APIKey {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_APIKey));
    r0 = *(r19 + r23);
    if (r0 == 0x0) goto loc_100098830;

loc_100098810:
    r19 = [r0 retain];
    goto loc_100098818;

loc_100098818:
    r0 = [r19 autorelease];
    return r0;

loc_100098830:
    if ([r19 firebaseMode] == 0x0) goto loc_1000988e8;

loc_100098844:
    r0 = [r19 firebaseGoogleAppId];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r20 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r21 = r0;
            r0 = sub_100096a58(r0);
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 substringToIndex:0x28];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
            r19 = [*(r19 + r23) retain];
    }
    else {
            NSLog(@"[Fabric] GoogleService-Info.plist key GOOGLE_APP_ID unavailable");
            r19 = 0x0;
    }
    [r20 release];
    goto loc_100098818;

loc_1000988e8:
    r0 = [r19 fabricConfig];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:*0x100e68168];
    r0 = [r0 retain];
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    [r20 release];
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            NSLog(@"[Fabric] Fabric API Key is nil! Fabric won't work unless there is a valid API Key setup in Info.plist");
            r0 = *(r19 + r23);
    }
    goto loc_100098810;
}

-(void *)configurationDictionaryForKit:(void *)arg2 {
    r0 = [Fabric configurationDictionaryForKitClass:[arg2 class]];
    return r0;
}

-(bool)setFirebaseGoogleAppIdFromUserInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100098a70;

loc_1000989c4:
    r22 = @selector(isKindOfClass:);
    r0 = [r19 objectForKeyedSubscript:@"FIRGoogleAppIDKey"];
    r29 = r29;
    r20 = [r0 retain];
    [NSString class];
    if (objc_msgSend(r20, r22) == 0x0 || [r20 length] == 0x0) goto loc_100098a68;

loc_100098a20:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    [r0 setFirebaseGoogleAppId:r20];
    [r0 release];
    [r20 release];
    r20 = 0x1;
    goto loc_100098a74;

loc_100098a74:
    [r19 release];
    r0 = r20;
    return r0;

loc_100098a68:
    [r20 release];
    goto loc_100098a70;

loc_100098a70:
    r20 = 0x0;
    goto loc_100098a74;
}

-(void *)validFabricConfigFromInfoPlist:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 firebaseMode] != 0x0) {
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    else {
            if (r19 != 0x0) {
                    r21 = @selector(class);
            }
            else {
                    r21 = @selector(class);
                    objc_msgSend(r20, r21);
                    r3 = @"[%@] Cannot find Info.plist.";
                    [NSException raise:*0x100e68190 format:r3];
            }
            r0 = [r19 objectForKey:*0x100e68160];
            r29 = r29;
            r22 = [r0 retain];
            objc_msgSend(@class(NSDictionary), r21);
            if (([r22 isKindOfClass:r2] & 0x1) == 0x0) {
                    objc_msgSend(r20, r21);
                    r3 = @"[%@] Value of Info.plist key \"%@\" must be a NSDictionary.";
                    [NSException raise:*0x100e68190 format:r3];
            }
            r24 = @selector(isKindOfClass:);
            r0 = [r22 objectForKey:*0x100e68170];
            r29 = r29;
            r26 = [r0 retain];
            r2 = objc_msgSend(@class(NSArray), r21);
            r27 = objc_msgSend(r26, r24);
            [r26 release];
            if ((r27 & 0x1) == 0x0) {
                    objc_msgSend(r20, r21);
                    objc_msgSend(r20, r21);
                    NSLog(@"[Fabric] [%@] Value of Info.plist[%@][%@] should be a NSArray.", r21, r2, r3);
            }
            [[r22 objectForKey:*0x100e68168] retain];
            objc_msgSend(@class(NSString), r21);
            r24 = objc_msgSend(r23, r24);
            [r23 release];
            if ((r24 & 0x1) == 0x0) {
                    objc_msgSend(r20, r21);
                    objc_msgSend(r20, r21);
                    objc_msgSend(r20, r21);
                    [NSException raise:*0x100e68190 format:@"[%@] Value of Info.plist[%@][%@] must contain your %@ API Key."];
            }
            [r20 setInstallationMode:0x1];
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)settings {
    r0 = [self settingsAndOnboardingManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 settingsModel];
    r0 = [r0 retain];
    r21 = [[r0 settingsDictionary] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)instanceIdentifier {
    r0 = [self applicationIdentifierModel];
    r0 = [r0 retain];
    r20 = [[r0 instanceIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)configurationDictionaryForKitClass:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self sharedSDK];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 fabricConfig];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e68170] retain];
    [r0 release];
    [r21 release];
    r22 = [NSStringFromClass(arg2) retain];
    r20 = [[NSPredicate predicateWithFormat:@"%K == %@"] retain];
    [r22 release];
    r0 = [r19 filteredArrayUsingPredicate:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r21 objectAtIndex:0x0];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 == 0x0) {
                    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)firebaseMode {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self installationMode];
    if (r0 == 0x2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)shouldAutoInitialize:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r19 = [[r2 objectForKey:r2] retain];
            if (r19 != 0x0) {
                    r20 = [r19 boolValue];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x1;
    }
    r0 = r20;
    return r0;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 addObserverForName:@"FIRAppReadyToConfigureSDKNotification" object:0x0 queue:0x0 usingBlock:&var_68];
    r0 = [r0 retain];
    r8 = *(&var_40 + 0x28);
    *(&var_40 + 0x28) = r0;
    [r8 release];
    [r19 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    return;
}

-(bool)debug {
    r0 = *(int8_t *)(int64_t *)&self->_debug;
    return r0;
}

-(void)setDebug:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debug = arg2;
    return;
}

+(void)autoInitialize:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 infoDictionary] retain];
    [r0 release];
    r21 = [[r20 objectForKey:*0x100e68160] retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 installationMode];
    [r0 release];
    if (r24 != 0x1) goto loc_10009942c;

loc_1000993d4:
    if (([CLSDataCollectionArbiter isCrashlyticsCollectionEnabled] & 0x1) != 0x0) goto loc_10009961c;

loc_1000993ec:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 == 0x0) goto loc_10009961c;

loc_100099420:
    r0 = @"[Fabric] Firebase automatic data collection has been disabled. In order to also disable automatic data collection in Fabric, change your app delegate so that Firebase is initialized before Fabric.";
    goto loc_100099618;

loc_100099618:
    NSLog(r0);
    goto loc_10009961c;

loc_10009961c:
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_10009942c:
    r0 = [Fabric sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 shouldAutoInitialize:r21];
    [r0 release];
    if (r24 == 0x0) goto loc_10009961c;

loc_100099464:
    r0 = [Fabric sharedSDK];
    r29 = r29;
    r23 = [r0 retain];
    if (r21 == 0x0) goto loc_1000994a0;

loc_100099488:
    [r23 setInstallationMode:r2];
    [r23 release];
    goto loc_1000994ec;

loc_1000994ec:
    if (([CLSDataCollectionArbiter isCrashlyticsCollectionEnabled] & 0x1) == 0x0) goto loc_100099584;

loc_100099504:
    if (([CLSDataCollectionArbiter isLegacyPlistCrashlyticsCollectionEnabled] & 0x1) == 0x0) goto loc_1000995c4;

loc_100099518:
    r0 = NSClassFromString(@"Crashlytics");
    if (r0 == 0x0) goto loc_100099610;

loc_100099528:
    r23 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
    [[[Fabric with:r23] retain] release];
    [r23 release];
    goto loc_10009961c;

loc_100099610:
    r0 = @"[Fabric] [Crashlytics] Attempting to initialize Crashlytics via Firebase but could not find Crashlytics.";
    goto loc_100099618;

loc_1000995c4:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 == 0x0) goto loc_10009961c;

loc_1000995f8:
    r0 = @"[Fabric] [Crashlytics] automatic initialization disabled via Info.plist key: firebase_crashlytics_collection_enabled";
    goto loc_100099618;

loc_100099584:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r23 = [r0 debug];
    [r0 release];
    if (r23 == 0x0) goto loc_10009961c;

loc_1000995b8:
    r0 = @"[Fabric] [Crashlytics] automatic initialization disabled because data collection is disabled";
    goto loc_100099618;

loc_1000994a0:
    [r23 setInstallationMode:r2];
    [r23 release];
    r0 = @class(Fabric);
    r0 = [r0 sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 setFirebaseGoogleAppIdFromUserInfo:r19];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_100099604;
    goto loc_1000994ec;

loc_100099604:
    r0 = @"[Fabric] [Crashlytics] attempted initialization via Firebase, but did not get a Google App Id";
    goto loc_100099618;
}

-(void)regenerateInstallIDIfNeededWithManager:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    if (r20 != 0x0) {
            r0 = [NSString stringWithFormat:@"%@%@%@"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = NSSelectorFromString(r0);
            [r0 release];
            if ([r20 respondsToSelector:r2] != 0x0) {
                    r22 = @selector(respondsToSelector:);
                    r20 = [[r20 performSelector:r24] retain];
                    r0 = @class(NSString);
                    r0 = [r0 stringWithFormat:@"%@%@%@"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = NSSelectorFromString(r0);
                    [r0 release];
                    if (objc_msgSend(r20, r22) != 0x0 && [r20 performSelector:r24] != 0x0) {
                            r22 = @selector(respondsToSelector:);
                            r0 = [NSString stringWithFormat:@"%@%@%@"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = NSSelectorFromString(r0);
                            [r0 release];
                            if (objc_msgSend(r20, r22) != 0x0) {
                                    r0 = [CLSUserDefaults standardUserDefaults];
                                    r0 = [r0 retain];
                                    r22 = [[r0 objectForKey:@"com.crashlytics.install.adid"] retain];
                                    [r0 release];
                                    r0 = [r20 performSelector:r24];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [NSUUID class];
                                    if ([r23 isKindOfClass:r2] != 0x0) {
                                            r24 = [[r23 UUIDString] retain];
                                            r0 = @class(CLSUserDefaults);
                                            r0 = [r0 standardUserDefaults];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 setObject:r2 forKey:r3];
                                            [r25 release];
                                    }
                                    else {
                                            r24 = 0x0;
                                    }
                                    if ([r22 length] != 0x0 && ([r22 isEqualToString:r2] & 0x1) == 0x0) {
                                            NSLog(@"[Fabric] regenerating install ID");
                                            r0 = [r19 generateInstallationUUID];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_installID));
                                            r8 = *(r19 + r9);
                                            *(r19 + r9) = r0;
                                            [r8 release];
                                    }
                                    r0 = [CLSUserDefaults standardUserDefaults];
                                    r0 = [r0 retain];
                                    [r0 synchronize];
                                    [r19 release];
                                    [r23 release];
                                    [r22 release];
                                    [r24 release];
                            }
                    }
                    [r20 release];
            }
    }
    return;
}

-(void)setAPIKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)installID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_installID)), 0x0);
    return r0;
}

-(bool)isFirstInstall {
    r0 = *(int8_t *)(int64_t *)&self->_isFirstInstall;
    return r0;
}

-(void *)executionIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_executionIdentifier)), 0x0);
    return r0;
}

-(void *)advertisingToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_advertisingToken)), 0x0);
    return r0;
}

-(void)setAdvertisingToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)kitClasses {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_kitClasses)), 0x0);
    return r0;
}

-(void)setKitClasses:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setFabricConfig:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)settingsAndOnboardingManager {
    r0 = self->_settingsAndOnboardingManager;
    return r0;
}

-(void)setSettingsAndOnboardingManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settingsAndOnboardingManager, arg2);
    return;
}

-(void *)applicationIdentifierModel {
    r0 = self->_applicationIdentifierModel;
    return r0;
}

-(unsigned long long)installationMode {
    r0 = self->_installationMode;
    return r0;
}

-(void)setInstallationMode:(unsigned long long)arg2 {
    self->_installationMode = arg2;
    return;
}

-(void *)firebaseGoogleAppId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_firebaseGoogleAppId)), 0x0);
    return r0;
}

-(void)setFirebaseGoogleAppId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_firebaseGoogleAppId, 0x0);
    objc_storeStrong((int64_t *)&self->_applicationIdentifierModel, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsAndOnboardingManager, 0x0);
    objc_storeStrong((int64_t *)&self->_fabricConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_kitClasses, 0x0);
    objc_storeStrong((int64_t *)&self->_advertisingToken, 0x0);
    objc_storeStrong((int64_t *)&self->_executionIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_installID, 0x0);
    objc_storeStrong((int64_t *)&self->_APIKey, 0x0);
    return;
}

@end