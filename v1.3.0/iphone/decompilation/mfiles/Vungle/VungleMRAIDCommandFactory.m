@implementation VungleMRAIDCommandFactory

+(void *)buildCommand:(void *)arg2 withParameters:(void *)arg3 webViewFacade:(void *)arg4 {
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
    if ([r19 isEqualToString:r2] == 0x0) {
            if ([r19 isEqualToString:r2] == 0x0) {
                    if ([r19 isEqualToString:r2] == 0x0) {
                            if ([r19 isEqualToString:r2] == 0x0) {
                                    if ([r19 isEqualToString:r2] == 0x0) {
                                            if ([r19 isEqualToString:r2] == 0x0) {
                                                    if ([r19 isEqualToString:r2] == 0x0) {
                                                            if ([r19 isEqualToString:r2] == 0x0) {
                                                                    if ([r19 isEqualToString:r2] == 0x0) {
                                                                            if ([r19 isEqualToString:r2] == 0x0) {
                                                                                    if ([r19 isEqualToString:r2] == 0x0) {
                                                                                            if ([r19 isEqualToString:r2] == 0x0) {
                                                                                                    if ([r19 isEqualToString:r2] == 0x0) {
                                                                                                            if ([r19 isEqualToString:r2] == 0x0) {
                                                                                                                    if ([r19 isEqualToString:r2] == 0x0) {
                                                                                                                            [r19 isEqualToString:r2] == 0x0;
                                                                                                                    }
                                                                                                            }
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    r22 = [objc_alloc() initWithCommand:r19 parameters:r20 webViewFacade:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end