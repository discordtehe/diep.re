@implementation EmptyState

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(unsigned long long)stateId {
    return 0x2c;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    return;
}

-(void)injectParameters:(void *)arg2 {
    return;
}

-(void)changeZOrder:(unsigned long long)arg2 {
    return;
}

-(void)delayedLeave {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ([[[Application sharedApplication] stateMachine] isStateOnTop:r2] != 0x0) {
            [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    }
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if (arg3 != 0x0) {
            r0 = [r0 performSelector:@selector(delayedLeave) withObject:0x0 afterDelay:r4];
    }
    return r0;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = [NSObject cancelPreviousPerformRequestsWithTarget:r2 selector:r3 object:r4];
    return r0;
}

-(double)refresh {
    r0 = self;
    return r0;
}

-(void)finishEnter:(bool)arg2 {
    return;
}

-(void)finishLeave:(bool)arg2 {
    return;
}

-(void)finishRefresh {
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    return;
}

-(void)destroy {
    return;
}

-(void)enableInput {
    return;
}

-(void)disableInput {
    return;
}

-(void)show {
    return;
}

-(void)hide {
    return;
}

-(bool)isReusable {
    return 0x1;
}

-(bool)allowDuplicates {
    return 0x1;
}

-(bool)isRootState {
    return 0x0;
}

-(bool)occupiesFullScreen {
    return 0x0;
}

-(bool)hasLowerZOrder {
    return 0x0;
}

@end