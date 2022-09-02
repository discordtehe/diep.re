@implementation FBAssetLinearReader

-(void *)initWithDataDistributor:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_dataDistributor, r20);
            r21->_offset = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)moveHead:(unsigned long long)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_offset));
    *(self + r8) = *(self + r8) + arg2;
    [self->_dataDistributor moveHeadTo:r2 withHeadType:0x0];
    return;
}

-(bool)hasEnoughDataForBytes:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_dataDistributor;
    r0 = [r0 availableOffsetForHeadType:0x0];
    if (r0 >= arg2) {
            if (CPU_FLAGS & NB) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(char *)bytesAtHead:(long long)arg2 {
    r0 = self->_dataDistributor;
    r0 = [r0 bytesAtHead:arg2 withHeadType:0x0];
    return r0;
}

-(void)setOffset:(unsigned long long)arg2 {
    self->_offset = arg2;
    return;
}

-(unsigned long long)offset {
    r0 = self->_offset;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dataDistributor, 0x0);
    return;
}

@end