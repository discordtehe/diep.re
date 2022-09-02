@implementation ISServerResponseValidator

-(bool)validateJSONForErrors:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKey:@"error"];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 release];
    if (r19 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)validatePlacementsWithArray:(void *)arg2 product:(void *)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [r19 enumerateObjectsUsingBlock:&var_68];
            if (*(int8_t *)(&var_40 + 0x18) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            _Block_object_dispose(&var_40, 0x8);
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)validateJSONObject:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 validateJSONForErrors:r19] == 0x0) goto loc_1006e5924;

loc_1006e547c:
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r26 = [r0 retain];
            [r25 release];
            [r23 release];
            [r22 release];
            r22 = [r20 validatePlacementsWithArray:r26 product:@"rewardedVideo"];
            [r26 release];
            if (r22 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r25 release];
                            [r23 release];
                            [r22 release];
                            r22 = [r20 validatePlacementsWithArray:r26 product:@"interstitial"];
                            [r26 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r23 release];
                                    [r22 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            [r25 release];
                                            [r23 release];
                                            [r22 release];
                                            r22 = [r20 validatePlacementsWithArray:r26 product:@"offerwall"];
                                            [r26 release];
                                            if (r22 != 0x0) {
                                                    r0 = [r19 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r22 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 release];
                                                    [r23 release];
                                                    [r22 release];
                                                    if (r0 != 0x0) {
                                                            r0 = [r19 objectForKeyedSubscript:r2];
                                                            r0 = [r0 retain];
                                                            r22 = r0;
                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                            r0 = [r0 retain];
                                                            r23 = r0;
                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                            r0 = [r0 retain];
                                                            r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                                            [r0 release];
                                                            [r23 release];
                                                            [r22 release];
                                                            r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                                            [r21 release];
                                                    }
                                                    else {
                                                            r20 = 0x1;
                                                    }
                                            }
                                            else {
                                                    r20 = 0x0;
                                            }
                                    }
                                    else {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r22 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                                    [r0 release];
                                                    [r23 release];
                                                    [r22 release];
                                                    r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                                    [r21 release];
                                            }
                                            else {
                                                    r20 = 0x1;
                                            }
                                    }
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            [r22 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    [r25 release];
                                    [r23 release];
                                    [r22 release];
                                    r22 = [r20 validatePlacementsWithArray:r26 product:@"offerwall"];
                                    [r26 release];
                                    if (r22 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r22 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                                    [r0 release];
                                                    [r23 release];
                                                    [r22 release];
                                                    r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                                    [r21 release];
                                            }
                                            else {
                                                    r20 = 0x1;
                                            }
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r23 release];
                                    [r22 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                            [r21 release];
                                    }
                                    else {
                                            r20 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 release];
                    [r23 release];
                    [r22 release];
                    r22 = [r20 validatePlacementsWithArray:r26 product:@"interstitial"];
                    [r26 release];
                    if (r22 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            [r22 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    [r25 release];
                                    [r23 release];
                                    [r22 release];
                                    r22 = [r20 validatePlacementsWithArray:r26 product:@"offerwall"];
                                    [r26 release];
                                    if (r22 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r22 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                    r0 = [r0 retain];
                                                    r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                                    [r0 release];
                                                    [r23 release];
                                                    [r22 release];
                                                    r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                                    [r21 release];
                                            }
                                            else {
                                                    r20 = 0x1;
                                            }
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r23 release];
                                    [r22 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                            [r21 release];
                                    }
                                    else {
                                            r20 = 0x1;
                                    }
                            }
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r25 release];
                            [r23 release];
                            [r22 release];
                            r22 = [r20 validatePlacementsWithArray:r26 product:@"offerwall"];
                            [r26 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r23 release];
                                    [r22 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                            [r0 release];
                                            [r23 release];
                                            [r22 release];
                                            r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                            [r21 release];
                                    }
                                    else {
                                            r20 = 0x1;
                                    }
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            [r22 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r21 = [[r0 objectForKeyedSubscript:r2] retain];
                                    [r0 release];
                                    [r23 release];
                                    [r22 release];
                                    r20 = [r20 validatePlacementsWithArray:r21 product:@"banner"];
                                    [r21 release];
                            }
                            else {
                                    r20 = 0x1;
                            }
                    }
            }
    }
    goto loc_1006e5928;

loc_1006e5928:
    [r19 release];
    r0 = r20;
    return r0;

loc_1006e5924:
    r20 = 0x0;
    goto loc_1006e5928;
}

@end