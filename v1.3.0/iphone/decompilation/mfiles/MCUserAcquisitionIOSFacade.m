@implementation MCUserAcquisitionIOSFacade

-(void)intializeWithAppToken:(void *)arg2 {
    r0 = [MCAdjustWrapper alloc];
    r0 = [r0 init];
    self->mAdjustWrapper = r0;
    [r0 intializeAdjustWithAppToken:arg2 environment:*0x100e8a4b8];
    return;
}

-(void)trackSessionStart {
    r0 = self->mAdjustWrapper;
    if (r0 != 0x0) {
            [r0 trackSessionStart];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mAdjustWrapper));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)trackSessionEnd {
    r0 = self->mAdjustWrapper;
    if (r0 != 0x0) {
            [r0 trackSessionEnd];
    }
    return;
}

-(void)trackRevenueEvent:(void *)arg2 revenue:(double)arg3 currency:(void *)arg4 receipt:(void *)arg5 transactionId:(void *)arg6 {
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self->mAdjustWrapper;
    if (r0 != 0x0) {
            [r0 trackRevenueEvent:r2 revenue:r3 currency:r4 receipt:r5 transactionId:r6];
    }
    return;
}

-(void)trackDeepLink:(void *)arg2 {
    r2 = arg2;
    r0 = self->mAdjustWrapper;
    if (r0 != 0x0) {
            [r0 trackDeepLink:r2];
    }
    return;
}

-(void)trackSimpleEvent:(void *)arg2 {
    r2 = arg2;
    r0 = self->mAdjustWrapper;
    if (r0 != 0x0) {
            [r0 trackSimpleEvent:r2];
    }
    return;
}

@end