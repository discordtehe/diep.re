@implementation MRUseCustomCloseCommand

-(bool)executableWhileBlockingRequests {
    return 0x1;
}

-(bool)requiresUserInteractionForPlacementType:(unsigned long long)arg2 {
    return 0x0;
}

+(void *)commandType {
    return @"usecustomclose";
}

-(bool)executeWithParams:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self delegate] retain];
    r22 = [self boolFromParameters:r21 forKey:@"shouldUseCustomClose"];
    [r21 release];
    [r20 mrCommand:self shouldUseCustomClose:r22];
    [r20 release];
    return 0x1;
}

@end