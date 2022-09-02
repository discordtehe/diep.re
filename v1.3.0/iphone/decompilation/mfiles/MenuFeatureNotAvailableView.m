@implementation MenuFeatureNotAvailableView

-(void)setupLayout {
    [self setupNormal];
    return;
}

-(void)setupForGPlus {
    [self->_gPlusButton setVisible:0x1];
    [self->_fbWithGPlusButton setVisible:0x1];
    [self->_fbSoloButton setVisible:0x0];
    [self->_iosTitle setVisible:0x0];
    [self->_androidTitle setVisible:0x1];
    return;
}

-(void)setupNormal {
    [self->_gPlusButton setVisible:0x0];
    [self->_fbWithGPlusButton setVisible:0x0];
    [self->_fbSoloButton setVisible:0x1];
    [self->_iosTitle setVisible:0x1];
    [self->_androidTitle setVisible:0x0];
    return;
}

-(void)setupLayoutWithFacebookButtonOnly {
    [self setupNormal];
    return;
}

@end