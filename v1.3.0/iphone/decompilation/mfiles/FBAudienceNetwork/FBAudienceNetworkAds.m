@implementation FBAudienceNetworkAds

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAudienceNetworkAds");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void)initializeWithSettings:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [FBAdUtility initializeAudienceNetwork];
    r20 = [[r21 mediationService] retain];
    [r21 release];
    if (r20 != 0x0) {
            [FBAdSettings setMediationService:r20];
    }
    var_28 = r19;
    r19 = [r19 retain];
    [FBAudienceNetworkAds performSynchronizationWithCompletion:&var_48];
    [var_28 release];
    [r19 release];
    [r20 release];
    return;
}

+(long long)adFormatTypeNameForPlacementId:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [FBAudienceNetworkAds formatMapper];
    r0 = [r0 retain];
    r20 = [r0 adFormatTypeNameForPlacementId:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)performSynchronizationWithCompletion:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [[FBAdURLSession sharedSession] retain];
    r21 = [[FBAdSettings synchronizationEndpointURL] retain];
    r22 = [[FBAudienceNetworkAds synchronizationRequestPayload] retain];
    var_38 = r20;
    [r20 retain];
    [r19 requestWithURL:r21 HTTPMethod:@"POST" queryParameters:r22 responseHandler:&var_58];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r22 release];
    [r21 release];
    [r19 release];
    [var_38 release];
    [r20 release];
    return;
}

+(void *)formatMapper {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eaccb0);
    if (*qword_1011ddc68 != -0x1) {
            dispatch_once(0x1011ddc68, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddc70);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)parseSynchronizationResponseData:(void *)arg2 withCompletion:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:&var_38];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            asm { ccmp       x8, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, 0x0);
            }
    }
    else {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r0 = [FBAudienceNetworkAds formatMapper];
                            r0 = [r0 retain];
                            [r0 setPlacementIdToAdFormatIdMap:r22];
                            [r0 release];
                            if (r19 != 0x0) {
                                    (*(r19 + 0x10))(r19, 0x1);
                            }
                    }
                    [r22 release];
            }
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, 0x0);
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)synchronizationRequestPayload {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[FBAdSettings bidderToken] retain];
    r0 = [FBAdEnvironmentData staticEnvironmentData];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r21 = @selector(dictionaryWithObjects:forKeys:count:);
            r22 = [objc_msgSend(@class(NSDictionary), r21) retain];
            r0 = [r20 dictionaryByAddingContentFromDictionary:r22];
            r29 = r29;
            r23 = [r0 retain];
            [r20 release];
            [r22 release];
            r20 = r23;
    }
    else {
            r21 = @selector(dictionaryWithObjects:forKeys:count:);
    }
    var_38 = **___stack_chk_guard;
    r22 = [objc_msgSend(@class(NSDictionary), r21) retain];
    r23 = [objc_msgSend(@class(NSDictionary), r21) retain];
    r21 = [objc_msgSend(@class(NSDictionary), r21) retain];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end