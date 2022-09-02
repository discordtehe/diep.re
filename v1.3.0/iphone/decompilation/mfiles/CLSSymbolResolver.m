@implementation CLSSymbolResolver

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_binaryImages));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)loadedBinaryImageForPC:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_binaryImages));
    r8 = [*(r19 + r20) indexOfObjectPassingTest:&var_38];
    if (r8 == 0x7fffffffffffffff) {
            r0 = 0x0;
    }
    else {
            r0 = *(r19 + r20);
            r0 = [r0 objectAtIndex:r2];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(bool)fillInImageDetails:(union ? *)arg2 forUUID:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = arg2;
    if (r19 != 0x0 && r20 != 0x0) {
            r21 = [r20 retain];
            r20 = [objc_retainAutorelease(r20) UTF8String];
            [r21 release];
            r0 = sub_1001048b4(r20, r19);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)frameForAddress:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[CLSStackFrame stackFrameWithAddress:arg2] retain];
    if ([self updateStackFrame:r19] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)loadBinaryImagesFromFile:(void *)arg2 {
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
    r29 = &saved_fp;
    var_140 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            r0 = objc_retainAutorelease(r20);
            r19 = r0;
            r0 = [r0 fileSystemRepresentation];
            r0 = sub_10011d9bc(r0, 0x0, 0x0);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 count] != 0x0) {
                    var_108 = q0;
                    r0 = [r21 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r0;
                    var_148 = r1;
                    r24 = objc_msgSend(r0, r1);
                    if (r24 != 0x0) {
                            var_158 = r21;
                            stack[-352] = r20;
                            var_120 = *var_108;
                            do {
                                    r21 = 0x0;
                                    var_130 = r24;
                                    do {
                                            if (*var_108 != var_120) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r0 = *(var_110 + r21 * 0x8);
                                            r0 = [r0 objectForKey:@"load"];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            if (r23 != 0x0) {
                                                    r0 = [r23 objectForKey:@"base"];
                                                    r29 = r29;
                                                    r19 = [r0 retain];
                                                    if (r19 != 0x0) {
                                                            r0 = [r23 objectForKey:@"size"];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 release];
                                                            [r19 release];
                                                            if (r0 != 0x0) {
                                                                    r20 = [[r23 objectForKey:@"base"] retain];
                                                                    r0 = [NSNull null];
                                                                    r29 = r29;
                                                                    r19 = [r0 retain];
                                                                    if (r20 != r19) {
                                                                            r27 = [[r23 objectForKey:@"size"] retain];
                                                                            r0 = @class(NSNull);
                                                                            r0 = [r0 null];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            [r0 release];
                                                                            [r27 release];
                                                                            [r19 release];
                                                                            [r20 release];
                                                                            r24 = var_130;
                                                                            if (r27 != r0) {
                                                                                    [var_140->_binaryImages addObject:r2];
                                                                            }
                                                                    }
                                                                    else {
                                                                            [r19 release];
                                                                            [r20 release];
                                                                    }
                                                            }
                                                    }
                                            }
                                            [r23 release];
                                            r21 = r21 + 0x1;
                                    } while (r21 < r24);
                                    r24 = objc_msgSend(var_128, var_148);
                            } while (r24 != 0x0);
                            r21 = var_158;
                            r20 = stack[-352];
                    }
                    [var_128 release];
                    [var_140->_binaryImages sortUsingComparator:0x100e6b148];
                    r19 = 0x1;
            }
            else {
                    NSLog(@"[Crashlytics:Crash:SymbolResolver] failed to read binary image file %@", @selector(count));
                    r19 = 0x0;
            }
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_binaryImages, 0x0);
    return;
}

-(bool)updateStackFrame:(void *)arg2 {
    r31 = r31 - 0xf0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = [r0 address];
    if (r22 != 0x0) {
            r0 = [r23 loadedBinaryImageForPC:r22];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKey:@"uuid"];
            r29 = r29;
            r24 = [r0 retain];
            r23 = [r23 fillInImageDetails:&stack[-200] forUUID:r24];
            [r24 release];
            if (r23 != 0x0) {
                    r0 = [r20 objectForKey:@"base"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = (r22 - [r0 unsignedIntegerValue]) + var_78;
                    [r0 release];
                    r0 = dladdr(r22, &stack[-232]);
                    if (r0 != 0x0) {
                            if (r22 == var_C0) {
                                    r22 = r22 - 0x2;
                                    r0 = dladdr(r22, &stack[-232]);
                                    if (r0 != 0x0) {
                                            if (var_C8 != 0x0) {
                                                    r0 = [NSString stringWithUTF8String:@"base"];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    [r19 setSymbol:r23];
                                                    [r19 setRawSymbol:r23];
                                                    [r23 release];
                                            }
                                            r2 = r22 - var_C0;
                                            if (r2 >= 0x0) {
                                                    [r19 setOffset:r2];
                                            }
                                            r0 = [r20 objectForKey:@"path"];
                                            r0 = [r0 retain];
                                            r22 = [[r0 lastPathComponent] retain];
                                            [r19 setLibrary:r22];
                                            [r22 release];
                                            [r0 release];
                                            r21 = 0x1;
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    if (var_C8 != 0x0) {
                                            r0 = [NSString stringWithUTF8String:@"base"];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [r19 setSymbol:r23];
                                            [r19 setRawSymbol:r23];
                                            [r23 release];
                                    }
                                    r2 = r22 - var_C0;
                                    if (r2 >= 0x0) {
                                            [r19 setOffset:r2];
                                    }
                                    r0 = [r20 objectForKey:@"path"];
                                    r0 = [r0 retain];
                                    r22 = [[r0 lastPathComponent] retain];
                                    [r19 setLibrary:r22];
                                    [r22 release];
                                    [r0 release];
                                    r21 = 0x1;
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
    }
    else {
            r21 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end