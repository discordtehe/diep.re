@implementation FBAdEnvironmentData

-(void *)initWithPlacementId:(void *)arg2 placementType:(long long)arg3 templateID:(long long)arg4 adSize:(struct FBAdSize)arg5 bidPayload:(void *)arg6 extraHint:(void *)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r24 = [arg2 retain];
    r20 = [r5 retain];
    r19 = [self initInternalWithPlacementId:r24 publisherId:0x0 placementType:arg3 templateID:arg4 adSize:0x1 numAdsRequested:r20 bidPayload:r6 extraHint:stack[-88]];
    [r20 release];
    [r24 release];
    r0 = r19;
    return r0;
}

-(void *)initWithPlacementId:(void *)arg2 placementType:(long long)arg3 templateID:(long long)arg4 adSize:(struct FBAdSize)arg5 numAdsRequested:(unsigned long long)arg6 extraHint:(void *)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r24 = [arg2 retain];
    r19 = [self initInternalWithPlacementId:r24 publisherId:0x0 placementType:arg3 templateID:arg4 adSize:r5 numAdsRequested:0x0 bidPayload:r6 extraHint:stack[-88]];
    [r24 release];
    r0 = r19;
    return r0;
}

-(void *)initWithPlacementId:(void *)arg2 placementType:(long long)arg3 templateID:(long long)arg4 adSize:(struct FBAdSize)arg5 numAdsRequested:(unsigned long long)arg6 bidPayload:(void *)arg7 extraHint:(void *)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r25 = [arg2 retain];
    r20 = [r6 retain];
    r19 = [self initInternalWithPlacementId:r25 publisherId:0x0 placementType:arg3 templateID:arg4 adSize:r5 numAdsRequested:r20 bidPayload:r7 extraHint:stack[-104]];
    [r20 release];
    [r25 release];
    r0 = r19;
    return r0;
}

-(void *)initInternalWithPlacementId:(void *)arg2 publisherId:(void *)arg3 placementType:(long long)arg4 templateID:(long long)arg5 adSize:(struct FBAdSize)arg6 numAdsRequested:(unsigned long long)arg7 bidPayload:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r6, &arg6, 0x8);
    r31 = r31 - 0x70;
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
    r23 = r6;
    v8 = v1;
    v9 = v0;
    r24 = arg5;
    r25 = arg4;
    r19 = [arg2 retain];
    r20 = [r7 retain];
    r21 = [arg8 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setPlacementType:0x0];
            [r22 setPodPosition:0x1];
            [r22 setPlacementID:r19];
            [r22 setPlacementType:r25];
            [r22 setTemplateId:r24];
            [r22 setAdSize:r24];
            [r22 setNumAdsRequested:r23];
            [r22 setRetryForPodPosition:0x0];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r22 setInitOrientation:[r0 statusBarOrientation]];
            [r0 release];
            [r22 setBidPayload:r20];
            [r22 setExtraHint:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)hasValidDefinition {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self adSize];
    if (d0 < 0x0) {
            [r19 adSize];
            if ([r19 placementType] != 0x4 && d1 < 0x0 && [r19 placementType] != 0x3) {
                    r19 = 0x0;
            }
            else {
                    r0 = [r19 placementID];
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r19 = 0x1;
                            }
                    }
                    [r0 release];
            }
    }
    else {
            r0 = [r19 placementID];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_bidPayload, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bidPayload {
    r0 = self->_bidPayload;
    return r0;
}

-(void)setBidPayload:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bidPayload, arg2);
    return;
}

-(long long)placementType {
    r0 = self->_placementType;
    return r0;
}

-(void)setPlacementType:(long long)arg2 {
    self->_placementType = arg2;
    return;
}

-(struct FBAdSize)adSize {
    r0 = self;
    return r0;
}

-(long long)templateId {
    r0 = self->_templateId;
    return r0;
}

-(void)setAdSize:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setTemplateId:(long long)arg2 {
    self->_templateId = arg2;
    return;
}

-(unsigned long long)numAdsRequested {
    r0 = self->_numAdsRequested;
    return r0;
}

-(void)setNumAdsRequested:(unsigned long long)arg2 {
    self->_numAdsRequested = arg2;
    return;
}

-(struct CGSize)adViewInitSize {
    r0 = self;
    return r0;
}

-(void)setAdViewInitSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adViewInitSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(long long)initOrientation {
    r0 = self->_initOrientation;
    return r0;
}

-(void)setInitOrientation:(long long)arg2 {
    self->_initOrientation = arg2;
    return;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(unsigned long long)podPosition {
    r0 = self->_podPosition;
    return r0;
}

-(void)setPodPosition:(unsigned long long)arg2 {
    self->_podPosition = arg2;
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(bool)retryForPodPosition {
    r0 = *(int8_t *)(int64_t *)&self->_retryForPodPosition;
    return r0;
}

-(void)setRetryForPodPosition:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_retryForPodPosition = arg2;
    return;
}

-(bool)isValidDefinition {
    r0 = *(int8_t *)(int64_t *)&self->_validDefinition;
    return r0;
}

-(bool)isValidPlacementId {
    r0 = *(int8_t *)(int64_t *)&self->_validPlacementId;
    return r0;
}

-(unsigned long long)podPositionInternal {
    r0 = self->_podPositionInternal;
    return r0;
}

-(void)setPodPositionInternal:(unsigned long long)arg2 {
    self->_podPositionInternal = arg2;
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdEnvironmentData");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)shortEnvironmentData {
    r19 = [**___NSDictionary0__ mutableCopy];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 infoDictionary] retain];
    r23 = [[r0 bundleIdentifier] retain];
    [r19 setObject:r23 forKeyedSubscript:@"BUNDLE"];
    [r23 release];
    r24 = [[r21 stringForKeyOrNil:@"CFBundleShortVersionString"] retain];
    [r19 setObject:r24 forKeyedSubscript:@"APPVERS"];
    [r24 release];
    r23 = [[r21 stringForKeyOrNil:@"CFBundleVersion"] retain];
    [r19 setObject:r23 forKeyedSubscript:@"APPBUILD"];
    [r23 release];
    [r19 setObject:@"iOS" forKeyedSubscript:@"OS"];
    [r19 setObject:@"ios" forKeyedSubscript:@"SDK"];
    r23 = [[FBAdDevice machine] retain];
    [r19 setObject:r23 forKeyedSubscript:@"MODEL"];
    [r23 release];
    r23 = [[FBAdDevice systemVersion] retain];
    [r19 setObject:r23 forKeyedSubscript:@"OSVERS"];
    [r23 release];
    [r19 setObject:@"5.4.0" forKeyedSubscript:@"SDK_VERSION"];
    r23 = [[FBAdSettings sessionID] retain];
    [r19 setObject:r23 forKeyedSubscript:@"SESSION_ID"];
    [r23 release];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)staticEnvironmentData {
    r31 = r31 - 0x80;
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
    r0 = **___NSDictionary0__;
    r0 = [r0 mutableCopy];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (*qword_1011dda38 != -0x1) {
            dispatch_once(0x1011dda38, 0x100ea9458);
    }
    [FBAdUtility currentUserAgentWithBlock:0x100ea9478];
    [FBAdScreen size];
    r22 = [[NSNumber numberWithDouble:0x100ea9478] retain];
    [r19 setObject:r22 forKeyedSubscript:@"SCREEN_HEIGHT"];
    [r22 release];
    r22 = [[NSNumber numberWithDouble:r22] retain];
    r2 = r22;
    [r19 setObject:r2 forKeyedSubscript:@"SCREEN_WIDTH"];
    [r22 release];
    r22 = @class(NSNumber);
    [FBAdScreen scale];
    r0 = [r22 numberWithDouble:r2];
    r0 = [r0 retain];
    r22 = [[r0 stringValue] retain];
    [r19 setObject:r22 forKeyedSubscript:@"DENSITY"];
    [r22 release];
    [r0 release];
    [r19 setObject:@"iOS" forKeyedSubscript:@"OS"];
    [r19 setObject:@"ios" forKeyedSubscript:@"SDK"];
    [r19 setObject:@"Apple" forKeyedSubscript:@"MAKE"];
    r21 = [[FBAdDevice machine] retain];
    [r19 setObject:r21 forKeyedSubscript:@"MODEL"];
    [r21 release];
    r21 = [[FBAdDevice systemVersion] retain];
    [r19 setObject:r21 forKeyedSubscript:@"OSVERS"];
    [r21 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 infoDictionary] retain];
    r25 = [[r21 bundleIdentifier] retain];
    [r19 setObject:r25 forKeyedSubscript:@"BUNDLE"];
    [r25 release];
    r26 = [[r22 stringForKeyOrNil:@"CFBundleShortVersionString"] retain];
    [r19 setObject:r26 forKeyedSubscript:@"APPVERS"];
    [r26 release];
    r25 = [[r22 stringForKeyOrNil:@"CFBundleVersion"] retain];
    [r19 setObject:r25 forKeyedSubscript:@"APPBUILD"];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = [[r0 bundleIdentifier] retain];
    [r0 release];
    var_68 = r23;
    r0 = [r23 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 base64EncodedStringWithOptions:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r25 forKeyedSubscript:@"M_BANNER_KEY"];
    }
    r26 = [[FBAdUtility currentLocale] retain];
    [r19 setObject:r26 forKeyedSubscript:@"LOCALE"];
    [r26 release];
    r26 = [[FBAdSettings getMediationService] retain];
    [r19 setObject:r26 forKeyedSubscript:@"MEDIATION_SERVICE"];
    [r26 release];
    r26 = @class(NSNumber);
    r26 = [[r26 numberWithUnsignedInteger:[FBAdConnectionInfo currentConnectionType]] retain];
    [r19 setObject:r26 forKeyedSubscript:@"NETWORK_TYPE"];
    [r26 release];
    r26 = @class(NSNumber);
    [0x0 retain];
    r26 = [[r26 numberWithInt:0x0] retain];
    [r19 setObject:r26 forKeyedSubscript:@"UNITY"];
    [r26 release];
    [0x0 release];
    [r19 setObject:@"5.4.0" forKeyedSubscript:@"SDK_VERSION"];
    r0 = [FBAdSdkCapabilityUtility supportedCapabilities];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 componentsJoinedByString:@","] retain];
    r0 = [NSString stringWithFormat:@"[%@]"];
    r29 = r29;
    r26 = [r0 retain];
    [r19 setObject:r26 forKeyedSubscript:@"SDK_CAPABILITY"];
    [r26 release];
    [r28 release];
    [r27 release];
    if ((sub_100aab9b0() & 0x1) != 0x0) {
            r0 = @class(NSNumber);
            r2 = 0x2;
            r0 = [r0 numberWithInteger:r2];
            r29 = r29;
    }
    else {
            r0 = @class(NSNumber);
            r2 = 0x1;
            r0 = [r0 numberWithInteger:r2];
            r29 = r29;
    }
    r26 = [r0 retain];
    [r19 setObject:r26 forKeyedSubscript:@"ROOTED"];
    [r26 release];
    r26 = [[FBAdUtility getAdvertisingIdentifier] retain];
    [r19 setObject:r26 forKeyedSubscript:@"IDFA"];
    [r26 release];
    r26 = [[FBAdUtility getFBLoginASID] retain];
    [r19 setObject:r26 forKeyedSubscript:@"ASID"];
    [r26 release];
    r26 = [[FBAdUtility userHashedPIIData] retain];
    [r19 setObject:r26 forKeyedSubscript:@"HASHED_DATA"];
    [r26 release];
    r26 = [[FBAdUtility anonymousIdentifier] retain];
    [r19 setObject:r26 forKeyedSubscript:@"ANON_ID"];
    [r26 release];
    r26 = [[FBAdFingerprinter fingerprint] retain];
    [r19 setObject:r26 forKeyedSubscript:@"AFP"];
    [r26 release];
    [*0x1011dda40 lock];
    if (*0x1011dda48 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"USER_AGENT"];
    }
    [*0x1011dda40 unlock];
    [r25 release];
    [r24 release];
    [var_68 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)staticEnvironmentParamsEncoded {
    r31 = r31 - 0xa0;
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
    [FBAdUtility initializeAudienceNetwork];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r19 = [[r0 retain] retain];
    if (*qword_1011dda38 != -0x1) {
            dispatch_once(0x1011dda38, 0x100ea9458);
    }
    [FBAdUtility currentUserAgentWithBlock:0x100ea9478];
    [FBAdScreen size];
    r22 = [[NSNumber numberWithDouble:0x100ea9478] retain];
    [r19 setObject:r22 forKeyedSubscript:@"SCREEN_HEIGHT"];
    [r22 release];
    r22 = [[NSNumber numberWithDouble:r22] retain];
    r2 = r22;
    [r19 setObject:r2 forKeyedSubscript:@"SCREEN_WIDTH"];
    [r22 release];
    r22 = @class(NSNumber);
    [FBAdScreen scale];
    r0 = [r22 numberWithDouble:r2];
    r0 = [r0 retain];
    r22 = [[r0 stringValue] retain];
    [r19 setObject:r22 forKeyedSubscript:@"DENSITY"];
    [r22 release];
    [r0 release];
    [r19 setObject:@"iOS" forKeyedSubscript:@"OS"];
    [r19 setObject:@"ios" forKeyedSubscript:@"SDK"];
    [r19 setObject:@"Apple" forKeyedSubscript:@"MAKE"];
    r21 = [[FBAdDevice machine] retain];
    [r19 setObject:r21 forKeyedSubscript:@"MODEL"];
    [r21 release];
    r21 = [[FBAdDevice systemVersion] retain];
    [r19 setObject:r21 forKeyedSubscript:@"OSVERS"];
    [r21 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 infoDictionary] retain];
    r25 = [[r22 bundleIdentifier] retain];
    [r19 setObject:r25 forKeyedSubscript:@"BUNDLE"];
    [r25 release];
    r26 = [[r23 stringForKeyOrNil:@"CFBundleShortVersionString"] retain];
    [r19 setObject:r26 forKeyedSubscript:@"APPVERS"];
    [r26 release];
    r25 = [[r23 stringForKeyOrNil:@"CFBundleVersion"] retain];
    [r19 setObject:r25 forKeyedSubscript:@"APPBUILD"];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r24 = [[r0 bundleIdentifier] retain];
    [r0 release];
    var_78 = r24;
    r0 = [r24 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 base64EncodedStringWithOptions:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r26 forKeyedSubscript:@"M_BANNER_KEY"];
    }
    r27 = [[FBAdUtility currentLocale] retain];
    [r19 setObject:r27 forKeyedSubscript:@"LOCALE"];
    [r27 release];
    r27 = [[FBAdSettings getMediationService] retain];
    [r19 setObject:r27 forKeyedSubscript:@"MEDIATION_SERVICE"];
    [r27 release];
    r27 = @class(NSNumber);
    r27 = [[r27 numberWithUnsignedInteger:[FBAdConnectionInfo currentConnectionType]] retain];
    [r19 setObject:r27 forKeyedSubscript:@"NETWORK_TYPE"];
    [r27 release];
    r27 = @class(NSNumber);
    [0x0 retain];
    r27 = [[r27 numberWithInt:0x0] retain];
    [r19 setObject:r27 forKeyedSubscript:@"UNITY"];
    [r27 release];
    [0x0 release];
    [r19 setObject:@"5.4.0" forKeyedSubscript:@"SDK_VERSION"];
    r0 = [FBAdSdkCapabilityUtility supportedCapabilities];
    r0 = [r0 retain];
    r28 = r0;
    r21 = [[r0 componentsJoinedByString:@","] retain];
    r0 = [NSString stringWithFormat:@"[%@]"];
    r29 = r29;
    r27 = [r0 retain];
    [r19 setObject:r27 forKeyedSubscript:@"SDK_CAPABILITY"];
    [r27 release];
    [r21 release];
    [r28 release];
    if ((sub_100aab9b0() & 0x1) != 0x0) {
            r0 = @class(NSNumber);
            r2 = 0x2;
            r0 = [r0 numberWithInteger:r2];
            r29 = r29;
    }
    else {
            r0 = @class(NSNumber);
            r2 = 0x1;
            r0 = [r0 numberWithInteger:r2];
            r29 = r29;
    }
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"ROOTED"];
    [r21 release];
    r21 = [[FBAdUtility getAdvertisingIdentifier] retain];
    [r19 setObject:r21 forKeyedSubscript:@"IDFA"];
    [r21 release];
    r21 = [[FBAdUtility getFBLoginASID] retain];
    [r19 setObject:r21 forKeyedSubscript:@"ASID"];
    [r21 release];
    r21 = [[FBAdUtility userHashedPIIData] retain];
    [r19 setObject:r21 forKeyedSubscript:@"HASHED_DATA"];
    [r21 release];
    r21 = [[FBAdUtility anonymousIdentifier] retain];
    [r19 setObject:r21 forKeyedSubscript:@"ANON_ID"];
    [r21 release];
    r0 = [FBAdFingerprinter fingerprint];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"AFP"];
    [r21 release];
    [*0x1011dda40 lock];
    if (*0x1011dda48 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"USER_AGENT"];
    }
    [*0x1011dda40 unlock];
    [r26 release];
    [r25 release];
    [var_78 release];
    [r23 release];
    [r22 release];
    [r19 release];
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_70];
    r29 = r29;
    r20 = [r0 retain];
    r0 = [var_70 retain];
    r22 = r0;
    r24 = 0x0;
    if (r0 == 0x0) {
            r21 = [NSMutableData new];
            r24 = [r20 retain];
            r23 = [r21 retain];
            r0 = [r24 length];
            if (r0 != 0x0) {
                    r25 = r0;
                    if (*qword_1011dd8d8 != -0x1) {
                            dispatch_once_f(0x1011dd8d8, 0x1011c6ca0, 0x100a3d91c);
                    }
                    [r23 increaseLengthBy:qword_1011dd8e0(r25) + 0x1 - [r23 length]];
                    r0 = objc_retainAutorelease(r23);
                    r26 = r0;
                    r27 = [r0 mutableBytes];
                    r3 = [objc_retainAutorelease(r24) bytes];
                    if (*qword_1011dd8f8 != -0x1) {
                            dispatch_once_f(0x1011dd8f8, 0x1011c6cb8, 0x100a3d91c);
                            r3 = r3;
                    }
                    r0 = qword_1011dd900(r27, &var_68, r3, r25);
                    r8 = var_68;
                    r0 = r26;
            }
            else {
                    r0 = r23;
            }
            [r0 setLength:r2];
            [r23 release];
            [r24 release];
            r24 = [[r23 base64EncodedStringWithOptions:r2] retain];
            [r23 release];
    }
    [r20 release];
    [r22 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void *)adRequestParameters {
    r31 = r31 - 0x1c0;
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
    r23 = self;
    if (([self hasValidDefinition] & 0x1) == 0x0) goto loc_100a48fe4;

loc_100a489f4:
    r0 = [NSMutableDictionary dictionary];
    r29 = r29;
    r19 = [[r0 retain] retain];
    if (*qword_1011dda38 != -0x1) {
            dispatch_once(0x1011dda38, 0x100ea9458);
    }
    [FBAdUtility currentUserAgentWithBlock:0x100ea9478];
    [FBAdScreen size];
    r21 = [[NSNumber numberWithDouble:0x100ea9478] retain];
    [r19 setObject:r21 forKeyedSubscript:@"SCREEN_HEIGHT"];
    [r21 release];
    r21 = [[NSNumber numberWithDouble:r21] retain];
    r2 = r21;
    [r19 setObject:r2 forKeyedSubscript:@"SCREEN_WIDTH"];
    [r21 release];
    r21 = @class(NSNumber);
    [FBAdScreen scale];
    r0 = [r21 numberWithDouble:r2];
    r0 = [r0 retain];
    r22 = [[r0 stringValue] retain];
    [r19 setObject:r22 forKeyedSubscript:@"DENSITY"];
    [r22 release];
    [r0 release];
    [r19 setObject:@"iOS" forKeyedSubscript:@"OS"];
    [r19 setObject:@"ios" forKeyedSubscript:@"SDK"];
    [r19 setObject:@"Apple" forKeyedSubscript:@"MAKE"];
    r21 = [[FBAdDevice machine] retain];
    [r19 setObject:r21 forKeyedSubscript:@"MODEL"];
    [r21 release];
    r21 = [[FBAdDevice systemVersion] retain];
    [r19 setObject:r21 forKeyedSubscript:@"OSVERS"];
    [r21 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r24 = r0;
    r27 = [[r0 infoDictionary] retain];
    r25 = [[r24 bundleIdentifier] retain];
    [r19 setObject:r25 forKeyedSubscript:@"BUNDLE"];
    [r25 release];
    r26 = [[r27 stringForKeyOrNil:@"CFBundleShortVersionString"] retain];
    [r19 setObject:r26 forKeyedSubscript:@"APPVERS"];
    [r26 release];
    r25 = [[r27 stringForKeyOrNil:@"CFBundleVersion"] retain];
    [r19 setObject:r25 forKeyedSubscript:@"APPBUILD"];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 bundleIdentifier] retain];
    [r0 release];
    var_148 = r21;
    r0 = [r21 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    var_168 = r0;
    r0 = [r0 base64EncodedStringWithOptions:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r26 forKeyedSubscript:@"M_BANNER_KEY"];
    }
    r21 = [[FBAdUtility currentLocale] retain];
    [r19 setObject:r21 forKeyedSubscript:@"LOCALE"];
    [r21 release];
    r21 = [[FBAdSettings getMediationService] retain];
    [r19 setObject:r21 forKeyedSubscript:@"MEDIATION_SERVICE"];
    [r21 release];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithUnsignedInteger:[FBAdConnectionInfo currentConnectionType]] retain];
    [r19 setObject:r21 forKeyedSubscript:@"NETWORK_TYPE"];
    [r21 release];
    r21 = @class(NSNumber);
    [0x0 retain];
    r21 = [[r21 numberWithInt:0x0] retain];
    [r19 setObject:r21 forKeyedSubscript:@"UNITY"];
    [r21 release];
    [0x0 release];
    [r19 setObject:@"5.4.0" forKeyedSubscript:@"SDK_VERSION"];
    r0 = [FBAdSdkCapabilityUtility supportedCapabilities];
    r0 = [r0 retain];
    r25 = r0;
    r28 = [[r0 componentsJoinedByString:@","] retain];
    r0 = [NSString stringWithFormat:@"[%@]"];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"SDK_CAPABILITY"];
    [r21 release];
    [r28 release];
    [r25 release];
    r8 = sub_100aab9b0();
    r1 = @selector(numberWithInteger:);
    if ((r8 & 0x1) != 0x0) {
            r0 = @class(NSNumber);
            r2 = 0x2;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    else {
            r0 = @class(NSNumber);
            r2 = 0x1;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"ROOTED"];
    [r21 release];
    r21 = [[FBAdUtility getAdvertisingIdentifier] retain];
    [r19 setObject:r21 forKeyedSubscript:@"IDFA"];
    [r21 release];
    r21 = [[FBAdUtility getFBLoginASID] retain];
    [r19 setObject:r21 forKeyedSubscript:@"ASID"];
    [r21 release];
    r21 = [[FBAdUtility userHashedPIIData] retain];
    [r19 setObject:r21 forKeyedSubscript:@"HASHED_DATA"];
    [r21 release];
    r21 = [[FBAdUtility anonymousIdentifier] retain];
    [r19 setObject:r21 forKeyedSubscript:@"ANON_ID"];
    [r21 release];
    r0 = [FBAdFingerprinter fingerprint];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"AFP"];
    [r21 release];
    [*0x1011dda40 lock];
    if (*0x1011dda48 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"USER_AGENT"];
    }
    [*0x1011dda40 unlock];
    [r26 release];
    [var_168 release];
    [var_148 release];
    [r27 release];
    [r24 release];
    [r19 release];
    r0 = sub_1009ff3d8();
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:@"ANALOG"];
    }
    var_168 = r21;
    r21 = [[r23 placementID] retain];
    [r19 setObject:r21 forKeyedSubscript:@"PLACEMENT_ID"];
    [r21 release];
    r0 = [r23 bidPayload];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 hasBidID];
    [r0 release];
    if (r24 != 0x0) {
            r22 = [NSString alloc];
            r0 = [r23 bidPayload];
            r29 = r29;
            r0 = [r0 retain];
            [r0 bidID];
            r22 = [r22 initWithFormat:@"%lld"];
            [r19 setObject:r22 forKeyedSubscript:@"BID_ID"];
            [r22 release];
            [r0 release];
    }
    r0 = [r23 bidPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 bidTimeToken];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    if (r22 != 0x0) {
            [r19 setObject:r22 forKeyedSubscript:@"BID_TIME_TOKEN"];
    }
    r0 = [FBAdSettings isTestMode];
    var_148 = @selector(numberWithInteger:);
    var_170 = r22;
    if (r0 != 0x0) {
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r2 = 0x1;
            r0 = [r0 numberWithInt:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"TEST_MODE"];
            [r21 release];
            if ([FBAdSettings testAdType] != 0x0) {
                    var_180 = [FBAdSettings testAdType];
                    var_188 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    var_190 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    var_198 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    var_1A0 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    var_1A8 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    r24 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    r26 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    r21 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    r28 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain];
                    r25 = [objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0), var_148) retain];
                    r0 = objc_msgSend(@class(NSNumber), var_148);
                    r0 = [r0 retain];
                    r27 = [[NSDictionary dictionaryWithObjects:&var_E0 forKeys:&var_140 count:0xb] retain];
                    [r0 release];
                    [r25 release];
                    [r28 release];
                    [r21 release];
                    [r26 release];
                    [r24 release];
                    [var_1A8 release];
                    [var_1A0 release];
                    [var_198 release];
                    [var_190 release];
                    [var_188 release];
                    r2 = var_180;
                    r21 = [objc_msgSend(@class(NSNumber), var_148) retain];
                    r0 = [r27 objectForKeyedSubscript:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    [r27 release];
                    [r19 setObject:[r22 autorelease] forKeyedSubscript:@"DEMO_AD_ID"];
            }
    }
    var_198 = r23;
    r0 = [r23 extraHint];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringRepresentation];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    if (r22 != 0x0) {
            [r19 setObject:r22 forKeyedSubscript:@"EXTRA_HINTS"];
    }
    var_180 = r22;
    r0 = @class(FBAdEventManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 sessionId];
    r0 = [r0 retain];
    r25 = [[r0 UUIDString] retain];
    [r19 setObject:r25 forKeyedSubscript:@"SESSION_ID"];
    [r25 release];
    [r0 release];
    [r21 release];
    r0 = @class(FBAdEventManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    [r0 sessionTime];
    r26 = @selector(numberWithDouble:);
    r0 = objc_msgSend(@class(NSNumber), r26);
    r0 = [r0 retain];
    r21 = r0;
    r23 = @selector(stringValue);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r25 = [r0 retain];
    [r19 setObject:r25 forKeyedSubscript:@"SESSION_TIME"];
    [r25 release];
    [r21 release];
    [r22 release];
    if ([FBAdUtility isAdvertisingTrackingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"IDFA_FLAG"];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithBool:[FBAdSettings isChildDirected]] retain];
    [r19 setObject:r21 forKeyedSubscript:@"COPPA"];
    [r21 release];
    r21 = @class(NSNumber);
    [var_198 adSize];
    r21 = [objc_msgSend(r21, r26) retain];
    [r19 setObject:r21 forKeyedSubscript:@"WIDTH"];
    [r21 release];
    r21 = @class(NSNumber);
    [var_198 adSize];
    v0 = v1;
    r21 = [objc_msgSend(r21, r26) retain];
    [r19 setObject:r21 forKeyedSubscript:@"HEIGHT"];
    [r21 release];
    r21 = @class(NSNumber);
    [var_198 templateId];
    r27 = var_148;
    r0 = objc_msgSend(r21, r27);
    r0 = [r0 retain];
    r25 = r23;
    r22 = [objc_msgSend(r0, r23) retain];
    [r19 setObject:r22 forKeyedSubscript:@"TEMPLATE_ID"];
    [r22 release];
    [r0 release];
    r21 = @class(NSNumber);
    [var_198 numAdsRequested];
    r21 = [[r21 numberWithUnsignedInteger:r2] retain];
    [r19 setObject:r21 forKeyedSubscript:@"NUM_ADS_REQUESTED"];
    [r21 release];
    r21 = @class(NSNumber);
    [FBAdUtility deviceVolume];
    r21 = [objc_msgSend(r21, r26) retain];
    [r19 setObject:r21 forKeyedSubscript:@"VOLUME"];
    [r21 release];
    r21 = @class(NSNumber);
    r0 = [NSDate date];
    r0 = [r0 retain];
    r23 = r0;
    [r0 timeIntervalSince1970];
    r0 = objc_msgSend(r21, r26);
    r0 = [r0 retain];
    r25 = [objc_msgSend(r0, r25) retain];
    [r19 setObject:r25 forKeyedSubscript:@"REQUEST_TIME"];
    [r25 release];
    [r0 release];
    [r23 release];
    r21 = @class(NSNumber);
    r23 = @class(FBAdUtility);
    [r23 serverOrientationFromInterfaceOrientationMask:[r23 supportedInterfaceOrientationsForWindow:0x0]];
    r21 = [objc_msgSend(r21, r27) retain];
    [r19 setObject:r21 forKeyedSubscript:@"ORIENTATION"];
    [r21 release];
    r0 = [FBAdUtility topViewController];
    r29 = r29;
    r26 = [r0 retain];
    objc_getClass(&var_140);
    r0 = [r26 isKindOfClass:r2];
    r25 = 0x0;
    if (r0 != 0x0) {
            d0 = *0x100bfb468;
            r21 = objc_getClass(r29 - 0x80);
            r0 = [r26 view];
            r0 = [r0 retain];
            r25 = r0;
            r0 = sub_100a0d7ac(r0, r21);
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            if (r21 != 0x0) {
                    r25 = 0x2;
            }
            else {
                    d0 = *0x100bfb470;
                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/UnityBridge/FBAdBridgeCommon.mm" lineNumber:0x66 format:@"%s"];
                    r25 = 0x0;
            }
            [r21 release];
    }
    [r26 release];
    r25 = @selector(numberWithInt:);
    r21 = [objc_msgSend(@class(NSNumber), r25) retain];
    [r19 setObject:r21 forKeyedSubscript:@"COCOS2D"];
    [r21 release];
    r21 = @class(NSNumber);
    [FBAdUtility isDebuggerAttached];
    r28 = @selector(numberWithBool:);
    r0 = objc_msgSend(r21, r28);
    r29 = r29;
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:@"DEBUGGER_ATTACHED"];
    [r21 release];
    if (([FBAdUtility isTestFlightBuild] & 0x1) == 0x0) {
            [FBAdUtility isAdHocBuild];
    }
    r21 = @class(NSNumber);
    r21 = [objc_msgSend(r21, r25) retain];
    [r19 setObject:r21 forKeyedSubscript:@"IS_TEST_BUILD"];
    [r21 release];
    r0 = [NSTimeZone localTimeZone];
    r0 = [r0 retain];
    r23 = r0;
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithLong:[r0 secondsFromGMT] * 0x3e8] retain];
    [r19 setObject:r21 forKeyedSubscript:@"TIMEZONE_OFFSET"];
    [r21 release];
    r0 = [FBAdReportingConfig sharedConfig];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 lastUpdateTime];
    r29 = r29;
    r26 = [r0 retain];
    [r21 release];
    if (r26 != 0x0) {
            var_150 = @selector(stringValue);
            r20 = @selector(setObject:forKeyedSubscript:);
            r24 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            [r26 timeIntervalSince1970];
            asm { fcvtzs     x2, d0 };
            r0 = *(r24 + 0xfc0);
            r0 = objc_msgSend(r0, r27);
            r0 = [r0 retain];
            r0 = objc_msgSend(r0, var_150);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r20);
            [r22 release];
            [r21 release];
    }
    r24 = @selector(sharedManager);
    r0 = objc_msgSend(@class(FBAdConfigManager), r24);
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 sendFrameworkType];
    [r0 release];
    if (r22 != 0x0) {
            [FBAdUtility isDynamicLibrary];
            r0 = objc_msgSend(@class(NSNumber), r28);
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"IS_DYNAMIC"];
            [r21 release];
    }
    r0 = objc_msgSend(@class(FBAdConfigManager), r24);
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isNetworkQualityMeasurementEnabled];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [FBAdURLSession sharedSession];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 networkQuality];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            if (r22 != 0x0) {
                    [r22 downloadBandwidthEstimate];
                    [r22 downloadBandwidthState];
                    r25 = [sub_100b8dff0() retain];
                    [r22 uploadBandwidthEstimate];
                    [r22 uploadBandwidthState];
                    r21 = [sub_100b8dff0() retain];
                    r27 = [[NSNumber numberWithDouble:r2] retain];
                    [r19 setObject:r27 forKeyedSubscript:@"NETWORK_DOWNLOAD_BANDWIDTH_ESTIMATE"];
                    [r27 release];
                    [r19 setObject:r25 forKeyedSubscript:@"NETWORK_DOWNLOAD_BANDWIDTH_QUALITY"];
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithDouble:r2];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r19 setObject:r27 forKeyedSubscript:@"NETWORK_UPLOAD_BANDWIDTH_ESTIMATE"];
                    [r27 release];
                    [r19 setObject:r21 forKeyedSubscript:@"NETWORK_UPLOAD_BANDWIDTH_QUALITY"];
                    [r21 release];
                    [r25 release];
            }
            [r22 release];
    }
    r0 = dispatch_get_global_queue(0x2, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, 0x100ea7820);
    [r20 release];
    [r26 release];
    [r23 release];
    [var_180 release];
    [var_170 release];
    [var_168 release];
    goto loc_100a4a16c;

loc_100a4a16c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a48fe4:
    r19 = [**___NSDictionary0__ retain];
    goto loc_100a4a16c;
}

@end