@implementation FBSKStoreProductViewControllerWithOrientationMask

-(void *)initWithOrientationMask:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithNibName:0x0 bundle:0x0];
    if (r0 != 0x0) {
            r0->_orientationMask = r19;
    }
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->_orientationMask;
    return r0;
}

-(bool)shouldAutorotate {
    return 0x0;
}

-(unsigned long long)orientationMask {
    r0 = self->_orientationMask;
    return r0;
}

-(bool)prefersStatusBarHidden {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 userInterfaceIdiom] == 0x0) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setOrientationMask:(unsigned long long)arg2 {
    self->_orientationMask = arg2;
    return;
}

@end