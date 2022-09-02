@implementation MRExpandModalViewController

-(void *)initWithOrientationMask:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_supportedOrientationMask = r19;
            [r20 setModalPresentationStyle:0x0];
    }
    r0 = r20;
    return r0;
}

-(void)viewDidLoad {
    [[&var_20 super] viewDidLoad];
    r20 = [[UIColor blackColor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[UIApplication sharedApplication] retain];
    if ([r20 mp_supportsOrientationMask:[r19 supportedOrientationMask]] != 0x0) {
            r19 = [r19 supportedOrientationMask];
    }
    else {
            r19 = 0x1e;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)setSupportedOrientationMask:(unsigned long long)arg2 {
    self->_supportedOrientationMask = arg2;
    [UIViewController attemptRotationToDeviceOrientation];
    return;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(void)closeButtonPressed:(void *)arg2 {
    [self dismissViewControllerAnimated:0x1 completion:0x0];
    return;
}

-(unsigned long long)supportedOrientationMask {
    r0 = self->_supportedOrientationMask;
    return r0;
}

@end