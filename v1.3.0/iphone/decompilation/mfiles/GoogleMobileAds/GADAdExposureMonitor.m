@implementation GADAdExposureMonitor

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 useVisibilityNotification:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r0 = [arg3 objectForKeyedSubscript:*0x100e95940];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 length] != 0x0) {
            r20 = [[GADAdExposureMonitor alloc] initWithAd:r19 adUnitID:r21 useVisibilityNotification:r20];
            [r19 addMonitor:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)initWithAd:(void *)arg2 adUnitID:(void *)arg3 useVisibilityNotification:(bool)arg4 {
    r31 = r31 - 0x100;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = 0x0;
    if (r19 != 0x0) {
            r23 = 0x0;
            if (r20 != 0x0) {
                    r21 = [[r29 - 0x70 super] init];
                    if (r21 != 0x0) {
                            r23 = @selector(init);
                            r0 = [GADObserverCollection alloc];
                            r0 = objc_msgSend(r0, r23);
                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
                            r8 = *(r21 + r26);
                            *(r21 + r26) = r0;
                            [r8 release];
                            r0 = [r20 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                            objc_initWeak(&stack[-136], r21);
                            if (r22 != 0x0) {
                                    r22 = &var_A0 + 0x20;
                                    objc_copyWeak(r22, &stack[-136]);
                                    [r23 addObserverForName:*0x100e9c028 object:r19 queue:0x0 usingBlock:&var_A0];
                            }
                            else {
                                    r22 = &var_C8 + 0x20;
                                    objc_copyWeak(r22, &stack[-136]);
                                    [r24 addObserverForName:*0x100e9c148 object:r19 queue:0x0 usingBlock:&var_C8];
                                    objc_copyWeak(&var_F0 + 0x20, &stack[-136]);
                                    [r25 addObserverForName:*0x100e9c158 object:r19 queue:0x0 usingBlock:&var_F0];
                                    objc_destroyWeak(&var_F0 + 0x20);
                            }
                            objc_destroyWeak(r22);
                            objc_destroyWeak(&stack[-136]);
                    }
                    r21 = [r21 retain];
                    r23 = r21;
            }
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r23;
    return r0;
}

-(void)startExposure {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADAnalytics sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureBegan));
            r23 = *(int8_t *)(r19 + r21);
            [r0 release];
            if (r23 == 0x0) {
                    r0 = [GADAnalytics sharedInstance];
                    r0 = [r0 retain];
                    [r0 beginAdUnitExposure:r19->_adUnitID];
                    [r0 release];
                    *(int8_t *)(r19 + r21) = 0x1;
            }
    }
    else {
            [r0 release];
    }
    return;
}

-(void)endExposure {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADAnalytics sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureBegan));
            r23 = *(int8_t *)(r19 + r21);
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [GADAnalytics sharedInstance];
                    r0 = [r0 retain];
                    [r0 endAdUnitExposure:r19->_adUnitID];
                    [r0 release];
                    *(int8_t *)(r19 + r21) = 0x0;
            }
    }
    else {
            [r0 release];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [r19->_adUnitID retain];
    if (*(int8_t *)(int64_t *)&r19->_adExposureBegan != 0x0) {
            var_18 = [r20 retain];
            sub_100860a80();
            [var_18 release];
    }
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end