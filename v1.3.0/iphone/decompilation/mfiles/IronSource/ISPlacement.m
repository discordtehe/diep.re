@implementation ISPlacement

-(void *)initWithUid:(void *)arg2 name:(void *)arg3 reward:(void *)arg4 amount:(void *)arg5 isCappingEnable:(bool)arg6 cappingMaxImpressions:(void *)arg7 cappingUnit:(void *)arg8 isPacingEnable:(bool)arg9 pacingNumOfSeconds:(void *)arg10 delivery:(bool)arg11 isDefault:(bool)arg12 {
    var_24 = arg11;
    var_8 = arg9;
    r31 = r31 - 0xb0;
    var_50 = r28;
    stack[-88] = r27;
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
    r25 = arg7;
    var_8C = arg6;
    r20 = arg5;
    r28 = arg4;
    r23 = arg3;
    r24 = arg2;
    r22 = arg10;
    r26 = arg8;
    r19 = [r24 retain];
    var_68 = [r23 retain];
    var_70 = [r28 retain];
    var_78 = [r20 retain];
    var_80 = [r25 retain];
    var_88 = [r26 retain];
    r21 = [r22 retain];
    r0 = [[&var_60 super] init];
    r27 = r0;
    if (r27 != 0x0) {
            objc_storeStrong((int64_t *)&r27->_uid, r24);
            objc_storeStrong((int64_t *)&r27->_name, r23);
            objc_storeStrong((int64_t *)&r27->_reward, r28);
            objc_storeStrong((int64_t *)&r27->_amount, r20);
            *(int8_t *)(int64_t *)&r27->_isCappingEnable = var_8C;
            objc_storeStrong((int64_t *)&r27->_cappingMaxImpressions, r25);
            objc_storeStrong((int64_t *)&r27->_cappingUnit, r26);
            *(int8_t *)(int64_t *)&r27->_isPacingEnable = var_8;
            r19 = r19;
            objc_storeStrong((int64_t *)&r27->_pacingNumOfSeconds, r22);
            *(int8_t *)(int64_t *)&r27->_isDelivery = var_24;
            *(int8_t *)(int64_t *)&r27->_isDefault = arg_19;
    }
    [r21 release];
    [var_88 release];
    [var_80 release];
    [var_78 release];
    [var_70 release];
    [var_68 release];
    [r19 release];
    r0 = r27;
    return r0;
}

-(void *)placementInfo {
    r20 = [ISPlacementInfo alloc];
    r21 = [[self name] retain];
    r22 = [[self reward] retain];
    r19 = [[self amount] retain];
    r20 = [r20 initWithPlacement:r21 reward:r22 rewardAmount:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)uid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_uid)), 0x0);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x0);
    return r0;
}

-(void)setUid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAmount:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_amount, arg2);
    return;
}

-(void *)reward {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reward)), 0x0);
    return r0;
}

-(void)setReward:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)amount {
    r0 = self->_amount;
    return r0;
}

-(void)setIsCappingEnable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isCappingEnable = arg2;
    return;
}

-(void)setCappingMaxImpressions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cappingMaxImpressions, arg2);
    return;
}

-(bool)isCappingEnable {
    r0 = *(int8_t *)(int64_t *)&self->_isCappingEnable;
    return r0;
}

-(void *)cappingMaxImpressions {
    r0 = self->_cappingMaxImpressions;
    return r0;
}

-(void)setCappingUnit:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cappingUnit {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cappingUnit)), 0x0);
    return r0;
}

-(void)setIsPacingEnable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPacingEnable = arg2;
    return;
}

-(bool)isPacingEnable {
    r0 = *(int8_t *)(int64_t *)&self->_isPacingEnable;
    return r0;
}

-(void)setIsDelivery:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDelivery = arg2;
    return;
}

-(void)setPacingNumOfSeconds:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)pacingNumOfSeconds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_pacingNumOfSeconds)), 0x0);
    return r0;
}

-(bool)isDelivery {
    r0 = *(int8_t *)(int64_t *)&self->_isDelivery;
    return r0;
}

-(bool)isDefault {
    r0 = *(int8_t *)(int64_t *)&self->_isDefault;
    return r0;
}

-(void)setIsDefault:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDefault = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_pacingNumOfSeconds, 0x0);
    objc_storeStrong((int64_t *)&self->_cappingUnit, 0x0);
    objc_storeStrong((int64_t *)&self->_cappingMaxImpressions, 0x0);
    objc_storeStrong((int64_t *)&self->_amount, 0x0);
    objc_storeStrong((int64_t *)&self->_reward, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_uid, 0x0);
    return;
}

-(void)setPlacementInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementInfo, arg2);
    return;
}

@end