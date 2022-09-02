@implementation GameNavigationController

-(unsigned long long)application:(void *)arg2 supportedInterfaceOrientationsForWindow:(void *)arg3 {
    return 0x18;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x18;
}

-(bool)shouldAutorotateToInterfaceOrientation:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

@end