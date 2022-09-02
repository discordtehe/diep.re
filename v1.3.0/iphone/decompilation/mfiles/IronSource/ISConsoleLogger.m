@implementation ISConsoleLogger

-(void *)initWithLevel:(int)arg2 {
    r0 = [[&var_10 super] initWithLevel:arg2];
    return r0;
}

-(void)log:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    [arg2 retain];
    [[self loggerTagToString:r2] retain];
    NSLog(@"[ironSource SDK] %@: %@", @selector(loggerTagToString:), arg4);
    [r22 release];
    [r19 release];
    return;
}

@end