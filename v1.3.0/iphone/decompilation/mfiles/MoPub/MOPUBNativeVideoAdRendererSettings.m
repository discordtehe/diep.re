@implementation MOPUBNativeVideoAdRendererSettings

-(void *)renderingViewClass {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setRenderingViewClass:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)viewSizeHandler {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setViewSizeHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end