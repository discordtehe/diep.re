@implementation APMInfoPlistFileUtil

+(void *)dictionaryFromGoogleServiceInfoPlist {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [APMInfoPlistFileUtil googleServiceInfoPlistPath];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r20 = [[NSDictionary dictionaryWithContentsOfFile:r19] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)googleServiceInfoPlistPath {
    r31 = r31 - 0x140;
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
    r20 = [[NSBundle mainBundle] retain];
    r19 = [[NSBundle bundleForClass:[self class]] retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r19 release];
    [r20 release];
    var_118 = q0;
    r0 = [r21 retain];
    r19 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1001987f0;

loc_100198758:
    r26 = *var_118;
    goto loc_100198774;

loc_100198774:
    r28 = 0x0;
    goto loc_10019877c;

loc_10019877c:
    if (*var_118 != r26) {
            objc_enumerationMutation(r19);
    }
    r0 = *(var_120 + r28 * 0x8);
    r0 = [r0 pathForResource:r2 ofType:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) goto loc_100198800;

loc_1001987bc:
    [r25 release];
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_10019877c;

loc_1001987d0:
    r22 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_100198774;

loc_1001987f0:
    [r19 release];
    r25 = 0x0;
    goto loc_100198808;

loc_100198808:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100198800:
    [r19 release];
    goto loc_100198808;
}

@end