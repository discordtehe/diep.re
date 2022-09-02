@implementation VNGMoatJSONUtil

+(void *)toJSONRecursive:(void *)arg2 {
    r31 = r31 - 0x180;
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
    var_148 = self;
    r0 = [arg2 retain];
    r22 = r0;
    var_138 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    r0 = [r22 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_158 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_10066b5e8;

loc_10066b3c4:
    var_150 = r22;
    goto loc_10066b3d4;

loc_10066b3d4:
    r19 = 0x0;
    goto loc_10066b4bc;

loc_10066b4bc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r20 = *(0x0 + r19 * 0x8);
    r0 = [r22 objectForKeyedSubscript:r20];
    r29 = r29;
    r25 = [r0 retain];
    if ([r20 isKindOfClass:[NSString class]] == 0x0) goto loc_10066b5b4;

loc_10066b518:
    if ([r25 isKindOfClass:[NSString class]] == 0x0) goto loc_10066b558;

loc_10066b538:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    goto loc_10066b598;

loc_10066b598:
    r20 = [r0 retain];
    [var_138 addObject:r20];
    [r20 release];
    goto loc_10066b5b4;

loc_10066b5b4:
    [r25 release];
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_10066b4bc;

loc_10066b5c8:
    r24 = objc_msgSend(var_120, var_158);
    if (r24 != 0x0) goto loc_10066b3d4;

loc_10066b5e8:
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r21 = [[var_138 componentsJoinedByString:@","] retain];
    r20 = [[NSString stringWithFormat:@"{%@}"] retain];
    [r21 release];
    [var_138 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10066b558:
    if ([r25 isKindOfClass:[NSNumber class]] == 0x0) goto loc_10066b418;

loc_10066b57c:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    goto loc_10066b598;

loc_10066b418:
    if ([r25 isKindOfClass:[NSDictionary class]] != 0x0) {
            r0 = [var_148 toJSONRecursive:r2];
            r29 = r29;
            r22 = [r0 retain];
            if ([r22 isKindOfClass:[NSString class]] != 0x0) {
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [var_138 addObject:r20];
                    [r20 release];
            }
            [r22 release];
            r22 = var_150;
    }
    goto loc_10066b5b4;
}

@end