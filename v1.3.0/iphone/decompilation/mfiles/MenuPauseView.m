@implementation MenuPauseView

-(void)setupDisabledLayout {
    [self->_yesButton setDisabledColor:0xff7f7f7f];
    [self->_noButton setDisabledColor:0xff7f7f7f];
    return;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_yesButton setIsEnabled:0x0];
    [self->_noButton setIsEnabled:0x0];
    return;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->_yesButton setIsEnabled:0x1];
    [self->_noButton setIsEnabled:0x1];
    return;
}

@end