@implementation OMIDtapjoySDK

+(void *)versionString {
    r0 = [NSString stringWithFormat:@"%@-%@"];
    return r0;
}

+(long long)majorVersionFrom:(void *)arg2 {
    r0 = [arg2 componentsSeparatedByString:@"."];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r21 = [r0 integerValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)sharedInstance {
    if (*qword_1011dc270 != -0x1) {
            dispatch_once(0x1011dc270, 0x100ea36f8);
    }
    r0 = *0x1011dc278;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)isCompatibleWithOMIDAPIVersion:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[arg2 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:0x0];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r21 = [[r20 valueForKey:@"v"] retain];
            r22 = [[r19 versionString] retain];
            r24 = [r19 majorVersionFrom:r22];
            [r22 release];
            if ([r19 majorVersionFrom:r21] == r24) {
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_active & 0x1;
    return r0;
}

-(bool)activateWithOMIDAPIVersion:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (([OMIDtapjoySDK isCompatibleWithOMIDAPIVersion:r19] & 0x1) != 0x0) {
            if (*qword_1011dc280 != -0x1) {
                    dispatch_once(0x1011dc280, 0x100ea3738);
            }
            r20 = 0x1;
            *(int8_t *)(int64_t *)&r21->_active = r20;
    }
    else {
            r23 = [[OMIDtapjoySDK versionString] retain];
            r22 = [[NSString stringWithFormat:@"OM SDK is not compatible with API version %@. OM SDK version is %@."] retain];
            [OMIDtapjoyError setOMIDErrorFor:r20 code:0x1 message:r22];
            [r22 release];
            [r23 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end