@implementation ADJPackageBuilder

-(void *)buildSessionPackage:(void *)arg2 isInDelay:(bool)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r0;
    if ((arg3 & 0x1) != 0x0) {
            r0 = [r0 attributableParameters:r2];
            r29 = r29;
    }
    else {
            r0 = [r0 attributableParameters:r2];
            r29 = r29;
    }
    r19 = [r0 retain];
    r0 = [r20 defaultActivityPackage];
    r0 = [r0 retain];
    [r0 setPath:@"/session"];
    [r0 setActivityKind:0x1];
    [r0 setSuffix:@""];
    [r0 setParameters:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDeviceInfo:(void *)arg2 activityState:(void *)arg3 config:(void *)arg4 createdAt:(double)arg5 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setCreatedAt:r2];
            [r22 setDeviceInfo:r19];
            [r22 setAdjustConfig:r21];
            [r22 setActivityState:r20];
            r23 = [r22 retain];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;
}

-(void *)buildInfoPackage:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self idsParameters] retain];
    [ADJPackageBuilder parameters:r19 setInt:0x0 forKey:@"tce"];
    [ADJPackageBuilder parameters:r19 setString:r21 forKey:@"source"];
    [r21 release];
    r21 = [[self activityState] retain];
    [self injectPushToken:r21 intoParamters:r19];
    [r21 release];
    r0 = [self defaultActivityPackage];
    r0 = [r0 retain];
    [r0 setPath:@"/sdk_info"];
    [r0 setActivityKind:0x6];
    [r0 setSuffix:@""];
    [r0 setParameters:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)buildAttributionPackage {
    r20 = [[self idsParameters] retain];
    r0 = [self defaultActivityPackage];
    r0 = [r0 retain];
    [r0 setPath:@"/attribution"];
    [r0 setActivityKind:0x5];
    [r0 setSuffix:@""];
    [r0 setParameters:r20];
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)idsParameters {
    r20 = [[NSMutableDictionary dictionary] retain];
    r21 = [[self deviceInfo] retain];
    [self injectDeviceInfoIds:r21 intoParameters:r20];
    [r21 release];
    r21 = [[self adjustConfig] retain];
    [self injectConfig:r21 intoParameters:r20];
    [r21 release];
    r21 = [[self activityState] retain];
    [self injectIosUuid:r21 intoParamters:r20];
    [r21 release];
    [self injectCommonParameters:r20];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)defaultActivityPackage {
    r20 = [[ADJActivityPackage alloc] init];
    r0 = [self deviceInfo];
    r0 = [r0 retain];
    r21 = [[r0 clientSdk] retain];
    [r20 setClientSdk:r21];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)buildClickPackage:(void *)arg2 sessionParameters:(void *)arg3 {
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
    r20 = self;
    r22 = [arg2 retain];
    r19 = [[r20 attributableParameters:arg3] retain];
    [ADJPackageBuilder parameters:r19 setString:r22 forKey:@"source"];
    [r22 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[r20 deeplinkParameters] retain];
    [r23 parameters:r19 setDictionary:r24 forKey:@"params"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[r20 clickTime] retain];
    [r23 parameters:r19 setDate:r24 forKey:@"click_time"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[r20 purchaseTime] retain];
    [r23 parameters:r19 setDate:r24 forKey:@"purchase_time"];
    [r24 release];
    r0 = [r20 attribution];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = @class(ADJPackageBuilder);
            r0 = [r20 attribution];
            r0 = [r0 retain];
            r26 = [[r0 trackerName] retain];
            [r24 parameters:r19 setString:r26 forKey:@"tracker"];
            [r26 release];
            [r0 release];
            r24 = @class(ADJPackageBuilder);
            r0 = [r20 attribution];
            r0 = [r0 retain];
            r26 = [[r0 campaign] retain];
            [r24 parameters:r19 setString:r26 forKey:@"campaign"];
            [r26 release];
            [r0 release];
            r24 = @class(ADJPackageBuilder);
            r0 = [r20 attribution];
            r0 = [r0 retain];
            r26 = [[r0 adgroup] retain];
            [r24 parameters:r19 setString:r26 forKey:@"adgroup"];
            [r26 release];
            [r0 release];
            r24 = @class(ADJPackageBuilder);
            r0 = [r20 attribution];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 creative];
            r29 = r29;
            r25 = [r0 retain];
            [r24 parameters:r19 setString:r25 forKey:@"creative"];
            [r25 release];
            [r23 release];
    }
    r23 = @class(ADJPackageBuilder);
    r24 = [[r20 attributionDetails] retain];
    [r23 parameters:r19 setDictionary:r24 forKey:@"details"];
    [r24 release];
    r22 = @class(ADJPackageBuilder);
    r23 = [[r20 deeplink] retain];
    [r22 parameters:r19 setString:r23 forKey:@"deeplink"];
    [r23 release];
    r0 = [r20 defaultActivityPackage];
    r0 = [r0 retain];
    [r0 setPath:@"/sdk_click"];
    [r0 setActivityKind:0x4];
    [r0 setSuffix:@""];
    [r0 setParameters:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)buildEventPackage:(void *)arg2 sessionParameters:(void *)arg3 isInDelay:(bool)arg4 {
    r31 = r31 - 0x70;
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
    r23 = arg4;
    r28 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r21 = [[r28 defaultParameters] retain];
    [ADJPackageBuilder parameters:r21 setInt:0x0 forKey:@"tce"];
    r25 = @class(ADJPackageBuilder);
    r0 = [r28 activityState];
    r0 = [r0 retain];
    [r25 parameters:r21 setInt:[r0 eventCount] forKey:@"event_count"];
    [r0 release];
    r24 = @class(ADJPackageBuilder);
    r25 = [[r19 revenue] retain];
    [r24 parameters:r21 setNumber:r25 forKey:@"revenue"];
    [r25 release];
    r25 = @class(ADJPackageBuilder);
    r26 = [[r19 currency] retain];
    [r25 parameters:r21 setString:r26 forKey:@"currency"];
    [r26 release];
    r25 = @class(ADJPackageBuilder);
    r0 = [r19 eventToken];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r25 parameters:r21 setString:r26 forKey:@"event_token"];
    [r26 release];
    if ((r23 & 0x1) == 0x0) {
            r25 = @class(ADJUtil);
            r0 = [r27 callbackParameters];
            r0 = [r0 retain];
            var_54 = r23;
            r23 = r27;
            r26 = [[r19 callbackParameters] retain];
            r25 = [[r25 mergeParameters:r0 source:r26 parameterName:@"Callback"] retain];
            [r26 release];
            [r0 release];
            r26 = @class(ADJUtil);
            r20 = [[r23 partnerParameters] retain];
            r27 = [[r19 partnerParameters] retain];
            r28 = r28;
            r0 = [r26 mergeParameters:r20 source:r27 parameterName:@"Partner"];
            r29 = r29;
            r26 = [r0 retain];
            r0 = r27;
            r27 = r23;
            r23 = var_54;
            [r0 release];
            [r20 release];
            [ADJPackageBuilder parameters:r21 setDictionary:r25 forKey:@"callback_params"];
            [ADJPackageBuilder parameters:r21 setDictionary:r26 forKey:@"partner_params"];
            [r26 release];
            [r25 release];
    }
    if ([r19 emptyReceipt] == 0x0) goto loc_100692544;

loc_1006924e4:
    [ADJPackageBuilder parameters:r21 setString:@"empty" forKey:@"receipt"];
    r20 = @class(ADJPackageBuilder);
    r0 = [r19 transactionId];
    r29 = r29;
    r25 = [r0 retain];
    [r20 parameters:r21 setString:r25 forKey:@"transaction_id"];
    goto loc_100692604;

loc_100692604:
    [r25 release];
    goto loc_10069260c;

loc_10069260c:
    r0 = [r28 defaultActivityPackage];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setPath:@"/event"];
    [r24 setActivityKind:0x2];
    r0 = [r28 eventSuffix:r19];
    r29 = r29;
    r20 = [r0 retain];
    [r24 setSuffix:r20];
    [r20 release];
    [r24 setParameters:r21];
    if (r23 != 0x0) {
            r20 = [[r19 callbackParameters] retain];
            [r24 setCallbackParameters:r20];
            [r20 release];
            r20 = [[r19 partnerParameters] retain];
            [r24 setPartnerParameters:r20];
            [r20 release];
    }
    [r21 release];
    [r27 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_100692544:
    r0 = [r19 receipt];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10069260c;

loc_10069256c:
    r0 = [r19 receipt];
    r0 = [r0 retain];
    r25 = [[r0 adjEncodeBase64] retain];
    [r0 release];
    [ADJPackageBuilder parameters:r21 setString:r25 forKey:@"receipt"];
    r20 = @class(ADJPackageBuilder);
    r0 = [r19 transactionId];
    r29 = r29;
    r26 = [r0 retain];
    [r20 parameters:r21 setString:r26 forKey:@"transaction_id"];
    [r26 release];
    goto loc_100692604;
}

-(void *)defaultParameters {
    r20 = [[NSMutableDictionary dictionary] retain];
    r21 = [[self deviceInfo] retain];
    [self injectDeviceInfo:r21 intoParameters:r20];
    [r21 release];
    r21 = [[self adjustConfig] retain];
    [self injectConfig:r21 intoParameters:r20];
    [r21 release];
    r21 = [[self activityState] retain];
    [self injectActivityState:r21 intoParamters:r20];
    [r21 release];
    [self injectCommonParameters:r20];
    r0 = [r20 autorelease];
    return r0;
}

-(void)injectCommonParameters:(void *)arg2 {
    r20 = @class(ADJPackageBuilder);
    r22 = [arg2 retain];
    [self createdAt];
    [r20 parameters:r22 setDate1970:@"created_at" forKey:r4];
    [ADJPackageBuilder parameters:r22 setBool:0x1 forKey:@"attribution_deeplink"];
    [ADJPackageBuilder parameters:r22 setBool:0x1 forKey:@"needs_response_details"];
    [r22 release];
    return;
}

-(void *)attributableParameters:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self defaultParameters] retain];
    [ADJPackageBuilder parameters:r20 setInt:0x0 forKey:@"tce"];
    r23 = @class(ADJPackageBuilder);
    r24 = [[ADJUtil getUpdateTime] retain];
    [r23 parameters:r20 setString:r24 forKey:@"app_updated_at"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[ADJUtil getInstallTime] retain];
    [r23 parameters:r20 setString:r24 forKey:@"installed_at"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r0 = [self activityState];
    r0 = [r0 retain];
    [r0 lastInterval];
    [r23 parameters:r20 setDuration:@"last_interval" forKey:@"installed_at"];
    [r0 release];
    r23 = @class(ADJPackageBuilder);
    r0 = [self adjustConfig];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 defaultTracker];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r23 parameters:r20 setString:r24 forKey:@"default_tracker"];
    [r24 release];
    [r21 release];
    if (r19 != 0x0) {
            r21 = @class(ADJPackageBuilder);
            r22 = [[r19 callbackParameters] retain];
            [r21 parameters:r20 setDictionary:r22 forKey:@"callback_params"];
            [r22 release];
            r21 = @class(ADJPackageBuilder);
            r22 = [[r19 partnerParameters] retain];
            [r21 parameters:r20 setDictionary:r22 forKey:@"partner_params"];
            [r22 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)injectDeviceInfoIds:(void *)arg2 intoParameters:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(ADJPackageBuilder);
    r19 = [arg3 retain];
    r23 = [[arg2 idForAdvertisers] retain];
    [r22 parameters:r19 setString:r23 forKey:@"idfa"];
    [r23 release];
    r22 = @class(ADJPackageBuilder);
    r20 = [arg2 vendorId];
    [r21 release];
    r20 = [r20 retain];
    [r22 parameters:r19 setString:r20 forKey:@"idfv"];
    [r19 release];
    [r20 release];
    return;
}

-(void)injectConfig:(void *)arg2 intoParameters:(void *)arg3 {
    r20 = [arg2 retain];
    r22 = @class(ADJPackageBuilder);
    r19 = [arg3 retain];
    r23 = [[arg2 appToken] retain];
    [r22 parameters:r19 setString:r23 forKey:@"app_token"];
    [r23 release];
    r22 = @class(ADJPackageBuilder);
    r23 = [[arg2 environment] retain];
    [r22 parameters:r19 setString:r23 forKey:@"environment"];
    [r23 release];
    r22 = @class(ADJPackageBuilder);
    r21 = [arg2 eventBufferingEnabled];
    [r20 release];
    [r22 parameters:r19 setBool:r21 forKey:@"event_buffering_enabled"];
    [r19 release];
    return;
}

-(void)injectIosUuid:(void *)arg2 intoParamters:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r23 = [r19 isPersisted];
            r21 = [[r19 uuid] retain];
            [ADJPackageBuilder parameters:r2 setString:r3 forKey:r4];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)injectActivityState:(void *)arg2 intoParamters:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [r20 retain];
            [r21 injectIosUuid:r19 intoParamters:r20];
            [r21 injectPushToken:r19 intoParamters:r20];
            [ADJPackageBuilder parameters:r20 setInt:[r19 sessionCount] forKey:@"session_count"];
            [ADJPackageBuilder parameters:r20 setInt:[r19 subsessionCount] forKey:@"subsession_count"];
            r21 = @class(ADJPackageBuilder);
            [r19 sessionLength];
            [r21 parameters:r20 setDuration:@"session_length" forKey:@"subsession_count"];
            r21 = @class(ADJPackageBuilder);
            [r19 timeSpent];
            [r21 parameters:r20 setDuration:@"time_spent" forKey:@"subsession_count"];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)injectPushToken:(void *)arg2 intoParamters:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [r20 retain];
            r22 = [[r19 deviceToken] retain];
            [ADJPackageBuilder parameters:r20 setString:r22 forKey:@"push_token"];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)injectDeviceInfo:(void *)arg2 intoParameters:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self injectDeviceInfoIds:r21 intoParameters:r19];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 fbAttributionId] retain];
    [r23 parameters:r19 setString:r24 forKey:@"fb_id"];
    [r24 release];
    [ADJPackageBuilder parameters:r19 setInt:[arg2 trackingEnabled] forKey:@"tracking_enabled"];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 bundeIdentifier] retain];
    [r23 parameters:r19 setString:r24 forKey:@"bundle_id"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 bundleVersion] retain];
    [r23 parameters:r19 setString:r24 forKey:@"app_version"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 bundleShortVersion] retain];
    [r23 parameters:r19 setString:r24 forKey:@"app_version_short"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 deviceType] retain];
    [r23 parameters:r19 setString:r24 forKey:@"device_type"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 deviceName] retain];
    [r23 parameters:r19 setString:r24 forKey:@"device_name"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 osName] retain];
    [r23 parameters:r19 setString:r24 forKey:@"os_name"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 systemVersion] retain];
    [r23 parameters:r19 setString:r24 forKey:@"os_version"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 languageCode] retain];
    [r23 parameters:r19 setString:r24 forKey:@"language"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 countryCode] retain];
    [r23 parameters:r19 setString:r24 forKey:@"country"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 machineModel] retain];
    [r23 parameters:r19 setString:r24 forKey:@"hardware_name"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 cpuSubtype] retain];
    [r23 parameters:r19 setString:r24 forKey:@"cpu_type"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r24 = [[arg2 installReceiptBase64] retain];
    [r23 parameters:r19 setString:r24 forKey:@"install_receipt"];
    [r24 release];
    r23 = @class(ADJPackageBuilder);
    r20 = [arg2 osBuild];
    [r21 release];
    r20 = [r20 retain];
    [r23 parameters:r19 setString:r20 forKey:@"os_build"];
    [r19 release];
    [r20 release];
    return;
}

+(void)parameters:(void *)arg2 setString:(void *)arg3 forKey:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
            [r19 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)parameters:(void *)arg2 setInt:(int)arg3 forKey:(void *)arg4 {
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
    r21 = arg4;
    r20 = arg3;
    r19 = [arg2 retain];
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r21 = [r21 retain];
            r20 = [[NSString stringWithFormat:@"%d"] retain];
            [ADJPackageBuilder parameters:r19 setString:r20 forKey:r21];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)eventSuffix:(void *)arg2 {
    r31 = r31 - 0x70;
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [r0 revenue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 revenue];
            r0 = [r0 retain];
            r21 = r0;
            [r0 doubleValue];
            r22 = [[r19 currency] retain];
            r23 = [[r19 eventToken] retain];
            r20 = [[NSString stringWithFormat:r2] retain];
            [r23 release];
            [r22 release];
    }
    else {
            r21 = [[r19 eventToken] retain];
            r20 = [[NSString stringWithFormat:r2] retain];
    }
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)parameters:(void *)arg2 setDate1970:(double)arg3 forKey:(void *)arg4 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    v8 = v0;
    r19 = [arg2 retain];
    if (d8 >= 0x0) {
            r20 = [r20 retain];
            r21 = [[ADJUtil formatSeconds1970:r2] retain];
            [ADJPackageBuilder parameters:r19 setString:r21 forKey:r20];
            [r20 release];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void)parameters:(void *)arg2 setDuration:(double)arg3 forKey:(void *)arg4 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    if (d8 >= 0x0) {
            asm { fcvtas     w3, d8 };
            [ADJPackageBuilder parameters:r20 setInt:r3 forKey:r19];
    }
    [r20 release];
    return;
}

+(void)parameters:(void *)arg2 setDate:(void *)arg3 forKey:(void *)arg4 {
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r21 = [r21 retain];
            r22 = [[ADJUtil formatDate:r20] retain];
            [ADJPackageBuilder parameters:r19 setString:r22 forKey:r21];
            [r21 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)parameters:(void *)arg2 setDictionaryJson:(void *)arg3 forKey:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && [r20 count] != 0x0) {
            if ([NSJSONSerialization isValidJSONObject:r20] != 0x0) {
                    r22 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:0x0] retain];
                    r23 = [[NSString alloc] initWithData:r22 encoding:0x4];
                    [ADJPackageBuilder parameters:r19 setString:r23 forKey:r21];
                    [r23 release];
                    [r22 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)parameters:(void *)arg2 setDictionary:(void *)arg3 forKey:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && [r20 count] != 0x0) {
            if ([r20 count] != 0x0) {
                    r22 = [[ADJUtil convertDictionaryValues:r20] retain];
                    [ADJPackageBuilder parameters:r19 setDictionaryJson:r22 forKey:r21];
                    [r22 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)parameters:(void *)arg2 setBool:(bool)arg3 forKey:(void *)arg4 {
    r21 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [NSNumber numberWithBool:arg3];
    r0 = [r0 retain];
    r22 = [r0 intValue];
    [r0 release];
    [ADJPackageBuilder parameters:r21 setInt:r22 forKey:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void *)clickTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickTime)), 0x0);
    return r0;
}

+(void)parameters:(void *)arg2 setNumber:(void *)arg3 forKey:(void *)arg4 {
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r21 = [r21 retain];
            [r20 doubleValue];
            r22 = [[NSString stringWithFormat:@"%.5f"] retain];
            [ADJPackageBuilder parameters:r19 setString:r22 forKey:r21];
            [r21 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setClickTime:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)purchaseTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseTime)), 0x0);
    return r0;
}

-(void)setPurchaseTime:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deeplink {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deeplink)), 0x0);
    return r0;
}

-(void)setDeeplink:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)attributionDetails {
    r0 = self->_attributionDetails;
    return r0;
}

-(void)setAttributionDetails:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributionDetails, arg2);
    return;
}

-(void *)deeplinkParameters {
    r0 = self->_deeplinkParameters;
    return r0;
}

-(void)setDeeplinkParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_deeplinkParameters, arg2);
    return;
}

-(void *)attribution {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attribution)), 0x0);
    return r0;
}

-(double)createdAt {
    r0 = self;
    return r0;
}

-(void)setAttribution:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setCreatedAt:(double)arg2 {
    self->_createdAt = d0;
    return;
}

-(void *)adjustConfig {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adjustConfig);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdjustConfig:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adjustConfig, arg2);
    return;
}

-(void *)deviceInfo {
    r0 = objc_loadWeakRetained((int64_t *)&self->_deviceInfo);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDeviceInfo:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_deviceInfo, arg2);
    return;
}

-(void *)activityState {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activityState)), 0x0);
    return r0;
}

-(void)setActivityState:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_activityState, 0x0);
    objc_destroyWeak((int64_t *)&self->_deviceInfo);
    objc_destroyWeak((int64_t *)&self->_adjustConfig);
    objc_storeStrong((int64_t *)&self->_attribution, 0x0);
    objc_storeStrong((int64_t *)&self->_deeplinkParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionDetails, 0x0);
    objc_storeStrong((int64_t *)&self->_deeplink, 0x0);
    objc_storeStrong((int64_t *)&self->_purchaseTime, 0x0);
    objc_storeStrong((int64_t *)&self->_clickTime, 0x0);
    return;
}

@end