@implementation CCTargetedTouchHandler

+(void *)handlerWithDelegate:(void *)arg2 priority:(long long)arg3 swallowsTouches:(bool)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDelegate:arg2 priority:arg3 swallowsTouches:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDelegate:(void *)arg2 priority:(long long)arg3 swallowsTouches:(bool)arg4 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDelegate:r2 priority:r3];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_claimedTouches = [[NSMutableSet alloc] initWithCapacity:0x2];
            *(int8_t *)(int64_t *)&r20->_swallowsTouches = r21;
            if ([r19 respondsToSelector:@selector(ccTouchBegan:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x1;
            }
            if ([r19 respondsToSelector:@selector(ccTouchMoved:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x2;
            }
            if ([r19 respondsToSelector:r2] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x4;
            }
            if ([r19 respondsToSelector:@selector(ccTouchCancelled:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x8;
            }
    }
    r0 = r20;
    return r0;
}

-(bool)swallowsTouches {
    r0 = *(int8_t *)(int64_t *)&self->_swallowsTouches;
    return r0;
}

-(void)dealloc {
    [self->_claimedTouches release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setSwallowsTouches:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_swallowsTouches = arg2;
    return;
}

-(void *)claimedTouches {
    r0 = self->_claimedTouches;
    return r0;
}

@end