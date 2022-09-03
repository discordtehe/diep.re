@implementation MenuForceUpgrade

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_20 super] setupWithStateId:arg2 parameters:arg3];
    [self setupSmallLayout:@"You must update the app to be able to play Diep.io" title:@"Update needed" actionLabel:@"Update now!"];
    [self->_view disableCloseButton];
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onEnterWithPreviousState:r2 fromStack:r3];
    }
    return r0;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onLeaveWithNewState:r2 toStack:r3];
    }
    return r0;
}

-(bool)occupiesFullScreen {
    return 0x0;
}

-(void)actionButtonCallback {
    r19 = [UIApplication sharedApplication];
    [NSURL URLWithString:*0x1011a82e8];
    [r19 openURL:r2];
    return;
}

@end