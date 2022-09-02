@implementation VunglePrepareStoreViewCommand

-(void)execute {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(commandPrepareStoreView:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r22 = [[r19 parameters] retain];
            [r21 commandPrepareStoreView:r22];
            [r22 release];
            [r21 release];
    }
    [r19 finishWithErrors:0x0];
    return;
}

@end