@implementation MRPlayVideoCommand

+(void *)commandType {
    return @"playVideo";
}

-(bool)requiresUserInteractionForPlacementType:(unsigned long long)arg2 {
    r0 = self;
    if (arg2 != 0x1) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)executeWithParams:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self delegate] retain];
    r22 = [[self urlFromParameters:r21 forKey:@"uri"] retain];
    [r21 release];
    [r20 mrCommand:self playVideoWithURL:r22];
    [r22 release];
    [r20 release];
    return 0x1;
}

@end