@implementation NSDictionary

+(void *)dictionaryByMerging:(void *)arg2 secondary:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_1000e6338;

loc_1000e62b4:
    if (r20 == 0x0) goto loc_1000e6340;

loc_1000e62b8:
    r21 = [[[NSMutableDictionary alloc] initWithDictionary:r20] retain];
    [r19 enumerateKeysAndObjectsUsingBlock:&var_48];
    [r21 release];
    goto loc_1000e634c;

loc_1000e634c:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1000e6340:
    r0 = r19;
    goto loc_1000e6344;

loc_1000e6344:
    r21 = [r0 retain];
    goto loc_1000e634c;

loc_1000e6338:
    r0 = r20;
    goto loc_1000e6344;
}

-(void *)apm_queryString {
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
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_120 = [r0 retain];
    r0 = [self retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = @selector(addObject:);
                            r25 = @selector(stringWithFormat:);
                            r24 = @selector(objectForKey:);
                            r27 = *(0x0 + r19 * 0x8);
                            r28 = [objc_msgSend(r20, r24) retain];
                            r27 = [sub_100199f54(r27) retain];
                            r23 = [sub_100199f54(r28) retain];
                            r0 = objc_msgSend(@class(NSString), r25);
                            r29 = r29;
                            [r0 retain];
                            [r23 release];
                            [r27 release];
                            objc_msgSend(var_120, r26);
                            [r21 release];
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = objc_msgSend(r20, var_130);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r20 = [[var_120 componentsJoinedByString:@"&"] retain];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)apm_dictionaryWithHttpArgumentsString:(void *)arg2 {
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
    r22 = [arg2 retain];
    var_140 = [[NSMutableDictionary dictionary] retain];
    r19 = [[arg2 componentsSeparatedByString:@"&"] retain];
    [r22 release];
    var_108 = q0;
    r0 = [r19 reverseObjectEnumerator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r0;
    var_160 = r1;
    r0 = objc_msgSend(r0, r1);
    var_120 = r0;
    if (r0 != 0x0) {
            var_168 = r19;
            r24 = 0x0;
            var_128 = *var_108;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_108 != var_128) {
                                    objc_enumerationMutation(var_148);
                            }
                            r22 = [*(var_110 + r25 * 0x8) retain];
                            [r24 release];
                            if ([r22 length] != 0x0) {
                                    r19 = [r22 rangeOfString:@"="];
                                    r21 = @selector(rangeOfString:);
                                    r0 = r22;
                                    if (r19 == 0x7fffffffffffffff) {
                                            r0 = [r0 apm_stringByUnescapingFromURLArgument];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [@"" retain];
                                            r19 = @"";
                                    }
                                    else {
                                            r0 = [r0 substringToIndex:r19];
                                            r0 = [r0 retain];
                                            r24 = [[r0 apm_stringByUnescapingFromURLArgument] retain];
                                            [r0 release];
                                            r0 = [r22 substringFromIndex:r2];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r0 = [r0 apm_stringByUnescapingFromURLArgument];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            [r21 release];
                                    }
                                    if (r24 == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r21 = r24;
                                            }
                                            else {
                                                    r21 = @"";
                                            }
                                    }
                                    r27 = [r21 retain];
                                    [r24 release];
                                    if (r19 == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r24 = r19;
                                            }
                                            else {
                                                    r24 = @"";
                                            }
                                    }
                                    r20 = [r24 retain];
                                    [r19 release];
                                    [var_140 setObject:r24 forKey:r21];
                                    [r20 release];
                                    [r27 release];
                            }
                            r25 = r25 + 0x1;
                            r24 = r22;
                    } while (r25 < var_120);
                    r0 = objc_msgSend(var_148, var_160);
                    r24 = r22;
                    var_120 = r0;
            } while (r0 != 0x0);
            [r22 release];
            r19 = var_168;
    }
    var_58 = **___stack_chk_guard;
    [var_148 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_140 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)notNullObjectForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self objectForKey:arg2] retain];
    r0 = [NSNull null];
    r0 = [r0 retain];
    [r0 release];
    if (r19 != r0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)notNullObjectForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self objectForKey:arg2] retain];
    r0 = [NSNull null];
    r0 = [r0 retain];
    [r0 release];
    if (r19 != r0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)mp_integerForKey:(void *)arg2 {
    r0 = [self mp_integerForKey:arg2 defaultValue:0x0];
    return r0;
}

-(double)mp_doubleForKey:(void *)arg2 {
    r0 = [self mp_doubleForKey:arg2 defaultValue:r3];
    return r0;
}

-(long long)mp_integerForKey:(void *)arg2 defaultValue:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r19 = [r20 integerValue];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)mp_stringForKey:(void *)arg2 {
    r0 = [self mp_stringForKey:arg2 defaultValue:0x0];
    return r0;
}

-(double)mp_doubleForKey:(void *)arg2 defaultValue:(double)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(bool)mp_boolForKey:(void *)arg2 {
    r0 = [self mp_boolForKey:arg2 defaultValue:0x0];
    return r0;
}

-(void *)mp_stringForKey:(void *)arg2 defaultValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKey:r21] retain];
    [r21 release];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r19;
            }
            else {
                    r21 = r20;
            }
    }
    [r21 retain];
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

-(bool)mp_boolForKey:(void *)arg2 defaultValue:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r19 = [r20 boolValue];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(float)mp_floatForKey:(void *)arg2 {
    r0 = [self mp_floatForKey:arg2 defaultValue:r3];
    return r0;
}

-(float)mp_floatForKey:(void *)arg2 defaultValue:(float)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r19 floatValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(void *)dictionaryByMergingWithDictionary:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r2 = self;
    if (r19 != 0x0) {
            r0 = [NSMutableDictionary dictionaryWithDictionary:r2];
            [r0 addEntriesFromDictionary:r19];
            r0 = [NSDictionary dictionaryWithDictionary:r0];
    }
    else {
            r0 = r2;
    }
    return r0;
}

+(void *)dictionaryWithXMLData:(void *)arg2 {
    r0 = [TJXMLDictionaryParser dictionaryWithXMLData:arg2];
    return r0;
}

+(void *)dictionaryWithXMLString:(void *)arg2 {
    r19 = [[arg2 dataUsingEncoding:0x4] retain];
    r20 = [[TJXMLDictionaryParser dictionaryWithXMLData:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)dictionaryWithXMLFile:(void *)arg2 {
    r0 = [TJXMLDictionaryParser dictionaryWithXMLFile:arg2];
    return r0;
}

-(void *)attributeForKey:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self attributes];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:r2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)comments {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)nodeName {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)innerText {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self objectForKey:@"__text"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [NSArray class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 componentsJoinedByString:r2];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)childNodes {
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
    r19 = [[NSMutableDictionary dictionaryWithDictionary:self] retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x78 count:0x4];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 removeObjectsForKeys:r20];
    [r20 release];
    if ([@"_" length] != 0x0) {
            var_128 = q0;
            r0 = [r19 allKeys];
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r27 = *var_128;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_128 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r26 = *(var_130 + r28 * 0x8);
                                    if ([r26 hasPrefix:@"_"] != 0x0) {
                                            [r19 removeObjectForKey:r2];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
    }
    r0 = [r19 count];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = 0x0;
            }
    }
    var_58 = **___stack_chk_guard;
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)attributes {
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
    r22 = self;
    r0 = [self objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 count];
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r20;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            r19 = [r0 retain];
    }
    else {
            r1 = @selector(length);
            var_150 = r1;
            if (objc_msgSend(@"_", r1) != 0x0) {
                    var_158 = @selector(objectForKey:);
                    var_168 = r20;
                    r23 = [[NSMutableDictionary dictionaryWithDictionary:r22] retain];
                    r19 = [[NSArray arrayWithObjects:r29 - 0x70 count:0x3] retain];
                    [r23 removeObjectsForKeys:r19];
                    [r19 release];
                    var_120 = q0;
                    r0 = [r23 allKeys];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_138 = r0;
                    var_160 = r1;
                    r26 = objc_msgSend(r0, r1);
                    if (r26 != 0x0) {
                            r24 = *var_120;
                            do {
                                    r25 = 0x0;
                                    do {
                                            if (*var_120 != r24) {
                                                    objc_enumerationMutation(var_138);
                                            }
                                            r21 = *(var_128 + r25 * 0x8);
                                            [r23 removeObjectForKey:r21];
                                            if ([r21 hasPrefix:@"_"] != 0x0) {
                                                    r0 = objc_msgSend(r22, var_158);
                                                    r0 = [r0 retain];
                                                    objc_msgSend(@"_", var_150);
                                                    r0 = [r21 substringFromIndex:r2];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    [r23 setObject:r2 forKey:r3];
                                                    [r21 release];
                                                    r0 = r22;
                                                    r22 = r20;
                                                    [r0 release];
                                            }
                                            r25 = r25 + 0x1;
                                    } while (r25 < r26);
                                    r26 = objc_msgSend(var_138, var_160);
                            } while (r26 != 0x0);
                    }
                    [var_138 release];
                    r0 = [r23 count];
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r23;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    r19 = [r0 retain];
                    [r23 release];
                    r20 = var_168;
            }
            else {
                    r19 = 0x0;
            }
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)xmlString {
    r0 = [self innerXML];
    return r0;
}

-(void *)innerXML {
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
    r19 = [[NSMutableArray array] retain];
    var_1F8 = self;
    r0 = [self comments];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F0 = r1;
    var_1E8 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            r27 = @selector(addObject:);
                            r26 = @selector(stringWithFormat:);
                            [[*(0x0 + r22 * 0x8) xmlEncodedString] retain];
                            r0 = objc_msgSend(@class(NSString), r26);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r27);
                            [r28 release];
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(var_1E8, var_1F0);
            } while (r23 != 0x0);
    }
    var_1E0 = r19;
    [var_1E8 release];
    r0 = [var_1F8 childNodes];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r23 = objc_msgSend(r0, var_1F0);
    if (r23 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r26 = @selector(addObject:);
                            r20 = *(0x0 + r19 * 0x8);
                            r0 = [TJXMLDictionaryParser xmlStringForNode:[[r22 objectForKey:r20] retain] withNodeName:r20];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(var_1E0, r26);
                            [r20 release];
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r23 = objc_msgSend(r22, var_1F0);
            } while (r23 != 0x0);
    }
    r0 = [var_1F8 innerText];
    r29 = r29;
    r20 = [r0 retain];
    r19 = var_1E0;
    if (r20 != 0x0) {
            r0 = [r20 xmlEncodedString];
            r29 = r29;
            [r0 retain];
            [r19 addObject:r2];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    r21 = [[r19 componentsJoinedByString:@"\n"] retain];
    [r20 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)objectForKeyOrNil:(void *)arg2 {
    r0 = [self objectForKeyOrNil:arg2 ofClass:0x0];
    return r0;
}

-(void *)objectForKey:(void *)arg2 orDefault:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self objectForKey:r21 ofClass:0x0 orDefault:arg3] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)objectForKey:(void *)arg2 ofClass:(void *)arg3 orDefault:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [[self objectForKeyOrNil:r22 ofClass:arg3] retain];
    r0 = [r22 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = r19;
            }
    }
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)stringForKey:(void *)arg2 orDefault:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKey:r21 ofClass:[NSString class] orDefault:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)integerForKey:(void *)arg2 orDefault:(long long)arg3 {
    r23 = [arg2 retain];
    r19 = [[NSNumber numberWithInteger:arg3] retain];
    r20 = [[self numberForKey:r23 orDefault:r19] retain];
    [r23 release];
    r21 = [r20 integerValue];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)stringForKeyOrNil:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self objectForKeyOrNil:r22 ofClass:[NSString class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)unsignedIntegerForKey:(void *)arg2 orDefault:(unsigned long long)arg3 {
    r23 = [arg2 retain];
    r19 = [[NSNumber numberWithUnsignedInteger:arg3] retain];
    r20 = [[self numberForKey:r23 orDefault:r19] retain];
    [r23 release];
    r21 = [r20 unsignedIntegerValue];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)numberForKey:(void *)arg2 orDefault:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKey:r21 ofClass:[NSNumber class] orDefault:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)numberForKeyOrNil:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self objectForKeyOrNil:r22 ofClass:[NSNumber class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(double)doubleForKey:(void *)arg2 orDefault:(double)arg3 {
    r22 = [arg2 retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[self numberForKey:r22 orDefault:r20] retain];
    [r22 release];
    [r19 doubleValue];
    [r19 release];
    r0 = [r20 release];
    return r0;
}

-(double)cgfloatForKey:(void *)arg2 orDefault:(double)arg3 {
    r22 = [arg2 retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[self numberForKey:r22 orDefault:r20] retain];
    [r22 release];
    [r19 doubleValue];
    [r19 release];
    r0 = [r20 release];
    return r0;
}

-(void *)dictionaryForKeyOrNil:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self objectForKeyOrNil:r22 ofClass:[NSDictionary class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)boolForKey:(void *)arg2 orDefault:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r21 = [r20 boolValue];
    }
    else {
            r22 = [[NSNumber numberWithBool:r22] retain];
            r0 = [r21 numberForKey:r19 orDefault:r22];
            r0 = [r0 retain];
            r21 = [r0 boolValue];
            [r0 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)dictionaryForKey:(void *)arg2 orDefault:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKeyOrNil:r21 ofClass:[NSDictionary class]] retain];
    r0 = [r21 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = r19;
            }
    }
    r21 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)arrayForKeyOrNil:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self objectForKeyOrNil:r22 ofClass:[NSArray class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dictionaryByAddingContentFromDictionary:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[NSMutableDictionary dictionaryWithDictionary:self] retain];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)arrayForKey:(void *)arg2 orDefault:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKeyOrNil:r21 ofClass:[NSArray class]] retain];
    r0 = [r21 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = r19;
            }
    }
    r21 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)objectForKeyOrNil:(void *)arg2 ofClass:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r20 != r0) {
                    if (r21 != 0x0 && ([r20 isKindOfClass:r2] & 0x1) == 0x0) {
                            [r20 class];
                            [FBAdUtility displayVerboseDebugMessage:@"Object %@ for key %@ did not match class. Expected: %@ Actual: %@."];
                            r0 = [r22 attemptRecoveryOfObject:r20 ofClass:r21];
                            r0 = [r0 retain];
                            r22 = r0;
                            if (r0 != 0x0) {
                                    r21 = [r22 retain];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            [r22 release];
                    }
                    else {
                            r21 = [r20 retain];
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)attemptRecoveryOfObject:(void *)arg2 ofClass:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([NSString class] == r20) {
                    [NSNumber class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [[r19 stringValue] retain];
                    }
                    else {
                            if ([NSNumber class] == r20) {
                                    [NSString class];
                                    if ([r19 isKindOfClass:r2] != 0x0) {
                                            r22 = [r19 retain];
                                            r0 = [NSNumberFormatter defaultFormatter];
                                            r0 = [r0 retain];
                                            r20 = [[r0 safeNumberFromString:r22] retain];
                                            [r22 release];
                                            [r0 release];
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
            }
            else {
                    if ([NSNumber class] == r20) {
                            [NSString class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    r22 = [r19 retain];
                                    r0 = [NSNumberFormatter defaultFormatter];
                                    r0 = [r0 retain];
                                    r20 = [[r0 safeNumberFromString:r22] retain];
                                    [r22 release];
                                    [r0 release];
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r20 = 0x0;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end