@implementation MenuDefaultFullScreenView

-(double)onLeaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 == 0x1 && r3 == 0x0) {
            r0 = sub_10004f0cc(r0);
    }
    return r0;
}

-(double)onEnterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r8 = arg3 ^ 0x1;
    if (r2 == 0x1 && r8 != 0x0) {
            r0 = sub_10004efec(r19);
    }
    else {
            if (r2 != 0x2c) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            if (((r9 | r8 ^ 0x1) & 0x1) == 0x0) {
                    r0 = [Application sharedApplication];
                    r0 = [r0 stateMachine];
                    r0 = [r0 isStateOnTop:r2];
                    if ((r0 & 0x1) == 0x0) {
                            r0 = sub_10004efec(r19);
                    }
            }
    }
    return r0;
}

@end