@implementation GADRewardedEventMonitor

-(void *)initWithAd:(void *)arg2 reward:(void *)arg3 view:(void *)arg4 userIdentifier:(void *)arg5 customRewardString:(void *)arg6 {
    r31 = r31 - 0xa0;
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
    r25 = arg3;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeWeak((int64_t *)&r23->_ad, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r26);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r26);
            *(r23 + r26) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r23->_reward, r25);
            r0 = [r22 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r24 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customRewardString));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r23);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r25 addObserverForName:*0x100e9c320 object:r21 queue:r27 usingBlock:&var_90];
            [r27 release];
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 view:(void *)arg4 userIdentifier:(void *)arg5 customRewardString:(void *)arg6 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = [r20 objectForKeyedSubscript:*0x100e95930];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_10089554c;

loc_10089553c:
    [r24 release];
    if (r20 == 0x0) {
            r25 = 0x0;
    }
    else {
            r0 = [NSArray class];
            r0 = sub_10081ba6c(r20, *0x100e959c0, r0);
            r0 = [r0 retain];
            r24 = r0;
            r26 = [[r0 firstObject] retain];
            [NSDictionary class];
            if ([r26 isKindOfClass:r2] != 0x0) {
                    r25 = [[GADAdReward alloc] initWithRewardDictionary:r26];
            }
            else {
                    r25 = 0x0;
            }
            [r26 release];
            [r24 release];
    }
    goto loc_100895660;

loc_100895660:
    r24 = [[GADRewardedEventMonitor alloc] initWithAd:r19 reward:r25 view:r21 userIdentifier:r22 customRewardString:r23];
    [r19 addMonitor:r24];
    [r24 release];
    [r25 release];
    goto loc_1008956bc;

loc_1008956bc:
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10089554c:
    r27 = @selector(isEqual:);
    r0 = [r20 objectForKeyedSubscript:*0x100e95930];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r27);
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_1008956bc;

loc_100895594:
    if (r20 != 0x0) {
            r0 = [NSArray class];
            r0 = sub_10081ba6c(r20, *0x100e959c0, r0);
            r0 = [r0 retain];
            r24 = r0;
            r26 = [[r0 firstObject] retain];
            [NSDictionary class];
            if ([r26 isKindOfClass:r2] != 0x0) {
                    r25 = [[GADAdReward alloc] initWithRewardDictionary:r26];
            }
            else {
                    r25 = 0x0;
            }
            [r26 release];
            [r24 release];
    }
    else {
            r25 = 0x0;
    }
    goto loc_100895660;
}

-(void)handleVideoStarted {
    sub_1008833e8(*0x100e9c668, objc_loadWeakRetained((int64_t *)&self->_ad), 0x0);
    [r20 release];
    return;
}

-(void)handleVideoCompleted {
    sub_1008833e8(*0x100e9c670, objc_loadWeakRetained((int64_t *)&self->_ad), 0x0);
    [r20 release];
    return;
}

-(void)handleRewardGranted:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r21->_reward retain];
    if (r20 == 0x0) {
            r22 = [r19 retain];
            [r20 release];
            r20 = r22;
    }
    r22 = [NSMutableDictionary alloc];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    r22 = [r22 initWithDictionary:r23];
    [r23 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier));
    if ([*(r21 + r24) length] != 0x0) {
            sub_100822058(r22, *0x100e98740, *(r21 + r24));
    }
    r23 = @selector(length);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_customRewardString));
    if (objc_msgSend(*(r21 + r24), r23) != 0x0) {
            sub_100822058(r22, *0x100e98748, *(r21 + r24));
    }
    var_38 = **___stack_chk_guard;
    sub_1008833e8(*0x100e9c660, objc_loadWeakRetained((int64_t *)&r21->_ad), r22);
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleVideoAction:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"action"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_100895bd0;

loc_100895a78:
    r0 = [r19 objectForKeyedSubscript:*0x100e98738];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) {
            r23 = @selector(isEqual:);
            r22 = [[r19 objectForKeyedSubscript:@"type"] retain];
            r25 = @class(NSDecimalNumber);
            r26 = [[r19 objectForKeyedSubscript:@"amount"] retain];
            r24 = [[r25 decimalNumberWithString:r26] retain];
            [r26 release];
            r0 = @class(NSDecimalNumber);
            r0 = [r0 notANumber];
            r29 = r29;
            r25 = [r0 retain];
            r23 = objc_msgSend(r24, r23);
            [r25 release];
            if (r23 != 0x0) {
                    r23 = [[NSDecimalNumber one] retain];
                    [r24 release];
                    r24 = r23;
            }
            r25 = [[GADAdReward alloc] initWithRewardType:r22 rewardAmount:r24];
            [r24 release];
            [r22 release];
    }
    [r20 handleRewardGranted:r25];
    [r25 release];
    goto loc_100895c34;

loc_100895c34:
    [r21 release];
    [r19 release];
    return;

loc_100895bd0:
    if ([r21 isEqual:r2] == 0x0) goto loc_100895bf4;

loc_100895be8:
    r1 = @selector(handleVideoStarted);
    goto loc_100895c14;

loc_100895c14:
    objc_msgSend(r20, r1);
    goto loc_100895c34;

loc_100895bf4:
    if ([r21 isEqual:r2] == 0x0) goto loc_100895c20;

loc_100895c0c:
    r1 = @selector(handleVideoCompleted);
    goto loc_100895c14;

loc_100895c20:
    sub_1007ce06c(0x0, @"Received invalid reward action. %@");
    goto loc_100895c34;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customRewardString, 0x0);
    objc_storeStrong((int64_t *)&self->_userIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_reward, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

@end