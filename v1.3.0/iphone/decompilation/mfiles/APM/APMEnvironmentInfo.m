@implementation APMEnvironmentInfo

+(void *)sharedInstance {
    if (*qword_1011d1f08 != -0x1) {
            dispatch_once(0x1011d1f08, 0x100e6d600);
    }
    r0 = *0x1011d1f00;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)deviceModel {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011d1f10 != -0x1) {
            dispatch_once(0x1011d1f10, &var_38);
    }
    r0 = r19->_deviceModel;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)deviceOSVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)userDefaultLanguage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSLocale preferredLanguages];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r19 firstObject];
            r0 = [r0 retain];
            r20 = [[r0 lowercaseString] retain];
            [r0 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x36b1 message:@"Failed to get preferred language"];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(int)timeZoneOffsetMinutes {
    r0 = [NSTimeZone localTimeZone];
    r0 = [r0 retain];
    r19 = r0;
    [r0 secondsFromGMT];
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzs     w20, d0 };
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deviceModel, 0x0);
    return;
}

@end