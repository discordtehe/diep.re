@implementation CCActionCamera

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r0 = self->_target;
    r0 = [r0 camera];
    [r0 centerX:(int64_t *)&self->_centerXOrig centerY:(int64_t *)&self->_centerYOrig centerZ:(int64_t *)&self->_centerZOrig];
    [r0 eyeX:(int64_t *)&self->_eyeXOrig eyeY:(int64_t *)&self->_eyeYOrig eyeZ:(int64_t *)&self->_eyeZOrig];
    [r0 upX:(int64_t *)&self->_upXOrig upY:(int64_t *)&self->_upYOrig upZ:(int64_t *)&self->_upZOrig];
    return;
}

-(void *)reverse {
    r0 = [CCReverseTime actionWithAction:r2];
    return r0;
}

@end