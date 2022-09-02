@implementation VungleRouterConsent

+(bool)updateConsentStatus:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [[VungleSDK sharedSDK] retain];
    if (r19 >= 0x1) {
            *0x1011daa68 = r19;
            [r20 updateConsentStatus:r19 consentMessageVersion:@""];
            r19 = 0x1;
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

+(long long)getConsentStatus {
    return *0x1011daa68;
}

@end