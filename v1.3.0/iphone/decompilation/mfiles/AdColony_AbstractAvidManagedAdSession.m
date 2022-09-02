@implementation AdColony_AbstractAvidManagedAdSession

-(void)injectJavaScriptResource:(void *)arg2 {
    r19 = [arg2 retain];
    r21 = [[AdColony_AvidManager getInstance] retain];
    r20 = [[self avidAdSessionId] retain];
    r22 = [[r21 findInternalAvidAdSessionById:r20] retain];
    [r20 release];
    [r21 release];
    r0 = [r22 avidBridge];
    r0 = [r0 retain];
    [r0 injectJavaScriptResource:r19];
    [r19 release];
    [r0 release];
    [r22 release];
    return;
}

@end