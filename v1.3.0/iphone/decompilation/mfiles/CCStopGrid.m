@implementation CCStopGrid

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] startWithTarget:arg2];
    if ([[r19 target] grid] != 0x0 && [[[r19 target] grid] active] != 0x0) {
            [[[r19 target] grid] setActive:0x0];
    }
    return;
}

@end