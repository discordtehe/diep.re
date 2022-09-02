@implementation APMAppMetadata

-(void *)initWithLastBundleIndex:(int)arg2 lastBundleStartTimestamp:(double)arg3 lastBundleEndTimestamp:(double)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r0 = [[&var_30 super] init];
            if (r0 != 0x0) {
                    *(int32_t *)(int64_t *)&r0->_lastBundleIndex = r20;
                    r0->_lastBundleStartTimestamp = d9;
                    r0->_lastBundleEndTimestamp = d8;
            }
            r19 = [r0 retain];
            r20 = r19;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0xfa0 message:@"Failed to create app metadata object. Received negative last bundle index."];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)incrementLastBundleIndex {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastBundleIndex));
    if (*(int32_t *)(r19 + r21) == 0x7fffffff) {
            asm { csinc      w22, wzr, w8, eq };
    }
    if (r22 == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0xfa1 message:@"Bundle index overflow. Bundle index reset to 0."];
            [r0 release];
    }
    *(int32_t *)(r19 + r21) = r22;
    return;
}

-(int)lastBundleIndex {
    r0 = *(int32_t *)(int64_t *)&self->_lastBundleIndex;
    return r0;
}

-(double)lastBundleStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastBundleStartTimestamp:(double)arg2 {
    self->_lastBundleStartTimestamp = d0;
    return;
}

-(double)lastBundleEndTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastBundleEndTimestamp:(double)arg2 {
    self->_lastBundleEndTimestamp = d0;
    return;
}

@end