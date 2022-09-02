@implementation AdMobKit

+(void *)sharedInstance {
    if (*qword_1011d1900 != -0x1) {
            dispatch_once(0x1011d1900, 0x100e67d08);
    }
    r0 = *0x1011d1908;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)bundleIdentifier {
    objc_retainAutorelease(@"com.google.admob.ios");
    return @"com.google.admob.ios";
}

+(void *)kitDisplayVersion {
    objc_retainAutorelease(@"0.0.0");
    return @"0.0.0";
}

@end