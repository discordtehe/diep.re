@implementation GADScreenNameReporter

-(void *)initWithPresenter:(void *)arg2 adScreenName:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r23 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_adScreenName, r22);
            objc_initWeak(&stack[-136], r21);
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r24 addObserverForName:*0x100e9c100 object:r19 queue:0x0 usingBlock:&var_A0];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c108 object:r19 queue:0x0 usingBlock:&var_C8];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setScreenName {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_hasSetScreenName));
    if (*(int8_t *)(r19 + r24) == 0x0) {
            r0 = r19->_previousScreenName;
            if (r0 != 0x0) {
                    r20 = [r0 retain];
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 boolForKey:*0x100e9b7b0];
                    [r0 release];
                    if (r23 != 0x0) {
                            r22 = [[NSString alloc] initWithFormat:@"%@/%@"];
                            r0 = [GADAnalytics sharedInstance];
                            r0 = [r0 retain];
                            [r0 setScreenName:r22 screenClass:0x0];
                            [r0 release];
                            *(int8_t *)(r19 + r24) = 0x1;
                            [r22 release];
                    }
            }
            else {
                    r20 = [r19->_previousScreenClass retain];
                    if (r20 != 0x0) {
                            r0 = [GADSettings sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 boolForKey:*0x100e9b7b0];
                            [r0 release];
                            if (r23 != 0x0) {
                                    r22 = [[NSString alloc] initWithFormat:@"%@/%@"];
                                    r0 = [GADAnalytics sharedInstance];
                                    r0 = [r0 retain];
                                    [r0 setScreenName:r22 screenClass:0x0];
                                    [r0 release];
                                    *(int8_t *)(r19 + r24) = 0x1;
                                    [r22 release];
                            }
                    }
            }
            [r20 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_previousScreenClass, 0x0);
    objc_storeStrong((int64_t *)&self->_previousScreenName, 0x0);
    objc_storeStrong((int64_t *)&self->_adScreenName, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end