@implementation AdColony_AvidCommand

+(void *)setNativeViewState:(void *)arg2 {
    *(r31 + 0xffffffffffffffd0) = arg2;
    r20 = [[NSString stringWithFormat:@"avidbridge.setNativeViewState(%@)"] retain];
    r19 = [[self callAvidbridge:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)setAvidAdSessionContext:(void *)arg2 {
    *(r31 + 0xffffffffffffffd0) = arg2;
    r20 = [[NSString stringWithFormat:@"avidbridge.setAvidAdSessionContext(%@)"] retain];
    r19 = [[self callAvidbridge:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)setAppState:(long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    if (r2 == 0x2) goto loc_10025c498;

loc_10025c47c:
    if (r2 == 0x1) goto loc_10025c4a4;

loc_10025c484:
    r20 = 0x0;
    if (r2 != 0x0) goto loc_10025c4b4;

loc_10025c48c:
    r20 = @"active";
    goto loc_10025c4ac;

loc_10025c4ac:
    [r20 retain];
    goto loc_10025c4b4;

loc_10025c4b4:
    r21 = [[NSString stringWithFormat:@"avidbridge.setAppState('%@')"] retain];
    r19 = [[r19 callAvidbridge:r21] retain];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;

loc_10025c4a4:
    r20 = @"inactive";
    goto loc_10025c4ac;

loc_10025c498:
    r20 = @"background";
    goto loc_10025c4ac;
}

+(void *)publishReadyEventForDeferredAdSession {
    r0 = [self callAvidbridge:@"avidbridge.publishReadyEventForDeferredAdSession()"];
    return r0;
}

+(void *)publishVideoEvent:(void *)arg2 data:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = self;
    r20 = [arg2 retain];
    if (r21 != 0x0) {
            var_30 = r20;
            stack[-56] = r21;
    }
    else {
            var_30 = r20;
    }
    r21 = [NSString stringWithFormat:r2];
    [r20 release];
    r20 = [r21 retain];
    r19 = [[r19 callAvidbridge:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)callAvidbridge:(void *)arg2 {
    r1 = @selector(stringWithFormat:);
    *(r31 + 0xffffffffffffffe0) = arg2;
    r0 = objc_msgSend(@class(NSString), r1);
    return r0;
}

@end