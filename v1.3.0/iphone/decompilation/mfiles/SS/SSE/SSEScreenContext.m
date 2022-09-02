@implementation SSEScreenContext

+(double)scale {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    r0 = [r19 release];
    return r0;
}

@end