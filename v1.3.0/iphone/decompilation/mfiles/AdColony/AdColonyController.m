@implementation AdColonyController

+(void)enableClientSideTestMode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColonyController sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 setTestModeEnabled:0x1];
    if ([r19 initState] == 0x1 || [r19 initState] == 0x2) {
            r0 = @class(AdColony);
            r0 = [r0 getAppOptions];
            r0 = [r0 retain];
            [r0 setTestMode:0x1];
            [AdColony setAppOptions:r0];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r19 release];
    return;
}

+(void)disableClientSideTestMode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColonyController sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 setTestModeEnabled:0x0];
    if ([r19 initState] == 0x1 || [r19 initState] == 0x2) {
            r0 = @class(AdColony);
            r0 = [r0 getAppOptions];
            r0 = [r0 retain];
            [r0 setTestMode:0x0];
            [AdColony setAppOptions:r0];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r19 release];
    return;
}

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8350 != -0x1) {
            dispatch_once(0x1011d8350, 0x100e7e988);
    }
    r0 = *0x1011d8358;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initializeAdColonyCustomEventWithAppId:(void *)arg2 allZoneIds:(void *)arg3 userId:(void *)arg4 callback:(void *)arg5 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [AdColonyController sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r24 = [[NSSet setWithArray:r20] retain];
    r0 = [r22 currentAllZoneIds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isEqualToSet:r24];
    [r0 release];
    if ([r22 initState] != 0x1 || ((r25 ^ 0x1) & 0x1) != 0x0) goto loc_10049b0cc;

loc_10049b0b8:
    if (r23 != 0x0) {
            (*(r23 + 0x10))(r23);
    }
    goto loc_10049b5c8;

loc_10049b5c8:
    [r24 release];
    objc_sync_exit(r22);
    [r22 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10049b0cc:
    if ([r22 initState] == 0x2) goto loc_10049b5c8;

loc_10049b0e0:
    [r22 setInitState:0x2];
    r26 = [[MoPub sharedInstance] retain];
    r0 = [r26 globalMediationSettingsForClass:[AdColonyGlobalMediationSettings class]];
    r29 = r29;
    var_90 = [r0 retain];
    [r26 release];
    var_88 = [AdColonyAppOptions new];
    if (r21 != 0x0 && [r21 length] != 0x0) {
            [var_88 setUserID:r21];
    }
    else {
            if (var_90 != 0x0) {
                    r0 = [var_90 customId];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 length];
                    [r0 release];
                    if (r26 != 0x0) {
                            r0 = [var_90 customId];
                            r29 = r29;
                            r25 = [r0 retain];
                            [var_88 setUserID:r25];
                            [r25 release];
                    }
            }
    }
    [r22 setCurrentAllZoneIds:r24];
    [var_88 setTestMode:[r22 testModeEnabled]];
    r0 = [MoPub sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isGDPRApplicable];
    [r0 release];
    if (r26 != 0x1) goto loc_10049b53c;

loc_10049b27c:
    r0 = [MoPub sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 allowLegitimateInterest];
    [r0 release];
    if (r28 == 0x0) goto loc_10049b304;

loc_10049b2bc:
    r0 = [MoPub sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if ([r0 currentConsentStatus] == 0x1) {
            [r28 release];
            r27 = @selector(numberWithBool:);
            r25 = [objc_msgSend(@class(NSNumber), r27) retain];
            [var_88 setOption:@"explicit_consent_given" withNumericValue:r25];
            [r25 release];
            r25 = [objc_msgSend(@class(NSNumber), r27) retain];
            [var_88 setOption:@"consent_response" withNumericValue:r25];
    }
    else {
            r0 = [MoPub sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 currentConsentStatus];
            [r0 release];
            [r28 release];
            if (r25 == 0x2) {
                    r27 = @selector(numberWithBool:);
                    r25 = [objc_msgSend(@class(NSNumber), r27) retain];
                    [var_88 setOption:@"explicit_consent_given" withNumericValue:r25];
                    [r25 release];
                    r25 = [objc_msgSend(@class(NSNumber), r27) retain];
                    [var_88 setOption:@"consent_response" withNumericValue:r25];
            }
            else {
                    r27 = @selector(numberWithBool:);
                    r25 = [objc_msgSend(@class(NSNumber), r27) retain];
                    [var_88 setOption:@"explicit_consent_given" withNumericValue:r25];
                    [r25 release];
                    r25 = [objc_msgSend(@class(NSNumber), r27) retain];
                    [var_88 setOption:@"consent_response" withNumericValue:r25];
            }
    }
    r0 = r25;
    goto loc_10049b538;

loc_10049b538:
    [r0 release];
    goto loc_10049b53c;

loc_10049b53c:
    var_60 = [r22 retain];
    var_58 = [r23 retain];
    [AdColony configureWithAppID:r19 zoneIDs:r20 options:var_88 completion:&var_80];
    [var_58 release];
    [var_60 release];
    [var_88 release];
    [var_90 release];
    goto loc_10049b5c8;

loc_10049b304:
    r0 = [MoPub sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r26 == 0x0) goto loc_10049b53c;

loc_10049b338:
    r25 = [@(YES) retain];
    [var_88 setOption:@"explicit_consent_given" withNumericValue:r25];
    [r25 release];
    r25 = @class(NSNumber);
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r25 = [[r25 numberWithBool:[r0 canCollectPersonalInfo]] retain];
    [var_88 setOption:@"consent_response" withNumericValue:r25];
    [r25 release];
    r0 = r0;
    goto loc_10049b538;
}

-(int)initState {
    r0 = *(int32_t *)(self + 0xc);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0xc) = 0x0;
    }
    return r0;
}

-(void)setInitState:(int)arg2 {
    *(int32_t *)(self + 0xc) = arg2;
    return;
}

-(bool)testModeEnabled {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)setCurrentAllZoneIds:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)currentAllZoneIds {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void)setTestModeEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end