@implementation GADUserPreferences

+(void *)sharedInstance {
    if (*qword_1011dbe20 != -0x1) {
            dispatch_once(0x1011dbe20, 0x100e98318);
    }
    r0 = *0x1011dbe28;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.npa-manager", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r19);
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r21 addObserverForName:*0x100e9c168 object:0x0 queue:0x0 usingBlock:&var_90];
            objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
            [r23 addObserverForName:r24 object:0x0 queue:0x0 usingBlock:&var_B8];
            [r19 updateNPA];
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    r0 = r19;
    return r0;
}

-(void)adRequested {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)updateNPA {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)updateLastRequestParameters:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 networkExtrasForClass:[GADExtras class]];
    r0 = [r0 retain];
    r0 = [r0 additionalParameters];
    r0 = [r0 retain];
    r24 = [[r0 objectForKeyedSubscript:@"npa"] retain];
    [r0 release];
    r21 = [arg2 childDirectedTreatment];
    [r23 release];
    r21 = [r21 retain];
    r22 = self->_lockQueue;
    [r24 retain];
    var_40 = [self retain];
    [r21 retain];
    dispatch_async(r22, &var_68);
    [r21 release];
    [var_40 release];
    [r24 release];
    [r20 release];
    [r23 release];
    [r19 release];
    return;
}

-(void *)currentNPAValue {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = @class(GADMobileAds);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    r19 = [[r0 underAgeOfConsent] retain];
    [r0 release];
    [r20 release];
    r0 = @class(GADMobileAds);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    r20 = [[r0 tagForChildDirectedTreatment] retain];
    [r0 release];
    [r24 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 dictionaryForKey:@"personalized_ad_status"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r21 release];
    if (r24 != 0x0) {
            r0 = [r24 objectForKeyedSubscript:@"consent_state"];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    [r25 isEqual:@"non_personalized"];
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            else {
                    r21 = 0x0;
            }
            [r25 release];
    }
    else {
            r21 = 0x0;
    }
    [r24 release];
    if (([r19 boolValue] & 0x1) != 0x0 || ([r20 boolValue] & 0x1) != 0x0 || ([r21 boolValue] & 0x1) != 0x0) goto loc_100863808;

loc_1008637d8:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequestLevelTFCD));
    if (([*(r23 + r25) boolValue] & 0x1) != 0x0) goto loc_100863808;

loc_1008637f0:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequestLevelNPA));
    if ([*(r23 + r26) boolValue] == 0x0) goto loc_1008638a8;

loc_100863808:
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    [r0 setString:@"1" forKey:*0x100e9be48];
    [r0 release];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100863868;

loc_100863868:
    r22 = [r0 retain];
    goto loc_100863870;

loc_100863870:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_1008638a8:
    if (*(r23 + r26) != 0x0 || *(r23 + r25) != 0x0 || r21 != 0x0 || r19 != 0x0 || r20 != 0x0) goto loc_1008638c4;

loc_100863938:
    if (r21 == 0x0 && *(r23 + r26) == 0x0 || r19 == 0x0 || r20 == 0x0 && *(r23 + r25) == 0x0) goto loc_1008639b8;

loc_100863954:
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    [r0 setString:@"0" forKey:*0x100e9be48];
    [r0 release];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100863868;

loc_1008639b8:
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 stringForKey:*0x100e9be48];
    r29 = r29;
    r25 = [r0 retain];
    [r27 release];
    if ([r25 length] == 0x0) goto loc_100863a48;

loc_100863a18:
    [r25 boolValue];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100863aac;

loc_100863aac:
    r22 = [r0 retain];
    goto loc_100863ab4;

loc_100863ab4:
    [r25 release];
    goto loc_100863870;

loc_100863a48:
    if (*(int8_t *)(int64_t *)&r23->_adRequested == 0x0) goto loc_100863ac0;

loc_100863a58:
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    [r0 setString:@"0" forKey:*0x100e9be48];
    [r0 release];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100863aac;

loc_100863ac0:
    r22 = 0x0;
    goto loc_100863ab4;

loc_1008638c4:
    if (*(int8_t *)(int64_t *)&r23->_adRequested == 0x0) goto loc_100863938;

loc_1008638d4:
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    [r0 setString:@"0" forKey:*0x100e9be48];
    [r0 release];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100863868;
}

-(void *)NPA {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastRequestLevelNPA, 0x0);
    objc_storeStrong((int64_t *)&self->_lastRequestLevelTFCD, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_NPA, 0x0);
    return;
}

@end