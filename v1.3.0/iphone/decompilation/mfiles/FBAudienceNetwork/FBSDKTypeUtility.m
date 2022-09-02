@implementation FBSDKTypeUtility

+(void *)arrayValue:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self _objectValue:r22 ofClass:[NSArray class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(bool)boolValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [NSNumber class];
    if ([r19 isKindOfClass:r2] == 0x0) {
            r22 = @selector(isKindOfClass:);
            [NSString class];
            if (objc_msgSend(r19, r22) != 0x0) {
                    r20 = [r19 boolValue];
            }
            else {
                    r0 = [r20 objectValue:r19];
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r0 release];
            }
    }
    else {
            r20 = [r19 boolValue];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)dictionaryValue:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self _objectValue:r22 ofClass:[NSDictionary class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(long long)integerValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r21 = @selector(isKindOfClass:);
            [NSString class];
            if (objc_msgSend(r19, r21) != 0x0) {
                    r20 = [r19 integerValue];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = [r19 integerValue];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)objectValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    [NSNull class];
    r0 = [r21 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r21;
            }
            else {
                    r0 = 0x0;
            }
    }
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r21 release];
    r0 = r19;
    return r0;
}

+(double)timeIntervalValue:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r21 = @selector(isKindOfClass:);
            [NSString class];
            if (objc_msgSend(r19, r21) != 0x0) {
                    [r19 doubleValue];
                    v8 = v0;
            }
    }
    else {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

+(void *)stringValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10075c578;

loc_10075c56c:
    r0 = [r19 retain];
    goto loc_10075c5f0;

loc_10075c5f0:
    r20 = r0;
    goto loc_10075c5f4;

loc_10075c5f4:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_10075c578:
    r21 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10075c5b4;

loc_10075c59c:
    r0 = [r19 stringValue];
    goto loc_10075c5ec;

loc_10075c5ec:
    r0 = [r0 retain];
    goto loc_10075c5f0;

loc_10075c5b4:
    r21 = @selector(isKindOfClass:);
    [NSURL class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10075c610;

loc_10075c5d8:
    r0 = [r19 absoluteString];
    goto loc_10075c5ec;

loc_10075c610:
    r20 = 0x0;
    goto loc_10075c5f4;
}

+(void *)URLValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSURL class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10075c7d0;

loc_10075c7c4:
    r0 = [r19 retain];
    goto loc_10075c810;

loc_10075c810:
    r20 = r0;
    goto loc_10075c81c;

loc_10075c81c:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_10075c7d0:
    r21 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10075c818;

loc_10075c7f4:
    r0 = [NSURL URLWithString:r2];
    r0 = [r0 retain];
    goto loc_10075c810;

loc_10075c818:
    r20 = 0x0;
    goto loc_10075c81c;
}

+(unsigned long long)unsignedIntegerValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [NSNumber class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [r19 unsignedIntegerValue];
            [r19 release];
            r0 = r20;
    }
    else {
            r20 = [r20 integerValue:r19];
            [r19 release];
            r0 = r20 & !(r20 / 0xffffffff80000000);
    }
    return r0;
}

+(void *)_objectValue:(void *)arg2 ofClass:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = @selector(isKindOfClass:);
    r0 = [arg2 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r21;
            }
    }
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r21 release];
    r0 = r19;
    return r0;
}

@end