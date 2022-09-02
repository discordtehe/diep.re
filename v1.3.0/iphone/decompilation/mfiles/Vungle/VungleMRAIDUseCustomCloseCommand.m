@implementation VungleMRAIDUseCustomCloseCommand

-(void)execute {
    r31 = r31 - 0x90;
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
    r0 = [self parameters];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"sdkCloseButton"] retain];
    [r0 release];
    r23 = [@(0x0) retain];
    r21 = 0x1;
    r24 = [@(0x1) retain];
    r25 = [@(0x2) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r22 != 0x0) {
            r21 = [r22 integerValue];
    }
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(commandShouldUseCustomClose:)];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 commandShouldUseCustomClose:r21];
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    r21 = [NSSet new];
    [r19 finishWithErrors:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end