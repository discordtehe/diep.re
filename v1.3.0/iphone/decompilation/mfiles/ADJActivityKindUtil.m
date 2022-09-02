@implementation ADJActivityKindUtil

+(int)activityKindFromString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (([@"session" isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if (([@"event" isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x2;
            }
            else {
                    if (([@"click" isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x4;
                    }
                    else {
                            if (([@"attribution" isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x5;
                            }
                            else {
                                    r20 = @selector(isEqualToString:);
                                    if (objc_msgSend(@"info", r20) != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r20 = 0x0;
                                            }
                                            else {
                                                    r20 = 0x6;
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)activityKindToString:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = arg2 - 0x1;
    if (r8 > 0x5) goto loc_10068d1d4;

loc_10068d1a8:
    goto *0x10068d218[sign_extend_64(*(int32_t *)(0x10068d218 + r8 * 0x4)) + 0x10068d218];

loc_10068d1bc:
    r19 = @"session";
    goto loc_10068d200;

loc_10068d200:
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;

loc_10068d1c8:
    r19 = @"event";
    goto loc_10068d200;

loc_10068d1d4:
    r19 = @"unknown";
    goto loc_10068d200;

loc_10068d1e0:
    r19 = @"click";
    goto loc_10068d200;

loc_10068d1ec:
    r19 = @"attribution";
    goto loc_10068d200;

loc_10068d1f8:
    r19 = @"info";
    goto loc_10068d200;
}

@end