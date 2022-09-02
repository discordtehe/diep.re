@implementation ANSCleanupFilesOperation

-(void *)initWithDirectoryURL:(void *)arg2 maximumPendingMulitpartFiles:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_directoryUrl, r21);
            r22->_maximumPendingMultipartFiles = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)successBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_successBlock)), 0x0);
    return r0;
}

-(void *)URLsByRemovingOldFiles:(void *)arg2 withMaximumFileCount:(long long)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] >= r20) {
            r22 = @selector(count);
            var_120 = r19;
            r0 = [r19 sortedArrayUsingComparator:0x100e6bed0];
            r0 = [r0 retain];
            objc_msgSend(r0, r22) - r20;
            stack[-320] = r0;
            var_128 = r20;
            r0 = [r0 subarrayWithRange:r20];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r25 != 0x0) {
                    do {
                            r19 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r0 = [NSFileManager defaultManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 removeItemAtURL:r2 error:r3];
                                    [r22 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r25);
                            r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r25 != 0x0);
            }
            r20 = [[stack[-320] subarrayWithRange:r2] retain];
            [r23 release];
            [stack[-320] release];
            r19 = var_120;
    }
    else {
            r20 = [r19 retain];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setSuccessBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)maximumPendingMultipartFiles {
    r0 = self->_maximumPendingMultipartFiles;
    return r0;
}

-(void *)directoryUrl {
    r0 = self->_directoryUrl;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_directoryUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_successBlock, 0x0);
    return;
}

-(void)main {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    r25 = [[NSMutableDictionary dictionary] retain];
    var_200 = [[NSMutableDictionary dictionary] retain];
    var_238 = [[NSMutableDictionary dictionary] retain];
    var_248 = self;
    r20 = [[self directoryUrl] retain];
    r0 = [ANSFileUtils allFilesInDirectory:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    var_188 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r0;
    var_240 = r1;
    r26 = objc_msgSend(r0, r1);
    var_230 = r25;
    if (r26 == 0x0) goto loc_100128b60;

loc_100128990:
    var_1E8 = *var_188;
    goto loc_1001289cc;

loc_1001289cc:
    r23 = 0x0;
    goto loc_100128a54;

loc_100128a54:
    if (*var_188 != var_1E8) {
            objc_enumerationMutation(var_208);
    }
    r27 = *(var_190 + r23 * 0x8);
    r0 = [r27 lastPathComponent];
    r0 = [r0 retain];
    r28 = [[r0 stringByDeletingPathExtension] retain];
    [r0 release];
    r0 = [r27 pathExtension];
    r29 = r29;
    r20 = [r0 retain];
    if ([*0x100e6c410 isEqualToString:r20] == 0x0) goto loc_100128ae0;

loc_100128ad8:
    r0 = r25;
    goto loc_100128b14;

loc_100128b14:
    [r0 setObject:r2 forKey:r3];
    goto loc_100128b24;

loc_100128b24:
    [r20 release];
    [r28 release];
    r23 = r23 + 0x1;
    if (r23 < r26) goto loc_100128a54;

loc_100128b40:
    r26 = objc_msgSend(var_208, var_240);
    if (r26 != 0x0) goto loc_1001289cc;

loc_100128b60:
    [var_208 release];
    var_1C8 = q0;
    r0 = [r25 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    var_1F8 = r0;
    r19 = objc_msgSend(r0, var_240);
    r21 = var_200;
    if (r19 != 0x0) {
            r24 = *var_1C8;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_1C8 != r24) {
                                    objc_enumerationMutation(var_1F8);
                            }
                            r22 = *(var_1D0 + r26 * 0x8);
                            r0 = [r21 objectForKey:r22];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r20 != 0x0) {
                                    r0 = [NSFileManager defaultManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = [r0 removeItemAtURL:r20 error:&var_1E0];
                                    r28 = [var_1E0 retain];
                                    [r0 release];
                                    if ((r25 & 0x1) == 0x0) {
                                            r0 = [ANSLogger sharedLogger];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 logWithLabel:r2 format:r3];
                                            [r21 release];
                                    }
                                    r21 = var_200;
                                    [r21 removeObjectForKey:r22];
                                    [r28 release];
                            }
                            [r20 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r19);
                    r19 = objc_msgSend(var_1F8, var_240);
            } while (r19 != 0x0);
    }
    [var_1F8 release];
    r0 = [var_238 allValues];
    r0 = [r0 retain];
    r24 = r21;
    r26 = var_248;
    r19 = [[r26 URLsByRemovingOldFiles:r0 withMaximumFileCount:[r26 maximumPendingMultipartFiles]] retain];
    [r0 release];
    r21 = @class(NSSet);
    r22 = [[var_230 allValues] retain];
    r21 = [[r21 setWithArray:r22] retain];
    [r22 release];
    r22 = @class(NSSet);
    r24 = [[r24 allValues] retain];
    r20 = [[r22 setWithArray:r24] retain];
    [r24 release];
    r22 = [[NSSet setWithArray:r19] retain];
    r0 = [r26 successBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r26 successBlock] retain] + 0x10))();
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r21 release];
    [r19 release];
    [var_208 release];
    [var_238 release];
    [var_200 release];
    [var_230 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100128ae0:
    if ([*0x100e6c418 isEqualToString:r20] == 0x0) goto loc_100128afc;

loc_100128af4:
    r0 = var_200;
    goto loc_100128b14;

loc_100128afc:
    if ([*0x100e6c420 isEqualToString:r20] == 0x0) goto loc_100128a18;

loc_100128b10:
    r0 = var_238;
    goto loc_100128b14;

loc_100128a18:
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    [r0 removeItemAtURL:r2 error:r3];
    r0 = r25;
    r25 = var_230;
    [r0 release];
    goto loc_100128b24;
}

@end