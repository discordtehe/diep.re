@implementation GADDevice

+(void *)sharedInstance {
    if (*qword_1011db888 != -0x1) {
            dispatch_once(0x1011db888, 0x100e938c0);
    }
    r0 = *0x1011db890;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [[r29 - 0x20 super] init];
    if (r19 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.device", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalsLockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSProcessInfo processInfo];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    [r20 operatingSystemVersion];
            }
            else {
                    var_30 = 0x0;
                    var_28 = 0x0;
                    var_38 = 0x0;
            }
            [r20 release];
            r0 = [NSString alloc];
            r0 = [r0 initWithFormat:@"%ld.%ld.%ld"];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_systemVersion));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            if (sub_100818968(0x8, 0x0, 0x0) != 0x0) {
                    var_40 = [r19 retain];
                    sub_100860a80();
                    [var_40 release];
            }
    }
    r0 = r19;
    return r0;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    *arg3 = [objc_retainBlock(0x100e93960) autorelease];
    return;
}

-(void)cacheParameters {
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
    r31 = r31 + 0xffffffffffffffb0 - 0x540;
    r19 = self;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 infoDictionary] retain];
    r0 = sub_10084a5f0();
    r0 = [r0 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_infoPlist));
    r8 = *(r19 + r24);
    *(r19 + r24) = r0;
    [r8 release];
    [r21 release];
    [r20 release];
    r20 = *(r19 + r24);
    r0 = @class(NSString);
    r0 = [r0 class];
    r0 = sub_10081ba6c(r20, @"DTSDKName", r0);
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_baseSDKVersion));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    r20 = *(r19 + r24);
    r0 = @class(NSString);
    r0 = [r0 class];
    r0 = sub_10081ba6c(r20, @"DTPlatformName", r0);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = *(r19 + r22);
            r0 = [r0 stringByReplacingOccurrencesOfString:r20 withString:@""];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
    }
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b408];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [NSLocale preferredLanguages];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 firstObject];
            r29 = r29;
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_language));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            r0 = r8;
    }
    else {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 arrayForKey:@"AppleLanguages"];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 firstObject];
            r29 = r29;
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_language));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    r0 = *(r19 + (r24 << @selector(firstObject)));
    r0 = [r0 lowercaseString];
    r0 = [r0 retain];
    r8 = *(r19 + (r24 << @selector(lowercaseString)));
    *(r19 + (r24 << @selector(lowercaseString))) = r0;
    [r8 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 model];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_deviceModel));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r22 release];
    uname(&stack[-1368]);
    r0 = @class(NSString);
    r0 = [r0 stringWithCString:&stack[-1368] + 0x400 encoding:0x1];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_deviceSubmodel));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r19->_userInterfaceIdiom = [r21 userInterfaceIdiom];
    r0 = [UIScreen mainScreen];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 scale];
    r19->_mainScreenDensity = d0;
    sub_100803324();
    *(int128_t *)(int64_t *)&r19->_standardizedMainScreenPortraitBounds = d0;
    *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x8) = d1;
    *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x10) = d2;
    *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x18) = d3;
    if (sub_100818968(0x9, 0x0, 0x0) != 0x0) {
            *(int8_t *)(int64_t *)&r19->_canMakePhoneCalls = 0x1;
    }
    else {
            r24 = [[NSArray arrayWithObjects:&var_550 count:0x1] retain];
            r25 = [[r19 canOpenURLStrings:r24] retain];
            [r24 release];
            r0 = [r25 objectForKeyedSubscript:@"tel://"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r19->_canMakePhoneCalls = [r0 boolValue];
            [r0 release];
            [r25 release];
    }
    var_48 = **___stack_chk_guard;
    r23 = r19->_signalsLockQueue;
    var_558 = [r19 retain];
    dispatch_async(r23, &var_578);
    [var_558 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)canOpenURLStrings:(void *)arg2 {
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
    r20 = [arg2 retain];
    var_11C = sub_100818968(0x9, 0x0, 0x0);
    r19 = self->_infoPlist;
    r0 = [NSArray class];
    r0 = sub_10081ba6c(r19, @"LSApplicationQueriesSchemes", r0);
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            var_150 = [[NSSet alloc] initWithArray:r21];
    }
    else {
            var_150 = 0x0;
    }
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    var_138 = [r0 retain];
    r22 = [[NSMutableDictionary alloc] init];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_158 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 != 0x0) {
            var_160 = r21;
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r23 = *(0x0 + r21 * 0x8);
                            r0 = [NSURL URLWithString:r23];
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r19 != 0x0) {
                                    if (var_11C != 0x0) {
                                            r0 = [r19 scheme];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            r24 = [var_150 containsObject:r20];
                                            [r20 release];
                                            if (r24 != 0x0) {
                                                    r2 = [var_138 canOpenURL:r2];
                                            }
                                            else {
                                                    r2 = 0x0;
                                            }
                                    }
                                    else {
                                            r2 = [var_138 canOpenURL:r2];
                                    }
                            }
                            else {
                                    r2 = 0x0;
                            }
                            r0 = [NSNumber numberWithBool:r2];
                            r29 = r29;
                            sub_100822058(r22, r23, [r0 retain]);
                            [r20 release];
                            [r19 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r26);
                    r26 = objc_msgSend(var_128, var_158);
            } while (r26 != 0x0);
            r21 = var_160;
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    [var_138 release];
    [var_150 release];
    [r21 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
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
    r21 = self;
    r22 = [arg2 retain];
    r19 = [[GADApplication sharedInstance] retain];
    r0 = [r21 deviceModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isEqual:r2];
    [r0 release];
    if (r24 != 0x0 && r21->_userInterfaceIdiom == 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            sub_100822058(r22, *0x100e95ba0, [r0 retain]);
            [r24 release];
    }
    sub_100822058(r22, *0x100e95bc0, [[r19 mainBundleIdentifier] retain]);
    [r24 release];
    sub_100822058(r22, *0x100e95bc8, [[r19 version] retain]);
    [r24 release];
    sub_100822058(r22, *0x100e95bd0, [[r19 buildNumber] retain]);
    [r24 release];
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:@"/Applications/Cydia.app"];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            sub_100822058(r22, *0x100e95bd8, [r0 retain]);
            [r24 release];
    }
    r23 = r21->_signalsLockQueue;
    r22 = [r22 retain];
    var_50 = r22;
    var_48 = [r21 retain];
    dispatch_sync(r23, &var_70);
    sub_100822058(r22, *0x100e95bb8, r21->_infoPlist);
    sub_100822058(r22, *0x100e95bb0, r21->_baseSDKVersion);
    sub_100822058(r22, *0x100e95bf0, r21->_deviceModel);
    sub_100822058(r22, *0x100e95bf8, r21->_deviceSubmodel);
    sub_100822058(r22, *0x100e95c00, r21->_language);
    sub_100822058(r22, *0x100e95eb0, r21->_systemVersion);
    sub_100822058(r22, *0x100e95c78, @"arm64");
    sub_100822058(r22, *0x100e95c50, [sub_1007da734() retain]);
    [r21 release];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b3f0];
    [r0 release];
    if (r21 != 0x0) {
            r23 = *0x100e95c50;
            r20 = [[NSMutableDictionary alloc] init];
            r21 = [sub_100818ab4() retain];
            if (sub_100818a34() != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = @"0";
                    }
                    else {
                            r23 = @"1";
                    }
            }
            [r23 retain];
            sub_100822058(r20, *0x100e95e88, r21);
            sub_100822058(r20, *0x100e95e90, r23);
            [r25 release];
            sub_100822058(r20, *0x100e95e98, @"idfa");
            sub_100822058(r22, *0x100e95ea0, r20);
            [r21 release];
            [r20 release];
    }
    [var_48 release];
    [var_50 release];
    [r19 release];
    [r22 release];
    return;
}

-(bool)canMakePhoneCalls {
    r0 = *(int8_t *)(int64_t *)&self->_canMakePhoneCalls;
    return r0;
}

-(void *)systemVersion {
    r0 = self->_systemVersion;
    return r0;
}

-(void *)deviceModel {
    r0 = self->_deviceModel;
    return r0;
}

-(void *)deviceSubmodel {
    r0 = self->_deviceSubmodel;
    return r0;
}

-(long long)userInterfaceIdiom {
    r0 = self->_userInterfaceIdiom;
    return r0;
}

-(double)mainScreenDensity {
    r0 = self;
    return r0;
}

-(struct CGRect)standardizedMainScreenPortraitBounds {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deviceSubmodel, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceModel, 0x0);
    objc_storeStrong((int64_t *)&self->_systemVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_iTunesMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_signalsLockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_baseSDKVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_language, 0x0);
    objc_storeStrong((int64_t *)&self->_infoPlist, 0x0);
    return;
}

@end