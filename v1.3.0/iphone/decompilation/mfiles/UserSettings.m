@implementation UserSettings

+(void *)userSettings {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
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
    if (r0 != 0x0) {
            [r19 readFromDisk];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self readFromDisk];
    [[&var_20 super] dealloc];
    return;
}

-(void *)getSettingsName:(int)arg2 {
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

-(void)setShowMinimap:(bool)arg2 {
    *(int8_t *)(self + 0x16) = arg2;
    *(int8_t *)0x1011dec48 = arg2;
    return;
}

-(void)writeToDisk {
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
    r20 = [NSUserDefaults standardUserDefaults];
    [r20 setBool:*(int8_t *)(r19 + 0xa) forKey:[r19 getSettingsName:0x2]];
    [r20 setBool:*(int8_t *)(r19 + 0x8) forKey:[r19 getSettingsName:0x0]];
    [r20 setBool:*(int8_t *)(r19 + 0x9) forKey:[r19 getSettingsName:0x1]];
    [r20 setBool:*(int8_t *)(r19 + 0xb) forKey:[r19 getSettingsName:0x3]];
    r23 = *(int8_t *)(r19 + 0xc);
    [r20 setBool:r23 forKey:[r19 getSettingsName:0x4]];
    if (*(int32_t *)(r19 + 0x10) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r23 = 0x1;
            }
    }
    [r20 setBool:r23 forKey:[r19 getSettingsName:0x5]];
    [r20 setBool:*(int8_t *)(r19 + 0x14) forKey:[r19 getSettingsName:0x6]];
    [r20 setBool:*(int8_t *)(r19 + 0x15) forKey:[r19 getSettingsName:0x7]];
    [r20 setBool:*(int8_t *)(r19 + 0x16) forKey:[r19 getSettingsName:0x8]];
    return;
}

-(bool)stopOnRelease {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)readFromDisk {
    r31 = r31 - 0x80;
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
    r19 = self;
    r20 = [NSUserDefaults standardUserDefaults];
    r21 = 0x0;
    r26 = &var_6C;
    do {
            if ([r20 objectForKey:[r19 getSettingsName:r21]] != 0x0) {
                    [r19 getSettingsName:r21];
                    r0 = [r20 boolForKey:r2];
            }
            else {
                    r0 = *(int32_t *)(0x100b9b754 + r21 * 0x4);
            }
            *(int32_t *)(r26 + r21 * 0x4) = r0;
            r21 = r21 + 0x1;
    } while (r21 != 0x9);
    r8 = var_64;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0xa) = r8;
    r8 = var_6C;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x8) = r8;
    r8 = var_68;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x9) = r8;
    r8 = var_60;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0xb) = r8;
    r8 = var_5C;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0xc) = r8;
    *(int32_t *)(r19 + 0x10) = var_58;
    r8 = var_54;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x14) = r8;
    r8 = var_50;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x15) = r8;
    r8 = var_4C;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    var_48 = **___stack_chk_guard;
    *(int8_t *)(r19 + 0x16) = r8;
    *(int8_t *)0x1011dec48 = r8;
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)setStopOnRelease:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)shootJoystickOnRight {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setShootJoystickOnRight:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)fixedJoysticks {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setFixedJoysticks:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)shootOnRelease {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setShootOnRelease:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(bool)directionOnTouch {
    r0 = *(int8_t *)(self + 0xc);
    return r0;
}

-(void)setDirectionOnTouch:(bool)arg2 {
    *(int8_t *)(self + 0xc) = arg2;
    return;
}

-(void)setShowTutorial:(int)arg2 {
    *(int32_t *)(self + 0x10) = arg2;
    return;
}

-(int)showTutorial {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(bool)drawDeadZones {
    r0 = *(int8_t *)(self + 0x14);
    return r0;
}

-(void)setDrawDeadZones:(bool)arg2 {
    *(int8_t *)(self + 0x14) = arg2;
    return;
}

-(bool)showArrow {
    r0 = *(int8_t *)(self + 0x15);
    return r0;
}

-(void)setShowArrow:(bool)arg2 {
    *(int8_t *)(self + 0x15) = arg2;
    return;
}

-(bool)showMinimap {
    r0 = *(int8_t *)(self + 0x16);
    return r0;
}

@end