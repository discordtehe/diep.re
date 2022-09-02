@implementation GADMemoryUtilizationMonitor

-(void *)init {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_58 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = *(int32_t *)*_mach_task_self_;
            r0 = task_info(r0, 0x14, &var_40, &var_44);
            r8 = var_40;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x0;
                    }
                    else {
                            r8 = r8;
                    }
            }
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_initiallyAllocatedByteCount));
            *(r19 + r9) = r8;
            r19->_peakAllocatedByteCount = r8;
            r19->_currentlyAllocatedByteCount = *(r19 + r9);
    }
    r0 = r19;
    return r0;
}

-(void)update {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_info(r0, 0x14, &var_40, &var_44);
    r8 = var_40;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x0;
            }
            else {
                    r8 = r8;
            }
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_peakAllocatedByteCount));
    r10 = *(r19 + r9);
    if (r10 < r8) {
            if (!CPU_FLAGS & B) {
                    r10 = r10;
            }
            else {
                    r10 = r8;
            }
    }
    *(r19 + r9) = r10;
    r19->_currentlyAllocatedByteCount = r8;
    return;
}

-(unsigned long long)initiallyAllocatedByteCount {
    r0 = self->_initiallyAllocatedByteCount;
    return r0;
}

-(unsigned long long)peakAllocatedByteCount {
    r0 = self->_peakAllocatedByteCount;
    return r0;
}

-(unsigned long long)currentlyAllocatedByteCount {
    r0 = self->_currentlyAllocatedByteCount;
    return r0;
}

@end