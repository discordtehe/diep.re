@implementation GADTouchGestureRecognizer

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    r0 = [NSDate alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchTimestamp));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesBegan:r21 withEvent:arg3];
    [r21 release];
    objc_storeStrong((int64_t *)&self->_lastTouchBeginTimestamp, [[NSDate alloc] init]);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchTimestamp));
    r0 = *(self + r8);
    *(self + r8) = r19;
    [r0 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesMoved:r21 withEvent:arg3];
    [r21 release];
    r0 = [NSDate alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchTimestamp));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    r0 = [NSDate alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchTimestamp));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)lastTouchTimestamp {
    r0 = self->_lastTouchTimestamp;
    return r0;
}

-(void *)lastTouchBeginTimestamp {
    r0 = self->_lastTouchBeginTimestamp;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastTouchBeginTimestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_lastTouchTimestamp, 0x0);
    return;
}

@end