@implementation MCMenuInputCallback

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    [[&var_30 super] ccTouchMoved:r2 withEvent:r3];
    r0 = self->_callback;
    if (r0 != 0x0) {
            [r0 ccTouchMoved:r20 withEvent:r19];
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r22 = self;
    r0 = [[&var_40 super] ccTouchBegan:r2 withEvent:r3];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = r22->_callback;
            if (r0 != 0x0) {
                    [r0 ccTouchBegan:r2 withEvent:r3];
            }
    }
    r0 = r23;
    return r0;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    [[&var_30 super] ccTouchEnded:r2 withEvent:r3];
    r0 = self->_callback;
    if (r0 != 0x0) {
            [r0 ccTouchEnded:r20 withEvent:r19];
    }
    return;
}

-(void *)callback {
    r0 = self->_callback;
    return r0;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    [[&var_30 super] ccTouchCancelled:r2 withEvent:r3];
    r0 = self->_callback;
    if (r0 != 0x0) {
            [r0 ccTouchCancelled:r20 withEvent:r19];
    }
    return;
}

-(void)setCallback:(void *)arg2 {
    self->_callback = arg2;
    return;
}

@end