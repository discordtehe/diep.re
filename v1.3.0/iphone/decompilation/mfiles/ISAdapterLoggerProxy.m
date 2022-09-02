@implementation ISAdapterLoggerProxy

-(void)log:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x2];
    [r21 release];
    [r0 release];
    return;
}

-(void)logFromError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r21 level:0x3 tag:0x2];
    [r21 release];
    [r0 release];
    return;
}

-(void)logFromException:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromException:r21 level:0x3 tag:0x2];
    [r21 release];
    [r0 release];
    return;
}

@end