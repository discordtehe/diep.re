@implementation MenuHourlyBonusNotReadyView

-(void)setupLayout {
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timeFormat));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setSecondsToExpire:(int)arg2 {
    sub_100088c10(arg2);
    [NSString stringWithFormat:r2];
    [self->_innerFrameText setString:r2];
    return;
}

@end