@implementation MRResizeCommand

+(void *)commandType {
    return @"resize";
}

-(bool)executeWithParams:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 mrCommand:self resizeWithParams:r21];
    [r21 release];
    [r0 release];
    return 0x1;
}

@end