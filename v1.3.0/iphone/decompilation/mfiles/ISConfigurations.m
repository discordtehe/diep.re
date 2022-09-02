@implementation ISConfigurations

+(void *)configurations {
    sub_1006df814(0x1011dabf8, 0x100e8bc80);
    r0 = *0x1011dabf0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_userId));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_appKey));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoCustomParameters));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_offerwallCustomParameters));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_version));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adapterTimeOutInSeconds));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_maxNumOfAdaptersToLoadOnStart));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_plugin));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_pluginVersion));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_pluginFrameworkVersion));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_maxVideosPerIteration));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r19->_userAge = 0xffffffffffffffff;
            r19->_userGender = 0x0;
            *(int8_t *)(int64_t *)&r19->_trackReachability = 0x0;
            *(int8_t *)(int64_t *)&r19->_adaptersDebug = 0x0;
            r0 = @(0x1);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serr));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_categorizeType, @"");
            r0 = @class(NSDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customSegmentParams));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_batchGenricParams));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventGenricParams));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void *)getConfigurations {
    sub_1006df814(0x1011dabf8, 0x100e8bcc0);
    r0 = *0x1011dabf0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
    r19 = [r20 retain];
    r8 = [self shouldAddPluginType:r19];
    r0 = (int64_t *)&self->_plugin;
    if (r8 != 0x0) {
            objc_storeStrong(r0, r20);
    }
    else {
            r8 = *r0;
            *r0 = 0x0;
            [r8 release];
    }
    [r19 release];
    return;
}

-(void *)userId {
    r0 = self->_userId;
    return r0;
}

-(bool)shouldAddPluginType:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1006d586c;

loc_1006d5738:
    r0 = [NSArray arrayWithObjects:r29 - 0x88 count:0x6];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006d5844;

loc_1006d57e0:
    r26 = 0x0;
    goto loc_1006d57e8;

loc_1006d57e8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    if (([*(0x0 + r26 * 0x8) isEqualToString:r2] & 0x1) != 0x0) goto loc_1006d5854;

loc_1006d5818:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1006d57e8;

loc_1006d5824:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1006d57e0;

loc_1006d5844:
    [r20 release];
    r21 = 0x0;
    goto loc_1006d5860;

loc_1006d5860:
    [r20 release];
    goto loc_1006d5870;

loc_1006d5870:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006d5854:
    [r20 release];
    r21 = 0x1;
    goto loc_1006d5860;

loc_1006d586c:
    r21 = 0x0;
    goto loc_1006d5870;
}

-(void)setUserId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userId, arg2);
    return;
}

-(void *)appKey {
    r0 = self->_appKey;
    return r0;
}

-(void)setAppKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appKey, arg2);
    return;
}

-(void *)mediationSegment {
    r0 = self->_mediationSegment;
    return r0;
}

-(void)setSegment:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_138 = self;
    r19 = [arg2 retain];
    r20 = [[ISSegment alloc] init];
    if ([r19 age] >= 0x1) {
            [r20 setAge:[r19 age]];
    }
    if ([r19 level] >= 0x1) {
            [r20 setLevel:[r19 level]];
    }
    [r19 iapTotal];
    if (d0 > 0x0) {
            [r19 iapTotal];
            [r20 setIapTotal:r2];
    }
    if ([r19 gender] != 0x0) {
            [r20 setGender:[r19 gender]];
    }
    r0 = [r19 userCreationDate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 userCreationDate];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setUserCreationDate:r22];
            [r22 release];
    }
    r0 = [r19 segmentName];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r19 segmentName];
            r29 = r29;
            r23 = [r0 retain];
            [r20 setSegmentName:r23];
            [r23 release];
    }
    r22 = @selector(length);
    r0 = [r19 isUserPaying];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    if (r22 != 0x0) {
            [r20 setPaying:[r19 paying]];
    }
    var_120 = r20;
    var_108 = q0;
    r0 = [r19 customKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r20 = *var_108;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_108 != r20) {
                                    objc_enumerationMutation(var_128);
                            }
                            r28 = *(var_110 + r21 * 0x8);
                            r0 = [r19 customKeys];
                            r0 = [r0 retain];
                            r0 = [r0 objectForKey:r28];
                            r29 = r29;
                            [r0 retain];
                            [var_120 setCustomValue:r2 forKey:r3];
                            [r24 release];
                            r0 = r19;
                            r19 = r23;
                            [r0 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r25);
                    r25 = objc_msgSend(var_128, var_130);
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_segment));
    r0 = *(var_138 + r8);
    *(var_138 + r8) = var_120;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setMediationSegment:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediationSegment, arg2);
    return;
}

-(void)setSegmentId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_segmentId, arg2);
    return;
}

-(void *)segmentId {
    r0 = self->_segmentId;
    return r0;
}

-(void *)customSegmentParams {
    r0 = self->_customSegmentParams;
    return r0;
}

-(void)setCustomSegmentParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customSegmentParams, arg2);
    return;
}

-(void *)segment {
    r0 = self->_segment;
    return r0;
}

-(void *)rewardedVideoCustomParameters {
    r0 = self->_rewardedVideoCustomParameters;
    return r0;
}

-(void)setRewardedVideoCustomParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoCustomParameters, arg2);
    return;
}

-(void *)offerwallCustomParameters {
    r0 = self->_offerwallCustomParameters;
    return r0;
}

-(void)setOfferwallCustomParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offerwallCustomParameters, arg2);
    return;
}

-(void *)version {
    r0 = self->_version;
    return r0;
}

-(void)setVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_version, arg2);
    return;
}

-(void *)adapterTimeOutInSeconds {
    r0 = self->_adapterTimeOutInSeconds;
    return r0;
}

-(void)setAdapterTimeOutInSeconds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapterTimeOutInSeconds, arg2);
    return;
}

-(void)setMaxNumOfAdaptersToLoadOnStart:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_maxNumOfAdaptersToLoadOnStart, arg2);
    return;
}

-(void *)maxNumOfAdaptersToLoadOnStart {
    r0 = self->_maxNumOfAdaptersToLoadOnStart;
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

-(void *)pluginFrameworkVersion {
    r0 = self->_pluginFrameworkVersion;
    return r0;
}

-(void)setPluginFrameworkVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pluginFrameworkVersion, arg2);
    return;
}

-(void)setPluginVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pluginVersion, arg2);
    return;
}

-(void *)maxVideosPerIteration {
    r0 = self->_maxVideosPerIteration;
    return r0;
}

-(void)setMaxVideosPerIteration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_maxVideosPerIteration, arg2);
    return;
}

-(void)setUserAge:(long long)arg2 {
    self->_userAge = arg2;
    return;
}

-(long long)userAge {
    r0 = self->_userAge;
    return r0;
}

-(long long)userGender {
    r0 = self->_userGender;
    return r0;
}

-(void)setUserGender:(long long)arg2 {
    self->_userGender = arg2;
    return;
}

-(bool)trackReachability {
    r0 = *(int8_t *)(int64_t *)&self->_trackReachability;
    return r0;
}

-(void)setTrackReachability:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_trackReachability = arg2;
    return;
}

-(void *)dynamicUserId {
    r0 = self->_dynamicUserId;
    return r0;
}

-(void)setDynamicUserId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dynamicUserId, arg2);
    return;
}

-(void)setAdaptersDebug:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adaptersDebug = arg2;
    return;
}

-(bool)adaptersDebug {
    r0 = *(int8_t *)(int64_t *)&self->_adaptersDebug;
    return r0;
}

-(void *)mediationType {
    r0 = self->_mediationType;
    return r0;
}

-(void)setMediationType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediationType, arg2);
    return;
}

-(void *)serr {
    r0 = self->_serr;
    return r0;
}

-(void)setSerr:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_serr, arg2);
    return;
}

-(void *)categorizeType {
    r0 = self->_categorizeType;
    return r0;
}

-(void)setCategorizeType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_categorizeType, arg2);
    return;
}

-(void)setRvServerParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rvServerParams, arg2);
    return;
}

-(void *)rvServerParams {
    r0 = self->_rvServerParams;
    return r0;
}

-(long long)consent {
    r0 = self->_consent;
    return r0;
}

-(void)setConsent:(long long)arg2 {
    self->_consent = arg2;
    return;
}

-(void *)batchGenricParams {
    r0 = self->_batchGenricParams;
    return r0;
}

-(void *)eventGenricParams {
    r0 = self->_eventGenricParams;
    return r0;
}

-(void)setBatchGenricParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_batchGenricParams, arg2);
    return;
}

-(void)setEventGenricParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eventGenricParams, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventGenricParams, 0x0);
    objc_storeStrong((int64_t *)&self->_batchGenricParams, 0x0);
    objc_storeStrong((int64_t *)&self->_rvServerParams, 0x0);
    objc_storeStrong((int64_t *)&self->_categorizeType, 0x0);
    objc_storeStrong((int64_t *)&self->_serr, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationType, 0x0);
    objc_storeStrong((int64_t *)&self->_dynamicUserId, 0x0);
    objc_storeStrong((int64_t *)&self->_maxVideosPerIteration, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginFrameworkVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_plugin, 0x0);
    objc_storeStrong((int64_t *)&self->_maxNumOfAdaptersToLoadOnStart, 0x0);
    objc_storeStrong((int64_t *)&self->_adapterTimeOutInSeconds, 0x0);
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallCustomParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoCustomParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_segment, 0x0);
    objc_storeStrong((int64_t *)&self->_customSegmentParams, 0x0);
    objc_storeStrong((int64_t *)&self->_segmentId, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationSegment, 0x0);
    objc_storeStrong((int64_t *)&self->_appKey, 0x0);
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    return;
}

@end