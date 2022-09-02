@implementation AdColony_AvidDictionaryUtil

+(void)state:(void *)arg2 addFriendlyObstructionForSessions:(void *)arg3 {
    r21 = [arg2 retain];
    [arg2 setValue:arg3 forKey:@"isFriendlyObstructionFor"];
    [r21 release];
    return;
}

+(void *)stateWithFrame:(struct CGRect)arg2 clipsToBounds:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[NSMutableDictionary dictionary] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    [r19 setValue:r23 forKey:@"x"];
    [r23 release];
    r23 = [[NSNumber numberWithDouble:r23] retain];
    [r19 setValue:r23 forKey:@"y"];
    [r23 release];
    r23 = [[NSNumber numberWithDouble:r23] retain];
    [r19 setValue:r23 forKey:@"width"];
    [r23 release];
    r22 = [[NSNumber numberWithDouble:r23] retain];
    [r19 setValue:r22 forKey:@"height"];
    [r22 release];
    r20 = [[NSNumber numberWithBool:r2] retain];
    [r19 setValue:r20 forKey:@"clipsToBounds"];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)state:(void *)arg2 addSessionId:(void *)arg3 {
    r21 = [arg2 retain];
    [arg2 setValue:arg3 forKey:@"id"];
    [r21 release];
    return;
}

+(void)state:(void *)arg2 addChildState:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 valueForKey:@"childViews"] retain];
    if (r21 == 0x0) {
            r22 = [NSMutableArray new];
            [r21 release];
            [r19 setValue:r22 forKey:@"childViews"];
            r21 = r22;
    }
    [r21 addObject:r2];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(bool)state:(void *)arg2 isEqualToState:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg2 isEqual:r2];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)emptyRootView {
    r0 = [self stateWithFrame:0x1 clipsToBounds:r3];
    return r0;
}

+(void *)emptyState {
    r20 = [[self emptyRootView] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r21 = [[self stateWithRoot:r20 timestamp:r3] retain];
    r19 = [[self jsonStringFromDictionary:r21] retain];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)stateWithRoot:(void *)arg2 timestamp:(double)arg3 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x30;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    var_38 = r22;
    r19 = @class(NSNumber);
    asm { frintz     d8, d0 };
    r21 = [r2 retain];
    r20 = [[r19 numberWithDouble:r2] retain];
    var_40 = r20;
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_60 count:0x2];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r22 == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)jsonStateWithRoot:(void *)arg2 timestamp:(double)arg3 {
    r20 = [[self stateWithRoot:arg2 timestamp:arg3] retain];
    r19 = [[self jsonStringFromDictionary:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)jsonStringFromDictionary:(void *)arg2 {
    var_28 = 0x0;
    r19 = [[NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:&var_28] retain];
    r22 = [var_28 retain];
    r20 = [[NSString alloc] initWithData:r19 encoding:0x4];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end