@implementation AdColony_AvidWindowProcessor

-(struct CGRect)frameInWindowSystemForView:(void *)arg2 {
    r0 = [arg2 bounds];
    return r0;
}

-(void *)windowForView:(void *)arg2 {
    r0 = objc_retainAutoreleaseReturnValue(arg2);
    return r0;
}

@end