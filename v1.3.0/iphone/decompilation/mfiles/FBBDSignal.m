@implementation FBBDSignal

-(void *)initWithSignalId:(void *)arg2 withSignalFlags:(unsigned long long)arg3 withSignalCollectorBlock:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r22 = arg3;
    r19 = arg2;
    [arg2 retain];
    [r20 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_signalId));
            [r19 retain];
            r0 = *(r21 + r23);
            *(r21 + r23) = r19;
            [r0 release];
            r21->_signalFlags = r22;
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalCollectorBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_signalCollectorBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_signalId, 0x0);
    return;
}

-(void *)signalId {
    r0 = self->_signalId;
    return r0;
}

-(void *)signalCollectorBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_signalCollectorBlock)), 0x0);
    return r0;
}

-(unsigned long long)signalFlags {
    r0 = self->_signalFlags;
    return r0;
}

@end