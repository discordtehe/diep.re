@implementation MCTouchMove

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(struct CGPoint)touchPoint {
    r0 = self;
    return r0;
}

-(void *)initWithTouch:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 locationInView:[r19 view]];
            *(r20 + 0x8) = d0;
            *(r20 + 0x10) = d1;
            [r19 previousLocationInView:[r19 view]];
            *(r20 + 0x18) = d0;
            *(r20 + 0x20) = d1;
            *(r20 + 0x28) = 0x0;
    }
    r0 = r20;
    return r0;
}

-(struct CGPoint)previousTouchPoint {
    r0 = self;
    return r0;
}

-(double)timeStamp {
    r0 = self;
    return r0;
}

-(void)setTimeStamp:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

@end