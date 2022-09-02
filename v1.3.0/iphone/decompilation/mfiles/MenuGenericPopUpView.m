@implementation MenuGenericPopUpView

-(void)setupLargeLayout:(void *)arg2 title:(void *)arg3 {
    [self->_innerFrameText setString:arg2];
    [self->_title setString:arg3];
    return;
}

-(void)setupSmallLayout:(void *)arg2 title:(void *)arg3 yesLabel:(void *)arg4 noLabel:(void *)arg5 {
    [self->_innerFrameText setString:arg2];
    [self->_title setString:arg3];
    [self->_yesLabel setString:arg4];
    [self->_noLabel setString:arg5];
    return;
}

-(void)setupSmallLayout:(void *)arg2 title:(void *)arg3 actionLabel:(void *)arg4 {
    [self->_innerFrameText setString:arg2];
    [self->_title setString:arg3];
    [self->_actionLabel setString:arg4];
    return;
}

-(void)setupSmallLayout:(void *)arg2 {
    [self->_innerFrameText setString:r2];
    return;
}

-(void)disableCloseButton {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
    [*(self + r20) setVisible:0x0];
    [*(self + r20) setIsEnabled:r2];
    return;
}

-(struct CGSize)innerSize {
    r0 = self->_innerFrameNode;
    r0 = [r0 contentSize];
    return r0;
}

@end