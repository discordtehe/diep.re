@implementation MenuLoadingView

-(void)setupLayoutWithMessage:(void *)arg2 {
    [self->_localBackgroundFrame setVisible:0x0];
    [self->_fadeNode setVisible:0x0];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_loadingWidget));
    r21 = *(self + r24);
    [[CCDirector sharedDirector] winSize];
    [[CCDirector sharedDirector] winSize];
    [r21 setPosition:0x0];
    [*(self + r24) setLoadingDescription:arg2];
    [self setupBackgroundOpacity];
    [self->_descriptionLabel setString:r2];
    return;
}

-(void)setupFramedLayoutWithMessage:(void *)arg2 {
    [self->_loadingWidget setLoadingDescription:r2];
    [self setupBackgroundOpacity];
    [self->_descriptionLabel setString:r2];
    return;
}

-(void)setupBackgroundOpacity {
    r19 = self;
    [[CCDirector sharedDirector] winSize];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_background));
    [*(r19 + r20) contentSize];
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s0, d0 };
    [*(r19 + r20) setScaleX:r2];
    asm { fdiv       d0, d9, d10 };
    asm { fcvt       s0, d0 };
    [*(r19 + r20) setScaleY:r2];
    [*(r19 + r20) setOpacity:r2];
    return;
}

@end