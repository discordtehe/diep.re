@implementation ADCAlertController

-(void *)initWithSupportedOrientations:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            r0->supportedOrientationsOverride = r19;
    }
    return r0;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->supportedOrientationsOverride;
    return r0;
}

@end