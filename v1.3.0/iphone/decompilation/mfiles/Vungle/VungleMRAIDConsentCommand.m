@implementation VungleMRAIDConsentCommand

-(void)execute {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [VungleURLCoder new];
    r21 = r0;
    r23 = [[r0 decodeURLEncodedString:r20] retain];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(commandConsentAction:)];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 commandConsentAction:r23];
            [r0 release];
    }
    r22 = [NSSet new];
    [r19 finishWithErrors:r22];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

@end