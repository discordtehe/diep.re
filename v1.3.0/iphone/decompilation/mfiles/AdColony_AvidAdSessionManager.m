@implementation AdColony_AvidAdSessionManager

+(void *)version {
    r0 = [AdColony_AvidContext sharedContext];
    r0 = [r0 retain];
    r20 = [[r0 avidVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)releaseDate {
    r0 = [AdColony_AvidContext sharedContext];
    r0 = [r0 retain];
    r20 = [[r0 avidReleaseDate] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)startAvidDisplayAdSessionWithContext:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidDisplayAdSession new];
    r19 = r0;
    r22 = [[r0 avidAdSessionId] retain];
    r20 = [AdColony_InternalAvidDisplayAdSession avidAdSessionWithId:r22 context:r21];
    [r21 release];
    r20 = [r20 retain];
    [r22 release];
    [r20 onStart];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    [r0 registerAvidAdSession:r19 withInternalAvidAdSession:r20];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)startAvidVideoAdSessionWithContext:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidVideoAdSession new];
    r19 = r0;
    r22 = [[r0 avidAdSessionId] retain];
    r20 = [AdColony_InternalAvidVideoAdSession avidAdSessionWithId:r22 context:r21];
    [r21 release];
    r20 = [r20 retain];
    [r22 release];
    [r20 onStart];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    [r0 registerAvidAdSession:r19 withInternalAvidAdSession:r20];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)startAvidManagedVideoAdSessionWithContext:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidManagedVideoAdSession new];
    r19 = r0;
    r22 = [[r0 avidAdSessionId] retain];
    r20 = [AdColony_InternalAvidManagedVideoAdSession avidAdSessionWithId:r22 context:r21];
    [r21 release];
    r20 = [r20 retain];
    [r22 release];
    [r20 onStart];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    [r0 registerAvidAdSession:r19 withInternalAvidAdSession:r20];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)startAvidManagedDisplayAdSessionWithContext:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidManagedDisplayAdSession new];
    r19 = r0;
    r22 = [[r0 avidAdSessionId] retain];
    r20 = [AdColony_InternalAvidManagedDisplayAdSession avidAdSessionWithId:r22 context:r21];
    [r21 release];
    r20 = [r20 retain];
    [r22 release];
    [r20 onStart];
    r0 = [AdColony_AvidManager getInstance];
    r0 = [r0 retain];
    [r0 registerAvidAdSession:r19 withInternalAvidAdSession:r20];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)webViewForSessionId:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r20 = [r0 findInternalAvidAdSessionById:r21];
    [r21 release];
    r20 = [r20 retain];
    [r0 release];
    r0 = [r20 avidBridge];
    r0 = [r0 retain];
    r21 = [[r0 webView] retain];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)webViewForView:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffd0 - 0x60;
    r20 = self;
    r19 = [arg2 retain];
    var_48 = &var_50;
    r0 = [r20 findWebView:r19];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    r0 = *(var_48 + 0x28);
    if (r0 == 0x0) {
            r0 = [r19 subviews];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            var_78 = 0xffffffffc2000000;
            var_70 = 0x100257af4;
            var_68 = 0x100e76d20;
            var_60 = r20;
            var_58 = &var_50;
            r0 = [r0 enumerateObjectsUsingBlock:&var_80];
            [r21 release];
            r0 = *(var_48 + 0x28);
    }
    [r0 retain];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)findWebView:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r21 = [[r0 internalAvidAdSessions] retain];
    r19 = [r19 retain];
    [r21 enumerateObjectsUsingBlock:&var_80];
    [r21 release];
    [r0 release];
    [*(&var_50 + 0x28) retain];
    [r19 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end