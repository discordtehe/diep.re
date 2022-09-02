@implementation NSError

+(void *)apm_errorWithCode:(long long)arg2 description:(void *)arg3 {
    r0 = [self apm_errorWithCode:arg2 description:arg3 monitorContext:0x0];
    return r0;
}

+(void *)apm_errorWithCode:(long long)arg2 description:(void *)arg3 monitorContext:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[NSMutableDictionary alloc] init];
    if ([r19 length] != 0x0) {
            [r22 setObject:r19 forKeyedSubscript:**_NSLocalizedDescriptionKey];
    }
    if ([r20 length] != 0x0) {
            [r22 setObject:r20 forKeyedSubscript:@"APMMonitorContext"];
    }
    r23 = [NSError alloc];
    r25 = [r22 copy];
    r21 = [r23 initWithDomain:*0x100e6cfe0 code:r21 userInfo:r25];
    [r25 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)networkErrorWithHTTPStatusCode:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[NSHTTPURLResponse localizedStringForStatusCode:arg2] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r19 = [[NSError errorWithDomain:*0x100e7e808 code:0x15 userInfo:r22] retain];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isAdRequestTimedOutError {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self domain];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            if ([r20 code] == 0x19) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)errorWithCode:(int)arg2 {
    r0 = [NSError errorWithCode:arg2 localizedDescription:0x0];
    return r0;
}

+(void *)errorWithCode:(int)arg2 localizedDescription:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg3 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r3 = &var_38;
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r22 = [r0 retain];
    }
    else {
            r22 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    asm { sxtw       x3, w21 };
    r20 = [[r20 errorWithDomain:@"com.mopub.iossdk" code:r3 userInfo:r22] retain];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)sdkInitializationInProgress {
    r0 = [NSError errorWithCode:0x18 localizedDescription:@"Attempted to initialize the SDK while a prior SDK initialization is in progress."];
    return r0;
}

+(void *)sdkMinimumOsVersion:(int)arg2 {
    r20 = [[NSString stringWithFormat:@"MoPub SDK requires iOS %d and up"] retain];
    r19 = [[NSError errorWithCode:0x17 localizedDescription:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)adAlreadyLoading {
    r0 = [NSError errorWithCode:0x1b localizedDescription:@"An ad is already being loaded. Please wait for the previous load to finish."];
    return r0;
}

+(void *)networkResponseIsNotHTTP {
    r0 = [NSError errorWithCode:0x14 localizedDescription:@"Network response is not of type NSHTTPURLResponse"];
    return r0;
}

+(void *)customEventClass:(void *)arg2 doesNotInheritFrom:(void *)arg3 {
    r21 = [NSStringFromClass(arg2) retain];
    r0 = NSStringFromClass(arg3);
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"%@ is an invalid custom event class because it does not extend %@"] retain];
    [r0 release];
    [r21 release];
    r19 = [[NSError errorWithCode:0x1c localizedDescription:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)networkResponseContainedNoData {
    r0 = [NSError errorWithCode:0x16 localizedDescription:@"No data found in the NSHTTPURLResponse"];
    return r0;
}

+(void *)adLoadFailedBecauseSdkNotInitialized {
    r0 = [NSError errorWithCode:0x17 localizedDescription:@"Ad prevented from loading. Error: Ad requested before initializing MoPub SDK. The MoPub SDK requires initializeSdkWithConfiguration:completion: to be called on MoPub.sharedInstance before attempting to load ads. Please update your integration."];
    return r0;
}

+(void *)serializationOfJson:(void *)arg2 failedWithError:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [[arg3 localizedDescription] retain];
    r21 = [[NSString stringWithFormat:@"Failed to generate a JSON string from:\n%@\nReason: %@"] retain];
    [r20 release];
    [r19 release];
    r19 = [[NSError errorWithCode:0x1d localizedDescription:r21] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)adResponsesNotFound {
    r0 = [NSError errorWithCode:0x13 localizedDescription:@"No ad responses"];
    return r0;
}

+(void *)adResponseFailedToParseWithError:(void *)arg2 {
    r0 = [arg2 localizedDescription];
    r0 = [r0 retain];
    r19 = [[NSString stringWithFormat:@"Failed to parse ad response into JSON: %@"] retain];
    [r0 release];
    r20 = [[NSError errorWithCode:0x1e localizedDescription:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)fullscreenAdAlreadyOnScreen {
    r0 = [NSError errorWithCode:0x22 localizedDescription:@"Cannot present a full screen ad that is already on-screen."];
    return r0;
}

+(void *)frameWidthNotSetForFlexibleSize {
    r0 = [NSError errorWithCode:0x24 localizedDescription:@"Cannot determine a size for flexible width because the frame width is not set."];
    return r0;
}

+(void *)consentDialogAlreadyShowing {
    r0 = [NSError errorWithCode:0x1f localizedDescription:@"Consent dialog is already being presented modally."];
    return r0;
}

+(void *)frameHeightNotSetForFlexibleSize {
    r0 = [NSError errorWithCode:0x25 localizedDescription:@"Cannot determine a size for flexible height because the frame height is not set."];
    return r0;
}

+(void *)noConsentDialogLoaded {
    r0 = [NSError errorWithCode:0x20 localizedDescription:@"Consent dialog has not been loaded."];
    return r0;
}

+(void *)tooManyRequests {
    r0 = [NSError errorWithCode:0x23 localizedDescription:@"Could not perform ad request because too many requests have been sent to the server."];
    return r0;
}

@end