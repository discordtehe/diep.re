@implementation IROMoatJSONUtil

+(void *)toJSONRecursive:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0x120;
    var_150 = self;
    r0 = [arg2 retain];
    r22 = r0;
    var_148 = r22;
    var_138 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    var_118 = 0x0;
    r0 = [r22 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_120 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_100743ac0;

loc_1007438a8:
    r19 = 0x0;
    var_128 = @selector(stringWithFormat:);
    var_130 = @selector(addObject:);
    var_140 = @selector(toJSONRecursive:);
    goto loc_100743994;

loc_100743994:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r20 = *(0x0 + r19 * 0x8);
    r0 = [r22 objectForKeyedSubscript:r20];
    r29 = r29;
    r25 = [r0 retain];
    if ([r20 isKindOfClass:[NSString class]] == 0x0) goto loc_100743a8c;

loc_1007439f0:
    if ([r25 isKindOfClass:[NSString class]] == 0x0) goto loc_100743a30;

loc_100743a10:
    var_128 = @selector(stringWithFormat:);
    stack[-376] = r25;
    r0 = objc_msgSend(@class(NSString), var_128);
    r29 = r29;
    goto loc_100743a70;

loc_100743a70:
    var_130 = @selector(addObject:);
    [r0 retain];
    objc_msgSend(var_138, var_130);
    [r20 release];
    goto loc_100743a8c;

loc_100743a8c:
    [r25 release];
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_100743994;

loc_100743aa0:
    var_158 = @selector(countByEnumeratingWithState:objects:count:);
    r23 = objc_msgSend(var_120, var_158);
    if (r23 != 0x0) goto loc_1007438a8;

loc_100743ac0:
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r21 = [[var_138 componentsJoinedByString:@","] retain];
    var_170 = r21;
    r0 = [NSString stringWithFormat:@"{%@}"];
    r29 = r29;
    r20 = [r0 retain];
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

loc_100743a30:
    if ([r25 isKindOfClass:[NSNumber class]] == 0x0) goto loc_1007438ec;

loc_100743a54:
    var_128 = @selector(stringWithFormat:);
    stack[-376] = r25;
    r0 = objc_msgSend(@class(NSString), var_128);
    r29 = r29;
    goto loc_100743a70;

loc_1007438ec:
    if ([r25 isKindOfClass:[NSDictionary class]] != 0x0) {
            var_140 = @selector(toJSONRecursive:);
            r0 = objc_msgSend(var_150, var_140);
            r29 = r29;
            r22 = [r0 retain];
            if ([r22 isKindOfClass:[NSString class]] != 0x0) {
                    var_130 = @selector(addObject:);
                    var_128 = @selector(stringWithFormat:);
                    stack[-376] = r22;
                    r0 = objc_msgSend(@class(NSString), var_128);
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(var_138, var_130);
                    [r20 release];
            }
            [r22 release];
            r22 = var_148;
    }
    goto loc_100743a8c;
}

@end