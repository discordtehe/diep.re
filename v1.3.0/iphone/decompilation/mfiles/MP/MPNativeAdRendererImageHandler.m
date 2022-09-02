@implementation MPNativeAdRendererImageHandler

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
    }
    r0 = r19;
    return r0;
}

-(void)loadImageForURL:(void *)arg2 intoImageView:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    [r0 setImage:0x0];
    r22 = [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
    [r21 retain];
    [r0 retain];
    dispatch_async(r22, &var_58);
    [r22 release];
    [r0 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)safeMainQueueSetImage:(void *)arg2 intoImageView:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)imageDownloadQueue {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setImageDownloadQueue:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end