@implementation ADCDataTransform

+(void *)dictionary:(void *)arg2 addObject:(void *)arg3 forKey:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r22 = [[NSMutableDictionary dictionaryWithDictionary:r21] retain];
    [r21 release];
    [r22 setObject:r20 forKeyedSubscript:arg4];
    [r24 release];
    [r20 release];
    r19 = [[NSDictionary dictionaryWithDictionary:r22] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)mergeDictionaries:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r19 = [NSMutableDictionary new];
    r23 = [r20 retain];
    if (r23 != 0x0) {
            var_E0 = r29 + 0x10;
            var_128 = r23;
            do {
                    r21 = @selector(countByEnumeratingWithState:objects:count:);
                    var_110 = q0;
                    r0 = [r23 retain];
                    r22 = r0;
                    r23 = objc_msgSend(r0, r21);
                    if (r23 != 0x0) {
                            r28 = *var_110;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r22);
                                            }
                                            r0 = [r22 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            [r0 retain];
                                            [r19 setObject:r2 forKeyedSubscript:r3];
                                            [r27 release];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r23);
                                    r23 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r23 != 0x0);
                    }
                    [r22 release];
                    r8 = var_E0;
                    var_E0 = r8 + 0x8;
                    r23 = [*r8 retain];
                    [r22 release];
            } while (r23 != 0x0);
            r23 = var_128;
    }
    var_58 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithDictionary:r19] retain];
    [r19 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)dictionary:(void *)arg2 removeObject:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [NSMutableArray new];
    r23 = [[r20 allKeys] retain];
    var_58 = r20;
    r19 = [r20 retain];
    var_50 = r21;
    r20 = [r21 retain];
    var_48 = r22;
    r21 = [r22 retain];
    r22 = [[NSPredicate predicateWithBlock:&var_78] retain];
    r24 = [[r23 filteredArrayUsingPredicate:r22] retain];
    [r22 release];
    [r23 release];
    r22 = [[NSDictionary dictionaryWithObjects:r21 forKeys:r24] retain];
    [r24 release];
    [var_48 release];
    [var_50 release];
    [var_58 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)dictionary:(void *)arg2 removeObjectForKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [NSMutableArray new];
    r22 = [[r21 allKeys] retain];
    var_48 = r19;
    r19 = [r19 retain];
    var_40 = r20;
    r20 = [r20 retain];
    var_38 = r21;
    r21 = [r21 retain];
    r23 = [[NSPredicate predicateWithBlock:&var_68] retain];
    r24 = [[r22 filteredArrayUsingPredicate:r23] retain];
    [r23 release];
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:r20 forKeys:r24] retain];
    [r24 release];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end