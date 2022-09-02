@implementation VNGMoatTouchGestureRecognizer

-(void)reset {
    [[&var_10 super] reset];
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesBegan:r21 withEvent:arg3];
    [r21 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesMoved:r21 withEvent:arg3];
    [r21 release];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x3];
    return;
}

@end