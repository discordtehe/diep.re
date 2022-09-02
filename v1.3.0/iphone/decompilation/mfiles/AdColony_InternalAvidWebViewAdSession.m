@implementation AdColony_InternalAvidWebViewAdSession

-(void)onViewRegistered {
    *(r31 + 0xffffffffffffffd0) = self;
    [[&var_20 super] onViewRegistered];
    r20 = [[self avidBridge] retain];
    r19 = [[self view] retain];
    [r20 setWebView:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)onViewUnregistered {
    *(r31 + 0xffffffffffffffd0) = self;
    [[&var_20 super] onViewUnregistered];
    r0 = [self avidBridge];
    r0 = [r0 retain];
    [r0 setWebView:0x0];
    [r0 release];
    return;
}

@end