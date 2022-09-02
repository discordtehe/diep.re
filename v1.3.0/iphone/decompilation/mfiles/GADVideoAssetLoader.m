@implementation GADVideoAssetLoader

+(void)initialize {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([GADVideoAssetLoader class] == self) {
            r0 = sub_1008bf68c(@"VideoAsset", &var_38);
            r29 = r29;
            r19 = [r0 retain];
            r20 = [var_38 retain];
            if (r20 != 0x0) {
                    sub_1007ce06c(0x0, @"%@");
                    r21 = r20;
            }
            else {
                    r0 = [NSFileManager defaultManager];
                    r0 = [r0 retain];
                    r23 = [r0 removeItemAtURL:r19 error:&var_40];
                    r21 = [var_40 retain];
                    [r20 release];
                    [r0 release];
                    if ((r23 & 0x1) == 0x0) {
                            sub_1007ce06c(0x0, @"Fail to cleanup precache cache directory. %@");
                    }
            }
            [r19 release];
            [r21 release];
    }
    return;
}

-(void *)initWithVideoURL:(void *)arg2 resourceBuffer:(void *)arg3 videoConfiguration:(void *)arg4 {
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
    r29 = &saved_fp;
    r21 = arg4;
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [r23 retain];
    r22 = [r21 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            if (sub_10089a100(r19, *0x100e9f2e8) != 0x0) {
                    r25 = [sub_1008c1414() retain];
                    [r19 release];
                    r19 = r25;
            }
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sourceURL));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r24->_mainResourceBuffer, r23);
            objc_storeStrong((int64_t *)&r24->_videoConfiguration, r21);
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)finishedUsingResourceBuffer:(void *)arg2 {
    r2 = arg2;
    if (self->_mainResourceBuffer != r2) {
            [r2 cancelWithError:0x0];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resourceBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_mainResourceBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceURL, 0x0);
    return;
}

-(bool)getResourceBuffer:(void * *)arg2 startingByteOffset:(long long *)arg3 loadingByteOffset:(long long)arg4 error:(void * *)arg5 {
    r31 = r31 - 0xc0;
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
    r25 = arg5;
    r22 = arg4;
    r28 = arg3;
    r27 = arg2;
    r21 = self;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_mainResourceBuffer));
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    [*(r21 + r20) videoAssetLoaderMaxDownloadWaitTimeInterval];
    if (sub_100884d5c(r24, 0x0, r22) != 0x0) {
            *r27 = objc_retainAutorelease(*(r21 + r19));
            *r28 = 0x0;
            r24 = 0x1;
    }
    else {
            var_70 = r25;
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBufferStartingByteOffset));
            [*(r21 + r20) videoAssetLoaderMaxDownloadWaitTimeInterval];
            if (sub_100884d5c(r24, r26, r22) != 0x0) {
                    *r27 = objc_retainAutorelease(*(r21 + r19));
                    *r28 = *(r21 + r25);
                    r24 = 0x1;
            }
            else {
                    var_78 = r25;
                    var_90 = r27;
                    r25 = [[NSMutableURLRequest alloc] initWithURL:r21->_sourceURL];
                    var_88 = [[NSString alloc] initWithFormat:@"bytes=%lld-"];
                    r27 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    var_80 = r25;
                    [r25 setAllHTTPHeaderFields:r27];
                    [r27 release];
                    r25 = var_70;
                    r0 = sub_1008bf68c(@"VideoAsset", r25);
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            var_98 = r28;
                            do {
                                    asm { ldxr       x28, [x8] };
                                    asm { stxr       w10, x9, [x8] };
                            } while (r10 != 0x0);
                            r0 = [NSString alloc];
                            r0 = [r0 initWithFormat:@"video_asset_%ld.cache"];
                            var_A0 = r0;
                            r0 = [r27 URLByAppendingPathComponent:r0 isDirectory:0x0];
                            r29 = r29;
                            r24 = [r0 retain];
                            r0 = [NSData alloc];
                            r0 = [r0 init];
                            r28 = [r0 writeToURL:r24 atomically:0x1];
                            [r0 release];
                            if (r28 != 0x0) {
                                    r25 = [r24 retain];
                            }
                            else {
                                    if (r25 != 0x0) {
                                            r23 = [[r24 absoluteString] retain];
                                            *r25 = [[sub_1008098f8(0xb, r23) retain] autorelease];
                                            [r23 release];
                                            r25 = 0x0;
                                    }
                            }
                            r28 = var_98;
                            [r24 release];
                            [var_A0 release];
                    }
                    else {
                            r25 = 0x0;
                    }
                    r23 = var_78;
                    [r27 release];
                    if (r25 != 0x0) {
                            r0 = [GADResourceBuffer alloc];
                            r24 = 0x1;
                            r26 = var_80;
                            r0 = [r0 initWithRequest:r26 fileURL:r25 removeFileOnDealloc:0x1];
                            r8 = *(r21 + r19);
                            *(r21 + r19) = r0;
                            [r8 release];
                            *(r21 + r23) = r22;
                            [*(r21 + r19) setMaxBytes:[*(r21 + r20) videoAssetLoaderMaxContentSizeInBytes]];
                            [*(r21 + r19) start];
                            *var_90 = objc_retainAutorelease(*(r21 + r19));
                            *r28 = *(r21 + r23);
                    }
                    else {
                            r24 = 0x0;
                            r26 = var_80;
                    }
                    [r25 release];
                    [var_88 release];
                    [r26 release];
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end