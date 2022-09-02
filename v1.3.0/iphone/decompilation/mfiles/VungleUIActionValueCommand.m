@implementation VungleUIActionValueCommand

-(void)execute {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = [[r0 objectForKeyedSubscript:@"event"] retain];
    [r0 release];
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"value"] retain];
    [r0 release];
    r0 = [VungleURLCoder new];
    r22 = r0;
    var_58 = r20;
    r24 = [[r0 decodeURLEncodedString:r20] retain];
    r25 = [[r22 decodeURLEncodedString:r21] retain];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(commandUIAction:withValue:), r3];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 commandUIAction:r24 withValue:r25];
            [r0 release];
    }
    r20 = [NSSet new];
    [r19 finishWithErrors:r20];
    [r20 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    return;
}

@end