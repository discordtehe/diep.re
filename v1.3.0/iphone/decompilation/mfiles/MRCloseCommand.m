@implementation MRCloseCommand

-(bool)executeWithParams:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 mrCommandClose:self];
    [r0 release];
    return 0x1;
}

+(void *)commandType {
    return @"close";
}

@end