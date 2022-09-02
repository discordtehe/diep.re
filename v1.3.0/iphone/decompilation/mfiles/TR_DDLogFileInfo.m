@implementation TR_DDLogFileInfo

+(void *)logFileWithPath:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithFilePath:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithFilePath:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(filePath));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)fileName {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = r19->filePath;
            r0 = [r0 lastPathComponent];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)fileAttributes {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fileAttributes));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 attributesOfItemAtPath:r19->filePath error:0x0];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)modificationDate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_modificationDate));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 fileAttributes];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:**_NSFileModificationDate];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)creationDate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_creationDate));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 fileAttributes];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:**_NSFileCreationDate];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(unsigned long long)fileSize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fileSize));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r0 = [r19 fileAttributes];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:**_NSFileSize];
            r0 = [r0 retain];
            *(r19 + r22) = [r0 unsignedLongLongValue];
            [r0 release];
            [r20 release];
            r0 = *(r19 + r22);
    }
    return r0;
}

-(double)age {
    r0 = [self creationDate];
    r0 = [r0 retain];
    [r0 timeIntervalSinceNow];
    r0 = [r0 release];
    return r0;
}

-(bool)isArchived {
    r0 = [self hasExtendedAttributeWithName:@"lumberjack.log.archived"];
    return r0;
}

-(void *)description {
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
    r23 = self;
    r8 = &@selector(_initOpenAL);
    r0 = objc_msgSend(self, *(r8 + 0xc8));
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r19;
            }
            else {
                    r8 = @"";
            }
    }
    r8 = &@selector(expectedBundleID);
    r0 = objc_msgSend(r23, *(r8 + 0x8b0));
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r20;
            }
            else {
                    r8 = @"";
            }
    }
    r8 = &@selector(wkWebView);
    r0 = objc_msgSend(r23, *(r8 + 0x1c0));
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r21;
            }
            else {
                    r8 = @"";
            }
    }
    r8 = &@selector(_initOpenAL);
    r0 = objc_msgSend(r23, *(r8 + 0xe10));
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r22;
            }
            else {
                    r8 = @"";
            }
    }
    r8 = &@selector(_initOpenAL);
    r0 = objc_msgSend(r23, *(r8 + 0xe88));
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r24;
            }
            else {
                    r8 = @"";
            }
    }
    var_58 = **___stack_chk_guard;
    r25 = @class(NSNumber);
    r2 = [r23 fileSize];
    r25 = [[r25 numberWithUnsignedLongLong:r2] retain];
    r26 = @class(NSNumber);
    [r23 age];
    r26 = [[r26 numberWithDouble:r2] retain];
    r27 = @class(NSNumber);
    r27 = [[r27 numberWithBool:[r23 isArchived]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_D8 count:0x8];
    r0 = [r0 retain];
    r23 = [[r0 description] retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setIsArchived:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 addExtendedAttributeWithName:@"lumberjack.log.archived"];
    }
    else {
            [r0 removeExtendedAttributeWithName:@"lumberjack.log.archived"];
    }
    return;
}

-(void)reset {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fileAttributes));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_creationDate));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_modificationDate));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)renameFile:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 fileName];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r23 = [r19 isEqualToString:r2];
    [r21 release];
    if ((r23 & 0x1) == 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(filePath));
            r0 = *(r20 + r21);
            r0 = [r0 stringByDeletingLastPathComponent];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 stringByAppendingPathComponent:r19] retain];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 fileExistsAtPath:r23];
            var_68 = r25;
            if ((r0 & 0x1) != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r2 = r23;
                    r28 = [r0 removeItemAtPath:r2 error:&var_58];
                    r25 = [var_58 retain];
                    [r0 release];
                    [r26 release];
                    if ((r28 & 0x1) == 0x0) {
                            r0 = [r20 fileName];
                            r29 = r29;
                            [r0 retain];
                            NSLog(@"DDLogFileInfo: Error deleting archive (%@): %@", @selector(fileName), r2);
                            [r26 release];
                    }
            }
            else {
                    [r26 release];
                    r25 = 0x0;
            }
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r2 = *(r20 + r21);
            r27 = [r0 moveItemAtPath:r2 toPath:r23 error:&var_60];
            r24 = [var_60 retain];
            [r25 release];
            [r0 release];
            if ((r27 & 0x1) == 0x0) {
                    [[r20 fileName] retain];
                    NSLog(@"DDLogFileInfo: Error renaming file (%@): %@", @selector(fileName), r2);
                    [r22 release];
            }
            r22 = *(r20 + r21);
            *(r20 + r21) = r23;
            r23 = [r23 retain];
            [r22 release];
            [r20 reset];
            [r24 release];
            [r23 release];
            [var_68 release];
    }
    [r19 release];
    return;
}

-(bool)hasExtendedAttributeWithName:(void *)arg2 {
    r20 = self->filePath;
    r22 = [arg2 retain];
    r20 = [r20 UTF8String];
    r19 = [objc_retainAutorelease(arg2) UTF8String];
    [r22 release];
    r0 = getxattr(r20, r19, 0x0, 0x0, 0x0, 0x0);
    r0 = r0 >> 0x3f ^ 0x1;
    return r0;
}

-(void)removeExtendedAttributeWithName:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->filePath;
    r21 = @selector(UTF8String);
    r22 = objc_msgSend(r0, r21);
    r0 = objc_retainAutorelease(r19);
    r19 = r0;
    if ((removexattr(r22, objc_msgSend(r0, r21), 0x0) & 0xffffffff80000000) != 0x0 && *(int32_t *)__error() != 0x5d) {
            [[r20 fileName] retain];
            r0 = __error();
            r0 = *(int32_t *)r0;
            strerror(r0);
            NSLog(@"DDLogFileInfo: removexattr(%@, %@): error = %s", @selector(fileName), 0x0, r3);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)addExtendedAttributeWithName:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(filePath));
    r0 = *(r20 + r23);
    r21 = @selector(UTF8String);
    r22 = objc_msgSend(r0, r21);
    r0 = objc_retainAutorelease(r19);
    r19 = r0;
    r1 = objc_msgSend(r0, r21);
    if ((setxattr(r22, r1, 0x0, 0x0, 0x0, 0x0) & 0xffffffff80000000) != 0x0) {
            r0 = __error();
            r0 = *(int32_t *)r0;
            strerror(r0);
            NSLog(@"DDLogFileInfo: setxattr(%@, %@): error = %s", r1, 0x0, 0x0);
    }
    [r19 release];
    return;
}

-(bool)isEqual:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [r20 class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = r20->filePath;
            r21 = [[r19 filePath] retain];
            r20 = [r20 isEqualToString:r2];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)reverseCompareByCreationDate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r20 = [[self creationDate] retain];
    r19 = [[arg2 creationDate] retain];
    [r22 release];
    r0 = [r20 compare:r19];
    if (r0 == 0x1) {
            asm { csetm      x8, eq };
    }
    if (r0 != -0x1) {
            asm { csinc      x21, x8, xzr, ne };
    }
    [r19 release];
    [r20 release];
    return @selector(creationDate);
}

-(void *)filePath {
    r0 = self->filePath;
    return r0;
}

-(long long)reverseCompareByModificationDate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r20 = [[self modificationDate] retain];
    r19 = [[arg2 modificationDate] retain];
    [r22 release];
    r0 = [r20 compare:r19];
    if (r0 == 0x1) {
            asm { csetm      x8, eq };
    }
    if (r0 != -0x1) {
            asm { csinc      x21, x8, xzr, ne };
    }
    [r19 release];
    [r20 release];
    return @selector(modificationDate);
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->filePath, 0x0);
    objc_storeStrong((int64_t *)&self->_modificationDate, 0x0);
    objc_storeStrong((int64_t *)&self->_creationDate, 0x0);
    objc_storeStrong((int64_t *)&self->_fileAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    objc_storeStrong((int64_t *)&self->_filePath, 0x0);
    return;
}

@end