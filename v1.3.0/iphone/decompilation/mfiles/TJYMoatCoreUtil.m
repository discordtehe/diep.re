@implementation TJYMoatCoreUtil

+(void *)getAppName {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 objectForInfoDictionaryKey:@"CFBundleName"] retain];
    [r0 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 objectForInfoDictionaryKey:@"CFBundleDisplayName"] retain];
    [r0 release];
    if (r20 == 0x0 || [r20 length] == 0x0) goto loc_100970040;

loc_100970038:
    r0 = r20;
    goto loc_10097005c;

loc_10097005c:
    r21 = [r0 retain];
    goto loc_100970078;

loc_100970078:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100970040:
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_100970068;

loc_100970058:
    r0 = r19;
    goto loc_10097005c;

loc_100970068:
    r21 = @"";
    [r21 retain];
    goto loc_100970078;
}

+(void *)getSystemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getNestedDelegates:(void *)arg2 withProtocol:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x50;
    r20 = [arg2 retain];
    var_70 = r20;
    var_78 = [arg3 retain];
    var_60 = [NSMutableDictionary new];
    r22 = object_getClass(r20);
    r21 = 0x0;
    while (r21 <= 0x27 && r22 != 0x0) {
            r0 = class_copyPropertyList(r22, &var_54);
            r27 = r0;
            if (var_54 != 0x0) {
                    r28 = 0x0;
                    do {
                            r19 = *(r27 + r28 * 0x8);
                            r23 = property_copyAttributeValue(r19, "V");
                            if (r23 != 0x0) {
                                    r0 = [NSString stringWithUTF8String:r23];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    free(r23);
                                    if (r20 != 0x0) {
                                            r0 = [var_60 objectForKeyedSubscript:r20];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            if (r23 == 0x0) {
                                                    r19 = property_copyAttributeValue(r19, "T");
                                                    if (r19 != 0x0) {
                                                            r0 = [NSString stringWithUTF8String:r19];
                                                            r29 = r29;
                                                            r26 = [r0 retain];
                                                    }
                                                    else {
                                                            r26 = 0x0;
                                                    }
                                                    free(r19);
                                                    if ([r26 hasPrefix:@"@"] != 0x0) {
                                                            r0 = objc_retainAutorelease(r20);
                                                            r19 = r0;
                                                            r0 = [r0 cStringUsingEncoding:r2];
                                                            r0 = class_getInstanceVariable(r22, r0);
                                                            r0 = object_getIvar(var_70, r0);
                                                            r29 = r29;
                                                            r25 = [r0 retain];
                                                            if (r25 != var_70 && [r25 conformsToProtocol:r2] != 0x0) {
                                                                    [var_60 setObject:r2 forKeyedSubscript:r3];
                                                            }
                                                            [r25 release];
                                                    }
                                                    [r26 release];
                                            }
                                            [r23 release];
                                            [r20 release];
                                    }
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < var_54);
            }
            r21 = r21 + 0x1;
            free(r27);
            r22 = [r22 superclass];
    }
    [var_78 release];
    [var_70 release];
    r0 = [var_60 autorelease];
    return r0;
}

+(void *)findObjectReferencingObject:(void *)arg2 wrappee:(void *)arg3 aProtocol:(void *)arg4 {
    r29 = &saved_fp;
    var_90 = self;
    r21 = [arg2 retain];
    var_C8 = r21;
    r20 = [arg3 retain];
    var_88 = [arg4 retain];
    r23 = [NSMutableSet new];
    var_98 = r23;
    r0 = [NSMutableArray new];
    var_70 = r0;
    [r0 addObject:r21];
    if ([r0 count] == 0x0) goto loc_1009703bc;

loc_1009701b4:
    r21 = 0x0;
    r24 = @selector(removeObjectAtIndex:);
    var_A0 = r24;
    r25 = @selector(containsObject:);
    var_A8 = r25;
    var_B0 = @selector(class);
    var_B8 = @selector(getNestedDelegates:withProtocol:);
    var_C0 = @selector(allKeys);
    goto loc_10097020c;

loc_10097020c:
    r0 = [var_70 objectAtIndexedSubscript:0x0];
    r29 = r29;
    r22 = [r0 retain];
    objc_msgSend(var_70, r24);
    if (objc_msgSend(r23, r25) == 0x0) goto loc_10097025c;

loc_100970250:
    [r22 release];
    goto loc_100970398;

loc_100970398:
    r21 = r21 + 0x1;
    r0 = [var_70 count];
    r19 = 0x0;
    if (r21 > 0x63) goto loc_1009703c0;

loc_1009703b4:
    if (r0 != 0x0) goto loc_10097020c;

loc_1009703b8:
    r19 = 0x0;
    goto loc_1009703c0;

loc_1009703c0:
    r19 = objc_retainAutoreleaseReturnValue(r19);
    [var_70 release];
    [r23 release];
    [r19 release];
    [var_88 release];
    [r20 release];
    [var_C8 release];
    r0 = r19;
    return r0;

loc_10097025c:
    var_B0 = @selector(class);
    var_B8 = @selector(getNestedDelegates:withProtocol:);
    var_C0 = @selector(allKeys);
    [r23 addObject:r2];
    r0 = objc_msgSend(var_90, var_B0);
    r0 = objc_msgSend(r0, var_B8);
    r0 = [r0 retain];
    var_60 = r0;
    r0 = objc_msgSend(r0, var_C0);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r28) != 0x0) {
            var_7C = r21;
            r19 = 0x0;
            r25 = 0x0;
            do {
                    r24 = [[r23 objectAtIndexedSubscript:r25] retain];
                    r0 = [var_60 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r22 != r20 && r21 == r20) {
                            r27 = [r22 retain];
                            [r19 release];
                            r26 = 0x0;
                            r19 = r27;
                    }
                    else {
                            [var_70 addObject:r2];
                            r26 = 0x1;
                    }
                    [r21 release];
                    [r24 release];
                    if ((r26 & 0x1) == 0x0) {
                        break;
                    }
                    r25 = r25 + 0x1;
            } while (r25 < [r23 count]);
    }
    else {
            var_7C = r21;
            r19 = 0x0;
    }
    [r23 release];
    [var_60 release];
    [r22 release];
    r24 = var_A0;
    r23 = var_98;
    r21 = var_7C;
    r25 = var_A8;
    if (r19 != 0x0) goto loc_1009703c0;
    goto loc_100970398;

loc_1009703bc:
    r19 = 0x0;
    goto loc_1009703c0;
}

@end