@implementation StateSelectors

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int128_t *)(r0 + 0x58) = q0;
            *(int128_t *)(r0 + 0x48) = q0;
            *(int128_t *)(r0 + 0x38) = q0;
            *(int128_t *)(r0 + 0x28) = q0;
            *(int128_t *)(r0 + 0x18) = q0;
            *(int128_t *)(r0 + 0x8) = q0;
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 release];
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
    }
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
    }
    r0 = *(r19 + 0x60);
    if (r0 != 0x0) {
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setEnterStateByPushSelector:(void *)arg2 {
    r0 = self;
    *(r0 + 0x8) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x18) = 0x0;
            [r0 setEnterStateByPushParam:r2];
    }
    return;
}

-(void)setLeaveStateByPushSelector:(void *)arg2 {
    r0 = self;
    *(r0 + 0x38) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x48) = 0x0;
            [r0 setLeaveStateByPushParam:r2];
    }
    return;
}

-(void)setEnterStateByPopSelector:(void *)arg2 {
    r0 = self;
    *(r0 + 0x10) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x20) = 0x0;
            [r0 setEnterStateByPopParam:r2];
    }
    return;
}

-(void)setLeaveStateByPopSelector:(void *)arg2 {
    r0 = self;
    *(r0 + 0x40) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x50) = 0x0;
            [r0 setLeaveStateByPopParam:r2];
    }
    return;
}

-(void)setEnterStateByPushTarget:(void *)arg2 {
    r0 = self;
    *(r0 + 0x18) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x8) = 0x0;
            [r0 setEnterStateByPushParam:r2];
    }
    return;
}

-(void)setEnterStateByPopTarget:(void *)arg2 {
    r0 = self;
    *(r0 + 0x20) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x10) = 0x0;
            [r0 setEnterStateByPopParam:r2];
    }
    return;
}

-(void)setLeaveStateByPushTarget:(void *)arg2 {
    r0 = self;
    *(r0 + 0x48) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x38) = 0x0;
            [r0 setLeaveStateByPushParam:r2];
    }
    return;
}

-(void)setLeaveStateByPopTarget:(void *)arg2 {
    r0 = self;
    *(r0 + 0x50) = arg2;
    if (arg2 == 0x0) {
            *(r0 + 0x40) = 0x0;
            [r0 setLeaveStateByPopParam:r2];
    }
    return;
}

-(void)setEnterStateByPushParam:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x28);
            if (r0 != 0x0) {
                    [r0 release];
            }
            if (r20 != 0x0) {
                    r0 = [r20 retain];
            }
            else {
                    r0 = 0x0;
            }
            *(r19 + 0x28) = r0;
    }
    return;
}

-(void)setEnterStateByPopParam:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x10) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x30);
            if (r0 != 0x0) {
                    [r0 release];
            }
            if (r20 != 0x0) {
                    r0 = [r20 retain];
            }
            else {
                    r0 = 0x0;
            }
            *(r19 + 0x30) = r0;
    }
    return;
}

-(void)setLeaveStateByPopParam:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x40) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x60);
            if (r0 != 0x0) {
                    [r0 release];
            }
            if (r20 != 0x0) {
                    r0 = [r20 retain];
            }
            else {
                    r0 = 0x0;
            }
            *(r19 + 0x60) = r0;
    }
    return;
}

-(void)setLeaveStateByPushParam:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x38) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x58);
            if (r0 != 0x0) {
                    [r0 release];
            }
            if (r20 != 0x0) {
                    r0 = [r20 retain];
            }
            else {
                    r0 = 0x0;
            }
            *(r19 + 0x58) = r0;
    }
    return;
}

-(void *)enterStateByPushSelector {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)enterStateByPopSelector {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)enterStateByPushTarget {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)leaveStateByPushSelector {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)leaveStateByPopSelector {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)enterStateByPopTarget {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)enterStateByPushParam {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)leaveStateByPushTarget {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)leaveStateByPopTarget {
    r0 = *(self + 0x50);
    return r0;
}

-(void *)enterStateByPopParam {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)leaveStateByPushParam {
    r0 = *(self + 0x58);
    return r0;
}

-(void *)leaveStateByPopParam {
    r0 = *(self + 0x60);
    return r0;
}

@end