@implementation FRUtils

+(void *)urlEscape:(void *)arg2 {
    r0 = **_kCFAllocatorDefault;
    r0 = CFURLCreateStringByAddingPercentEscapes(r0, arg2, 0x0, @"!*'\"();:@&=+$,/?%#[]% ", 0x8000100);
    [r0 autorelease];
    r0 = r0;
    return r0;
}

+(void *)postStringFromDictionary:(void *)arg2 multiDepths:(void *)arg3 last:(bool)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[NSMutableString string] retain];
    if ([r19 count] != 0x0) {
            r24 = [r21 retain];
            var_48 = r24;
            var_38 = [r20 retain];
            [r19 enumerateKeysAndObjectsUsingBlock:&var_68];
            if (r22 != 0x0 && [r24 length] != 0x0) {
                    [r24 deleteCharactersInRange:[r24 length] - 0x1];
            }
            [var_38 release];
            [var_48 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)countrySim {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = NSClassFromString(@"CTTelephonyNetworkInfo");
    if (r0 != 0x0) {
            r19 = [[r0 alloc] init];
            r0 = [r19 performSelector:@selector(subscriberCellularProvider)];
            r0 = [r0 performSelector:@selector(isoCountryCode)];
            r0 = [r0 retain];
            r21 = [[r0 uppercaseString] retain];
            [r19 release];
            [r0 release];
    }
    r0 = [r21 autorelease];
    return r0;
}

+(double)getCacheMaxAgeFromResponse:(void *)arg2 defaultValue:(double)arg3 {
    r31 = r31 - 0x1b0;
    var_60 = d9;
    stack[-104] = d8;
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
    v8 = v0;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100947898;

loc_100947408:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100947898;

loc_100947438:
    r0 = [r19 allHeaderFields];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    if (r20 == 0x0) goto loc_100947890;

loc_100947480:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r20 == r21) goto loc_1009474f0;

loc_1009474a0:
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1009474f8;

loc_1009474cc:
    r22 = [r20 length];
    [r21 release];
    if (r22 != 0x0) goto loc_100947500;

loc_100947890:
    [r20 release];
    goto loc_100947898;

loc_100947898:
    var_68 = **___stack_chk_guard;
    r0 = [r19 release];
    if (**___stack_chk_guard != var_68) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100947500:
    var_188 = r19;
    r23 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r19 = [[r20 stringByTrimmingCharactersInSet:r23] retain];
    [r20 release];
    [r23 release];
    var_190 = r19;
    r0 = [r19 componentsSeparatedByString:@","];
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_198 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 == 0x0) goto loc_100947850;

loc_1009475c0:
    r28 = @selector(whitespaceAndNewlineCharacterSet);
    var_170 = r28;
    var_168 = r19;
    goto loc_1009475ec;

loc_1009475ec:
    r21 = 0x0;
    goto loc_100947628;

loc_100947628:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r23 = *(0x0 + r21 * 0x8);
    r24 = [objc_msgSend(@class(NSCharacterSet), r28) retain];
    r0 = [r23 stringByTrimmingCharactersInSet:r24];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    if ([r25 hasPrefix:r2] == 0x0) goto loc_1009477b0;

loc_1009476a0:
    var_138 = @selector(count);
    r0 = [r25 componentsSeparatedByString:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, var_138) < 0x2) goto loc_1009477f4;

loc_1009476d0:
    var_148 = @selector(objectAtIndex:);
    var_158 = @selector(init);
    r19 = 0x1;
    r23 = [objc_msgSend(r24, var_148) retain];
    r28 = [objc_msgSend(@class(NSCharacterSet), r28) retain];
    r27 = [[r23 stringByTrimmingCharactersInSet:r28] retain];
    [r23 release];
    [r28 release];
    r0 = [NSNumberFormatter alloc];
    r0 = objc_msgSend(r0, var_158);
    r23 = r0;
    r0 = [r0 numberFromString:r2];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r28 != r0) {
                    [r28 intValue];
                    r19 = 0x0;
                    asm { scvtf      d9, w0 };
            }
            else {
                    r19 = 0x1;
            }
    }
    [r28 release];
    [r23 release];
    [r27 release];
    if (r19 == 0x0) goto loc_100947864;

loc_1009477ec:
    r28 = var_170;
    r19 = var_168;
    goto loc_1009477f4;

loc_1009477f4:
    [r24 release];
    goto loc_1009477fc;

loc_1009477fc:
    [r25 release];
    r21 = r21 + 0x1;
    if (r21 < r26) goto loc_100947628;

loc_100947810:
    r26 = objc_msgSend(r19, var_198);
    if (r26 != 0x0) goto loc_1009475ec;

loc_100947850:
    [r19 release];
    goto loc_100947884;

loc_100947884:
    r0 = r19;
    r20 = var_190;
    r19 = var_188;
    goto loc_10094788c;

loc_10094788c:
    [r0 release];
    goto loc_100947890;

loc_100947864:
    [r24 release];
    r19 = var_168;
    goto loc_100947870;

loc_100947870:
    [r25 release];
    [r19 release];
    v8 = v9;
    goto loc_100947884;

loc_1009477b0:
    if (([r25 hasPrefix:r2] & 0x1) == 0x0) goto loc_1009477fc;
    goto loc_100947870;

loc_1009474f8:
    [r21 release];
    goto loc_100947500;

loc_1009474f0:
    r0 = r20;
    goto loc_10094788c;
}

@end