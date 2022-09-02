@implementation RefreshMenuStateCommand

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

+(void *)commandWithDelegate:(void *)arg2 stackEntry:(void *)arg3 {
    r0 = [RefreshMenuStateCommand object];
    [r0 setupWithDelegate:arg2 stackEntry:arg3];
    r0 = r0;
    return r0;
}

-(void)execute {
    r0 = self;
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    *(int8_t *)(r19 + 0x10) = 0x1;
                    if (*(r19 + 0x20) != 0x0) {
                            if (([*(r19 + 0x18) respondsToSelector:@selector(willRefreshState:)] & 0x1) != 0x0) {
                                    [*(int128_t *)(r19 + 0x18) willRefreshState:[[*(int128_t *)(r19 + 0x20) menuState] theId]];
                            }
                            [[*(r19 + 0x20) instance] refresh];
                            if (d0 > 0x0) {
                                    r0 = [CCDirector sharedDirector];
                                    r0 = [r0 scheduler];
                                    var_60 = *__NSConcreteStackBlock;
                                    [r0 scheduleBlockForKey:@"RefreshMenuStateCommandFinishHelper" target:r19 interval:0x0 repeat:0x0 delay:&var_60 paused:r7 block:var_60];
                            }
                            else {
                                    [r19 finish];
                            }
                    }
                    else {
                            [r19 finish];
                    }
            }
    }
    return;
}

-(void)setupWithDelegate:(void *)arg2 stackEntry:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    r20 = r3;
                    r21 = r2;
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x18) = 0x0;
                    }
                    r0 = *(r19 + 0x20);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x20) = 0x0;
                    }
                    *(r19 + 0x18) = [r21 retain];
                    *(r19 + 0x20) = [r20 retain];
            }
    }
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(self + 0x11);
    return r0;
}

-(void)finish {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            [[r0 instance] finishRefresh];
            if ([*(r19 + 0x18) respondsToSelector:@selector(didRefreshState:)] != 0x0) {
                    [*(int128_t *)(r19 + 0x18) didRefreshState:[[*(int128_t *)(r19 + 0x20) menuState] theId]];
            }
    }
    *(int16_t *)(r19 + 0x10) = 0x100;
    return;
}

@end