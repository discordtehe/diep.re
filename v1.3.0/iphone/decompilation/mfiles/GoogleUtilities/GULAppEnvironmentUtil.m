@implementation GULAppEnvironmentUtil

+(bool)isFromAppStore {
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
    if (*qword_1011d1978 != -0x1) {
            dispatch_once(0x1011d1978, 0x100e68bf0);
    }
    if (([GULAppEnvironmentUtil isSimulator] & 0x1) == 0x0 && ([GULAppEnvironmentUtil isAppStoreReceiptSandbox] & 0x1) == 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = [[r0 bundlePath] retain];
            [r0 release];
            r20 = [[r21 stringByAppendingPathComponent:@"SC_Info"] retain];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 fileExistsAtPath:r20];
            [r0 release];
            [r20 release];
            [r21 release];
            if ((r23 & 0x1) != 0x0) {
                    r19 = 0x1;
            }
            else {
                    if (*(int8_t *)byte_1011d1980 != 0x0) {
                            r19 = @selector(mainBundle);
                            r0 = objc_msgSend(@class(NSBundle), r19);
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 pathForResource:@"embedded" ofType:@"mobileprovision"];
                            r0 = [r0 retain];
                            r21 = r0;
                            if ([r0 length] == 0x0) {
                                    r19 = @selector(mainBundle);
                                    if (CPU_FLAGS & E) {
                                            r19 = 0x1;
                                    }
                            }
                            [r21 release];
                            [r20 release];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

+(bool)isSimulator {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GULAppEnvironmentUtil deviceModel];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqual:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = @selector(isEqual:);
            r20 = objc_msgSend(r19, r20);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)deviceModel {
    if (*qword_1011d1988 != -0x1) {
            dispatch_once(0x1011d1988, 0x100e68c30);
    }
    r0 = *0x1011d1990;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)isAppStoreReceiptSandbox {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForInfoDictionaryKey:@"FirebaseAppStoreReceiptURLCheckEnabled"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            [NSNumber class];
            if ([r19 isKindOfClass:r2] != 0x0 && [r19 boolValue] == 0x0) {
                    r20 = 0x0;
            }
            else {
                    if (sub_1009f77b0(0x7, 0x0, 0x0) != 0x0) {
                            r0 = [NSBundle mainBundle];
                            r0 = [r0 retain];
                            r21 = [[r0 appStoreReceiptURL] retain];
                            [r0 release];
                            r0 = [r21 lastPathComponent];
                            r0 = [r0 retain];
                            r20 = [r0 isEqualToString:r2];
                            [r0 release];
                            [r21 release];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
    }
    else {
            if (sub_1009f77b0(0x7, 0x0, 0x0) != 0x0) {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    r21 = [[r0 appStoreReceiptURL] retain];
                    [r0 release];
                    r0 = [r21 lastPathComponent];
                    r0 = [r0 retain];
                    r20 = [r0 isEqualToString:r2];
                    [r0 release];
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)systemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isAppExtension {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundlePath];
    r0 = [r0 retain];
    r21 = [r0 hasSuffix:r2];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end