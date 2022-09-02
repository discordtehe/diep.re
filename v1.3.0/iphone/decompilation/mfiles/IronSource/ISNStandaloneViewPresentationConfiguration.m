@implementation ISNStandaloneViewPresentationConfiguration

+(void *)defaultConfiguration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [ISNStandaloneViewPresentationConfiguration new];
    if (r19 != 0x0) {
            [r19 setFadeTime:r2];
            [r19 setAnimateIn:0x0];
            [r19 setAnimateOut:0x0];
            [r19 setCalcTopViewController:0x1];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(double)fadeTime {
    r0 = self;
    return r0;
}

-(void)setFadeTime:(double)arg2 {
    self->_fadeTime = d0;
    return;
}

-(bool)animateIn {
    r0 = *(int8_t *)(int64_t *)&self->_animateIn;
    return r0;
}

-(bool)animateOut {
    r0 = *(int8_t *)(int64_t *)&self->_animateOut;
    return r0;
}

-(void)setAnimateIn:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animateIn = arg2;
    return;
}

-(void)setAnimateOut:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animateOut = arg2;
    return;
}

-(void)setCalcTopViewController:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_calcTopViewController = arg2;
    return;
}

-(bool)calcTopViewController {
    r0 = *(int8_t *)(int64_t *)&self->_calcTopViewController;
    return r0;
}

@end