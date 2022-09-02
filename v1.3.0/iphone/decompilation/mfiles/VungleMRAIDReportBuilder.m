@implementation VungleMRAIDReportBuilder

-(void)aggregateEvent:(void *)arg2 withValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if ((r0 | r19) != 0x0) {
            [*(r21 + 0x8) appendUserAction:r20 withValue:r19];
    }
    [r20 release];
    return;
}

-(void)aggregateError:(void *)arg2 {
    [*(self + 0x8) appendVungleMRAIDErrorCode:arg2];
    return;
}

-(void)aggregateEvent:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [*(r0 + 0x8) appendUserAction:r2];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void *)report {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setReport:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)initWithReport:(void *)arg2 placement:(void *)arg3 {
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
    r29 = &saved_fp;
    r23 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_98 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = r21 + 0x8;
            objc_storeStrong(r22, r23);
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            [r0 timeIntervalSince1970];
            asm { fcvtzu     x2, d0 };
            [*(r21 + 0x8) setAdStartTime:r2];
            [r23 release];
            r23 = [[r20 referenceID] retain];
            r24 = [[r20 uniqueID] retain];
            r25 = [[NSNumber numberWithBool:[r20 isCacheable]] retain];
            r26 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
            [*(r21 + 0x8) setPlacement:r26];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r23 = r0;
            r25 = [[r0 rawAdType] retain];
            [*(r21 + 0x8) setAdType:r25];
            [r25 release];
            r0 = [r23 appId];
            r0 = [r0 retain];
            r28 = [r0 copy];
            [*(r21 + 0x8) setAppId:r28];
            [r28 release];
            [r0 release];
            r0 = [r23 campaign];
            r0 = [r0 retain];
            r27 = [r0 copy];
            [*(r21 + 0x8) setCampaign:r27];
            [r27 release];
            [r0 release];
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 appId];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r0;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [*(r21 + 0x8) setEventID:r2];
            [r25 release];
            [r26 release];
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 adToken];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r0;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [*(r21 + 0x8) setAdToken:r2];
            [r25 release];
            [r24 release];
            if ([r23 incentivized] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            [*(r21 + 0x8) setInternalIncentivized:r2];
            if ([*(r21 + 0x8) incentivized] != 0x0) {
                    r0 = [r23 user];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r25 = r0;
                            r26 = [[r23 user] retain];
                            r0 = [NSNull null];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r26 release];
                            [r25 release];
                            if (r26 != r0) {
                                    r24 = [[r23 user] retain];
                                    [*r22 setUser:r24];
                                    [r24 release];
                            }
                    }
            }
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end