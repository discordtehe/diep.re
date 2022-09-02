@implementation AdColonyAppOptions

-(void)setDisableLogging:(bool)arg2 {
    r21 = [[NSNumber numberWithBool:r2] retain];
    [self setOption:@"disable_logging" withNumericValue:r21];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_disableLogging = arg2;
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
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
            *(int8_t *)(int64_t *)&r19->_disableLogging = 0x0;
            objc_storeStrong((int64_t *)&r19->_userID, @"");
            *(int8_t *)(int64_t *)&r19->_testMode = 0x0;
            objc_storeStrong((int64_t *)&r19->_mediationNetwork, @"");
            objc_storeStrong((int64_t *)&r19->_mediationNetworkVersion, @"");
            objc_storeStrong((int64_t *)&r19->_plugin, @"");
            objc_storeStrong((int64_t *)&r19->_pluginVersion, @"");
            *(int8_t *)(int64_t *)&r19->_gdprRequired = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_gdprConsentString));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adOrientation));
            *(r19 + r21) = 0x2;
            r20 = [[r19 getOptions] retain];
            r21 = [[NSNumber numberWithInteger:*(r19 + r21)] retain];
            [r20 setObject:r21 forKeyedSubscript:@"orientation"];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setUserID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [r21 retain];
    r19 = r0;
    if ([r0 length] >= 0x81) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"User ID must be 128 chars or less. Ignoring."];
    }
    else {
            if (r19 != 0x0) {
                    [r20 setOption:@"user_id" withStringValue:r19];
                    objc_storeStrong((int64_t *)&r20->_userID, r21);
                    [r20 applyGlobally];
            }
    }
    [r19 release];
    return;
}

-(void)setAdOrientation:(long long)arg2 {
    r21 = [[NSNumber numberWithInteger:r2] retain];
    [self setOption:@"orientation" withNumericValue:r21];
    [r21 release];
    self->_adOrientation = arg2;
    return;
}

-(void)setTestMode:(bool)arg2 {
    r21 = [[NSNumber numberWithBool:r2] retain];
    [self setOption:@"test_mode" withNumericValue:r21];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_testMode = arg2;
    return;
}

-(void)setMediationNetwork:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            [r21 setOption:@"mediation_network" withStringValue:r19];
            objc_storeStrong((int64_t *)&r21->_mediationNetwork, r20);
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setMediationNetworkVersion:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            [r21 setOption:@"mediation_network_version" withStringValue:r19];
            objc_storeStrong((int64_t *)&r21->_mediationNetworkVersion, r20);
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setPlugin:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            [r21 setOption:@"plugin" withStringValue:r19];
            objc_storeStrong((int64_t *)&r21->_plugin, r20);
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setPluginVersion:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            [r21 setOption:@"plugin_version" withStringValue:r19];
            objc_storeStrong((int64_t *)&r21->_pluginVersion, r20);
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(bool)disableLogging {
    r0 = *(int8_t *)(int64_t *)&self->_disableLogging;
    return r0;
}

-(void)setGdprRequired:(bool)arg2 {
    r21 = [[NSNumber numberWithBool:r2] retain];
    [self setOption:@"gdpr_required" withNumericValue:r21];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_gdprRequired = arg2;
    return;
}

-(void)setGdprConsentString:(void *)arg2 {
    r20 = [arg2 retain];
    [self setOption:@"consent_string" withStringValue:r20 lengthCheck:0x0];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gdprConsentString));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void *)userID {
    r0 = self->_userID;
    return r0;
}

-(bool)testMode {
    r0 = *(int8_t *)(int64_t *)&self->_testMode;
    return r0;
}

-(long long)adOrientation {
    r0 = self->_adOrientation;
    return r0;
}

-(void *)mediationNetwork {
    r0 = self->_mediationNetwork;
    return r0;
}

-(void *)mediationNetworkVersion {
    r0 = self->_mediationNetworkVersion;
    return r0;
}

-(void *)plugin {
    r0 = self->_plugin;
    return r0;
}

-(void *)pluginVersion {
    r0 = self->_pluginVersion;
    return r0;
}

-(bool)gdprRequired {
    r0 = *(int8_t *)(int64_t *)&self->_gdprRequired;
    return r0;
}

-(void *)gdprConsentString {
    r0 = self->_gdprConsentString;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_gdprConsentString, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_plugin, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationNetworkVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationNetwork, 0x0);
    objc_storeStrong((int64_t *)&self->_userID, 0x0);
    return;
}

-(void)applyGlobally {
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
    var_188 = [[ADCNativeLayer sharedLayer] retain];
    r0 = [self getOptions];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_180 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100248220;

loc_100247fa8:
    r20 = 0x0;
    goto loc_100248100;

loc_100248100:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_138);
    }
    r21 = *(0x0 + r20 * 0x8);
    r26 = r25;
    r0 = [r25 objectForKeyedSubscript:r21];
    r29 = r29;
    r25 = [r0 retain];
    if ([r21 isEqualToString:@"dismiss_ad_on_background"] == 0x0) goto loc_100248190;

loc_100248158:
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r21 = [r0 retain];
    [r25 boolValue];
    r0 = r21;
    r1 = @selector(setDismissAdOnBackground:);
    goto loc_1002481dc;

loc_1002481dc:
    objc_msgSend(r0, r1);
    goto loc_1002481e0;

loc_1002481e0:
    [r21 release];
    goto loc_1002481e8;

loc_1002481e8:
    [r25 release];
    r20 = r20 + 0x1;
    r25 = r26;
    if (r20 < r23) goto loc_100248100;

loc_100248200:
    r23 = objc_msgSend(var_138, var_180);
    if (r23 != 0x0) goto loc_100247fa8;

loc_100248220:
    [var_138 release];
    r24 = var_188;
    r21 = [r24 nextNativeMessageID];
    if (r25 != 0x0) {
            [NSDictionary class];
            if ([r25 isKindOfClass:r2] != 0x0) {
                    r20 = 0x0;
                    r22 = r25;
            }
            else {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r22 = [r0 retain];
                    r20 = 0x1;
            }
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r22 = [r0 retain];
            r20 = 0x1;
    }
    r23 = @selector(dictionaryWithObjects:forKeys:count:);
    r23 = [objc_msgSend(@class(NSDictionary), r23) retain];
    r19 = [[ADCMessage nativeMessageWithType:@"Options.set_options" identifier:r21 contents:r23] retain];
    [r24 sendMessage:r19];
    [r19 release];
    [r23 release];
    if (r20 != 0x0) {
            [r22 release];
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100248190:
    if ([r21 isEqualToString:@"dismiss_ad_on_background_delay_ms"] == 0x0) goto loc_100248030;

loc_1002481a8:
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r21 = [r0 retain];
    [r25 intValue];
    r0 = r21;
    r1 = @selector(setDismissAdOnBackgroundDelayMs:);
    goto loc_1002481dc;

loc_100248030:
    if ([r21 isEqualToString:@"min_supported_os"] == 0x0) goto loc_10024806c;

loc_100248048:
    r0 = [ADCAPIGuards sharedGuards];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(setMinSupportedOS:);
    goto loc_1002480f4;

loc_1002480f4:
    objc_msgSend(r0, r1);
    goto loc_1002481e0;

loc_10024806c:
    if ([r21 isEqualToString:@"use_staging_launch_server"] == 0x0) goto loc_1002480bc;

loc_100248084:
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r21 = [r0 retain];
    [r25 boolValue];
    r0 = r21;
    r1 = @selector(setUseStagingLaunchServer:);
    goto loc_1002481dc;

loc_1002480bc:
    if ([r21 isEqualToString:@"user_id"] == 0x0) goto loc_1002481e8;

loc_1002480d4:
    r0 = [ADCDevice sharedDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(setUserId:);
    goto loc_1002480f4;
}

@end