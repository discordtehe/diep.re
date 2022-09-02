@implementation IROMoatRenderState

-(long long)renderState {
    r0 = self->_renderState;
    return r0;
}

-(void)setRenderState:(long long)arg2 {
    self->_renderState = arg2;
    return;
}

-(float)opacity {
    r0 = self;
    return r0;
}

-(void)setOpacity:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_opacity = s0;
    return;
}

@end