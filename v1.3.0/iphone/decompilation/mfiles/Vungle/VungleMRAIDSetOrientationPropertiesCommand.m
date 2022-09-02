@implementation VungleMRAIDSetOrientationPropertiesCommand

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
    r20 = [[r0 objectForKeyedSubscript:@"forceOrientation"] retain];
    [r0 release];
    r22 = [@(0x2) retain];
    r23 = [@(0x18) retain];
    r24 = [@(0x1a) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r21 != 0x0) {
            r22 = [r21 integerValue];
    }
    else {
            r22 = 0x1e;
    }
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(commandSetOrientationPropertiesWithForceOrientation:)];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 commandSetOrientationPropertiesWithForceOrientation:r22];
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 finishWithErrors:0x0];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end