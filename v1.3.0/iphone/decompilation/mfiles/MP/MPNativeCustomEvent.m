@implementation MPNativeCustomEvent

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
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)precacheImagesWithURLs:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 count] != 0x0) {
            r21 = *(r21 + 0x18);
            var_28 = [r20 retain];
            [r21 addDownloadImageURLs:r19 completionBlock:&var_48];
            [var_28 release];
    }
    else {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 {
    return;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    r20 = [arg2 retain];
    [self requestAdWithCustomEventInfo:r20];
    [r20 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)imageDownloadQueue {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setImageDownloadQueue:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end