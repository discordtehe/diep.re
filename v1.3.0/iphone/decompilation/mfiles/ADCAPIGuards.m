@implementation ADCAPIGuards

+(void *)sharedGuards {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2398 != -0x1) {
            dispatch_once(0x1011d2398, &var_28);
    }
    r0 = *0x1011d23a0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_disabled = 0x0;
            r0 = [ADCRateLimiter new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_limiter));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_minSupportedOS, @"7.0");
    }
    r0 = r19;
    return r0;
}

-(bool)adColonySupported {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_minSupportedOS));
    r22 = [r0 compare:*(r19 + r23) options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r0 = 0x1;
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"AdColony requires iOS %@ and higher. Currently disabled"];
            r0 = 0x0;
    }
    return r0;
}

-(bool)adColonyConfigured {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 configured];
    [r0 release];
    if ((r20 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Either configureWithAppID:options:completion: has not been called, or AdColony has not finished configuring yet. Ignoring API call"];
            r0 = 0x0;
    }
    return r0;
}

-(void)enableAPIUsage {
    *(int8_t *)(int64_t *)&self->_disabled = 0x0;
    return;
}

-(void)disableAPIUsage {
    *(int8_t *)(int64_t *)&self->_disabled = 0x1;
    return;
}

-(bool)adColonyDisabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_disabled));
    if (*(int8_t *)(r19 + r20) != 0x0) {
            r0 = [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"AdColony is disabled at this time. Ignoring API call"];
            if (*(int8_t *)(r19 + r20) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)canReconfigure {
    r31 = r31 - 0x170;
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r21 release];
    [r19 release];
    if (r23 == 0x0) goto loc_100250894;

loc_100250650:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sessionFromID];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    var_108 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_100250884;

loc_1002506c8:
    r28 = *var_108;
    r23 = &@class(MCConfigurationData);
    var_138 = r20;
    goto loc_1002506f4;

loc_1002506f4:
    r27 = 0x0;
    r19 = @selector(isKindOfClass:);
    var_120 = r19;
    goto loc_100250720;

loc_100250720:
    if (*var_108 != r28) {
            objc_enumerationMutation(r20);
    }
    r25 = @selector(class);
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    objc_msgSend(*(r23 + 0xee8), r25);
    if (objc_msgSend(r21, r19) == 0x0) goto loc_1002507dc;

loc_100250778:
    r20 = r23;
    r23 = r22;
    r22 = r28;
    r0 = [r21 retain];
    r19 = r0;
    r0 = [r0 interstitialAd];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 getActive];
    [r0 release];
    if ((r26 & 0x1) != 0x0) goto loc_10025089c;

loc_1002507bc:
    [r19 release];
    r28 = r22;
    r22 = r23;
    r23 = r20;
    r20 = var_138;
    r19 = var_120;
    goto loc_100250838;

loc_100250838:
    [r21 release];
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_100250720;

loc_10025084c:
    r22 = objc_msgSend(r20, var_150);
    if (r22 != 0x0) goto loc_1002506f4;

loc_100250884:
    [r20 release];
    [r20 release];
    goto loc_100250894;

loc_100250894:
    r0 = 0x1;
    goto loc_1002508ec;

loc_1002508ec:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10025089c:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Cannot reconfigure AdColony while you have active sessions."];
    [r19 release];
    r20 = var_138;
    goto loc_1002508d0;

loc_1002508d0:
    [r21 release];
    [r20 release];
    [r20 release];
    r0 = 0x0;
    goto loc_1002508ec;

loc_1002507dc:
    [ADCNativeAdSession class];
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100250838;

loc_100250800:
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 reconfigurable];
    r19 = var_120;
    [r0 release];
    if ((r26 & 0x1) == 0x0) goto loc_1002508d0;
}

-(void)handleException:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_disabled = 0x1;
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"AdColony encountered an exception: %@"];
    return;
}

-(void *)limiter {
    r0 = self->_limiter;
    return r0;
}

-(void)setLimiter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_limiter, arg2);
    return;
}

-(void)setMinSupportedOS:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_minSupportedOS, arg2);
    return;
}

-(void *)minSupportedOS {
    r0 = self->_minSupportedOS;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_minSupportedOS, 0x0);
    objc_storeStrong((int64_t *)&self->_limiter, 0x0);
    return;
}

@end