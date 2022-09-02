@implementation AdColony_AvidManagedVideoAdSession

-(void *)avidVideoPlaybackListener {
    r20 = [[AdColony_AvidManager getInstance] retain];
    r19 = [[self avidAdSessionId] retain];
    r21 = [[r20 findInternalAvidAdSessionById:r19] retain];
    [r19 release];
    [r20 release];
    r19 = [[r21 avidVideoPlaybackListener] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

@end