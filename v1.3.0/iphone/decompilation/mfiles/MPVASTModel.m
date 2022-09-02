@implementation MPVASTModel

+(void *)modelMap {
    return 0x0;
}

-(void *)generateModelFromDictionaryValue:(void *)arg2 modelProvider:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [NSArray class];
            if ([r19 isKindOfClass:r2] != 0x0 && [r19 count] != 0x0) {
                    r22 = [[r19 objectAtIndexedSubscript:0x0] retain];
                    r21 = [(*(r20 + 0x10))(r20, r22) retain];
                    [r22 release];
            }
            else {
                    r22 = @selector(isKindOfClass:);
                    [NSDictionary class];
                    if (objc_msgSend(r19, r22) != 0x0) {
                            r21 = [(*(r20 + 0x10))(r20, r19) retain];
                    }
                    else {
                            r21 = 0x0;
                    }
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

-(bool)hasPropertyNamed:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = self;
    r19 = [arg2 retain];
    if (*qword_1011d83f8 != -0x1) {
            dispatch_once(0x1011d83f8, 0x100e7f100);
    }
    r20 = [NSStringFromClass([r22 class]) retain];
    r0 = *0x1011d83f0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [r22 class];
            r0 = class_copyPropertyList(r0, &var_54);
            r22 = r0;
            r0 = [NSMutableSet setWithCapacity:var_54];
            r29 = r29;
            r21 = [r0 retain];
            if (var_54 != 0x0) {
                    r27 = 0x0;
                    do {
                            property_getName(*(r22 + r27 * 0x8));
                            r0 = objc_msgSend(@class(NSString), r23);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r24);
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < var_54);
            }
            [*0x1011d83f0 setObject:r21 forKeyedSubscript:r20];
            free(r22);
    }
    r22 = [r21 containsObject:r2];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)generateModelsFromDictionaryValue:(void *)arg2 modelProvider:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            [NSArray class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    var_110 = q0;
                    var_128 = r19;
                    r0 = [r19 retain];
                    r22 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r27 = *var_110;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_110 != r27) {
                                                    objc_enumerationMutation(r22);
                                            }
                                            r0 = (*(r20 + 0x10))(r20, *(var_118 + r19 * 0x8));
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r26 = r0;
                                            if (r0 != 0x0) {
                                                    [r21 addObject:r2];
                                            }
                                            [r26 release];
                                            r19 = r19 + 0x1;
                                    } while (r19 < r24);
                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    [r22 release];
                    r19 = var_128;
            }
            else {
                    r23 = @selector(isKindOfClass:);
                    [NSDictionary class];
                    if (objc_msgSend(r19, r23) != 0x0) {
                            r0 = (*(r20 + 0x10))(r20, r19);
                            r0 = [r0 retain];
                            r22 = r0;
                            if (r0 != 0x0) {
                                    [r21 addObject:r2];
                            }
                            [r22 release];
                    }
            }
    }
    var_60 = **___stack_chk_guard;
    r22 = [r21 copy];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x1e0;
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
    var_158 = [arg2 retain];
    r0 = [[&var_F0 super] init];
    r26 = r0;
    if (r0 == 0x0) goto loc_1004cb1bc;

loc_1004cae0c:
    if (var_158 == 0x0) goto loc_1004cb1cc;

loc_1004cae14:
    r0 = [r26 class];
    r0 = [r0 modelMap];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r20 = *var_120;
            do {
                    r21 = 0x0;
                    r27 = @selector(hasPropertyNamed:);
                    r25 = @selector(isKindOfClass:);
                    var_140 = r25;
                    var_168 = r22;
                    var_160 = r27;
                    do {
                            if (*var_120 != r20) {
                                    objc_enumerationMutation(r24);
                            }
                            r19 = *(var_128 + r21 * 0x8);
                            if (objc_msgSend(r26, r27) != 0x0) {
                                    r0 = [r24 objectForKeyedSubscript:r19];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [NSString class];
                                    if (objc_msgSend(r23, r25) != 0x0) {
                                            r0 = [var_158 valueForKeyPath:r23];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            if (r0 != 0x0) {
                                                    [r26 setValue:r2 forKey:r3];
                                            }
                                    }
                                    else {
                                            [NSArray class];
                                            if (objc_msgSend(r23, r25) != 0x0 && [r23 count] == 0x2) {
                                                    r25 = [[r23 objectAtIndexedSubscript:0x0] retain];
                                                    r0 = [r23 objectAtIndexedSubscript:0x1];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r27 = r0;
                                                    if ([r0 conformsToProtocol:@protocol()] != 0x0) {
                                                            r0 = [var_158 valueForKeyPath:r25];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r8 = r0;
                                                            if (r0 != 0x0) {
                                                                    var_148 = r8;
                                                                    r0 = [r27 mappedObjectFromSourceObject:r8];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    r8 = r0;
                                                                    if (r0 != 0x0) {
                                                                            [r26 setValue:r2 forKey:r3];
                                                                            r8 = r8;
                                                                    }
                                                                    [r8 release];
                                                                    r8 = var_148;
                                                            }
                                                            [r8 release];
                                                    }
                                                    r0 = r27;
                                            }
                                            else {
                                                    r25 = [NSStringFromClass([r26 class]) retain];
                                                    r19 = [[NSString stringWithFormat:@"Could not populate %@ of class %@ because its mapper is invalid."] retain];
                                                    r24 = r24;
                                                    r0 = [MPLogEvent eventWithMessage:r19 level:0x1e];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    [MPLogging logEvent:r22 source:0x0 fromClass:[r26 class]];
                                                    r0 = r22;
                                                    r22 = var_168;
                                                    [r0 release];
                                                    r0 = r19;
                                            }
                                            [r0 release];
                                            r27 = var_160;
                                    }
                                    [r25 release];
                                    [r23 release];
                                    r25 = var_140;
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r0 = objc_msgSend(r24, var_1B8);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    [r24 release];
    goto loc_1004cb1bc;

loc_1004cb1bc:
    r19 = [r26 retain];
    goto loc_1004cb1d0;

loc_1004cb1d0:
    var_60 = **___stack_chk_guard;
    [var_158 release];
    [r26 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004cb1cc:
    r19 = 0x0;
    goto loc_1004cb1d0;
}

-(void *)description {
    r31 = r31 - 0x90;
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
    r22 = [NSStringFromClass([self class]) retain];
    r20 = self;
    r0 = [NSMutableString stringWithFormat:@"%@:"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r22 release];
    r0 = [self class];
    r0 = class_copyPropertyList(r0, &var_54);
    r25 = r0;
    if (var_54 != 0x0) {
            r21 = 0x0;
            do {
                    r0 = [objc_alloc() initWithUTF8String:property_getName(*(r25 + r21 * 0x8))];
                    r0 = objc_retainAutorelease(r0);
                    [r0 UTF8String];
                    r0 = [r20 valueForKey:r0];
                    r0 = [r0 retain];
                    r0 = [r0 description];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    [r0 UTF8String];
                    [r24 appendFormat:r2];
                    r0 = r20;
                    r20 = r22;
                    [r0 release];
                    [r19 release];
                    [r26 release];
                    r21 = r21 + 0x1;
            } while (r21 < var_54);
    }
    free(r25);
    r0 = [r24 autorelease];
    return r0;
}

@end