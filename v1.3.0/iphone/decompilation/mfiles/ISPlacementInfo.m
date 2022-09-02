@implementation ISPlacementInfo

-(void *)initWithPlacement:(void *)arg2 reward:(void *)arg3 rewardAmount:(void *)arg4 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
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
    r25 = arg2;
    r19 = [r25 retain];
    r21 = [r22 retain];
    r23 = [r20 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_placementName, r25);
            objc_storeStrong((int64_t *)&r24->_rewardName, r22);
            objc_storeStrong((int64_t *)&r24->_rewardAmount, r20);
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void *)placementName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementName)), 0x1);
    return r0;
}

-(void *)description {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementName));
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)rewardName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardName)), 0x1);
    return r0;
}

-(void *)rewardAmount {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardAmount)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardAmount, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardName, 0x0);
    objc_storeStrong((int64_t *)&self->_placementName, 0x0);
    return;
}

@end