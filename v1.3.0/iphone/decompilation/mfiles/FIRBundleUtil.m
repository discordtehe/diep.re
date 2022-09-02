@implementation FIRBundleUtil

+(void *)relevantBundles {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[NSBundle mainBundle] retain];
    r21 = @class(NSBundle);
    r21 = [[r21 bundleForClass:[self class]] retain];
    r0 = [NSArray arrayWithObjects:&var_38 count:0x2];
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)optionsDictionaryPathWithResourceName:(void *)arg2 andFileType:(void *)arg3 inBundles:(void *)arg4 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_100100ddc;

loc_100100d60:
    r28 = 0x0;
    goto loc_100100d68;

loc_100100d68:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r0 = *(0x0 + r28 * 0x8);
    r0 = [r0 pathForResource:r2 ofType:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) goto loc_100100dec;

loc_100100da8:
    [r25 release];
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100100d68;

loc_100100dbc:
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_100100d60;

loc_100100ddc:
    [r21 release];
    r25 = 0x0;
    goto loc_100100df4;

loc_100100df4:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100100dec:
    [r21 release];
    goto loc_100100df4;
}

+(void *)relevantURLSchemes {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r19 = [[NSMutableArray alloc] init];
    r0 = [self class];
    r0 = [r0 relevantBundles];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_200 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1E8 = r0;
    if (r0 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_200);
                            }
                            r21 = @selector(countByEnumeratingWithState:objects:count:);
                            var_1E0 = r20;
                            r0 = *(0x0 + r20 * 0x8);
                            r0 = [r0 objectForInfoDictionaryKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            r27 = objc_msgSend(r0, r21);
                            if (r27 != 0x0) {
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    r0 = *(0x0 + r25 * 0x8);
                                                    r0 = [r0 objectForKeyedSubscript:@"CFBundleURLSchemes"];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    [r19 addObjectsFromArray:r2];
                                                    [r22 release];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r27);
                                            r27 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    } while (r27 != 0x0);
                            }
                            [r26 release];
                            r20 = var_1E0 + 0x1;
                    } while (r20 < var_1E8);
                    r0 = [var_200 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_1E8 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_200 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)hasBundleIdentifierPrefix:(void *)arg2 inBundles:(void *)arg3 {
    r31 = r31 - 0x150;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_130 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100101240;

loc_100101134:
    var_120 = r22;
    goto loc_100101150;

loc_100101150:
    r25 = 0x0;
    goto loc_100101168;

loc_100101168:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r28 = *(0x0 + r25 * 0x8);
    if (([GULAppEnvironmentUtil isAppExtension] & 0x1) != 0x0) {
            r0 = [var_130 bundleIdentifierByRemovingLastPartFrom:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    r27 = @selector(isEqualToString:);
    r22 = r0;
    r0 = [r28 bundleIdentifier];
    r29 = r29;
    r28 = [r0 retain];
    r20 = objc_msgSend(r22, r27);
    [r28 release];
    [r22 release];
    if ((r20 & 0x1) != 0x0) goto loc_100101250;

loc_100101200:
    r25 = r25 + 0x1;
    if (r25 < r23) goto loc_100101168;

loc_10010120c:
    r22 = var_120;
    r23 = objc_msgSend(r22, var_138);
    if (r23 != 0x0) goto loc_100101150;

loc_100101240:
    [r22 release];
    r20 = 0x0;
    goto loc_100101260;

loc_100101260:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100101250:
    r22 = var_120;
    [r22 release];
    r20 = 0x1;
    goto loc_100101260;
}

+(void *)bundleIdentifierByRemovingLastPartFrom:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [[arg2 componentsSeparatedByString:@"."] retain];
    [r20 release];
    r20 = [r19 mutableCopy];
    [r19 release];
    [r20 removeLastObject];
    r19 = [[r20 componentsJoinedByString:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end