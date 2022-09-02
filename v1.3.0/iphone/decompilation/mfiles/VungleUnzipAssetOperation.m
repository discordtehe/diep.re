@implementation VungleUnzipAssetOperation

-(void *)initWithAsset:(void *)arg2 targetDirectory:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithAsset:r21 targetDirectory:arg3 resultBlock:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithAsset:(void *)arg2 targetDirectory:(void *)arg3 resultBlock:(void *)arg4 {
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [[arg2 expectedLocalCacheURL] retain];
    [r23 release];
    r22 = [self initWithZipFileURL:r21 targetDirectoryURL:r20 resultBlock:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)initWithZipFileURL:(void *)arg2 targetDirectoryURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithZipFileURL:r21 targetDirectoryURL:arg3 resultBlock:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithZipFileURL:(void *)arg2 targetDirectoryURL:(void *)arg3 resultBlock:(void *)arg4 {
    r31 = r31 - 0x50;
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
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r23 = @selector(init);
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zippedAssetURL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_outputURL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resultBlock));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_unzipper));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)execute {
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
    r19 = self;
    r20 = [[self unzipper] retain];
    r0 = [r19 zippedAssetURL];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [[r0 path] retain];
    r0 = [r19 outputURL];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r23 = [r20 decompressZipWithPath:r24 outputDirectory:r26 error:&var_48];
    r21 = [var_48 retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    if (r21 != 0x0 && r23 == 0x0) {
            [r19 appendError:r21];
    }
    r0 = [r19 resultBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 resultBlock];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 finish];
    [r21 release];
    return;
}

-(void *)zippedAssetURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_zippedAssetURL)), 0x0);
    return r0;
}

-(void)setZippedAssetURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)outputURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_outputURL)), 0x0);
    return r0;
}

-(void *)unzipper {
    r0 = self->_unzipper;
    return r0;
}

-(void)setOutputURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setUnzipper:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_unzipper, arg2);
    return;
}

-(void *)resultBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resultBlock)), 0x0);
    return r0;
}

-(void)setResultBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resultBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_unzipper, 0x0);
    objc_storeStrong((int64_t *)&self->_outputURL, 0x0);
    objc_storeStrong((int64_t *)&self->_zippedAssetURL, 0x0);
    return;
}

@end