@implementation GADGestureIdUtil

+(void *)sharedInstance {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011db798 == 0x0) {
            *0x1011db798 = [[GADGestureIdUtil alloc] init];
    }
    return *0x1011db798;
}

-(void *)init {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    var_8 = r0;
    if (r0 != 0x0) {
            var_8->userDefaults_ = [[NSUserDefaults alloc] init];
    }
    r0 = var_8;
    return r0;
}

-(void)dealloc {
    [self->userDefaults_ release];
    [[&var_20 super] dealloc];
    return;
}

+(void)getOSMajor:(int *)arg2 minor:(int *)arg3 bugFix:(int *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    sub_1007c6c1c(r0, r1, r2, r3, r4, r5, r6, r7, stack[-80], stack[-72], stack[-64], stack[-56], stack[-48], stack[-40], stack[-32], stack[-24], stack[-16]);
    return;
}

+(bool)isOSAtLeastMajor:(int)arg2 minor:(int)arg3 bug:(int)arg4 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_1C = arg2;
    var_20 = arg3;
    var_24 = arg4;
    r0 = [GADGestureIdUtil getOSMajor:&var_28 minor:&var_2C bugFix:&var_30];
    if (var_28 > var_1C) {
            r8 = 0x1;
            var_1 = r8;
    }
    else {
            if (var_28 == var_1C) {
                    if (var_2C > var_20) {
                            var_1 = 0x1;
                    }
                    else {
                            if (var_2C == var_20 && var_30 >= var_24) {
                                    var_1 = 0x1;
                            }
                            else {
                                    var_1 = 0x0;
                            }
                    }
            }
            else {
                    var_1 = 0x0;
            }
    }
    r0 = var_1 & 0x1 & 0x1;
    return r0;
}

-(void *)osVersion {
    var_20 = sub_1007c6848();
    r0 = sub_1007c5720(*0x1011c29f0, 0x1011db7a0);
    r0 = objc_msgSend(var_20, r0);
    return r0;
}

-(void *)deviceIdentifier {
    r0 = loc_1007c6f78(self, _cmd);
    return r0;
}

-(bool)deviceOptedOut {
    [[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled];
    r0 = loc_1007c706c();
    return r0;
}

-(void *)userDefaults {
    r0 = self->userDefaults_;
    return r0;
}

-(void)setUserDefaults:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end