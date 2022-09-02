@implementation GADOMIDProcessorFactory

-(void *)rootProcessor {
    r0 = self->_screenProcessor;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_windowProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_screenProcessor, 0x0);
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r0 = [GADOMIDViewProcessor new];
            r9 = var_8->_viewProcessor;
            var_8->_viewProcessor = r0;
            [r9 release];
            [var_8->_viewProcessor setProcessorForChildren:var_8->_viewProcessor];
            r0 = [GADOMIDWindowProcessor new];
            r9 = var_8->_windowProcessor;
            var_8->_windowProcessor = r0;
            [r9 release];
            [var_8->_windowProcessor setProcessorForChildren:var_8->_viewProcessor];
            r0 = [GADOMIDScreenProcessor new];
            r9 = var_8->_screenProcessor;
            var_8->_screenProcessor = r0;
            [r9 release];
            [var_8->_screenProcessor setProcessorForChildren:var_8->_windowProcessor];
    }
    var_30 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_30;
    return r0;
}

@end