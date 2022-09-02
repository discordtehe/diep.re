@implementation MPImageDownloadQueue

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            [*(r19 + 0x10) setMaxConcurrentOperationCount:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)addDownloadImageURLs:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self addDownloadImageURLs:r21 completionBlock:arg3 useCachedImage:0x1];
    [r21 release];
    return;
}

-(void)dealloc {
    [*(self + 0x10) cancelAllOperations];
    [[&var_20 super] dealloc];
    return;
}

-(void)addDownloadImageURLs:(void *)arg2 completionBlock:(void *)arg3 useCachedImage:(bool)arg4 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x1a0;
    r22 = arg4;
    r20 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    *(int128_t *)(&var_170 + 0x10) = q0;
    *(int128_t *)(&var_170 + 0x20) = q0;
    *(int128_t *)(&var_170 + 0x30) = q0;
    r0 = [r23 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F8 = r1;
    var_1F0 = r0;
    r0 = objc_msgSend(r0, r1);
    r24 = r0;
    var_200 = r19;
    if (r0 != 0x0) {
            r28 = *var_160;
            r21 = &var_128;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_160 != r28) {
                                    objc_enumerationMutation(var_1F0);
                            }
                            r0 = [r20 imageDownloadQueue];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addOperationWithBlock:r2];
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r0 = objc_msgSend(var_1F0, var_1F8);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_78 = **___stack_chk_guard;
    [var_1F0 release];
    r22 = [[r20 imageDownloadQueue] retain];
    r0 = [var_200 retain];
    [r22 addOperationWithBlock:&var_1E8];
    [r22 release];
    [r0 release];
    _Block_object_dispose(&var_128, 0x8);
    [0x0 release];
    [r20 release];
    [var_1F0 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void)cancelAllDownloads {
    [self setIsCanceled:0x1];
    r0 = [self imageDownloadQueue];
    r0 = [r0 retain];
    [r0 cancelAllOperations];
    [r0 release];
    return;
}

-(void)setImageDownloadQueue:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)isCanceled {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void *)imageDownloadQueue {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void)setIsCanceled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end