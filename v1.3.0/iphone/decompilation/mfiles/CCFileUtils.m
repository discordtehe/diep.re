@implementation CCFileUtils

+(void *)sharedFileUtils {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d4348 != -0x1) {
            dispatch_once(0x1011d4348, &var_28);
    }
    return *0x1011d4340;
}

-(void)purgeCachedEntries {
    [*(self + 0x18) removeAllObjects];
    objc_msgSend(*(self + 0x20), r20);
    objc_msgSend(*(self + 0x28), r20);
    return;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [*(self + 0x20) release];
    [*(self + 0x28) release];
    [*(self + 0x38) release];
    [*(self + 0x30) release];
    [*(self + 0x48) release];
    [*(self + 0x50) release];
    [*(self + 0x40) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0xe0;
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
    r0 = [[&saved_fp - 0x60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSFileManager alloc] init];
            *(r19 + 0x18) = [[NSMutableDictionary alloc] initWithCapacity:0x1e];
            *(r19 + 0x20) = [[NSMutableDictionary alloc] initWithCapacity:0x1e];
            *(r19 + 0x28) = [[NSMutableDictionary alloc] initWithCapacity:0x1e];
            *(r19 + 0x10) = [[NSBundle mainBundle] retain];
            *(int8_t *)(r19 + 0x5c) = 0x0;
            *(r19 + 0x48) = [[NSMutableArray alloc] initWithCapacity:0x5];
            *(r19 + 0x50) = [[NSMutableArray alloc] initWithObjects:@""];
            *(r19 + 0x40) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            *(r19 + 0x38) = [r0 initWithObjectsAndKeys:@"-ipad"];
            r0 = [NSMutableDictionary alloc];
            *(r19 + 0x30) = [r0 initWithObjectsAndKeys:@"resources-ipad"];
            *(int32_t *)(r19 + 0x58) = 0x0;
            [r19 buildSearchResolutionsOrder];
    }
    r0 = r19;
    return r0;
}

-(void)buildSearchResolutionsOrder {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[CCConfiguration sharedConfiguration] runningDevice];
    [*(r19 + 0x48) removeAllObjects];
    if (r20 == 0x6) goto loc_100314ba0;

loc_100314b6c:
    if (r20 != 0x7) goto loc_100314be8;

loc_100314b74:
    r20 = @selector(addObject:);
    objc_msgSend(*(r19 + 0x48), r20);
    r0 = *(r19 + 0x48);
    goto loc_100314bb4;

loc_100314bb4:
    objc_msgSend(r0, r20);
    if (*(int8_t *)(r19 + 0x5c) == 0x0) goto loc_100314ca0;

loc_100314bc4:
    objc_msgSend(*(r19 + 0x48), r20);
    r0 = *(r19 + 0x48);
    goto loc_100314c98;

loc_100314c98:
    objc_msgSend(r0, r20);
    goto loc_100314ca0;

loc_100314ca0:
    objc_msgSend(*(r19 + 0x48), r20);
    return;

loc_100314be8:
    if (r20 > 0x5) goto loc_100314c34;

loc_100314bf4:
    r20 = @selector(addObject:);
    objc_msgSend(*(r19 + 0x48), r20);
    objc_msgSend(*(r19 + 0x48), r20);
    r0 = *(r19 + 0x48);
    goto loc_100314c84;

loc_100314c84:
    objc_msgSend(r0, r20);
    r0 = *(r19 + 0x48);
    goto loc_100314c98;

loc_100314c34:
    if (r20 == 0x0) goto loc_100314c58;

loc_100314c38:
    if (r20 == 0x1) goto loc_100314c70;

loc_100314c40:
    if (r20 != 0x2) goto loc_100314cbc;

loc_100314c48:
    r0 = *(r19 + 0x48);
    goto loc_100314c7c;

loc_100314c7c:
    r20 = @selector(addObject:);
    goto loc_100314c84;

loc_100314cbc:
    r20 = @selector(addObject:);
    goto loc_100314ca0;

loc_100314c70:
    r0 = *(r19 + 0x48);
    goto loc_100314c7c;

loc_100314c58:
    r0 = *(r19 + 0x48);
    r20 = @selector(addObject:);
    goto loc_100314c98;

loc_100314ba0:
    r0 = *(r19 + 0x48);
    r20 = @selector(addObject:);
    goto loc_100314bb4;
}

-(void *)pathForResource:(void *)arg2 ofType:(void *)arg3 inDirectory:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r20 = arg3;
    r22 = arg2;
    r19 = self;
    if ([arg4 isAbsolutePath] != 0x0) {
            r21 = [r21 stringByAppendingPathComponent:r22];
            if (r20 != 0x0) {
                    r21 = [r21 stringByAppendingPathExtension:r20];
            }
            r0 = *(r19 + 0x8);
            r0 = [r0 fileExistsAtPath:r21];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = r21;
                    }
            }
    }
    else {
            r0 = *(r19 + 0x10);
            r0 = [r0 pathForResource:r22 ofType:r20 inDirectory:r21];
    }
    return r0;
}

-(void *)getPathForFilename:(void *)arg2 withResourceDirectory:(void *)arg3 withSearchPath:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 lastPathComponent];
    r22 = [arg2 stringByDeletingLastPathComponent];
    r23 = [[arg4 stringByAppendingPathComponent:r22] stringByAppendingPathComponent:arg3];
    if (([arg2 isAbsolutePath] & 0x1) != 0x0) {
            r20 = [[r22 stringByAppendingPathComponent:r23] stringByAppendingPathComponent:r20];
            r0 = *(r19 + 0x8);
            r0 = [r0 fileExistsAtPath:r20];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = r20;
                    }
            }
    }
    else {
            r0 = [r19 pathForResource:r20 ofType:0x0 inDirectory:r23];
    }
    return r0;
}

-(void *)getPathForFilename:(void *)arg2 withSuffix:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x60;
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
    r20 = arg2;
    r19 = self;
    r24 = arg2;
    if (r3 != 0x0) {
            r21 = r3;
            r0 = [r3 length];
            r24 = r20;
            if (r0 != 0x0) {
                    r0 = [r20 stringByDeletingPathExtension];
                    r22 = r0;
                    r0 = [r0 lastPathComponent];
                    r0 = [r0 hasSuffix:r2];
                    r24 = r20;
                    if ((r0 & 0x1) == 0x0) {
                            r0 = [r20 pathExtension];
                            r24 = r0;
                            if (([r0 isEqualToString:r2] & 0x1) != 0x0 || [r24 isEqualToString:r2] != 0x0) {
                                    [r22 pathExtension];
                                    r24 = [NSString stringWithFormat:r2];
                                    r22 = [r22 stringByDeletingPathExtension];
                            }
                            r24 = [[r22 stringByAppendingString:r21] stringByAppendingPathExtension:r24];
                    }
            }
    }
    if (([r20 isAbsolutePath] & 0x1) != 0x0) {
            r0 = *(r19 + 0x8);
            r0 = [r0 fileExistsAtPath:r24];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = r24;
                    }
            }
    }
    else {
            r0 = [r19 pathForResource:[r24 lastPathComponent] ofType:0x0 inDirectory:[r20 stringByDeletingLastPathComponent]];
    }
    return r0;
}

-(int)resolutionTypeForKey:(void *)arg2 inDictionary:(void *)arg3 {
    r31 = r31 - 0x130;
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
    r19 = arg3;
    r20 = arg2;
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100315254;

loc_1003150dc:
    r22 = r0;
    r27 = *var_110;
    goto loc_1003150f4;

loc_1003150f4:
    r26 = 0x0;
    goto loc_100315100;

loc_100315100:
    if (*var_110 != r27) {
            objc_enumerationMutation(r19);
    }
    r24 = @selector(isEqualToString:);
    r23 = @selector(objectForKey:);
    r25 = *(var_118 + r26 * 0x8);
    if (objc_msgSend(objc_msgSend(r19, r23), r24) == 0x0) goto loc_1003151e4;

loc_100315140:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315220;

loc_100315154:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315228;

loc_10031516c:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315230;

loc_100315184:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315238;

loc_10031519c:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315240;

loc_1003151b4:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315248;

loc_1003151cc:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0) goto loc_100315250;

loc_1003151e4:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_100315100;

loc_1003151f0:
    r22 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1003150f4;

loc_10031521c:
    r0 = 0x0;
    goto loc_100315254;

loc_100315254:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100315250:
    r0 = 0x0;
    goto loc_100315254;

loc_100315248:
    r0 = 0x3;
    goto loc_100315254;

loc_100315240:
    r0 = 0x4;
    goto loc_100315254;

loc_100315238:
    r0 = 0x2;
    goto loc_100315254;

loc_100315230:
    r0 = 0x1;
    goto loc_100315254;

loc_100315228:
    r0 = 0x8;
    goto loc_100315254;

loc_100315220:
    r0 = 0x7;
    goto loc_100315254;
}

-(void *)fullPathForFilename:(void *)arg2 {
    r0 = [self fullPathForFilename:r2 resolutionType:r3 andResourcePack:r4];
    return r0;
}

-(void *)fullPathFromRelativePathIgnoringResolutions:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self fullPathForFilenameIgnoringResolutions:r2];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)fullPathForFilenameIgnoringResolutions:(void *)arg2 {
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
    r22 = arg2;
    r20 = self;
    if (([arg2 isAbsolutePath] & 0x1) == 0x0) goto loc_1003152e4;

loc_1003152dc:
    r19 = r22;
    goto loc_10031548c;

loc_10031548c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1003152e4:
    r0 = *(r20 + 0x20);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_100315308;

loc_100315300:
    r19 = r0;
    goto loc_10031548c;

loc_100315308:
    r21 = @selector(objectForKey:);
    r8 = 0x101137000;
    r0 = *(r20 + 0x40);
    r0 = objc_msgSend(r0, r21);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = r22;
            }
    }
    var_128 = r8;
    var_110 = q0;
    r0 = *(r20 + 0x50);
    var_138 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100315460;

loc_100315358:
    r24 = r0;
    var_148 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r22;
    var_130 = *var_110;
    goto loc_100315380;

loc_100315380:
    r22 = 0x0;
    goto loc_100315398;

loc_100315398:
    if (*var_110 != var_130) {
            objc_enumerationMutation(var_138);
    }
    r19 = [*(var_118 + r22 * 0x8) stringByAppendingPathComponent:r2];
    if (([*(r20 + 0x8) fileExistsAtPath:r2] & 0x1) != 0x0) goto loc_100315468;

loc_1003153e0:
    [r19 lastPathComponent];
    [r19 stringByDeletingLastPathComponent];
    r0 = *(r20 + 0x10);
    r0 = objc_msgSend(r0, r23);
    if (r0 != 0x0) goto loc_100315470;

loc_100315418:
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_100315398;

loc_100315424:
    r0 = objc_msgSend(var_138, var_148);
    r24 = r0;
    if (r0 != 0x0) goto loc_100315380;

loc_10031545c:
    r19 = 0x0;
    goto loc_10031548c;

loc_100315470:
    r19 = r0;
    [*(r20 + 0x20) setObject:r2 forKey:r3];
    goto loc_10031548c;

loc_100315468:
    if (r19 != 0x0) {
            [*(r20 + 0x20) setObject:r2 forKey:r3];
    }
    goto loc_10031548c;

loc_100315460:
    r19 = 0x0;
    goto loc_10031548c;
}

-(void *)fullPathForFilename:(void *)arg2 resolutionType:(int *)arg3 {
    r0 = [self fullPathForFilename:r2 resolutionType:r3 andResourcePack:r4];
    return r0;
}

-(void *)fullPathFromRelativePath:(void *)arg2 resolutionType:(int *)arg3 andResourcePack:(void * *)arg4 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self fullPathForFilename:r2 resolutionType:r3 andResourcePack:r4];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)fullPathFromRelativePath:(void *)arg2 {
    r0 = [self fullPathFromRelativePath:arg2 resolutionType:&saved_fp - 0x4 andResourcePack:&stack[-32]];
    return r0;
}

-(void *)fullPathForFilename:(void *)arg2 resolutionType:(int *)arg3 andResourcePack:(void * *)arg4 {
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
    r20 = arg4;
    r22 = arg3;
    r19 = arg2;
    r21 = self;
    if (*(int32_t *)(self + 0x58) != 0x1) {
            *r20 = 0x0;
    }
    if ([r19 isAbsolutePath] == 0x0) goto loc_100315a5c;

loc_100315a1c:
    *(int32_t *)r22 = 0x0;
    goto loc_100315a20;

loc_100315a20:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100315a5c:
    r0 = *(r21 + 0x18);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_100315ae4;

loc_100315a78:
    var_60 = **___stack_chk_guard;
    r23 = r0;
    *(int32_t *)r22 = [r0 resolutionType];
    *r20 = [r23 resourcePack];
    if (**___stack_chk_guard == var_60) {
            r0 = [r23 fullpath];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100315ae4:
    r24 = @selector(objectForKey:);
    r0 = *(r21 + 0x40);
    r0 = objc_msgSend(r0, r24);
    var_138 = r19;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = r19;
            }
    }
    r0 = [r0 pathComponents];
    var_120 = q0;
    r0 = [r0 reverseObjectEnumerator];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100315c00;

loc_100315b54:
    r25 = r0;
    r24 = *var_120;
    r26 = @"";
    goto loc_100315b70;

loc_100315b70:
    r19 = 0x0;
    goto loc_100315b7c;

loc_100315b7c:
    if (*var_120 != r24) {
            objc_enumerationMutation(r23);
    }
    r26 = [*(var_128 + r19 * 0x8) stringByAppendingPathComponent:r2];
    if (([r21 searchFilename:r2 resolutionType:r3 andResourcePack:r4 intoString:r5] & 0x1) != 0x0) goto loc_100315c0c;

loc_100315bcc:
    r19 = r19 + 0x1;
    if (r19 < r25) goto loc_100315b7c;

loc_100315bd8:
    r0 = objc_msgSend(r23, var_140);
    r25 = r0;
    if (r0 != 0x0) goto loc_100315b70;

loc_100315c00:
    r19 = 0x0;
    goto loc_100315a20;

loc_100315c0c:
    r20 = [[CCCacheValue alloc] initWithFullPath:@"" resolutionType:*(int32_t *)r22 andResourcePack:*r20];
    if (var_138 != 0x0) {
            [*(r21 + 0x18) setObject:r2 forKey:r3];
    }
    [r20 release];
    r19 = @"";
    goto loc_100315a20;
}

-(void *)fullPathFromRelativePath:(void *)arg2 resolutionType:(int *)arg3 {
    r0 = [self fullPathFromRelativePath:arg2 resolutionType:arg3 andResourcePack:&stack[-24]];
    return r0;
}

-(void)loadFilenameLookupDictionaryFromFile:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self fullPathForFilenameIgnoringResolutions:arg2];
    if (r0 != 0x0) {
            r0 = [NSDictionary dictionaryWithContentsOfFile:r0];
            r20 = r0;
            if ([[[r0 objectForKey:@"metadata"] objectForKey:@"version"] integerValue] == 0x1) {
                    [r19 setFilenameLookup:[r20 objectForKey:@"filenames"]];
            }
    }
    return;
}

-(void *)standarizePath:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r2 = [arg2 stringByStandardizingPath];
    if (*(int32_t *)(r19 + 0x58) != 0x0) {
            r0 = r2;
    }
    else {
            r0 = [r19 removeSuffixFromFile:r2];
    }
    return r0;
}

-(void)setEnableiPhoneResourcesOniPad:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x5c) != r2) {
            *(int8_t *)(r0 + 0x5c) = r2;
            [r0 buildSearchResolutionsOrder];
    }
    return;
}

-(void)setiPadRetinaDisplaySuffix:(void *)arg2 {
    [*(self + 0x38) setObject:r2 forKey:r3];
    return;
}

-(bool)searchFilename:(void *)arg2 resolutionType:(int *)arg3 andResourcePack:(void * *)arg4 intoString:(void * *)arg5 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2f0;
    r19 = arg5;
    var_2B0 = arg3;
    r24 = arg2;
    r23 = self;
    var_2B8 = arg4;
    *arg4 = @"";
    var_210 = q0;
    r0 = *(self + 0x50);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_320 = r0;
    var_300 = r1;
    r0 = objc_msgSend(r0, r1);
    var_310 = r0;
    if (r0 == 0x0) goto loc_10031597c;

loc_1003155d8:
    var_338 = r19;
    var_2E0 = r23 + 0x30;
    var_2F8 = r23 + 0x38;
    var_318 = *var_210;
    var_2C0 = r24;
    goto loc_100315604;

loc_100315604:
    r26 = 0x0;
    goto loc_100315618;

loc_100315618:
    if (*var_210 != var_318) {
            objc_enumerationMutation(var_320);
    }
    var_2A8 = *(var_218 + r26 * 0x8);
    if (*(int32_t *)(r23 + 0x58) != 0x1) goto loc_100315790;

loc_10031564c:
    r0 = [CCResourcePackManager sharedInstance];
    r0 = [r0 getSufixSearchOrder];
    var_250 = q0;
    var_2D0 = r0;
    r0 = objc_msgSend(r0, var_300);
    if (r0 == 0x0) goto loc_10031593c;

loc_10031568c:
    r20 = r0;
    var_308 = r26;
    r22 = 0x0;
    var_2C8 = *var_250;
    goto loc_1003156a4;

loc_1003156a4:
    r19 = r24;
    r24 = 0x0;
    goto loc_1003156c4;

loc_1003156c4:
    if (*var_250 != var_2C8) {
            objc_enumerationMutation(var_2D0);
    }
    r27 = @selector(isEqualToString:);
    r21 = *(var_258 + r24 * 0x8);
    r28 = [r23 getPathForFilename:[var_2A8 stringByAppendingPathComponent:r19] withSuffix:r21];
    *(int32_t *)var_2B0 = 0x0;
    r8 = var_2B8;
    *r8 = r21;
    if (objc_msgSend(r21, r27) != 0x0) {
            r8 = var_2B8;
            *r8 = @"<empty>";
    }
    if (r28 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r22 = r22 | r8;
    if (r28 != 0x0) goto loc_100315920;

loc_100315758:
    r24 = r24 + 0x1;
    if (r24 < r20) goto loc_1003156c4;

loc_100315764:
    r0 = objc_msgSend(var_2D0, var_300);
    r20 = r0;
    r24 = r19;
    if (r0 != 0x0) goto loc_1003156a4;

loc_10031578c:
    r28 = 0x0;
    goto loc_10031592c;

loc_10031592c:
    r26 = var_308;
    if ((r22 & 0x1) != 0x0) goto loc_100315970;

loc_10031593c:
    r26 = r26 + 0x1;
    if (r26 < var_310) goto loc_100315618;

loc_10031594c:
    r0 = objc_msgSend(var_320, var_300);
    var_310 = r0;
    if (r0 != 0x0) goto loc_100315604;

loc_10031597c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100315970:
    *var_338 = r28;
    r0 = 0x1;
    goto loc_10031597c;

loc_100315920:
    r24 = r19;
    goto loc_10031592c;

loc_100315790:
    var_290 = q0;
    r0 = *(r23 + 0x48);
    var_2E8 = r0;
    r0 = objc_msgSend(r0, var_300);
    var_2C8 = r0;
    if (r0 == 0x0) goto loc_10031593c;

loc_1003157c0:
    var_308 = r26;
    r22 = 0x0;
    var_2D0 = *var_290;
    goto loc_1003157d4;

loc_1003157d4:
    r27 = 0x0;
    goto loc_100315808;

loc_100315808:
    if (*var_290 != var_2D0) {
            objc_enumerationMutation(var_2E8);
    }
    r21 = *(var_298 + r27 * 0x8);
    r24 = var_2A8;
    r19 = var_2C0;
    r0 = [r24 stringByAppendingPathComponent:r19];
    if (*(int32_t *)(r23 + 0x58) != 0x0) {
            r21 = [*(r23 + 0x30) objectForKey:r21];
            r28 = [r23 getPathForFilename:r19 withResourceDirectory:r21 withSearchPath:r24];
            r8 = var_2E0;
    }
    else {
            r21 = [*(r23 + 0x38) objectForKey:r21];
            r28 = [r23 getPathForFilename:r2 withSuffix:r3];
            r8 = var_2F8;
    }
    r3 = *r8;
    r8 = var_2B0;
    *(int32_t *)r8 = [r23 resolutionTypeForKey:r21 inDictionary:r3];
    if (r28 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r22 = r22 | r8;
    if (r28 != 0x0) goto loc_100315928;

loc_1003158e4:
    r27 = r27 + 0x1;
    if (r27 < var_2C8) goto loc_100315808;

loc_1003158f4:
    r0 = objc_msgSend(var_2E8, var_300);
    r24 = var_2C0;
    var_2C8 = r0;
    if (r0 != 0x0) goto loc_1003157d4;

loc_10031591c:
    r28 = 0x0;
    goto loc_10031592c;

loc_100315928:
    r24 = var_2C0;
    goto loc_10031592c;
}

-(void)setiPhoneRetinaDisplaySuffix:(void *)arg2 {
    [*(self + 0x38) setObject:r2 forKey:r3];
    return;
}

-(void)setiPadSuffix:(void *)arg2 {
    [*(self + 0x38) setObject:r2 forKey:r3];
    return;
}

-(void *)getiPhoneRetinaDisplaySuffix {
    r0 = *(self + 0x38);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)getiPadSuffix {
    r0 = *(self + 0x38);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)getiPadRetinaDisplaySuffix {
    r0 = *(self + 0x38);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)removeSuffix:(void *)arg2 fromPath:(void *)arg3 {
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (r2 == 0x0) goto loc_100315fe0;

loc_100315ed8:
    r21 = r2;
    if ([r2 length] == 0x0) goto loc_100315fe0;

loc_100315ef4:
    r0 = [r19 lastPathComponent];
    r23 = [r0 stringByDeletingPathExtension];
    r22 = [r0 pathExtension];
    if ([r23 hasSuffix:r2] == 0x0) goto loc_100315fdc;

loc_100315f44:
    r21 = [r23 stringByReplacingCharactersInRange:[r23 rangeOfString:r21 options:0x4] withString:@selector(rangeOfString:options:)];
    if (r22 != 0x0 && [r22 length] != 0x0) {
            r21 = [r21 stringByAppendingPathExtension:r22];
    }
    r0 = [r19 stringByDeletingLastPathComponent];
    r0 = [r0 stringByAppendingPathComponent:r21];
    return r0;

loc_100315fdc:
    r19 = 0x0;
    goto loc_100315fe0;

loc_100315fe0:
    r0 = r19;
    return r0;
}

-(void)setEnableFallbackSuffixes:(bool)arg2 {
    [self setEnableiPhoneResourcesOniPad:arg2];
    return;
}

-(bool)fileExistsAtPath:(void *)arg2 withSuffix:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    if ([arg2 isAbsolutePath] != 0x0) {
            r0 = 0x0;
    }
    else {
            r22 = [r21 lastPathComponent];
            r4 = [r21 stringByDeletingLastPathComponent];
            r0 = *(r20 + 0x10);
            r0 = [r0 pathForResource:r22 ofType:0x0 inDirectory:r4];
    }
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = r21;
            }
    }
    r0 = [r20 getPathForFilename:r2 withSuffix:r19];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)removeSuffixFromFile:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1f0;
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
    if (r2 == 0x0) goto loc_100316054;

loc_10031602c:
    r19 = r2;
    r20 = r0;
    r0 = *(r0 + 0x28);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_100316060;

loc_10031604c:
    r22 = r0;
    goto loc_100316228;

loc_100316228:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100316060:
    if (*(int32_t *)(r20 + 0x58) != 0x1) goto loc_10031613c;

loc_10031606c:
    r0 = [CCResourcePackManager sharedInstance];
    r0 = [r0 getSufixSearchOrder];
    r21 = r0;
    var_190 = q0;
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r0 = objc_msgSend(r0, r22);
    if (r0 == 0x0) goto loc_100316200;

loc_1003160bc:
    r23 = r0;
    r25 = *var_190;
    goto loc_1003160cc;

loc_1003160cc:
    r27 = 0x0;
    goto loc_1003160d4;

loc_1003160d4:
    if (*var_190 != r25) {
            objc_enumerationMutation(r21);
    }
    r0 = [r20 removeSuffix:r2 fromPath:r3];
    if (r0 != 0x0) goto loc_100316208;

loc_100316108:
    r27 = r27 + 0x1;
    if (r27 < r23) goto loc_1003160d4;

loc_100316114:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r23 = objc_msgSend(r21, r22);
    if (r23 != 0x0) goto loc_1003160cc;

loc_100316138:
    r0 = 0x0;
    goto loc_100316208;

loc_100316208:
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r22 = r0;
            }
            else {
                    r22 = r19;
            }
    }
    [*(r20 + 0x28) setObject:r2 forKey:r3];
    goto loc_100316228;

loc_100316200:
    r0 = @"";
    goto loc_100316208;

loc_10031613c:
    var_1D0 = q0;
    r22 = *(r20 + 0x48);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100316200;

loc_100316170:
    r24 = r0;
    r26 = *var_1D0;
    goto loc_100316180;

loc_100316180:
    r28 = 0x0;
    goto loc_100316188;

loc_100316188:
    if (*var_1D0 != r26) {
            objc_enumerationMutation(r22);
    }
    [*(r20 + 0x38) objectForKey:r2];
    r0 = objc_msgSend(r20, r25);
    if (r0 != 0x0) goto loc_100316208;

loc_1003161cc:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_100316188;

loc_1003161d8:
    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) goto loc_100316180;

loc_1003161fc:
    r0 = 0x0;
    goto loc_100316208;

loc_100316054:
    r22 = @"";
    goto loc_100316228;
}

-(void *)fullPathToRelativePath:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = arg2;
    r19 = self;
    if (([arg2 isAbsolutePath] & 0x1) == 0x0) goto loc_10031647c;

loc_100316360:
    var_110 = q0;
    r21 = *(r19 + 0x50);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10031640c;

loc_100316398:
    r23 = r0;
    r27 = *var_110;
    goto loc_1003163a4;

loc_1003163a4:
    r28 = 0x0;
    goto loc_1003163ac;

loc_1003163ac:
    if (*var_110 != r27) {
            objc_enumerationMutation(r21);
    }
    r25 = *(var_118 + r28 * 0x8);
    if (([r20 hasPrefix:r2] & 0x1) != 0x0) goto loc_100316454;

loc_1003163e0:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_1003163ac;

loc_1003163ec:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1003163a4;

loc_10031640c:
    r21 = [[NSBundle mainBundle] resourcePath];
    if ([r20 hasPrefix:r2] == 0x0) goto loc_10031647c;

loc_100316444:
    r0 = r21;
    goto loc_100316460;

loc_100316460:
    r20 = [r20 substringFromIndex:[r0 length] + 0x1];
    goto loc_10031647c;

loc_10031647c:
    var_60 = **___stack_chk_guard;
    r0 = [r19 standarizePath:r20];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100316454:
    r0 = r25;
    goto loc_100316460;
}

-(bool)iPhoneRetinaDisplayFileExistsAtPath:(void *)arg2 {
    r0 = [self fileExistsAtPath:arg2 withSuffix:[*(self + 0x38) objectForKey:*0x1011ac178]];
    return r0;
}

-(bool)iPadFileExistsAtPath:(void *)arg2 {
    r0 = [self fileExistsAtPath:arg2 withSuffix:[*(self + 0x38) objectForKey:*0x1011ac160]];
    return r0;
}

-(bool)iPadRetinaDisplayFileExistsAtPath:(void *)arg2 {
    r0 = [self fileExistsAtPath:arg2 withSuffix:[*(self + 0x38) objectForKey:*0x1011ac168]];
    return r0;
}

-(void *)fileManager {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setFileManager:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)bundle {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setBundle:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)isEnablediPhoneResourcesOniPad {
    r0 = *(int8_t *)(self + 0x5c);
    return r0;
}

-(void *)searchResolutionsOrder {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void)setSearchResolutionsOrder:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)suffixesDict {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setSuffixesDict:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)directoriesDict {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setDirectoriesDict:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(int)searchMode {
    r0 = *(int32_t *)(self + 0x58);
    return r0;
}

-(void)setSearchMode:(int)arg2 {
    *(int32_t *)(self + 0x58) = arg2;
    return;
}

-(void *)searchPath {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setSearchPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)filenameLookup {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void)setFilenameLookup:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void *)fullPathFromRelativePath:(void *)arg2 {
    r0 = [self sharedFileUtils];
    r0 = [r0 fullPathFromRelativePath:arg2];
    return r0;
}

+(void *)fullPathFromRelativePath:(void *)arg2 resolutionType:(int *)arg3 {
    r0 = [self sharedFileUtils];
    r0 = [r0 fullPathFromRelativePath:arg2 resolutionType:arg3];
    return r0;
}

+(void *)removeSuffixFromFile:(void *)arg2 {
    r0 = [self sharedFileUtils];
    r0 = [r0 removeSuffixFromFile:arg2];
    return r0;
}

+(void)setRetinaDisplaySuffix:(void *)arg2 {
    [[self sharedFileUtils] setiPhoneRetinaDisplaySuffix:arg2];
    return;
}

+(bool)iPhoneRetinaDisplayFileExistsAtPath:(void *)arg2 {
    r0 = [self sharedFileUtils];
    r0 = [r0 iPhoneRetinaDisplayFileExistsAtPath:arg2];
    return r0;
}

+(bool)iPadFileExistsAtPath:(void *)arg2 {
    r0 = [self sharedFileUtils];
    r0 = [r0 iPadFileExistsAtPath:arg2];
    return r0;
}

+(bool)iPadRetinaDisplayFileExistsAtPath:(void *)arg2 {
    r0 = [self sharedFileUtils];
    r0 = [r0 iPadRetinaDisplayFileExistsAtPath:arg2];
    return r0;
}

@end