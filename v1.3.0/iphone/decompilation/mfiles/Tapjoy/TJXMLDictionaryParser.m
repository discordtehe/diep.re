@implementation TJXMLDictionaryParser

-(void *)initWithXMLData:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [NSXMLParser alloc];
            r0 = [r0 initWithData:r19];
            [r0 setDelegate:r20];
            [r0 parse];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)dictionaryWithXMLData:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[TJXMLDictionaryParser alloc] initWithXMLData:r21];
    [r21 release];
    r20 = [[r19 root] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)dictionaryWithXMLFile:(void *)arg2 {
    r20 = [[NSData dataWithContentsOfFile:arg2] retain];
    r19 = [[self dictionaryWithXMLData:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)top {
    r0 = self->stack;
    r0 = [r0 lastObject];
    return r0;
}

-(void)addText:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = r19->text;
    if (r0 != 0x0) {
            [r0 appendString:r2];
    }
    else {
            r20 = [[NSMutableString stringWithString:r2] retain];
            [r19 setText:r20];
            [r20 release];
    }
    return;
}

-(void)endText {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(text));
    r0 = [*(r19 + r24) stringByTrimmingCharactersInSet:[[NSCharacterSet whitespaceAndNewlineCharacterSet] retain]];
    r29 = &saved_fp;
    [r0 retain];
    [r19 setText:r2];
    [r22 release];
    [r21 release];
    r0 = *(r19 + r24);
    if ([@"__text" length] == 0x0 || r0 == 0x0 || ([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_100953c34;

loc_100953afc:
    r0 = [r19 top];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if (r21 == 0x0) goto loc_100953b8c;

loc_100953b48:
    [NSMutableArray class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100953bc0;

loc_100953b74:
    [r21 addObject:r2];
    goto loc_100953c2c;

loc_100953c2c:
    [r21 release];
    goto loc_100953c34;

loc_100953c34:
    [r19 setText:r2];
    return;

loc_100953bc0:
    r22 = [[r19 top] retain];
    [[NSMutableArray arrayWithObjects:r2] retain];
    [r22 setObject:r2 forKey:r3];
    [r23 release];
    goto loc_100953c24;

loc_100953c24:
    [r22 release];
    goto loc_100953c2c;

loc_100953b8c:
    r0 = [r19 top];
    r0 = [r0 retain];
    r22 = r0;
    [r0 setObject:r2 forKey:r3];
    goto loc_100953c24;
}

+(void *)xmlStringForNode:(void *)arg2 withNodeName:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r21 = self;
    r24 = [arg2 retain];
    var_1E0 = [arg3 retain];
    [NSArray class];
    if ([r24 isKindOfClass:r2] != 0x0) {
            r0 = [NSMutableArray arrayWithCapacity:[r24 count]];
            r29 = r29;
            r22 = [r0 retain];
            var_200 = r24;
            r0 = [r24 retain];
            r23 = r0;
            r19 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r19 != 0x0) {
                    do {
                            r28 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r26 = @selector(addObject:);
                                    r0 = [r21 xmlStringForNode:*(0x0 + r28 * 0x8) withNodeName:var_1E0];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r22, r26);
                                    [r27 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r19);
                            r19 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r19 != 0x0);
            }
            [r23 release];
            r23 = [[r22 componentsJoinedByString:r2] retain];
            [r22 release];
            r24 = var_200;
    }
    else {
            r22 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r24, r22) != 0x0) {
                    var_200 = r24;
                    r19 = [[r24 attributes] retain];
                    r22 = [[NSMutableString string] retain];
                    var_1E8 = r19;
                    r0 = [r19 allKeys];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1F8 = r1;
                    var_1F0 = r0;
                    r25 = objc_msgSend(r0, r1);
                    if (r25 != 0x0) {
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_1F0);
                                            }
                                            r24 = *(0x0 + r26 * 0x8);
                                            [[r24 xmlEncodedString] retain];
                                            r0 = [var_1E8 objectForKey:r24];
                                            r0 = [r0 retain];
                                            r0 = [r0 xmlEncodedString];
                                            r29 = r29;
                                            [r0 retain];
                                            [r22 appendFormat:r2];
                                            [r20 release];
                                            [r24 release];
                                            [r23 release];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r25);
                                    r25 = objc_msgSend(var_1F0, var_1F8);
                            } while (r25 != 0x0);
                    }
                    [var_1F0 release];
                    r24 = var_200;
                    r0 = [r24 innerXML];
                    r29 = r29;
                    r0 = [r0 retain];
                    r19 = r0;
                    if ([r0 length] != 0x0) {
                            r0 = [NSString stringWithFormat:r2];
                    }
                    else {
                            r0 = [NSString stringWithFormat:r2];
                    }
                    r23 = [r0 retain];
                    [r19 release];
                    [r22 release];
                    r0 = var_1E8;
            }
            else {
                    r0 = [r24 description];
                    r0 = [r0 retain];
                    r21 = [[r0 xmlEncodedString] retain];
                    r23 = [[NSString stringWithFormat:@"<%1$@>%2$@</%1$@>"] retain];
                    [r21 release];
                    r0 = r0;
            }
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [var_1E0 release];
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)parser:(void *)arg2 foundCharacters:(void *)arg3 {
    [self addText:arg3];
    return;
}

-(void *)nameForNode:(void *)arg2 inDictionary:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 nodeName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1009541d0;

loc_1009541b4:
    r24 = [[r19 nodeName] retain];
    goto loc_100954344;

loc_100954344:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009541d0:
    var_108 = q0;
    var_128 = r20;
    r0 = [r20 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100954308;

loc_100954218:
    r20 = *var_108;
    goto loc_100954230;

loc_100954230:
    r28 = 0x0;
    goto loc_100954248;

loc_100954248:
    if (*var_108 != r20) {
            objc_enumerationMutation(r21);
    }
    r25 = @selector(objectForKey:);
    r24 = *(var_110 + r28 * 0x8);
    r0 = objc_msgSend(r21, r25);
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == r19) goto loc_100954318;

loc_10095428c:
    [NSArray class];
    if (objc_msgSend(r22, r27) == 0x0 || [r22 containsObject:r2] == 0x0) goto loc_1009542c4;

loc_100954328:
    [r24 retain];
    goto loc_100954330;

loc_100954330:
    [r22 release];
    [r21 release];
    goto loc_100954340;

loc_100954340:
    r20 = var_128;
    goto loc_100954344;

loc_1009542c4:
    [r22 release];
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100954248;

loc_1009542d8:
    r23 = objc_msgSend(r21, var_130);
    if (r23 != 0x0) goto loc_100954230;

loc_100954308:
    [r21 release];
    r24 = 0x0;
    goto loc_100954340;

loc_100954318:
    [r24 retain];
    r22 = r19;
    goto loc_100954330;
}

-(void)parser:(void *)arg2 didEndElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    [self endText];
    r0 = [r19 top];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 attributes];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) goto loc_100954470;

loc_1009543fc:
    r0 = [r19 top];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 childNodes];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100954464;

loc_10095442c:
    r0 = [r19 top];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 comments];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1009544b0;

loc_10095445c:
    [r0 release];
    r0 = r25;
    goto loc_100954464;

loc_100954464:
    [r0 release];
    [r24 release];
    goto loc_100954470;

loc_100954470:
    [r23 release];
    [r21 release];
    [r19->stack removeLastObject];
    return;

loc_1009544b0:
    r0 = [r19 top];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 innerText];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    if (r0 != 0x0) {
            r21 = [[r19 top] retain];
            [r19->stack removeLastObject];
            r24 = [[r19 top] retain];
            r0 = [r19 nameForNode:r21 inDictionary:r24];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (r23 != 0x0) {
                    r0 = [r19 top];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKey:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r25 release];
                    [NSMutableArray class];
                    if ([r24 isKindOfClass:r2] != 0x0) {
                            r19 = [r24 count] - 0x1;
                            r20 = [[r21 innerText] retain];
                            [r24 replaceObjectAtIndex:r19 withObject:r20];
                            r0 = r20;
                    }
                    else {
                            r19 = [[r19 top] retain];
                            [[r21 innerText] retain];
                            [r19 setObject:r2 forKey:r3];
                            [r20 release];
                            r0 = r19;
                    }
                    [r0 release];
                    [r24 release];
            }
            [r23 release];
            [r21 release];
    }
    else {
            [r19->stack removeLastObject];
    }
    return;
}

-(void)parser:(void *)arg2 didStartElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 attributes:(void *)arg6 {
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
    r25 = self;
    r22 = [arg3 retain];
    var_120 = [arg6 retain];
    [r25 endText];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if ([@"__name" length] != 0x0) {
            [r26 setObject:r2 forKey:r3];
    }
    if ([var_120 count] != 0x0) {
            if ([@"_" length] != 0x0) {
                    r23 = r26;
                    var_140 = r25;
                    stack[-328] = r22;
                    var_108 = q0;
                    r0 = [var_120 allKeys];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r1;
                    var_128 = r0;
                    r25 = objc_msgSend(r0, r1);
                    if (r25 != 0x0) {
                            r20 = *var_108;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_108 != r20) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r19 = @selector(setObject:forKey:);
                                            r21 = *(var_110 + r22 * 0x8);
                                            [[var_120 objectForKey:r21] retain];
                                            r0 = [@"_" stringByAppendingString:r21];
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r23, r19);
                                            [r21 release];
                                            [r24 release];
                                            r22 = r22 + 0x1;
                                    } while (r22 < r25);
                                    r25 = objc_msgSend(var_128, var_130);
                            } while (r25 != 0x0);
                    }
                    [var_128 release];
                    r25 = var_140;
                    r22 = stack[-328];
                    r26 = r23;
            }
            else {
                    if ([@"__attributes" length] != 0x0) {
                            [r26 setObject:r2 forKey:r3];
                    }
                    else {
                            [r26 addEntriesFromDictionary:var_120];
                    }
            }
    }
    r0 = [r25 top];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100953fe0;

loc_100953f5c:
    r0 = [r25 top];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    if (r23 == 0x0) goto loc_100954034;

loc_100953f9c:
    [NSMutableArray class];
    if ([r23 isKindOfClass:r2] == 0x0) goto loc_100954064;

loc_100953fc8:
    [r23 addObject:r2];
    goto loc_1009540c8;

loc_1009540c8:
    [r25->stack addObject:r2];
    r0 = r23;
    goto loc_1009540e8;

loc_1009540e8:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r26 release];
    [var_120 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100954064:
    r19 = [[r25 top] retain];
    [[NSMutableArray arrayWithObjects:r23] retain];
    [r19 setObject:r2 forKey:r3];
    [r21 release];
    goto loc_1009540c0;

loc_1009540c0:
    [r19 release];
    goto loc_1009540c8;

loc_100954034:
    r0 = [r25 top];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setObject:r2 forKey:r3];
    goto loc_1009540c0;

loc_100953fe0:
    [r25 setRoot:r26];
    r19 = [[NSMutableArray arrayWithObject:r26] retain];
    [r25 setStack:r19];
    r0 = r19;
    goto loc_1009540e8;
}

-(void)parser:(void *)arg2 foundCDATA:(void *)arg3 {
    r22 = [arg3 retain];
    r20 = [[NSString alloc] initWithData:r22 encoding:0x4];
    [r22 release];
    [self addText:r20];
    [r20 release];
    return;
}

-(void *)text {
    r0 = self->text;
    return r0;
}

-(void)parser:(void *)arg2 foundComment:(void *)arg3 {
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
    r20 = self;
    r19 = [arg3 retain];
    if ([@"__comments" length] != 0x0) {
            r0 = [r20 top];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    [r22 addObject:r2];
            }
            else {
                    r22 = [[NSMutableArray arrayWithObject:r19] retain];
                    r0 = [r20 top];
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKey:r3];
                    [r20 release];
            }
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)setText:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->text, arg2);
    return;
}

-(void *)root {
    r0 = self->root;
    return r0;
}

-(void)setRoot:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->root, arg2);
    return;
}

-(void *)stack {
    r0 = self->stack;
    return r0;
}

-(void)setStack:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->stack, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->stack, 0x0);
    objc_storeStrong((int64_t *)&self->root, 0x0);
    objc_storeStrong((int64_t *)&self->text, 0x0);
    return;
}

@end