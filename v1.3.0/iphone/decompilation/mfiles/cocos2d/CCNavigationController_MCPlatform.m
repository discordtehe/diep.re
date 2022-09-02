@implementation CCNavigationController_MCPlatform

-(unsigned long long)application:(void *)arg2 supportedInterfaceOrientationsForWindow:(void *)arg3 {
    r0 = sub_100434364();
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = sub_100434364();
    return r0;
}

-(bool)shouldAutorotateToInterfaceOrientation:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            if (CPU_FLAGS & B) {
                    r9 = 0x1;
            }
    }
    r10 = *(int128_t *)0x1011e34f8;
    if (r10 == *(int128_t *)0x1011e3500) goto loc_100434420;

loc_1004343ec:
    r10 = *(int128_t *)0x1011e34f8;
    r9 = r9 << 0x2;
    if (*(int32_t *)r10 == r9) goto loc_100434420;

loc_1004343fc:
    r10 = *(int128_t *)0x1011e34f8;
    r10 = r10 + 0x4;
    goto loc_100434400;

loc_100434400:
    if (*(int128_t *)0x1011e3500 == r10) goto loc_10043441c;

loc_100434408:
    r11 = *(int32_t *)r10;
    r10 = r10 + 0x4;
    if (r11 != r9) goto loc_100434400;

loc_100434414:
    r10 = r10 - 0x4;
    goto loc_100434420;

loc_100434420:
    if (r10 != *(int128_t *)0x1011e3500) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_10043441c:
    r10 = *(int128_t *)0x1011e3500;
    goto loc_100434420;
}

@end