@implementation MCMutableSequenceCommand

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
            if (([r0 isFinished] & 0x1) == 0x0) {
                    [r20->mCommandQueue enqueueCommand:r2];
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
            if ([r2 count] != 0x0 && ([r20 isFinished] & 0x1) == 0x0) {
                    [r20->mCommandQueue enqueueCommands:r19];
            }
    }
    return;
}

@end