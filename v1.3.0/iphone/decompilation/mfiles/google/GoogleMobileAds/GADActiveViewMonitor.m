@implementation GADActiveViewMonitor

-(void *)initWithAd:(void *)arg2 viewMessageSource:(void *)arg3 webAdView:(void *)arg4 adFormat:(void *)arg5 analyticsLoggingEnabled:(bool)arg6 activeViewConfiguration:(void *)arg7 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r25 = arg6;
    r27 = [arg2 retain];
    r26 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r28 = [arg7 retain];
    r23 = [[r29 - 0x70 super] init];
    if (r23 != 0x0) {
            r24 = @selector(init);
            var_1F8 = r26;
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r19);
            *(r23 + r19) = r0;
            [r8 release];
            r24 = [GADActiveViewReporter alloc];
            r0 = [r27 context];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 identifier];
            r0 = [r0 retain];
            r27 = r0;
            var_1F0 = r20;
            var_220 = r28;
            r0 = [r24 initWithAdFormat:r20 activeViewConfiguration:r28 reportingAdView:r21 adEventContextIdentifier:r27 analyticsLoggingEnabled:r25];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeViewReporter));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            [r27 release];
            [r26 release];
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b888];
            [r0 release];
            var_A0 = [r23 retain];
            sub_100860a80();
            objc_initWeak(r29 - 0xc8, r24);
            var_208 = (r29 - 0xf0) + 0x20;
            objc_copyWeak((r29 - 0xf0) + 0x20, r29 - 0xc8);
            var_200 = r22;
            [r24 addObserverForName:*0x100e9c080 object:r22 queue:0x0 usingBlock:r29 - 0xf0];
            r26 = var_1F8;
            var_210 = &var_118 + 0x20;
            objc_copyWeak(&var_118 + 0x20, r29 - 0xc8);
            [r24 addObserverForName:*0x100e9c038 object:r26 queue:0x0 usingBlock:&var_118];
            var_218 = &var_140 + 0x20;
            objc_copyWeak(&var_140 + 0x20, r29 - 0xc8);
            [r24 addObserverForName:*0x100e9bfe0 object:r26 queue:0x0 usingBlock:&var_140];
            if (r21 != 0x0) {
                    objc_copyWeak(&var_168 + 0x20, r29 - 0xc8);
                    [r24 addObserverForName:*0x100e9c340 object:r21 queue:0x0 usingBlock:&var_168];
                    objc_copyWeak(&var_190 + 0x20, r29 - 0xc8);
                    [r26 addObserverForName:*0x100e9c348 object:r21 queue:0x0 usingBlock:&var_190];
                    objc_copyWeak(&var_1C0 + 0x28, r29 - 0xc8);
                    r0 = [r21 retain];
                    [r20 addObserverForName:*0x100e9c0e0 object:r0 queue:0x0 usingBlock:&var_1C0];
                    [r0 release];
                    objc_destroyWeak(&var_1C0 + 0x28);
                    objc_destroyWeak(&var_190 + 0x20);
                    objc_destroyWeak(&var_168 + 0x20);
                    r26 = var_1F8;
            }
            if ([var_1F0 isEqual:r2] != 0x0) {
                    objc_copyWeak(&var_1E8 + 0x20, r29 - 0xc8);
                    [r20 addObserverForName:*0x100e9c158 object:var_200 queue:0x0 usingBlock:&var_1E8];
                    objc_destroyWeak(&var_1E8 + 0x20);
            }
            objc_destroyWeak(var_218);
            objc_destroyWeak(var_210);
            objc_destroyWeak(var_208);
            objc_destroyWeak(r29 - 0xc8);
            [var_A0 release];
            _Block_object_dispose(r29 - 0x90, 0x8);
            r27 = var_200;
            r20 = var_1F0;
            r28 = var_220;
    }
    [r28 release];
    [r20 release];
    [r21 release];
    [r26 release];
    [r27 release];
    r0 = r23;
    return r0;
}

-(void)dealloc {
    [self->_activeViewReporter updateActiveViewStatusWithUnloaded:0x1];
    [[&var_20 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_activeViewReporter, 0x0);
    objc_storeStrong((int64_t *)&self->_updateActiveViewStatusScheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end