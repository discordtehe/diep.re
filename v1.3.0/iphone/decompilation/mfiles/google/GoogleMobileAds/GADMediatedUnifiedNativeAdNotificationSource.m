@implementation GADMediatedUnifiedNativeAdNotificationSource

+(void)mediatedNativeAdDidRecordImpression:(void *)arg2 {
    sub_1008833e8(*0x100e9c560, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdDidRecordClick:(void *)arg2 {
    sub_1008833e8(*0x100e9c568, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdWillDismissScreen:(void *)arg2 {
    sub_1008833e8(*0x100e9c578, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdWillPresentScreen:(void *)arg2 {
    sub_1008833e8(*0x100e9c570, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdWillLeaveApplication:(void *)arg2 {
    sub_1008833e8(*0x100e9c588, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdDidDismissScreen:(void *)arg2 {
    sub_1008833e8(*0x100e9c580, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdDidPauseVideo:(void *)arg2 {
    sub_1008833e8(*0x100e9c598, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdDidPlayVideo:(void *)arg2 {
    sub_1008833e8(*0x100e9c590, arg2, 0x0);
    return;
}

+(void)mediatedNativeAdDidEndVideoPlayback:(void *)arg2 {
    sub_1008833e8(*0x100e9c5a0, arg2, 0x0);
    return;
}

@end