@implementation FBAdTouchGestureRecognizer

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setCancelsTouchesInView:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(gestureRecognizer:beganWithTouches:andEvent:), r3, r4] != 0x0) {
            [r22 gestureRecognizer:r21 beganWithTouches:r19 andEvent:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(gestureRecognizer:movedWithTouches:andEvent:), r3, r4] != 0x0) {
            [r22 gestureRecognizer:r21 movedWithTouches:r19 andEvent:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(gestureRecognizer:endedWithTouches:andEvent:), r3, r4] != 0x0) {
            [r22 gestureRecognizer:r21 endedWithTouches:r19 andEvent:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(gestureRecognizer:cancelledWithTouches:andEvent:), r3, r4] != 0x0) {
            [r22 gestureRecognizer:r21 cancelledWithTouches:r19 andEvent:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

@end