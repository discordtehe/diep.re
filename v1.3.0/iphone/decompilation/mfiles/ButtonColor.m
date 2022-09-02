@implementation ButtonColor

-(void *)initWithColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x8) = r19;
    }
    return r0;
}

-(struct _ccColorThreeB)color {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

@end