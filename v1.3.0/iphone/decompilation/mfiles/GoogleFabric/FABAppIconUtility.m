@implementation FABAppIconUtility

-(void *)applicationIcon {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_applicationIcon));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [r19 fetchApplicationIcon];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)appInfoDictionary {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 infoDictionary] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(struct CGSize)sizeForImage:(void *)arg2 {
    [arg2 retain];
    [arg2 scale];
    [arg2 size];
    objc_msgSend(arg2, r20);
    r0 = [r21 release];
    return r0;
}

-(void *)iconRootPath {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 bundlePath] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)addIconNameWithModifier:(void *)arg2 forIconWithName:(void *)arg3 toSetOfIconNames:(void *)arg4 {
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
    r21 = [arg4 retain];
    if (([[self class] isIconImageFileNameExtensionPresentInName:r20] & 0x1) == 0x0) {
            [[r20 stringByAppendingString:r19] retain];
            [r21 addObject:r2];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(bool)isIconImageFileNameExtensionPresentInName:(void *)arg2 {
    r0 = [arg2 pathExtension];
    r0 = [r0 retain];
    r21 = [[r0 lowercaseString] retain];
    r20 = [[@"png" lowercaseString] retain];
    r22 = [r21 isEqualToString:r2];
    [r20 release];
    [r21 release];
    [r0 release];
    r0 = r22;
    return r0;
}

+(void *)iconNameSetWithAlternateNamesAddedToIconNameSet:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = [r0 mutableCopy];
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            [r19 addIconNameWithModifier:r2 forIconWithName:r3 toSetOfIconNames:r4];
                            objc_msgSend(r19, r27);
                            objc_msgSend(r19, r27);
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r24 = objc_msgSend(var_120, var_128);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r19 = [r20 copy];
    [r20 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)iconFromCFBundleIconFiles {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self appInfoDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"CFBundleIconFiles"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    if (r19 == 0x0) goto loc_10009b598;

loc_10009b534:
    [NSArray class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10009b588;

loc_10009b560:
    r20 = [[r20 largestIconInIconNames:r19 prerendered:0x0] retain];
    goto loc_10009b59c;

loc_10009b59c:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_10009b588:
    NSLog(@"[Fabric] Info.plist field %@ appears malformed", @selector(isKindOfClass:));
    goto loc_10009b598;

loc_10009b598:
    r20 = 0x0;
    goto loc_10009b59c;
}

-(void *)iconFromCFBundleIconFile {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self appInfoDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"CFBundleIconFile"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    if (r19 == 0x0) goto loc_10009b6c4;

loc_10009b62c:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10009b6b4;

loc_10009b658:
    r21 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    r20 = [[r20 largestIconInIconNames:r21 prerendered:0x0] retain];
    [r21 release];
    goto loc_10009b6c8;

loc_10009b6c8:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10009b6b4:
    NSLog(@"[Fabric] Info.plist field %@ appears malformed", @selector(isKindOfClass:));
    goto loc_10009b6c4;

loc_10009b6c4:
    r20 = 0x0;
    goto loc_10009b6c8;
}

-(void *)iconByFallingBackOnDefaultIconNamingConvention {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSArray arrayWithObjects:&var_58 count:0x8] retain];
    r19 = [[self largestIconInIconNames:r20 prerendered:0x0] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)iconFromIOS7StyleCFBundleIconsInFieldWithKey:(void *)arg2 {
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 appInfoDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10009b3d8;

loc_10009b2cc:
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(respondsToSelector:);
    if ((objc_msgSend(r0, r1) & 0x1) == 0x0) goto loc_10009b3e0;

loc_10009b308:
    r26 = @selector(respondsToSelector:);
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r1 = r26;
    if ((objc_msgSend(r0, r1) & 0x1) == 0x0) goto loc_10009b3f4;

loc_10009b33c:
    r0 = [r23 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSArray class];
    if (([r25 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10009b408;

loc_10009b38c:
    r26 = @selector(respondsToSelector:);
    r0 = [r23 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, r26) != 0x0) {
            r3 = [r24 boolValue];
    }
    else {
            r3 = 0x0;
    }
    r22 = [[r22 largestIconInIconNames:r25 prerendered:r3] retain];
    [r24 release];
    [r25 release];
    [r23 release];
    r23 = 0x1;
    goto loc_10009b430;

loc_10009b430:
    [r21 release];
    if ((r23 & 0x1) != 0x0) {
            r22 = [r22 retain];
            r21 = r22;
    }
    else {
            r21 = 0x0;
    }
    goto loc_10009b454;

loc_10009b454:
    [r20 release];
    [r22 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10009b408:
    NSLog(@"[Fabric] Info.plist field %@ appears malformed", @selector(isKindOfClass:));
    [r25 release];
    goto loc_10009b420;

loc_10009b420:
    [r23 release];
    goto loc_10009b428;

loc_10009b428:
    r22 = 0x0;
    r23 = 0x0;
    goto loc_10009b430;

loc_10009b3f4:
    NSLog(@"[Fabric] Info.plist field %@ appears malformed", r1);
    goto loc_10009b420;

loc_10009b3e0:
    NSLog(@"[Fabric] Info.plist field %@ appears malformed", r1);
    goto loc_10009b428;

loc_10009b3d8:
    r22 = 0x0;
    r22 = [r22 retain];
    r21 = r22;
    goto loc_10009b454;
}

-(void)setApplicationIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_applicationIcon, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_applicationIcon, 0x0);
    return;
}

-(void *)largestIconInIconNames:(void *)arg2 prerendered:(bool)arg3 {
    r31 = r31 - 0x1b0;
    var_70 = d11;
    stack[-120] = d10;
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
    r23 = arg3;
    r21 = self;
    r22 = [arg2 retain];
    r19 = [[NSSet setWithArray:r22] retain];
    r0 = [r21 class];
    r0 = [r0 iconNameSetWithAlternateNamesAddedToIconNameSet:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    var_128 = q0;
    r0 = [r20 retain];
    r26 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_188 = r1;
    r19 = objc_msgSend(r0, r1);
    if (r19 != 0x0) {
            r28 = @selector(class);
            var_194 = r23;
            var_190 = r22;
            var_180 = 0x0;
            r20 = *var_128;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_128 != r20) {
                                    objc_enumerationMutation(r26);
                            }
                            r22 = *(var_130 + r23 * 0x8);
                            r27 = [objc_msgSend(r21, r28) isIconImageFileNameExtensionPresentInName:r22];
                            r0 = [r21 iconRootPath];
                            r29 = r29;
                            r24 = [r0 retain];
                            if ((r27 & 0x1) != 0x0) {
                                    r0 = [r24 stringByAppendingPathComponent:r22];
                                    r29 = r29;
                                    r22 = [r0 retain];
                            }
                            else {
                                    r27 = [[r22 stringByAppendingPathExtension:@"png"] retain];
                                    r0 = [r24 stringByAppendingPathComponent:r27];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r27 release];
                            }
                            [r24 release];
                            r0 = [NSData dataWithContentsOfFile:r22];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = [UIImage imageWithData:r24];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    if (r27 != 0x0) {
                                            [objc_msgSend(r21, r28) sizeForImage:r27];
                                            v10 = v1;
                                            if (d11 * d10 > 0x0 && [FABIcon isWithinMaxSurfaceAreaWithImage:r2] != 0x0) {
                                                    r0 = [r22 retain];
                                                    [var_180 release];
                                                    v8 = 0x0;
                                                    v9 = v10;
                                                    var_180 = r0;
                                                    r26 = r26;
                                                    r28 = r28;
                                                    r20 = r20;
                                                    r19 = r19;
                                            }
                                    }
                            }
                            else {
                                    r27 = 0x0;
                            }
                            [r22 release];
                            [r24 release];
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r19);
                    r19 = objc_msgSend(r26, var_188);
            } while (r19 != 0x0);
            [r26 release];
            r20 = var_180;
            if (r20 != 0x0) {
                    r19 = [[FABIcon alloc] initWithPNGImageAtPath:r20 size:var_194 prerendered:0x10];
            }
            else {
                    r19 = 0x0;
            }
            r22 = var_190;
    }
    else {
            [r26 release];
            r20 = 0x0;
    }
    var_78 = **___stack_chk_guard;
    [r20 release];
    [r26 release];
    [r22 release];
    if (**___stack_chk_guard == var_78) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)fetchApplicationIcon {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self iconFromIOS7StyleCFBundleIconsInFieldWithKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) {
            r0 = [r19 iconFromIOS7StyleCFBundleIconsInFieldWithKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
            if (r21 == 0x0) {
                    r0 = [r19 iconFromCFBundleIconFiles];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 == 0x0) {
                            r0 = [r19 iconFromCFBundleIconFile];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r20 == 0x0) {
                                    r20 = [[r19 iconByFallingBackOnDefaultIconNamingConvention] retain];
                                    if (r20 != 0x0) {
                                            r0 = [r20 retain];
                                            r19 = r0;
                                            [r0 release];
                                    }
                                    else {
                                            NSLog(@"[Fabric] Unable to locate application icon");
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r0 = [r20 retain];
                                    r19 = r0;
                                    [r0 release];
                            }
                    }
                    else {
                            r0 = [r20 retain];
                            r19 = r0;
                            [r0 release];
                    }
            }
            else {
                    r0 = [r20 retain];
                    r19 = r0;
                    [r0 release];
            }
    }
    else {
            r0 = [r20 retain];
            r19 = r0;
            [r0 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

@end