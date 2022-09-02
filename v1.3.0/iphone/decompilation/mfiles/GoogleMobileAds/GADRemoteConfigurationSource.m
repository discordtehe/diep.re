@implementation GADRemoteConfigurationSource

+(void *)sharedInstance {
    if (*qword_1011dbf58 != -0x1) {
            dispatch_once(0x1011dbf58, 0x100e9e598);
    }
    r0 = *0x1011dbf60;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
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
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.remote-configuration", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:*0x100e9c048 object:0x0 queue:0x0 usingBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void)refreshFromPublisherRequest {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)refresh {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)refreshIfNeeded {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_refreshIsInProgress));
    r10 = *(int8_t *)(r19 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adMobAppIDChanged));
    if (r10 == 0x0 || *(int8_t *)(r19 + r9) != 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            *(int8_t *)(r19 + r9) = 0x0;
            r20 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_18 = [r19 retain];
            dispatch_async(r20, &var_38);
            [r20 release];
            [var_18 release];
    }
    return;
}

-(bool)didRefreshSinceAppStart {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)refreshWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r26 = self;
    r19 = [arg2 retain];
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 googleMobileAdsAppID];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if ([r20 length] == 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 stringForKey:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r20 release];
            [r23 release];
            r20 = r24;
    }
    r27 = @selector(length);
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 stringForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if (objc_msgSend(r20, r27) != 0x0 || [r21 length] != 0x0) goto loc_1008b83d0;

loc_1008b846c:
    (*(r19 + 0x10))(r19);
    goto loc_1008b8708;

loc_1008b8708:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008b83d0:
    r0 = sub_1008a4580(r29 - 0x68);
    r29 = r29;
    r23 = [r0 retain];
    r24 = [0x0 retain];
    if (r24 == 0x0) goto loc_1008b841c;

loc_1008b83f8:
    sub_1007ce06c(0x0, @"Failed to load SDK Core. error: %@");
    (*(r19 + 0x10))(r19);
    goto loc_1008b86f8;

loc_1008b86f8:
    [r23 release];
    [r24 release];
    goto loc_1008b8708;

loc_1008b841c:
    r27 = @selector(length);
    r28 = [[NSMutableDictionary alloc] init];
    if (objc_msgSend(r20, r27) == 0x0) goto loc_1008b847c;

loc_1008b8454:
    var_108 = r23;
    r1 = @"app_id";
    r0 = r28;
    r2 = r20;
    goto loc_1008b84a0;

loc_1008b84a0:
    sub_100822058(r0, r1, r2);
    r25 = r26->_lockQueue;
    var_78 = [r26 retain];
    var_70 = [r28 retain];
    dispatch_sync(r25, &var_98);
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 mainBundleIdentifier];
    r0 = [r0 retain];
    sub_100822058(r26, @"pn", [r0 copy]);
    [r28 release];
    [r23 release];
    r0 = r25;
    [r0 release];
    objc_initWeak(&stack[-176], r27);
    r27 = [GADOperation alloc];
    r23 = var_108;
    var_B0 = [r23 retain];
    var_A8 = [r26 retain];
    r26 = [r27 initWithBlock:&var_D0];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b550];
    [r26 setTimeout:*0x100e9b550];
    [r0 release];
    objc_copyWeak(&var_100 + 0x28, &stack[-176]);
    var_E0 = [r19 retain];
    [r26 setCompletionBlock:&var_100];
    [r26 start];
    [var_E0 release];
    objc_destroyWeak(&var_100 + 0x28);
    [r26 release];
    [var_A8 release];
    [var_B0 release];
    objc_destroyWeak(&stack[-176]);
    [var_70 release];
    [var_78 release];
    r28 = r28;
    goto loc_1008b86f0;

loc_1008b86f0:
    [r28 release];
    goto loc_1008b86f8;

loc_1008b847c:
    if ([r21 length] == 0x0) goto loc_1008b8744;

loc_1008b848c:
    var_108 = r23;
    r1 = @"ad_unit_id";
    r0 = r28;
    r2 = r21;
    goto loc_1008b84a0;

loc_1008b8744:
    (*(r19 + 0x10))(r19);
    goto loc_1008b86f0;
}

-(void)processRemoteConfigurationResult:(void *)arg2 error:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xe0;
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
    r29 = &saved_fp;
    r24 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    if (r19 == 0x0 && r22 == 0x0) {
            (*(r20 + 0x10))(r20);
    }
    else {
            if (r22 != 0x0) {
                    (*(r20 + 0x10))(r20);
                    r0 = r22;
            }
            else {
                    r1 = @selector(objectForKeyedSubscript:);
                    r0 = objc_msgSend(r19, r1);
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            NSLog(@"<Google> Error while fetching remote configuration. errorMessage:%@", r1);
                            (*(r20 + 0x10))(r20);
                    }
                    else {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 boolValue];
                            [r0 release];
                            if ((r25 & 0x1) != 0x0) {
                                    [r22 release];
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = sub_10084acf0(r0, &var_68);
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r23 = [var_68 retain];
                                    [r25 release];
                                    if (r23 != 0x0) {
                                            [[r19 objectForKeyedSubscript:r2] retain];
                                            sub_1007ce06c(0x0, @"Remote configuration JSON could not be decoded. error: %@, appSettingsJSON: %@");
                                            [r24 release];
                                            (*(r20 + 0x10))(r20);
                                    }
                                    else {
                                            r0 = [r22 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r27 = [r0 integerValue];
                                            [r0 release];
                                            if (r27 == 0x1) {
                                                    r0 = [r22 mutableCopy];
                                                    r25 = r0;
                                                    sub_1008220c0(r0, @"status");
                                                    r0 = objc_msgSend(r25, r26);
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 release];
                                                    if (r0 != 0x0) {
                                                            r28 = [[r25 objectForKeyedSubscript:r2] retain];
                                                            r26 = @selector(sharedInstance);
                                                            r0 = objc_msgSend(@class(GADSQLStorage), r26);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 setString:r28 forKey:*0x100e9be28];
                                                            [r0 release];
                                                            sub_1008220c0(r25, @"app_id");
                                                            [r28 release];
                                                    }
                                                    else {
                                                            r26 = @selector(sharedInstance);
                                                    }
                                                    r27 = r24->_lockQueue;
                                                    var_70 = [r24 retain];
                                                    dispatch_async(r27, &var_90);
                                                    r0 = [NSMutableDictionary alloc];
                                                    r0 = [r0 init];
                                                    var_98 = r0;
                                                    r27 = [r0 retain];
                                                    [r25 enumerateKeysAndObjectsUsingBlock:&var_B8];
                                                    r0 = objc_msgSend(@class(GADSettings), r26);
                                                    r0 = [r0 retain];
                                                    [r0 addEntriesFromDictionary:r27];
                                                    [r0 release];
                                                    (*(r20 + 0x10))(r20);
                                                    [var_98 release];
                                                    [r27 release];
                                                    [var_70 release];
                                                    [r25 release];
                                            }
                                            else {
                                                    (*(r20 + 0x10))(r20);
                                            }
                                    }
                                    [r22 release];
                                    [r23 release];
                            }
                            else {
                                    (*(r20 + 0x10))(r20);
                            }
                    }
                    r0 = r21;
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_lastConfigurationRefreshTimestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end