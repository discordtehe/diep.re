@implementation GADSignalConfiguration

-(void *)initWithAdUnitID:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [GADSignalConfiguration alloc];
    r0 = [r0 initWithAdUnitID:self->_adUnitID];
    return r0;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitID)), 0x0);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    return;
}

@end