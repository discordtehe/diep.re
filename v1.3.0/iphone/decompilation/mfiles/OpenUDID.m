@implementation OpenUDID

+(void *)_getDictFromPasteboard:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 dataForPasteboardType:@"org.OpenUDID"];
    if (r0 != 0x0) {
            r0 = [NSKeyedUnarchiver unarchiveObjectWithData:r0];
            r19 = r0;
            if (r0 != 0x0) {
                    [NSDictionary class];
                    if ([r19 isKindOfClass:r2] == 0x0) {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = [NSMutableDictionary dictionaryWithDictionary:r19];
    return r0;
}

+(void)_setDict:(void *)arg2 forPasteboard:(void *)arg3 {
    [arg3 setData:[NSKeyedArchiver archivedDataWithRootObject:arg2] forPasteboardType:@"org.OpenUDID"];
    return;
}

+(void *)value {
    r0 = [OpenUDID valueWithError:0x0];
    return r0;
}

+(void *)_generateFreshOpenUDID {
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
    var_60 = **___stack_chk_guard;
    r19 = **_kCFAllocatorDefault;
    r0 = CFUUIDCreateString(r19, CFUUIDCreate(r19));
    CC_MD5(CFStringGetCStringPtr(r0, CFStringGetFastestEncoding(r0)), sub_100021280(), &saved_fp - 0x70);
    CFRelease(r20);
    arc4random();
    r0 = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%08x"];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)setOptOut:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    [OpenUDID value];
    r0 = [NSUserDefaults standardUserDefaults];
    r19 = r0;
    r21 = [r0 objectForKey:@"OpenUDID"];
    if ([r21 isKindOfClass:[NSDictionary class]] != 0x0) {
            r1 = @selector(dictionaryWithDictionary:);
    }
    else {
            r1 = @selector(dictionaryWithCapacity:);
    }
    r21 = objc_msgSend(@class(NSMutableDictionary), r1);
    if (r20 != 0x0) {
            [NSDate date];
            [r21 setObject:r2 forKey:r3];
    }
    else {
            [r21 removeObjectForKey:@"OpenUDID_optOutTS"];
    }
    [r19 setObject:r2 forKey:r3];
    *0x1011da048 = 0x0;
    return;
}

+(void *)valueWithError:(void * *)arg2 {
    r31 = r31 - 0xf0;
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
    r21 = arg2;
    r0 = *0x1011da048;
    if (r0 == 0x0) goto loc_1005da4a8;

loc_1005da448:
    if (r21 != 0x0) {
            *r21 = [NSError errorWithDomain:@"org.OpenUDID" code:0x0 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:@"OpenUDID in cache from first call"]];
            r0 = *0x1011da048;
    }
    return r0;

loc_1005da4a8:
    r0 = [NSUserDefaults standardUserDefaults];
    r22 = r0;
    r0 = [r0 objectForKey:r2];
    var_78 = r0;
    if (r0 == 0x0) {
            r20 = CFUUIDCreate(r0);
            CFUUIDCreateString(0x0, r20);
            CFRelease(r20);
            var_78 = r23;
            [r23 autorelease];
    }
    r20 = [r22 objectForKey:r2];
    [NSDictionary class];
    r0 = [r20 isKindOfClass:r2];
    var_A8 = r21;
    var_C0 = r22;
    if (r0 != 0x0) {
            r19 = @selector(objectForKey:);
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            r0 = objc_msgSend(@class(NSMutableDictionary), *(r8 + 0x558));
            var_B0 = objc_msgSend(r0, r19);
            var_60 = objc_msgSend(r0, r19);
            var_B8 = r0;
            r0 = objc_msgSend(r0, r19);
            var_A0 = r0;
            if (r0 != 0x0) {
                    r8 = &@selector(addObserver:userInfoKeys:targetObject:);
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            var_64 = r8;
    }
    else {
            var_B8 = r20;
            var_64 = 0x0;
            var_A0 = 0x0;
            var_60 = 0x0;
            var_B0 = 0x0;
    }
    r23 = [NSMutableDictionary dictionaryWithCapacity:0x64];
    r24 = 0x0;
    r27 = 0x0;
    r26 = @selector(stringWithFormat:);
    do {
            r28 = objc_msgSend(@class(NSString), r26);
            r0 = [UIPasteboard pasteboardWithName:r28 create:0x0];
            if (r0 != 0x0) {
                    r19 = @selector(objectForKey:);
                    r20 = r26;
                    r0 = [OpenUDID _getDictFromPasteboard:r0];
                    r26 = r0;
                    r0 = objc_msgSend(r0, r19);
                    if (r0 != 0x0) {
                            [[r23 valueForKey:r0] intValue] + 0x1;
                            [NSNumber numberWithInt:r2];
                            [r23 setObject:r2 forKey:r3];
                    }
                    else {
                            if (r27 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r27 = r27;
                                    }
                                    else {
                                            r27 = r28;
                                    }
                            }
                    }
                    r0 = [r26 objectForKey:r2];
                    if (r0 != 0x0) {
                            r0 = [r0 isEqualToString:r2];
                            r8 = var_64 & r0;
                            r9 = var_60;
                            if (r0 != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r9 = r9;
                                    }
                                    else {
                                            r9 = r28;
                                    }
                            }
                            if (r8 == 0x1) {
                                    r0 = [r26 objectForKey:r2];
                                    var_A0 = r0;
                                    if (r0 != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    var_64 = r8;
                                    var_60 = r28;
                            }
                            else {
                                    var_60 = r9;
                            }
                    }
                    r26 = r20;
            }
            else {
                    if (r27 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r27 = r27;
                            }
                            else {
                                    r27 = r28;
                            }
                    }
            }
            r24 = r24 + 0x1;
    } while (r24 != 0x64);
    r0 = [r23 keysSortedByValueUsingSelector:@selector(compare:)];
    if (r0 != 0x0) {
            r19 = r0;
            r0 = [r0 count];
            r21 = var_B8;
            r22 = var_B0;
            r23 = @selector(setObject:forKey:);
            if (r0 != 0x0) {
                    r0 = [r19 lastObject];
            }
            if (r22 != 0x0) {
                    if (r0 != 0x0) {
                            r0 = [r0 isEqualToString:r2];
                            r19 = 0x0;
                            r20 = r0 ^ 0x1;
                    }
                    else {
                            r20 = 0x0;
                            r19 = 0x0;
                    }
            }
            else {
                    r22 = r0;
                    if (r0 != 0x0) {
                            if (r21 != 0x0) {
                                    r20 = 0x0;
                                    r19 = 0x0;
                            }
                            else {
                                    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
                                    r21 = r0;
                                    objc_msgSend(r0, r23);
                                    objc_msgSend(r21, r23);
                                    [NSDate date];
                                    objc_msgSend(r21, r23);
                                    if ((var_64 & 0x1) != 0x0) {
                                            objc_msgSend(r21, r23);
                                    }
                                    r20 = 0x0;
                                    r19 = 0x1;
                            }
                    }
                    else {
                            r22 = [OpenUDID _generateFreshOpenUDID];
                            if (r21 == 0x0) {
                                    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
                                    r21 = r0;
                                    objc_msgSend(r0, r23);
                                    objc_msgSend(r21, r23);
                                    [NSDate date];
                                    objc_msgSend(r21, r23);
                                    if ((var_64 & 0x1) != 0x0) {
                                            objc_msgSend(r21, r23);
                                    }
                                    r20 = 0x0;
                                    r19 = 0x1;
                            }
                            else {
                                    r20 = 0x0;
                                    r19 = 0x0;
                            }
                    }
            }
    }
    else {
            r21 = var_B8;
            r22 = var_B0;
            r23 = @selector(setObject:forKey:);
            if (r22 == 0x0) {
                    r22 = r0;
                    if (r0 != 0x0) {
                            if (r21 != 0x0) {
                                    r20 = 0x0;
                                    r19 = 0x0;
                            }
                            else {
                                    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
                                    r21 = r0;
                                    objc_msgSend(r0, r23);
                                    objc_msgSend(r21, r23);
                                    [NSDate date];
                                    objc_msgSend(r21, r23);
                                    if ((var_64 & 0x1) != 0x0) {
                                            objc_msgSend(r21, r23);
                                    }
                                    r20 = 0x0;
                                    r19 = 0x1;
                            }
                    }
                    else {
                            r22 = [OpenUDID _generateFreshOpenUDID];
                            if (r21 == 0x0) {
                                    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
                                    r21 = r0;
                                    objc_msgSend(r0, r23);
                                    objc_msgSend(r21, r23);
                                    [NSDate date];
                                    objc_msgSend(r21, r23);
                                    if ((var_64 & 0x1) != 0x0) {
                                            objc_msgSend(r21, r23);
                                    }
                                    r20 = 0x0;
                                    r19 = 0x1;
                            }
                            else {
                                    r20 = 0x0;
                                    r19 = 0x0;
                            }
                    }
            }
            else {
                    if (r0 != 0x0) {
                            r0 = [r0 isEqualToString:r2];
                            r19 = 0x0;
                            r20 = r0 ^ 0x1;
                    }
                    else {
                            r20 = 0x0;
                            r19 = 0x0;
                    }
            }
    }
    r2 = var_60;
    if (r27 == 0x0 || r2 != 0x0 && [r27 isEqualToString:r2] == 0x0) goto loc_1005da984;

loc_1005da918:
    r0 = [UIPasteboard pasteboardWithName:r27 create:0x1];
    r19 = r0;
    [r0 setPersistent:0x1];
    if (r21 == 0x0) goto loc_1005da9a4;

loc_1005da948:
    r2 = r27;
    objc_msgSend(r21, r23);
    if (r22 != 0x0) {
            [OpenUDID _setDict:r21 forPasteboard:r19];
    }
    r19 = 0x1;
    goto loc_1005da984;

loc_1005da984:
    if (r21 != 0x0 && r19 != 0x0) {
            r2 = r21;
            objc_msgSend(var_C0, r23);
    }
    goto loc_1005da9a4;

loc_1005da9a4:
    if ((var_64 & 0x1) != 0x0) {
            r21 = var_A8;
            if (r21 != 0x0) {
                    *r21 = [NSError errorWithDomain:@"org.OpenUDID" code:0x1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:objc_msgSend(@class(NSString), r26)]];
            }
            r0 = objc_msgSend(@class(NSString), r26);
    }
    else {
            r21 = var_A8;
            if (r21 != 0x0) {
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r2 = @"OpenUDID succesfully retrieved";
                            }
                            else {
                                    r2 = @"Found a discrepancy between stored OpenUDID (reliable) and redundant copies; one of the apps on the device is most likely corrupting the OpenUDID protocol";
                            }
                    }
                    if (CPU_FLAGS & NE) {
                            if (!CPU_FLAGS & NE) {
                                    r20 = 0x0;
                            }
                            else {
                                    r20 = 0x2;
                            }
                    }
                    *r21 = [NSError errorWithDomain:@"org.OpenUDID" code:r20 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:r2]];
            }
            r0 = r22;
    }
    r0 = [r0 retain];
    *0x1011da048 = r0;
    return r0;
}

@end