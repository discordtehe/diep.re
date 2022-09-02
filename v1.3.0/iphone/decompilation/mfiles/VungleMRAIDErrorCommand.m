@implementation VungleMRAIDErrorCommand

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
    r0 = [self parameters];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"code"] retain];
    [r0 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(commandError:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 commandError:r20];
            [r0 release];
    }
    [r19 finishWithErrors:0x0];
    [r20 release];
    return;
}

@end