@implementation FBAdDSLDataLoader

-(void)createDownloadDirectory {
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 URLsForDirectory:0x9 inDomains:0x1];
    r0 = [r0 retain];
    r21 = [[r0 lastObject] retain];
    [r0 release];
    [r22 release];
    r0 = [r21 URLByAppendingPathComponent:@"FBAdDSLDataLoader"];
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_downloadsDirectoryURL));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtURL:*(self + r23) error:0x0];
    [r0 release];
    r0 = @class(NSFileManager);
    r0 = [r0 defaultManager];
    r0 = [r0 retain];
    [r0 createDirectoryAtURL:*(self + r23) withIntermediateDirectories:0x0 attributes:0x0 error:&var_38];
    [r0 release];
    [r21 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_downloadsDirectoryURL, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)loadAssetsInModel:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r25 = self;
    var_1B8 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r25->_delegate);
    [r0 release];
    if (r0 != 0x0) {
            var_1C0 = [NSLock new];
            var_F8 = [@(0x0) retain];
            [r25 createDownloadDirectory];
            var_150 = q0;
            r0 = [var_1B8 assets];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1D8 = r1;
            var_1D0 = r0;
            r0 = objc_msgSend(r0, r1);
            r20 = r0;
            if (r0 != 0x0) {
                    var_1C8 = *var_150;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*var_150 != var_1C8) {
                                            objc_enumerationMutation(var_1D0);
                                    }
                                    r22 = *(var_158 + r24 * 0x8);
                                    r23 = [[r25 delegate] retain];
                                    r0 = [r22 remoteURL];
                                    r29 = r29;
                                    [r0 retain];
                                    [r22 type];
                                    var_188 = [var_1B8 retain];
                                    [r23 assetForURL:r2 withType:r3 withBlock:r4];
                                    [r19 release];
                                    [r23 release];
                                    [var_188 release];
                                    r24 = r24 + 0x1;
                            } while (r24 < r20);
                            r0 = objc_msgSend(var_1D0, var_1D8);
                            r20 = r0;
                    } while (r0 != 0x0);
            }
            [var_1D0 release];
            _Block_object_dispose(&var_120, 0x8);
            [var_F8 release];
            [var_1C0 release];
    }
    var_70 = **___stack_chk_guard;
    [var_1B8 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)downloadsDirectoryURL {
    r0 = self->_downloadsDirectoryURL;
    return r0;
}

-(void)setDownloadsDirectoryURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_downloadsDirectoryURL, arg2);
    return;
}

@end