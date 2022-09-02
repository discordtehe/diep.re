@implementation USRVApiMainBundle

+(void)WebViewExposed_getDataForKey:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 infoDictionary];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 == 0x0) goto loc_1000dd34c;

loc_1000dd2e0:
    r0 = [r21 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000dd368;

loc_1000dd30c:
    r22 = [[r21 objectForKey:r2] retain];
    [r20 invoke:r19];
    [r22 release];
    goto loc_1000dd388;

loc_1000dd388:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000dd368:
    r0 = r20;
    goto loc_1000dd384;

loc_1000dd384:
    [r0 error:r2 arg1:r3];
    goto loc_1000dd388;

loc_1000dd34c:
    r0 = r20;
    goto loc_1000dd384;
}

+(void)WebViewExposed_getDataForKeysContaining:(void *)arg2 callback:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 infoDictionary];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 release];
    var_120 = [[NSMutableDictionary alloc] init];
    if (r22 != 0x0) {
            var_138 = r22;
            stack[-320] = r21;
            var_108 = q0;
            r0 = [r22 retain];
            r23 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    r24 = *var_108;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_108 != r24) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r20 = *(var_110 + r22 * 0x8);
                                    if ([r20 containsString:r19] != 0x0) {
                                            r28 = @selector(setObject:forKey:);
                                            r0 = [r23 objectForKey:r2];
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(var_120, r28);
                                            [r21 release];
                                    }
                                    r22 = r22 + 0x1;
                            } while (r22 < r25);
                            r25 = objc_msgSend(r23, var_128);
                    } while (r25 != 0x0);
            }
            [r23 release];
            r22 = var_138;
            r21 = stack[-320];
    }
    var_58 = **___stack_chk_guard;
    [r21 invoke:var_120];
    [var_120 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end