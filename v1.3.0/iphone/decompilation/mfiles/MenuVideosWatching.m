@implementation MenuVideosWatching

-(void)stopBlocker {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)finishEnter:(bool)arg2 {
    r0 = self;
    if ((arg2 & 0x1) == 0x0) {
            [r0 performSelector:r2 withObject:r3 afterDelay:r4];
    }
    return;
}

@end