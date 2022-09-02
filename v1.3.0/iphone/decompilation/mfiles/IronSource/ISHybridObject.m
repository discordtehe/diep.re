@implementation ISHybridObject

-(void *)initWithView:(void *)arg2 viewRatio:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_view, r19);
            r20->_viewRatio = d8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_view, arg2);
    return;
}

-(double)viewRatio {
    r0 = self;
    return r0;
}

-(void)setViewRatio:(double)arg2 {
    self->_viewRatio = d0;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_view);
    return;
}

@end