@implementation MPUserInteractionGestureRecognizer

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    [[&var_30 super] touchesBegan:r21 withEvent:arg3];
    [r21 release];
    if ([r19 state] == 0x0) {
            [r19 setState:0x3];
    }
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesMoved:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    return;
}

@end