@implementation MOPUBAVPlayerView

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setPlayer:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setVideoGravity:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setVideoGravity:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)player {
    r0 = [self layer];
    r0 = [r0 retain];
    r20 = [[r0 player] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)videoGravity {
    r0 = [self layer];
    r0 = [r0 retain];
    r20 = [[r0 videoGravity] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

@end