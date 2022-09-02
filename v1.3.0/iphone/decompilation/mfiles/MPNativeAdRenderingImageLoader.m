@implementation MPNativeAdRenderingImageLoader

-(void)setImageHandler:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)imageHandler {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)initWithImageHandler:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x8, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)loadImageForURL:(void *)arg2 intoImageView:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self imageHandler];
    r0 = [r0 retain];
    [r0 loadImageForURL:r21 intoImageView:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end