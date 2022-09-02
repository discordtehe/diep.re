@implementation GADOMIDWindowProcessor

-(struct CGRect)frameInWindowSystemForView:(void *)arg2 {
    objc_storeStrong(&var_38, arg2);
    [var_38 bounds];
    r0 = objc_storeStrong(&var_38, 0x0);
    return r0;
}

-(void *)windowForView:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    var_30 = [var_18 retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_30 autorelease];
    return r0;
}

@end