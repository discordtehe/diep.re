@implementation ISAbstractViewController

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    r19 = [r0 appOrientation];
    [r0 release];
    r0 = [ISOrientationManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 orientationPolicy];
    r0 = [r0 retain];
    r22 = [r0 allowedOrientations];
    [r0 release];
    [r20 release];
    if ([ISOrientationUtillis orientationsHasSharedOrientation:r19 andOrientation:r22] != 0x0) {
    }
    r0 = [ISOrientationUtillis ISOrientation2UIInterfaceOrientation:r2];
    return r0;
}

-(bool)shouldAutorotate {
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 appOrientation];
    r0 = [ISOrientationManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 orientationPolicy];
    r0 = [r0 retain];
    r19 = [ISOrientationUtillis orientationsHasSharedOrientation:r21 andOrientation:[r0 allowedOrientations]];
    [r0 release];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

@end