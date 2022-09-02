@implementation VNGMoatHitTestResult

-(void *)initWithVis:(bool)arg2 withHitLayer:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setIsVisible:r20];
            [r21 setHitLayer:r19];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)isVisible {
    r0 = *(int8_t *)(int64_t *)&self->_isVisible & 0x1;
    return r0;
}

-(void)setIsVisible:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isVisible = arg2;
    return;
}

-(void *)hitLayer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_hitLayer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHitLayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_hitLayer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_hitLayer);
    return;
}

@end