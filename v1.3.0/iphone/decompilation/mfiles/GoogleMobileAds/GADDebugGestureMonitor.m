@implementation GADDebugGestureMonitor

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 view:(void *)arg4 {
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = [[arg3 objectForKeyedSubscript:*0x100e95940] retain];
    r22 = [arg3 objectForKeyedSubscript:*0x100e95968];
    [r23 release];
    r22 = [r22 retain];
    r23 = [[GADDebugGestureMonitor alloc] initWithAd:r19 adView:r21 adUnitID:r24 debugDialogString:r22];
    [r21 release];
    [arg2 addMonitor:r23];
    [r19 release];
    [r23 release];
    [r22 release];
    [r24 release];
    return;
}

-(void *)initWithAd:(void *)arg2 adView:(void *)arg3 adUnitID:(void *)arg4 debugDialogString:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeWeak((int64_t *)&r23->_ad, r19);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugDialogString));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
    }
    var_50 = [r23 retain];
    var_48 = r22;
    [r22 retain];
    sub_100860a80();
    r23 = [r23 retain];
    [var_48 release];
    [var_50 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)presentDebugDialog {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_view);
    r22 = [[r0 window] retain];
    r20 = [sub_10089a9cc() retain];
    [r22 release];
    [r0 release];
    if (r20 != 0x0) {
            r21 = objc_loadWeakRetained((int64_t *)&r19->_ad);
            r0 = [GADDebugOptionsViewController alloc];
            r0 = [r0 initWithAd:r21 adUnitID:r19->_adUnitID debugDialogString:r19->_debugDialogString];
            sub_1008b42f0(r0, r20, r21, 0x0);
            [r19 release];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)setView:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r21->_view;
    r20 = objc_loadWeakRetained(r22);
    if (r19 != 0x0) {
            if (r20 != r19) {
                    objc_storeWeak(r22, r19);
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    r23 = [r0 boolForKey:*0x100e9b9c0];
                    [r0 release];
                    if (r23 != 0x0) {
                            r0 = @class(GADWiggleGestureRecognizer);
                    }
                    else {
                            r0 = @class(GADTwoFingersLongPressGestureRecognizer);
                    }
                    r0 = [r0 alloc];
                    r0 = [r0 init];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gestureRecognizer));
                    r8 = *(r21 + r22);
                    *(r21 + r22) = r0;
                    [r8 release];
                    [*(r21 + (r22 << @selector(init))) setDelegate:r21];
                    [*(r21 + (r22 << @selector(setDelegate:))) addTarget:r21 action:@selector(presentDebugDialog)];
                    [r19 addGestureRecognizer:*(r21 + (r22 << @selector(addTarget:action:)))];
            }
    }
    else {
            [r20 removeGestureRecognizer:*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_gestureRecognizer)))];
            objc_storeWeak(r22, 0x0);
            r0 = *(r21 + r23);
            *(r21 + r23) = 0x0;
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_gestureRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_debugDialogString, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_destroyWeak((int64_t *)&self->_view);
    return;
}

@end