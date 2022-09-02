@implementation MROpenCommand

+(void *)commandType {
    return @"open";
}

-(bool)executeWithParams:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self delegate] retain];
    r22 = [[self urlFromParameters:r21 forKey:@"url"] retain];
    [r21 release];
    [r20 mrCommand:self openURL:r22];
    [r22 release];
    [r20 release];
    return 0x1;
}

@end