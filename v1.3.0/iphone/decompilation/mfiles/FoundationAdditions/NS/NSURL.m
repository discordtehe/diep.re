@implementation NSURL

-(bool)mp_hasTelephoneScheme {
    r0 = [self scheme];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lowercaseString];
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)mp_queryAsDictionary {
    r31 = r31 - 0x160;
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
    var_148 = [[NSMutableDictionary dictionary] retain];
    r0 = [self query];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    var_110 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r21 = r0;
            r20 = *var_110;
            r19 = @"=";
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(var_128);
                            }
                            r0 = *(var_118 + r28 * 0x8);
                            r0 = [r0 componentsSeparatedByString:r19];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = r0;
                            if ([r0 count] >= 0x2) {
                                    r0 = [r22 objectAtIndex:r2];
                                    r0 = [r0 retain];
                                    r0 = [r22 objectAtIndex:r2];
                                    r0 = [r0 retain];
                                    r0 = [r0 stringByReplacingPercentEscapesUsingEncoding:0x4];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_148 setObject:r2 forKey:r3];
                                    [r24 release];
                                    r0 = r21;
                                    r21 = r25;
                                    [r0 release];
                                    r0 = r19;
                                    r19 = r20;
                                    r20 = r23;
                                    [r0 release];
                            }
                            [r22 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r0 = objc_msgSend(var_128, var_150);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_148 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)mp_hasTelephonePromptScheme {
    r0 = [self scheme];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lowercaseString];
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)mp_queryParameterForKey:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r28 = [arg2 retain];
    r0 = [self query];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    var_110 = q0;
    r0 = [r20 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004c25d8;

loc_1004c246c:
    r25 = @selector(componentsSeparatedByString:);
    r24 = r0;
    r19 = *var_110;
    r26 = @"=";
    var_138 = r19;
    goto loc_1004c2484;

loc_1004c2484:
    r27 = 0x0;
    r23 = @selector(objectAtIndex:);
    var_140 = r23;
    goto loc_1004c24b4;

loc_1004c24b4:
    if (*var_110 != r19) {
            objc_enumerationMutation(r21);
    }
    r0 = *(var_118 + r27 * 0x8);
    r0 = objc_msgSend(r0, r25);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 count] < 0x2) goto loc_1004c25a4;

loc_1004c24fc:
    r0 = objc_msgSend(r22, r23);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1004c2598;

loc_1004c2528:
    r0 = objc_msgSend(r22, r23);
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 length];
    r28 = r28;
    r21 = r21;
    r25 = r25;
    r24 = r24;
    r26 = r26;
    r23 = var_140;
    [r0 release];
    [r19 release];
    r19 = var_138;
    if (r20 == 0x0) goto loc_1004c25a4;

loc_1004c2594:
    r0 = objc_msgSend(r22, r23);
    r0 = [r0 retain];
    r19 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    [r22 release];
    goto loc_1004c2628;

loc_1004c2628:
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    [r28 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004c25a4:
    [r22 release];
    r27 = r27 + 0x1;
    if (r27 < r24) goto loc_1004c24b4;

loc_1004c25b8:
    r0 = objc_msgSend(r21, var_150);
    r24 = r0;
    if (r0 != 0x0) goto loc_1004c2484;

loc_1004c25d8:
    r19 = 0x0;
    goto loc_1004c2628;

loc_1004c2598:
    [r19 release];
    r19 = var_138;
    goto loc_1004c25a4;
}

-(void *)mp_queryParametersForKey:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r23 = [arg2 retain];
    var_158 = [[NSMutableArray array] retain];
    r0 = [self query];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    var_110 = q0;
    r0 = [r20 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004c2928;

loc_1004c2760:
    r21 = @selector(componentsSeparatedByString:);
    r24 = r0;
    r27 = *var_110;
    goto loc_1004c2774;

loc_1004c2774:
    r28 = 0x0;
    goto loc_1004c27c0;

loc_1004c27c0:
    if (*var_110 != r27) {
            objc_enumerationMutation(r25);
    }
    r0 = *(var_118 + r28 * 0x8);
    r0 = objc_msgSend(r0, r21);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] < 0x2) goto loc_1004c28f4;

loc_1004c2808:
    r0 = [r20 objectAtIndex:r2];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r23] & 0x1) == 0x0) goto loc_1004c28ec;

loc_1004c2838:
    r0 = [r20 objectAtIndex:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 length];
    r23 = r23;
    r21 = r21;
    r25 = r25;
    r27 = r27;
    r24 = r24;
    [r0 release];
    [r19 release];
    if (r22 == 0x0) goto loc_1004c28f4;

loc_1004c28a4:
    r0 = [r20 objectAtIndex:0x1];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 stringByReplacingPercentEscapesUsingEncoding:0x4];
    r29 = r29;
    [r0 retain];
    [var_158 addObject:r2];
    [r22 release];
    goto loc_1004c28ec;

loc_1004c28ec:
    [r19 release];
    goto loc_1004c28f4;

loc_1004c28f4:
    [r20 release];
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_1004c27c0;

loc_1004c2908:
    r0 = objc_msgSend(r25, var_160);
    r24 = r0;
    if (r0 != 0x0) goto loc_1004c2774;

loc_1004c2928:
    var_60 = **___stack_chk_guard;
    [r25 release];
    r19 = [[NSArray arrayWithArray:var_158] retain];
    [r25 release];
    [var_158 release];
    [r23 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)mp_isMoPubScheme {
    r0 = [self scheme];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)mp_isSafeForLoadingWithoutUserAction {
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
    r21 = self;
    r0 = [self scheme];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lowercaseString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r25 = @selector(isEqualToString:);
            r0 = [r21 scheme];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 lowercaseString];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if ((objc_msgSend(r0, r25) & 0x1) != 0x0) {
                    r21 = 0x1;
            }
            else {
                    r25 = @selector(isEqualToString:);
                    r0 = [r21 scheme];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 lowercaseString];
                    r0 = [r0 retain];
                    r21 = objc_msgSend(r0, r25);
                    [r0 release];
                    [r22 release];
            }
            [r26 release];
            [r24 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(int)mp_MoPubShareHostCommand {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self host] retain];
    if ([self mp_isMoPubShareScheme] != 0x0) {
            r20 = [r19 isEqualToString:r2] ^ 0x1;
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(int)mp_mopubHostCommand {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self host] retain];
    if ([self mp_isMoPubScheme] != 0x0) {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x2;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x3;
                            }
                            else {
                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                            r20 = 0x4;
                                    }
                                    else {
                                            r20 = @selector(isEqualToString:);
                                            if (objc_msgSend(r19, r20) != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r20 = 0x0;
                                                    }
                                                    else {
                                                            r20 = 0x5;
                                                    }
                                            }
                                    }
                            }
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

-(bool)mp_isMoPubShareScheme {
    r0 = [self scheme];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

@end