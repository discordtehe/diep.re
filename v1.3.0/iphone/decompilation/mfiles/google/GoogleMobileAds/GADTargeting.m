@implementation GADTargeting

-(void *)signalSources {
    r0 = self->_signalSources;
    r0 = [r0 mutableCopy];
    sub_100822058(r0, *0x100e92218, self);
    r0 = [r20 autorelease];
    return r0;
}

-(void)setSignalSource:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            sub_100822058(r21->_signalSources, r20, r19);
    }
    else {
            sub_1007ce06c(0x0, @"Must be non-nil.\nkey:%@\nsource:%@");
    }
    [r19 release];
    return;
}

-(void *)networkExtrasForAdapterClass:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    if ([r21 respondsToSelector:r2] != 0x0) {
            r0 = [r20 networkExtrasForClass:[r21 networkExtrasClass]];
            r0 = [r0 retain];
    }
    else {
            r1 = @selector(respondsToSelector:);
            [NSStringFromClass(r21) retain];
            [NSStringFromSelector(@selector(networkExtrasClass)) retain];
            NSLog(@"<Google> Adapter class %@ does not respond to %@. Unable to retrieve network extras.", r1, @selector(networkExtrasClass));
            [r19 release];
            [r20 release];
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)networkExtrasForClass:(void *)arg2 {
    r19 = self->_networkExtrasMap;
    r20 = [NSStringFromClass(arg2) retain];
    r19 = [[r19 objectForKeyedSubscript:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithRequest:(void *)arg2 adUnitID:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalSources));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 categoryExclusions];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_categoryExclusions));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 childDirectedTreatment];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_childDirectedTreatment));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 contentURL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_contentURLString));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 customTargeting];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customTargeting));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 keywords];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_keywords));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 location];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_location));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 networkExtrasMap];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkExtrasMap));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 publisherProvidedID];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_publisherProvidedID));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 requestAgent];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestAgent));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 testDevices];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_testDeviceIdentifiers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 adTypes];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 additionalSignals];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_additionalRequestSignals));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r21 + r8) = *0x100bf4518;
            *(int128_t *)(r21 + r8) = *(int128_t *)0x100bf4508;
            r0 = [r19 adData];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adData));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 requestOrigin];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestOrigin));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 birthday];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_birthday));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            r21->_gender = [r19 gender];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    var_28 = [self retain];
    r0 = objc_retainBlock(&var_48);
    *arg3 = [r0 autorelease];
    [var_28 release];
    return;
}

-(bool)testModeEnabled {
    r31 = r31 - 0x140;
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
    if (sub_100818960() != 0x0) {
            r0 = [*0x100e99658 retain];
    }
    else {
            r0 = sub_100818bbc();
            r0 = [r0 retain];
    }
    r19 = r0;
    if ([r0 length] == 0x0) goto loc_10084b638;

loc_10084b534:
    r0 = r20->_testDeviceIdentifiers;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_10084b630;

loc_10084b594:
    r21 = 0x0;
    goto loc_10084b5a4;

loc_10084b5a4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r23 = @selector(class);
    r26 = *(0x0 + r21 * 0x8);
    objc_msgSend(@class(NSString), r23);
    if (objc_msgSend(r26, r24) == 0x0 || ([r19 isEqual:r2] & 0x1) == 0x0) goto loc_10084b5f8;

loc_10084b640:
    [r20 release];
    r20 = 0x1;
    goto loc_10084b64c;

loc_10084b64c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10084b5f8:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_10084b5a4;

loc_10084b604:
    r22 = objc_msgSend(r20, var_120);
    if (r22 != 0x0) goto loc_10084b594;

loc_10084b630:
    [r20 release];
    goto loc_10084b638;

loc_10084b638:
    r20 = 0x0;
    goto loc_10084b64c;
}

-(void *)adTypes {
    r0 = self->_adTypes;
    return r0;
}

-(void *)adData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adData)), 0x0);
    return r0;
}

-(void)setAdData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)keywords {
    r0 = self->_keywords;
    return r0;
}

-(void *)location {
    r0 = self->_location;
    return r0;
}

-(long long)gender {
    r0 = self->_gender;
    return r0;
}

-(void *)birthday {
    r0 = self->_birthday;
    return r0;
}

-(void *)testDeviceIdentifiers {
    r0 = self->_testDeviceIdentifiers;
    return r0;
}

-(void *)childDirectedTreatment {
    r0 = self->_childDirectedTreatment;
    return r0;
}

-(void *)requestAgent {
    r0 = self->_requestAgent;
    return r0;
}

-(void *)requestOrigin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestOrigin)), 0x0);
    return r0;
}

-(void)setRequestOrigin:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void)setUserIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier)), 0x0);
    return r0;
}

-(void *)customRewardString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customRewardString)), 0x0);
    return r0;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_additionalRequestSignals));
    r0 = *(r20 + r21);
    r1 = @selector(count);
    var_88 = r1;
    if (objc_msgSend(r0, r1) != 0x0) {
            [r19 addEntriesFromDictionary:*(r20 + r21)];
    }
    r0 = @(YES);
    r29 = r29;
    sub_100822058(r19, *0x100e95d08, [r0 retain]);
    [r22 release];
    sub_100822058(r19, *0x100e95cb8, r20->_adTypes);
    sub_100822058(r19, *0x100e95b98, *0x100e9f550);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gender));
    r8 = *(r20 + r8);
    if (r8 == 0x2) goto loc_10084b874;

loc_10084b860:
    if (r8 != 0x1) goto loc_10084b88c;

loc_10084b868:
    r8 = 0x100e95e60;
    goto loc_10084b87c;

loc_10084b87c:
    r22 = [*r8 retain];
    goto loc_10084b890;

loc_10084b890:
    sub_100822058(r19, *0x100e95d38, r22);
    [r22 release];
    r23 = [r20->_birthday retain];
    r0 = [NSDateFormatter alloc];
    r0 = [r0 init];
    [r0 setDateFormat:@"yyyyMMdd"];
    r24 = [r0 stringFromDate:r23];
    [r23 release];
    [r24 retain];
    [r0 release];
    sub_100822058(r19, *0x100e95d40, r24);
    [r23 release];
    r23 = [r20->_contentURLString retain];
    r0 = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    r29 = r29;
    r24 = [r0 retain];
    r22 = [r23 stringByTrimmingCharactersInSet:r24];
    [r23 release];
    r22 = [r22 retain];
    [r24 release];
    r1 = @selector(length);
    var_58 = r1;
    if (objc_msgSend(r22, r1) != 0x0) {
            r23 = [r22 retain];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    sub_100822058(r19, *0x100e95d70, r23);
    [r23 release];
    sub_100822058(r19, *0x100e95d50, r20->_keywords);
    sub_100822058(r19, *0x100e95d98, r20->_requestAgent);
    sub_100822058(r19, *0x100e95d10, r20->_requestOrigin);
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r24 = [[r0 requestConfiguration] retain];
    [r0 release];
    sub_100822058(r19, *0x100e95f50, [[r24 maxAdContentRating] retain]);
    [r22 release];
    var_70 = r24;
    r0 = [r24 underAgeOfConsent];
    r0 = [r0 retain];
    r0 = [r0 stringValue];
    r29 = r29;
    sub_100822058(r19, *0x100e95d78, [r0 retain]);
    [r24 release];
    [r22 release];
    r0 = r20->_location;
    if (r0 != 0x0) {
            r22 = [r0 retain];
    }
    else {
            r0 = [GADLocationService sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 location];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
    }
    var_78 = r22;
    sub_100822058(r19, *0x100e95d48, [[r22 dictionaryRepresentation] retain]);
    [r22 release];
    r24 = @class(NSNumber);
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 boolForKey:*0x100e9b638];
    r0 = [r24 numberWithBool:r2];
    r29 = r29;
    sub_100822058(r19, *0x100e95ea8, [r0 retain]);
    [r24 release];
    [r27 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_customTargeting));
    r27 = var_88;
    if (objc_msgSend(*(r20 + r22), r27) != 0x0) {
            sub_100822058(r19, *0x100e95e40, *(r20 + r22));
    }
    r0 = sub_1007dab88();
    r0 = [r0 retain];
    var_98 = r0;
    sub_100822058(r19, *0x100e95d58, r0);
    r24 = [[NSMutableArray alloc] init];
    r0 = [r20 childDirectedTreatment];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_100822370(r24, @"1");
    }
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    var_60 = r24;
    r24 = r0;
    r0 = [r0 tagForChildDirectedTreatment];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    r0 = r24;
    r24 = var_60;
    [r0 release];
    [r22 release];
    if (r25 != 0x0) {
            sub_100822370(r24, @"2");
    }
    if (objc_msgSend(r24, r27) != 0x0) {
            r0 = [r24 componentsJoinedByString:r2];
            r29 = r29;
            sub_100822058(r19, *0x100e95d60, [r0 retain]);
            [r24 release];
    }
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b948];
    [r0 release];
    if ([r20 testModeEnabled] != 0x0) {
            if (r21 != 0x0) {
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    sub_100822058(r19, *0x100e95d28, [r0 retain]);
                    [r22 release];
            }
            sub_100822058(r19, *0x100e95d20, @"on");
    }
    r21 = r20->_networkExtrasMap;
    r22 = [NSStringFromClass([GADExtras class]) retain];
    r21 = [[r21 objectForKeyedSubscript:r22] retain];
    [r22 release];
    var_68 = r21;
    r21 = [[r21 additionalParameters] retain];
    r27 = [sub_10084a5f0() retain];
    [r21 release];
    sub_100822058(r19, *0x100e95d30, r27);
    r21 = r20->_publisherProvidedID;
    r22 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r28 = [[r21 stringByTrimmingCharactersInSet:r2] retain];
    [r22 release];
    sub_100822058(r19, *0x100e95e30, r28);
    sub_100822058(r19, *0x100e95e48, r20->_categoryExclusions);
    r0 = [GADApplication sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 debugModeEnabled] != 0x0) {
            sub_100822058(r19, *0x100e95e80, @"1");
    }
    sub_100822058(r19, *0x100e95e78, [[r21 inAppPreviewCreativeToken] retain]);
    [r24 release];
    r0 = [GADAdVerification sharedInstance];
    r0 = [r0 retain];
    sub_100822058(r19, *0x100e95f40, [[r0 OMIDVersion] retain]);
    [r25 release];
    [r24 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 arrayForKey:*0x100e9b6a8] retain];
    [r0 release];
    r0 = [r22 componentsJoinedByString:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, var_58) != 0x0) {
            sub_100822058(r19, *0x100e95d00, r24);
    }
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 stringForKey:*0x100e9b420];
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    sub_100822058(r19, *0x100e95eb8, r25);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
    if (objc_msgSend(*(r20 + r26), var_58) != 0x0) {
            sub_100822058(r19, *0x100e95cb0, *(r20 + r26));
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            [r0 setString:*(r20 + r26) forKey:*0x100e9be20];
            [r0 release];
    }
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r28 release];
    [r27 release];
    [var_68 release];
    [var_60 release];
    [var_98 release];
    [var_78 release];
    [var_70 release];
    [r19 release];
    return;

loc_10084b88c:
    r22 = 0x0;
    goto loc_10084b890;

loc_10084b874:
    r8 = 0x100e95e68;
    goto loc_10084b87c;
}

-(void)setCustomRewardString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    return r0;
}

-(void)setAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(0x10 + self + r8) = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    return;
}

-(void *)nativeAdTypes {
    r0 = self->_nativeAdTypes;
    return r0;
}

-(void)setNativeAdTypes:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdTypes, arg2);
    return;
}

-(void *)adUnitID {
    r0 = self->_adUnitID;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdTypes, 0x0);
    objc_storeStrong((int64_t *)&self->_customRewardString, 0x0);
    objc_storeStrong((int64_t *)&self->_userIdentifier, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_requestOrigin, 0x0);
    objc_storeStrong((int64_t *)&self->_requestAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_childDirectedTreatment, 0x0);
    objc_storeStrong((int64_t *)&self->_testDeviceIdentifiers, 0x0);
    objc_storeStrong((int64_t *)&self->_birthday, 0x0);
    objc_storeStrong((int64_t *)&self->_location, 0x0);
    objc_storeStrong((int64_t *)&self->_keywords, 0x0);
    objc_storeStrong((int64_t *)&self->_adData, 0x0);
    objc_storeStrong((int64_t *)&self->_adTypes, 0x0);
    objc_storeStrong((int64_t *)&self->_signalSources, 0x0);
    objc_storeStrong((int64_t *)&self->_additionalRequestSignals, 0x0);
    objc_storeStrong((int64_t *)&self->_publisherProvidedID, 0x0);
    objc_storeStrong((int64_t *)&self->_networkExtrasMap, 0x0);
    objc_storeStrong((int64_t *)&self->_customTargeting, 0x0);
    objc_storeStrong((int64_t *)&self->_contentURLString, 0x0);
    objc_storeStrong((int64_t *)&self->_categoryExclusions, 0x0);
    return;
}

@end