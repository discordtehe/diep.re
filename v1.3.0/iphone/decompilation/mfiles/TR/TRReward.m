@implementation TRReward

-(void *)initWithRewardDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = [[r19 notNullObjectForKey:r2] retain];
            [r20 setTransactionIdentifier:r22];
            [r22 release];
            r0 = [r19 notNullObjectForKey:r2];
            r0 = [r0 retain];
            [r0 intValue];
            asm { sxtw       x2, w0 };
            [r20 setRewardAmount:r2];
            [r22 release];
            r22 = [objc_msgSend(r19, r21) retain];
            [r20 setCurrencyName:r22];
            [r22 release];
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            asm { sxtw       x2, w0 };
            [r20 setPayoutEvent:r2];
            [r22 release];
            r21 = [objc_msgSend(r19, r21) retain];
            [r20 setPlacementIdentifier:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"TR Reward Transaction Identifier"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_transactionIdentifier));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_rewardAmount = [r19 decodeIntegerForKey:@"TR Reward VC Reward"];
            r0 = [r19 decodeObjectForKey:@"TR Reward Currency Name"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currencyName));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_payoutEvent = [r19 decodeIntegerForKey:@"TR Reward Payout Option"];
            r0 = [r19 decodeObjectForKey:@"TR Offer Identifier"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementIdentifier));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)transactionIdentifier {
    r0 = self->_transactionIdentifier;
    return r0;
}

-(void)setTransactionIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transactionIdentifier, arg2);
    return;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self transactionIdentifier] retain];
    [arg2 encodeObject:r23 forKey:@"TR Reward Transaction Identifier"];
    [r23 release];
    [arg2 encodeInteger:[self rewardAmount] forKey:@"TR Reward VC Reward"];
    r24 = [[self currencyName] retain];
    [arg2 encodeObject:r24 forKey:@"TR Reward Currency Name"];
    [r24 release];
    [arg2 encodeInteger:[self payoutEvent] forKey:@"TR Reward Payout Option"];
    r21 = [[self placementIdentifier] retain];
    [arg2 encodeObject:r21 forKey:@"TR Offer Identifier"];
    [r20 release];
    [r21 release];
    return;
}

-(long long)rewardAmount {
    r0 = self->_rewardAmount;
    return r0;
}

-(void)setCurrencyName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currencyName, arg2);
    return;
}

-(void)setRewardAmount:(long long)arg2 {
    self->_rewardAmount = arg2;
    return;
}

-(void *)currencyName {
    r0 = self->_currencyName;
    return r0;
}

-(long long)payoutEvent {
    r0 = self->_payoutEvent;
    return r0;
}

-(void *)placementIdentifier {
    r0 = self->_placementIdentifier;
    return r0;
}

-(void)setPayoutEvent:(long long)arg2 {
    self->_payoutEvent = arg2;
    return;
}

-(void)setPlacementIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementIdentifier, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_currencyName, 0x0);
    objc_storeStrong((int64_t *)&self->_transactionIdentifier, 0x0);
    return;
}

@end