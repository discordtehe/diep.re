@implementation CCStandardTouchHandler

-(void *)initWithDelegate:(void *)arg2 priority:(long long)arg3 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDelegate:r2 priority:r3];
    r20 = r0;
    if (r0 != 0x0) {
            if ([r19 respondsToSelector:@selector(ccTouchesBegan:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x1;
            }
            if ([r19 respondsToSelector:@selector(ccTouchesMoved:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x2;
            }
            if ([r19 respondsToSelector:@selector(ccTouchesEnded:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x4;
            }
            if ([r19 respondsToSelector:@selector(ccTouchesCancelled:withEvent:), r3] != 0x0) {
                    *(int32_t *)(r20 + 0x18) = *(int32_t *)(r20 + 0x18) | 0x8;
            }
    }
    r0 = r20;
    return r0;
}

@end