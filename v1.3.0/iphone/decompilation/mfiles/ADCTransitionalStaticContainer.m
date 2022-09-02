@implementation ADCTransitionalStaticContainer

-(void *)initWithSupportedOrientations:(unsigned long long)arg2 preferredOrientation:(long long)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [[&var_20 super] initWithSupportedOrientations:arg2];
    if (r0 != 0x0) {
            r0->preferredOrientationOverride = r19;
    }
    return r0;
}

-(bool)shouldAutorotate {
    return 0x0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    r0 = self->preferredOrientationOverride;
    return r0;
}

@end