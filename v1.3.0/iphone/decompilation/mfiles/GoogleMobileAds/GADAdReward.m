@implementation GADAdReward

-(void *)init {
    r0 = [self initWithRewardDictionary:0x0];
    return r0;
}

-(void *)initWithRewardType:(void *)arg2 rewardAmount:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) {
            [@"" retain];
            [r19 release];
            r19 = @"";
    }
    if (r20 == 0x0) {
            r22 = [[NSDecimalNumber one] retain];
            [r20 release];
            r20 = r22;
    }
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_type));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_amount));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void *)initWithRewardDictionary:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"rb_type"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [arg2 objectForKeyedSubscript:@"rb_amount"];
    [r23 release];
    r21 = [r21 retain];
    [NSNumber class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            if (r21 != 0x0) {
                    [r21 decimalValue];
            }
            r0 = [NSDecimalNumber decimalNumberWithDecimal:&var_48];
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r23 = @selector(isKindOfClass:);
                    [NSString class];
                    if (objc_msgSend(r20, r23) != 0x0) {
                            r19 = [[r19 initWithRewardType:r20 rewardAmount:r24] retain];
                            r22 = r19;
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r24 = 0x0;
            r22 = 0x0;
    }
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)amount {
    r0 = self->_amount;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_amount, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    return;
}

@end