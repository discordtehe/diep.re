@implementation FBAdBackgroundStateManager

-(void)dealloc {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(bool)isApplicationBecomingActive {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self extensionState];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isApplicationActive {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self extensionState];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isApplicationBackgrounded {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self extensionState];
    if (r0 == 0x2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x1d0;
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
    r0 = [[r29 - 0x70 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setExtensionState:0x1];
            r20 = [[FBAdNotificationCenter notificationCenterForObject:r19] retain];
            objc_initWeak(r29 - 0x78, r19);
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForInfoDictionaryKey:@"NSExtension"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r23 = 0x1;
                    }
            }
            [r0 release];
            [r21 release];
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            if (r22 != 0x0) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    if (*qword_1011dd9e8 != -0x1) {
                            dispatch_once_f(0x1011dd9e8, 0x1011c6e08, 0x100a3d91c);
                    }
                    r21 = &var_140 + 0x20;
                    [**qword_1011dd9f0 retain];
                    objc_copyWeak(r21, r29 - 0x78);
                    [r20 addNotificationWithName:r22 block:&var_140];
                    [r22 release];
                    if (*qword_1011dda28 != -0x1) {
                            dispatch_once_f(0x1011dda28, 0x1011c6e50, 0x100a3d91c);
                    }
                    r22 = &var_168 + 0x20;
                    [**qword_1011dda30 retain];
                    objc_copyWeak(r22, r29 - 0x78);
                    [r20 addNotificationWithName:r23 block:&var_168];
                    [r23 release];
                    if (*qword_1011dda08 != -0x1) {
                            dispatch_once_f(0x1011dda08, 0x1011c6e20, 0x100a3d91c);
                    }
                    r23 = &var_190 + 0x20;
                    [**qword_1011dda10 retain];
                    objc_copyWeak(r23, r29 - 0x78);
                    [r20 addNotificationWithName:r25 block:&var_190];
                    [r25 release];
                    if (*qword_1011dda18 != -0x1) {
                            dispatch_once_f(0x1011dda18, 0x1011c6e38, 0x100a3d91c);
                    }
                    r25 = &var_1B8 + 0x20;
                    [**qword_1011dda20 retain];
                    objc_copyWeak(r25, r29 - 0x78);
                    [r20 addNotificationWithName:r26 block:&var_1B8];
                    [r26 release];
            }
            else {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    r21 = (r29 - 0xa0) + 0x20;
                    objc_copyWeak(r21, r29 - 0x78);
                    [r20 addNotificationWithName:r22 block:r29 - 0xa0];
                    r22 = (r29 - 0xc8) + 0x20;
                    objc_copyWeak(r22, r29 - 0x78);
                    [r20 addNotificationWithName:r23 block:r29 - 0xc8];
                    r23 = &var_F0 + 0x20;
                    objc_copyWeak(r23, r29 - 0x78);
                    [r20 addNotificationWithName:r25 block:&var_F0];
                    r25 = &var_118 + 0x20;
                    objc_copyWeak(r25, r29 - 0x78);
                    [r20 addNotificationWithName:r26 block:&var_118];
            }
            objc_destroyWeak(r25);
            objc_destroyWeak(r23);
            objc_destroyWeak(r22);
            objc_destroyWeak(r21);
            objc_destroyWeak(r29 - 0x78);
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isApplicationInactive {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self extensionState];
    if (r0 == 0x3) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(long long)applicationState {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self extensionState];
    if (r0 != 0x0) {
            r9 = 0x1;
            if (r0 != 0x3) {
                    if (!CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
                    else {
                            r9 = 0x0;
                    }
            }
            if (r0 == 0x2) {
                    if (!CPU_FLAGS & E) {
                            r0 = r9;
                    }
                    else {
                            r0 = 0x2;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)setApplicationBecomingActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_applicationBecomingActive = arg2;
    return;
}

-(void)setExtensionState:(unsigned long long)arg2 {
    self->_extensionState = arg2;
    return;
}

-(unsigned long long)extensionState {
    r0 = self->_extensionState;
    return r0;
}

@end