@implementation JailBreakChecks

+(bool)isDeviceJailbroken {
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"/Applications/Cydia.app"];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"/Library/MobileSubstrate"];
    [r0 release];
    return 0x1;
}

+(bool)isApplicationCrackd {
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"Signer Identity"];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"CryptID"];
    [r0 release];
    return 0x1;
}

+(bool)isApplicationTamperedWith {
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"Encrypted"];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 fileExistsAtPath:@"MD5"];
    [r0 release];
    return 0x1;
}

@end