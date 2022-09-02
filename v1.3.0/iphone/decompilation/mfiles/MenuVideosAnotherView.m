@implementation MenuVideosAnotherView

-(void)setupVideoAnotherLayout:(int)arg2 {
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_videoAnotherLabel));
    r22 = [*(self + r25) string];
    [NSNumber numberWithInt:arg2];
    r0 = @class(NSNumber);
    [r0 numberWithInt:arg2];
    [*(self + r25) setString:[NSString stringWithFormat:r22]];
    [self->_videoTutorialLabel setVisible:0x0];
    [self->_videoTutorialTitle setVisible:0x0];
    return;
}

-(void)setupVideoTutorialLayout:(int)arg2 {
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_videoTutorialLabel));
    r22 = [*(self + r25) string];
    [NSNumber numberWithInt:arg2];
    r0 = @class(NSNumber);
    [r0 numberWithInt:arg2];
    [*(self + r25) setString:[NSString stringWithFormat:r22]];
    [self->_videoAnotherLabel setVisible:0x0];
    [self->_videoAnotherTitle setVisible:0x0];
    return;
}

@end