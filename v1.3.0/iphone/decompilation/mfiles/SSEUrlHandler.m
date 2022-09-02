@implementation SSEUrlHandler

-(void)openUrl:(void *)arg2 {
    [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 openURL:r2];
    [r21 release];
    [r19 release];
    return;
}

@end