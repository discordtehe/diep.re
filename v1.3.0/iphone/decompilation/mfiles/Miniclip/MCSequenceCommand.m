@implementation MCSequenceCommand

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [MCCommandQueue new];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

+(void *)commandWithCommands:(void *)arg2 {
    r0 = [MCSequenceCommand object];
    [r0 addCommands:arg2];
    r0 = r0;
    return r0;
}

-(void)addCommand:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if (([*(r0 + 0x8) isRunning] & 0x1) == 0x0) {
                    [*(r20 + 0x8) enqueueCommand:r2];
            }
    }
    return;
}

-(void)addCommands:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([r2 count] != 0x0 && ([*(r20 + 0x8) isRunning] & 0x1) == 0x0) {
                    [*(r20 + 0x8) enqueueCommands:r19];
            }
    }
    return;
}

-(void)execute {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([*(self + 0x8) isRunning] & 0x1) == 0x0) {
            [*(r19 + 0x8) run];
    }
    return;
}

-(bool)isFinished {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 isRunning];
    if (r0 != 0x0) {
            r0 = *(r19 + 0x8);
            r0 = [r0 isExecutingCommand];
            r0 = r0 ^ 0x1;
    }
    return r0;
}

@end