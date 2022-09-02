@implementation UMONRewardablePlacementContent

-(void *)initWithPlacementId:(void *)arg2 params:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [[&var_30 super] initWithPlacementId:r21 withParams:r19];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r20 setRewarded:[r0 boolValue]];
                    [r0 release];
            }
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = [[r19 valueForKey:r2] retain];
                    [r20 setRewardId:r21];
                    [r21 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)rewarded {
    r0 = *(int8_t *)(int64_t *)&self->_rewarded;
    return r0;
}

-(void)setRewarded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_rewarded = arg2;
    return;
}

-(void *)rewardId {
    r0 = self->_rewardId;
    return r0;
}

-(void)setRewardId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardId, 0x0);
    return;
}

@end