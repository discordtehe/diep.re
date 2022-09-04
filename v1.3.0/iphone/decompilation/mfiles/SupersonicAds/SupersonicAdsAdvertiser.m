@implementation SupersonicAdsAdvertiser

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dad00 != -0x1) {
            dispatch_once(0x1011dad00, &var_28);
    }
    r0 = *0x1011dacf8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)reportAppStarted {
    return;
}

@end