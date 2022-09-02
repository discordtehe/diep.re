@implementation MPNativeAdUtils

+(bool)addURLString:(void *)arg2 toURLArray:(void *)arg3 {
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
    if ([r19 length] != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    [r20 addObject:r2];
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end