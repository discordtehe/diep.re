@implementation UADSVideoView

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

-(void *)player {
    r0 = [self layer];
    r0 = [r0 retain];
    r20 = [[r0 player] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setVideoFillMode:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    r19 = r0;
    r2 = r22;
    [r0 setVideoGravity:r2];
    [r22 release];
    r22 = [[self layer] retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 bounds];
    [r22 setBounds:r2];
    [r0 release];
    [r22 release];
    [r19 release];
    return;
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

@end