@implementation FIRComponentType

+(void *)instanceForProtocol:(void *)arg2 inContainer:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [[arg3 instanceForProtocol:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end