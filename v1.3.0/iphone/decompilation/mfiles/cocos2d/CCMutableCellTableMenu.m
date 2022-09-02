@implementation CCMutableCellTableMenu

-(void)dealloc {
    [self setDebugTag:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)setDebugTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x90;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
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
    r21 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    if (*(self + r23) != 0x0) {
            r2 = [r20 view];
            [r20 locationInView:r2];
            [[CCDirector sharedDirector] convertToGL:r2];
            [*(r21 + r23) cellPickRect];
            [*(r21 + r23) getVisibleArea];
            [*(r21 + r23) getMPoint];
            [*(r21 + r23) visibleAreaOffset];
            r0 = *(r21 + r23);
            r0 = [r0 visibleAreaOffset];
            r0 = CGRectContainsPoint(r0, @selector(visibleAreaOffset));
            if (r0 != 0x0) {
                    r0 = [[&var_80 super] ccTouchBegan:r20 withEvent:r19];
            }
    }
    else {
            r0 = [[&var_80 super] ccTouchBegan:r20 withEvent:r19];
    }
    return r0;
}

-(void *)debugTag {
    r0 = self->mDebugTag;
    return r0;
}

@end