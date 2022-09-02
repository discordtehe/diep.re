@implementation InterstitialsManager

+(void *)sharedInterstitialsManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011ce498;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011ce498 = r0;
    }
    return r0;
}

+(void)releaseSharedInterstitialsManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011ce498 != 0x0) {
            [*0x1011ce498 release];
            *0x1011ce498 = 0x0;
    }
    return;
}

+(bool)isInterstitialsManagerInitialized {
    r0 = self;
    if (*qword_1011ce498 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    return;
}

-(bool)showPopup {
    r0 = [self showInterstitial];
    return r0;
}

-(bool)canShowInterstitialForDeathsTotal:(int)arg2 thisSession:(int)arg3 {
    [self showInterstitial];
    return 0x0;
}

-(void)preloadInterstitial {
    return;
}

-(bool)showInterstitial {
    r0 = [Application sharedApplication];
    r0 = [r0 adsManager];
    r0 = sub_100083524(r0);
    return r0;
}

-(bool)areBoardsDisplaying {
    return 0x0;
}

-(bool)requestingShowInterstitial {
    return 0x0;
}

-(void)increaseNumDeaths {
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 info];
    [r0 setDeathsTotal:[r0 deathsTotal] + 0x1];
    [r0 setDeathsThisSession:[r0 deathsThisSession] + 0x1];
    return;
}

@end