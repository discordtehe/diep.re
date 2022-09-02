@implementation GADOnePixelImpressionMonitor

-(void *)initWithAd:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r25);
            *(r20 + r25) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r20);
            r21 = &var_90 + 0x20;
            objc_copyWeak(r21, &stack[-120]);
            [r23 addObserverForName:*0x100e9c028 object:r19 queue:0x0 usingBlock:&var_90];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r24 = [r0 boolForKey:*0x100e9b3d8];
            [r0 release];
            if (r24 != 0x0) {
                    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
                    [r24 addObserverForName:*0x100e9c040 object:r19 queue:0x0 usingBlock:&var_B8];
                    objc_destroyWeak(&var_B8 + 0x20);
            }
            objc_destroyWeak(r21);
            objc_destroyWeak(&stack[-120]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)postImpressionNotificationForAd:(void *)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r20 = *(r0 + r8);
            *(r0 + r8) = 0x0;
            [r19 retain];
            [r20 release];
            sub_1008833e8(*0x100e9c078, r19, 0x0);
            [r21 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end