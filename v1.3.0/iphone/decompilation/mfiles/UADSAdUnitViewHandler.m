@implementation UADSAdUnitViewHandler

-(bool)create:(void *)arg2 {
    return 0x1;
}

-(bool)destroy {
    return 0x1;
}

-(void)viewDidLoad:(void *)arg2 {
    return;
}

-(void *)getView {
    return 0x0;
}

-(void)viewDidAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(struct CGRect)getRect:(void *)arg2 {
    [arg2 retain];
    CGRectGetMinX([arg2 bounds]);
    CGRectGetMinY([arg2 bounds]);
    CGRectGetWidth([arg2 bounds]);
    [arg2 bounds];
    r0 = [r21 release];
    r0 = CGRectGetHeight(r0);
    return r0;
}

@end