@implementation VungleNetworkRequestBodyBuilder

-(void *)initWithPublisherInformation:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x8, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)buildRequestBody {
    r19 = [[NSMutableDictionary dictionaryWithCapacity:0x6] retain];
    r22 = [[self buildApplicationParameters] retain];
    [r19 setObject:r22 forKeyedSubscript:@"app"];
    [r22 release];
    r22 = [[self buildDeviceParameters] retain];
    [r19 setObject:r22 forKeyedSubscript:@"device"];
    [r22 release];
    r22 = [[self buildRequestParameters] retain];
    [r19 setObject:r22 forKeyedSubscript:@"request"];
    [r22 release];
    r22 = [[self buildSystemParameters] retain];
    [r19 setObject:r22 forKeyedSubscript:@"system"];
    [r22 release];
    r22 = [[self buildSUserParameters] retain];
    [r19 setObject:r22 forKeyedSubscript:@"user"];
    [r22 release];
    r20 = [[self buildExtensionParameters] retain];
    [r19 setObject:r20 forKeyedSubscript:@"ext"];
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)buildApplicationParameters {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary dictionaryWithCapacity:0x3] retain];
    r0 = [r20 publisherInformation];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 appID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 publisherInformation];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 appID];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"id"];
            [r21 release];
            [r20 release];
    }
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 bundleIdentifier];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:@"bundle"];
    }
    r0 = [r20 infoDictionary];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:**_kCFBundleVersionKey] retain];
    [r0 release];
    if (r22 != 0x0) {
            [r19 setObject:r22 forKeyedSubscript:@"ver"];
    }
    r23 = [r19 copy];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)buildRequestParameters {
    r0 = **___NSDictionary0__;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)buildSystemParameters {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_10 forKeys:&var_18 count:0x1];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)buildDeviceParameters {
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
    r24 = self;
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    r19 = [[r0 connectionQualityString] retain];
    [r0 release];
    r0 = [VungleDeviceInformationProvider sharedProvider];
    r0 = [r0 retain];
    r21 = r0;
    var_58 = r19;
    r0 = [r0 informationWithConnectionQuality:r19];
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    [r21 release];
    r0 = [r20 objectForKeyedSubscript:@"ext"];
    r0 = [r0 retain];
    r21 = [r0 mutableCopy];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:@"vungle"];
    r0 = [r0 retain];
    r23 = [r0 mutableCopy];
    [r0 release];
    r0 = [r23 objectForKeyedSubscript:@"ios"];
    r0 = [r0 retain];
    r25 = [r0 mutableCopy];
    [r0 release];
    r0 = [r24 publisherInformation];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 IFA];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    if (r0 != 0x0) {
            r0 = [r24 publisherInformation];
            r0 = [r0 retain];
            r28 = [[r0 IFA] retain];
            [r25 setObject:r28 forKeyedSubscript:@"idfa"];
            [r28 release];
            [r0 release];
            r0 = [r24 publisherInformation];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 IFA];
            r29 = r29;
            r27 = [r0 retain];
            [r20 setObject:r27 forKeyedSubscript:@"ifa"];
            [r27 release];
            [r19 release];
    }
    r0 = [r24 publisherInformation];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 identifierForVendor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    if (r0 != 0x0) {
            r27 = @selector(identifierForVendor);
            r0 = [r24 publisherInformation];
            r0 = [r0 retain];
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            [r0 retain];
            [r25 setObject:r2 forKeyedSubscript:r3];
            [r22 release];
            [r19 release];
    }
    r0 = [VungleVDUIDProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 VDUID];
    r0 = [r0 retain];
    r22 = r0;
    [r25 setObject:r2 forKeyedSubscript:r3];
    [r22 release];
    [r19 release];
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r21 setObject:r2 forKeyedSubscript:r3];
    [r20 setObject:r2 forKeyedSubscript:r3];
    r19 = [r20 copy];
    [r25 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [var_58 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)buildExtensionParameters {
    r0 = **___NSDictionary0__;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)buildSUserParameters {
    r19 = [[NSMutableDictionary dictionary] retain];
    r20 = [[NSMutableDictionary dictionary] retain];
    r0 = [VNGUserConsentInfoModel sharedModel];
    r0 = [r0 retain];
    r23 = [[r0 consentStatus] retain];
    [r20 setObject:r23 forKeyedSubscript:@"consent_status"];
    [r23 release];
    r23 = [[r0 consentSource] retain];
    [r20 setObject:r23 forKeyedSubscript:@"consent_source"];
    [r23 release];
    r23 = [[NSNumber numberWithInteger:[r0 consentTimeStamp]] retain];
    [r20 setObject:r23 forKeyedSubscript:@"consent_timestamp"];
    [r23 release];
    r23 = [[r0 messageVersion] retain];
    [r20 setObject:r23 forKeyedSubscript:@"consent_message_version"];
    [r23 release];
    [r19 setObject:r20 forKeyedSubscript:@"gdpr"];
    r22 = [r19 copy];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)publisherInformation {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)placements {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setPlacements:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)placementReferences {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setPlacementReferences:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end