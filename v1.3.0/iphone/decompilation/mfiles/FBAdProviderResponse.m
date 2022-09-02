@implementation FBAdProviderResponse

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void *)initWithType:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setType:r19];
    }
    r0 = r20;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

@end