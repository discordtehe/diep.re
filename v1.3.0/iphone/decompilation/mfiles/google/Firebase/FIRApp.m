@implementation FIRApp

+(void)configure {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [FIROptions defaultOptions];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) {
            r0 = [r20 class];
            r0 = [r0 readDataCollectionSwitchFromPlist];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 == 0x0 || [r20 boolValue] != 0x0) {
                    r21 = [[NSNotificationCenter defaultCenter] retain];
                    r22 = [@(0x1) retain];
                    r23 = [[FIRApp errorForMissingOptions] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
                    r24 = [r0 retain];
                    [r21 postNotificationName:@"FIRAppDiagnosticsNotification" object:0x0 userInfo:r24];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    [r21 release];
            }
            [NSException raise:*0x100e6a920 format:@"`[FIRApp configure];` (`FirebaseApp.configure()` in Swift) could not find a valid GoogleService-Info.plist in your project. Please download one from %@."];
            [r20 release];
    }
    var_38 = **___stack_chk_guard;
    [FIRApp configureWithOptions:r19];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

+(void *)defaultApp {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*0x1011d1d68 != 0x0) {
            r0 = *0x1011d1d68;
            r0 = [r0 retain];
    }
    else {
            sub_100102750(*0x100e6a928, @"I-COR000003", @"The default Firebase app has not yet been configured. Add `[FIRApp configure];` (`FirebaseApp.configure()` in Swift) to your application initialization. Read more: https://goo.gl/ctyzm8.");
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void)configureWithOptions:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 == 0x0) {
            [NSException raise:*0x100e6a920 format:@"Options is nil. Please pass a valid options."];
    }
    [FIRApp configureWithName:@"__FIRAPP_DEFAULT" options:r19];
    [r19 release];
    return;
}

+(void *)appNamed:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011d1d70 != 0x0) {
            r21 = [[*0x1011d1d70 objectForKeyedSubscript:r20] retain];
            if (r21 == 0x0) {
                    sub_100102750(*0x100e6a928, @"I-COR000004", @"App with name %@ does not exist.");
                    r21 = 0x0;
            }
    }
    else {
            sub_100102750(*0x100e6a928, @"I-COR000004", @"App with name %@ does not exist.");
            r21 = 0x0;
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)allApps {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011d1d70 == 0x0) {
            sub_100102750(*0x100e6a928, @"I-COR000005", @"No app has been configured yet.");
    }
    [*0x1011d1d70 copy];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)resetApps {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = *0x1011d1d68;
    *0x1011d1d68 = 0x0;
    [r0 release];
    [*0x1011d1d70 removeAllObjects];
    r0 = *0x1011d1d70;
    *0x1011d1d70 = 0x0;
    [r0 release];
    objc_msgSend(*0x1011d1d78, r20);
    r0 = *0x1011d1d78;
    *0x1011d1d78 = 0x0;
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)configureWithName:(void *)arg2 options:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0 || r20 == 0x0) {
            [NSException raise:*0x100e6a920 format:@"Neither name nor options can be nil."];
    }
    if ([r19 length] == 0x0) {
            [NSException raise:*0x100e6a920 format:@"Name cannot be empty."];
    }
    if ([r19 isEqualToString:r2] != 0x0) {
            if (*qword_1011d1d68 != 0x0) {
                    [NSException raise:*0x100e6a920 format:@"Default app has already been configured."];
            }
            sub_100102838(*0x100e6a928, @"I-COR000001", @"Configuring the default app.");
    }
    else {
            var_70 = r20;
            var_68 = r21;
            if ([r19 length] != 0x0) {
                    r23 = 0x0;
                    do {
                            if (0xffffffffd0ffffff + [r19 characterAtIndex:r23] * 0x1000000 >= 0xaffffff) {
                                    asm { ccmp       w9, w27, #0x0, hs };
                            }
                            if (CPU_FLAGS & NS) {
                                    asm { ccmp       w8, w25, #0x4, hs };
                            }
                            if (CPU_FLAGS & NE) {
                                    asm { ccmp       w8, w26, #0x4, ne };
                            }
                            if (CPU_FLAGS & NE) {
                                    [NSException raise:r2 format:r3];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < [r19 length]);
            }
            r21 = var_68;
            r0 = [r21 retain];
            r22 = r0;
            objc_sync_enter(r0);
            if (*0x1011d1d70 != 0x0) {
                    r0 = *0x1011d1d70;
                    r0 = [r0 objectForKeyedSubscript:r19];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            [NSException raise:*0x100e6a920 format:@"App named %@ has already been configured."];
                    }
            }
            objc_sync_exit(r22);
            [r22 release];
            sub_100102838(*0x100e6a928, @"I-COR000002", @"Configuring app named %@");
            r20 = var_70;
    }
    r0 = [r21 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r22 = [[FIRApp alloc] initInstanceWithName:r19 options:r20];
    if ([r22 isDefaultApp] != 0x0) {
            objc_storeStrong(0x1011d1d68, r22);
    }
    [FIRApp addAppToAppDictionary:r22];
    [FIRApp sendNotificationsToSDKs:r22];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)addAppToAppDictionary:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*0x1011d1d70 == 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011d1d70;
            *0x1011d1d70 = r0;
            [r8 release];
    }
    if ([r19 configureCore] != 0x0) {
            r20 = *0x1011d1d70;
            r21 = [[r19 name] retain];
            [r20 setObject:r19 forKeyedSubscript:r21];
            [r21 release];
    }
    else {
            [NSException raise:*0x100e6a920 format:@"Configuration fails. It may be caused by an invalid GOOGLE_APP_ID in GoogleService-Info.plist or set in the customized options."];
    }
    [r19 release];
    return;
}

-(void *)initInstanceWithName:(void *)arg2 options:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_options));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [*(r21 + r22) setEditingLocked:0x1];
            *(int8_t *)(int64_t *)&r21->_isDefaultApp = [r19 isEqualToString:@"__FIRAPP_DEFAULT"];
            r0 = [FIRComponentContainer alloc];
            r0 = [r0 initWithApp:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_container));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)options {
    r0 = self->_options;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)deleteApp:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 class];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (*0x1011d1d70 != 0x0) {
            r24 = *0x1011d1d70;
            r25 = [[r21 name] retain];
            r0 = [r24 objectForKeyedSubscript:r25];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            if (r0 != 0x0) {
                    [[r21 name] retain];
                    sub_100102838(*0x100e6a928, @"I-COR000006", @"Deleting app named %@");
                    [r25 release];
                    r0 = [r21 container];
                    r0 = [r0 retain];
                    [r0 removeAllCachedInstances];
                    [r0 release];
                    r24 = *0x1011d1d70;
                    r25 = [[r21 name] retain];
                    [r24 removeObjectForKey:r25];
                    [r25 release];
                    [r21 clearDataCollectionSwitchFromUserDefaults];
                    r0 = [r21 name];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 isEqualToString:r2];
                    [r0 release];
                    if (r25 != 0x0) {
                            r0 = *0x1011d1d68;
                            *0x1011d1d68 = 0x0;
                            [r0 release];
                    }
                    r22 = @selector(class);
                    r24 = [[r21 name] retain];
                    r23 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
                    [r24 release];
                    r24 = [[NSNotificationCenter defaultCenter] retain];
                    [r24 postNotificationName:@"FIRAppDeleteNotification" object:objc_msgSend(r21, r22) userInfo:r23];
                    [r24 release];
                    (*(r19 + 0x10))(r19, 0x1);
                    [r23 release];
            }
            else {
                    sub_100102750(*0x100e6a928, @"I-COR000007", @"App does not exist.");
                    (*(r19 + 0x10))(r19, 0x0);
            }
    }
    else {
            sub_100102750(*0x100e6a928, @"I-COR000007", @"App does not exist.");
            (*(r19 + 0x10))(r19, 0x0);
    }
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)configureCore {
    r31 = r31 - 0x90;
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
    [self checkExpectedBundleID];
    if (([r19 isAppIDValid] & 0x1) != 0x0) {
            if ([r19 isDataCollectionDefaultEnabled] != 0x0) {
                    r20 = [[NSNotificationCenter defaultCenter] retain];
                    r21 = [@(0x1) retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
                    r29 = r29;
                    r22 = [r0 retain];
                    r3 = 0x0;
                    [r20 postNotificationName:@"FIRAppDiagnosticsNotification" object:r3 userInfo:r22];
                    [r22 release];
                    [r21 release];
                    [r20 release];
            }
            r0 = [r19 name];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isEqualToString:r2];
            [r0 release];
            if (r21 != 0x0) {
                    r20 = NSClassFromString(@"FIRAnalytics");
                    if (r20 != 0x0 && [r20 respondsToSelector:@selector(startWithConfiguration:options:), r3] != 0x0) {
                            r0 = [FIRConfiguration sharedInstance];
                            r0 = [r0 retain];
                            r23 = [[r0 analyticsConfiguration] retain];
                            [r20 performSelector:@selector(startWithConfiguration:options:) withObject:r23 withObject:r19->_options];
                            [r23 release];
                            [r0 release];
                    }
            }
            r0 = 0x1;
    }
    else {
            r0 = r19->_options;
            r0 = [r0 usingOptionsFromDefaultPlist];
            if (r0 != 0x0) {
                    r0 = [r19 isDataCollectionDefaultEnabled];
                    if (r0 != 0x0) {
                            r19 = [[NSNotificationCenter defaultCenter] retain];
                            r20 = [@(0x1) retain];
                            r21 = [[FIRApp errorForInvalidAppID] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
                            r22 = [r0 retain];
                            [r19 postNotificationName:@"FIRAppDiagnosticsNotification" object:0x0 userInfo:r22];
                            [r22 release];
                            [r21 release];
                            [r20 release];
                            [r19 release];
                            r0 = 0x0;
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setDataCollectionDefaultEnabled:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r22 = [[self name] retain];
    r20 = [[NSString stringWithFormat:@"/google/firebase/global_data_collection_enabled:%@"] retain];
    [r22 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setBool:r19 forKey:r20];
    [r0 release];
    if ([r21 isDefaultApp] != 0x0) {
            r0 = [r21 options];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isAnalyticsCollectionExpicitlySet];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [FIRAnalyticsConfiguration sharedInstance];
                    r0 = [r0 retain];
                    [r0 setAnalyticsCollectionEnabled:r19 persistSetting:0x0];
                    [r0 release];
            }
    }
    [r20 release];
    return;
}

-(bool)isDataCollectionDefaultEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self class];
    r0 = [r0 readDataCollectionSwitchFromUserDefaultsForApp:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r21 = [[[r20 class] readDataCollectionSwitchFromPlist] retain];
            if (r21 != 0x0) {
                    r20 = [r21 boolValue];
            }
            else {
                    r20 = 0x1;
            }
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)errorForMissingOptions {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&var_28 forKeys:&var_38 count:0x2] retain];
    r19 = [[NSError errorWithDomain:*0x100e6a920 code:0xffffffffffffff9c userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)sendNotificationsToSDKs:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r28 = [[NSNumber numberWithBool:[r0 isDefaultApp]] retain];
    r23 = [[r19 name] retain];
    r0 = [r19 options];
    r0 = [r0 retain];
    r25 = [[r0 googleAppID] retain];
    r21 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x70 forKeys:&saved_fp - 0x88 count:0x3] retain];
    [r25 release];
    [r0 release];
    [r23 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:@"FIRAppReadyToConfigureSDKNotification" object:self userInfo:r21];
    [r0 release];
    r0 = [self retain];
    r22 = r0;
    objc_sync_enter(r0);
    r0 = *0x1011d1d80;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) {
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            var_150 = r21;
            do {
                    r20 = 0x0;
                    r21 = r8;
                    r26 = *(r8 + 0xfb0);
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            objc_msgSend(*(0x0 + r20 * 0x8), r26);
                            r20 = r20 + 0x1;
                    } while (r20 < r25);
                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r8 = r21;
                    r21 = var_150;
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    objc_sync_exit(r22);
    [r22 release];
    [r21 release];
    [r28 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(bool)isDefaultAppConfigured {
    r0 = self;
    if (*qword_1011d1d68 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)errorForSubspecConfigurationFailureWithDomain:(void *)arg2 errorCode:(long long)arg3 service:(void *)arg4 reason:(void *)arg5 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r23 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [[NSString stringWithFormat:@"Configuration failed for service %@."] retain];
    [r23 release];
    r23 = [[NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
    r20 = [[NSError errorWithDomain:r19 code:arg3 userInfo:r23] retain];
    [r21 release];
    [r19 release];
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)errorForInvalidAppID {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&var_28 forKeys:&var_38 count:0x2] retain];
    r19 = [[NSError errorWithDomain:*0x100e6a920 code:0xffffffffffffff9b userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)registerInternalLibrary:(void *)arg2 withName:(void *)arg3 withVersion:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    if (([r22 conformsToProtocol:@protocol(FIRLibrary)] & 0x1) != 0x0) {
            if (([r22 respondsToSelector:r2] & 0x1) == 0x0) {
                    [NSException raise:**_NSInvalidArgumentException format:@"Class %@ attempted to register components, but it does not conform to `FIRLibrary or provide a `componentsToRegister:` method."];
            }
    }
    else {
            [NSException raise:**_NSInvalidArgumentException format:@"Class %@ attempted to register components, but it does not conform to `FIRLibrary or provide a `componentsToRegister:` method."];
    }
    r23 = @selector(respondsToSelector:);
    [FIRComponentContainer registerAsComponentRegistrant:r22];
    if (objc_msgSend(r22, r23, @selector(configureWithApp:)) != 0x0) {
            if (*qword_1011d1d88 != -0x1) {
                    dispatch_once(0x1011d1d88, 0x100e6a840);
            }
            r0 = [r20 retain];
            objc_sync_enter(r0);
            [*0x1011d1d80 addObject:r2];
            objc_sync_exit(r23);
            [r23 release];
    }
    [r20 registerLibrary:r19 withVersion:r21];
    [r21 release];
    [r19 release];
    return;
}

+(void)registerLibrary:(void *)arg2 withVersion:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSMutableCharacterSet alphanumericCharacterSet];
    r0 = [r0 retain];
    r21 = r0;
    [r0 addCharactersInString:@"-_."];
    r22 = [[r21 invertedSet] retain];
    if ([r19 rangeOfCharacterFromSet:r2] == 0x7fffffffffffffff && [r20 rangeOfCharacterFromSet:r2] == 0x7fffffffffffffff) {
            r0 = [r23 retain];
            r23 = r0;
            objc_sync_enter(r0);
            if (*0x1011d1d78 == 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    r8 = *0x1011d1d78;
                    *0x1011d1d78 = r0;
                    [r8 release];
            }
            [*0x1011d1d78 setObject:r20 forKeyedSubscript:r19];
            objc_sync_exit(r23);
            [r23 release];
    }
    else {
            sub_100102750(*0x100e6a928, @"I-COR000027", @"The library name (%@) or version number (%@) contain invalid characters. Only alphanumeric, dash, underscore and period characters are allowed.");
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)checkExpectedBundleID {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[FIRBundleUtil relevantBundles] retain];
    r20 = [[self expectedBundleID] retain];
    if (r20 != 0x0 && ([FIRBundleUtil hasBundleIdentifierPrefix:r20 inBundles:r19] & 0x1) == 0x0) {
            sub_100102750(*0x100e6a928, @"I-COR000008", @"The project's Bundle ID is inconsistent with either the Bundle ID in '%@.%@', or the Bundle ID in the options if you are using a customized options. To ensure that everything can be configured correctly, you may need to make the Bundle IDs consistent. To c…");
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)firebaseUserAgent {
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
    r29 = &saved_fp;
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r20 = [[NSMutableArray alloc] initWithCapacity:[*0x1011d1d78 count]];
    var_108 = q0;
    r0 = *0x1011d1d78;
    r0 = [r0 retain];
    var_120 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            r19 = @selector(countByEnumeratingWithState:objects:count:);
            r24 = *var_108;
            var_130 = r19;
            var_128 = r21;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_108 != r24) {
                                    objc_enumerationMutation(var_120);
                            }
                            r27 = @selector(addObject:);
                            r26 = @selector(stringWithFormat:);
                            [[*0x1011d1d78 objectForKeyedSubscript:r2] retain];
                            r0 = objc_msgSend(@class(NSString), r26);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r27);
                            [r19 release];
                            [r28 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r21 = var_128;
                    r23 = objc_msgSend(var_120, var_130);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r20 sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    r19 = [[r20 componentsJoinedByString:@" "] retain];
    [r20 release];
    objc_sync_exit(r21);
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isAppIDValid {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = r21->_options;
    r0 = [r0 googleAppID];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [FIRApp validateAppID:r19];
    if ((r20 & 0x1) == 0x0) {
            [[r21 expectedBundleID] retain];
            sub_100102750(*0x100e6a928, @"I-COR000009", @"The GOOGLE_APP_ID either in the plist file '%@.%@' or the one set in the customized options is invalid. If you are using the plist file, use the iOS version of bundle identifier to download the file, and do not manually edit the GOOGLE_APP_ID. You may chan…");
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)actualBundleID {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)validateAppID:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [NSScanner scannerWithString:r19];
            r0 = [r0 retain];
            r20 = r0;
            [r0 setCharactersToBeSkipped:0x0];
            r0 = [NSCharacterSet decimalDigitCharacterSet];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r20 scanCharactersFromSet:r23 intoString:&var_48];
            r22 = [var_48 retain];
            [r23 release];
            if (r24 != 0x0 && [r20 scanString:@":" intoString:0x0] != 0x0) {
                    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                    r0 = [r0 retain];
                    r23 = r0;
                    if (([r0 containsObject:r2] & 0x1) != 0x0) {
                            if ([r21 validateAppIDFormat:r19 withVersion:r22] != 0x0) {
                                    r21 = [r21 validateAppIDFingerprint:r19 withVersion:r22];
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            sub_1001027c4(*0x100e6a928, @"I-COR000010", @"Unknown GOOGLE_APP_ID version: %@");
                            r21 = 0x1;
                    }
                    [r23 release];
            }
            else {
                    r21 = 0x0;
            }
            [r22 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)expectedBundleID {
    r0 = self->_options;
    r0 = [r0 bundleID];
    return r0;
}

+(bool)validateAppIDFingerprint:(void *)arg2 withVersion:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [arg2 componentsSeparatedByString:@":"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if ([r20 count] == 0x4) {
            r0 = [r20 objectAtIndexedSubscript:0x3];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 length] != 0x0) {
                    r0 = [NSScanner scannerWithString:r21];
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 scanHexLongLong:&stack[-72]] != 0x0) {
                            r23 = [r19 isEqual:r2];
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r23 = 0x0;
            }
            [r21 release];
    }
    else {
            r23 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

+(bool)validateAppIDFormat:(void *)arg2 withVersion:(void *)arg3 {
    r31 = r31 - 0x60;
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
    if ([r19 length] != 0x0 && [r20 length] != 0x0) {
            r0 = [NSScanner scannerWithString:r19];
            r0 = [r0 retain];
            r21 = r0;
            [r0 setCharactersToBeSkipped:0x0];
            if ([r21 scanString:r2 intoString:r3] != 0x0 && [r21 scanInteger:&var_38] != 0x0 && [r21 scanString:r2 intoString:r3] != 0x0 && [r21 scanString:r2 intoString:r3] != 0x0) {
                    r24 = [r21 scanUpToString:@":" intoString:&var_40];
                    r23 = [var_40 retain];
                    if (r24 != 0x0) {
                            if ([r23 isEqualToString:r2] != 0x0) {
                                    if ([r21 scanString:r2 intoString:r3] != 0x0) {
                                            if ([r21 scanHexLongLong:&var_48] != 0x0) {
                                                    r22 = [r21 isAtEnd];
                                            }
                                            else {
                                                    r22 = 0x0;
                                            }
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)clearDataCollectionSwitchFromUserDefaults {
    r20 = [[self name] retain];
    [[NSString stringWithFormat:@"/google/firebase/global_data_collection_enabled:%@"] retain];
    [r20 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r20 release];
    [r19 release];
    return;
}

+(void *)readDataCollectionSwitchFromUserDefaultsForApp:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[arg2 name] retain];
    r19 = [[NSString stringWithFormat:@"/google/firebase/global_data_collection_enabled:%@"] retain];
    [r20 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r19] retain];
    [r0 release];
    [NSNumber class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)readDataCollectionSwitchFromPlist {
    if (*qword_1011d1d98 != -0x1) {
            dispatch_once(0x1011d1d98, 0x100e6a880);
    }
    r0 = *0x1011d1d90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x0);
    return r0;
}

-(bool)isDefaultApp {
    r0 = *(int8_t *)(int64_t *)&self->_isDefaultApp;
    return r0;
}

-(void)sendLogsWithServiceName:(void *)arg2 version:(void *)arg3 error:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r22 isDataCollectionDefaultEnabled] != 0x0) {
            r23 = [NSMutableDictionary alloc];
            r24 = [@(0x2) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4];
            r29 = r29;
            r25 = [r0 retain];
            r22 = [r23 initWithDictionary:r25];
            [r25 release];
            [r24 release];
            if (r21 != 0x0) {
                    [r22 setObject:r21 forKeyedSubscript:@"Error"];
            }
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:@"FIRAppDiagnosticsNotification" object:0x0 userInfo:r22];
            [r0 release];
            [r22 release];
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)container {
    r0 = self->_container;
    return r0;
}

-(void)setContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_container, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_container, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    return;
}

@end