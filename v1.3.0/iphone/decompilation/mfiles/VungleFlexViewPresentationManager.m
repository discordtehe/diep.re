@implementation VungleFlexViewPresentationManager

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)animationControllerForDismissedController:(void *)arg2 {
    r0 = objc_alloc();
    r0 = [r0 initWithIsPresentation:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithInterstitial:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(r0 + 0x8) = r19;
    }
    return r0;
}

-(void *)animationControllerForPresentedController:(void *)arg2 presentingController:(void *)arg3 sourceController:(void *)arg4 {
    r0 = objc_alloc();
    r0 = [r0 initWithIsPresentation:0x1];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isInterstitial {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsInterstitial:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

@end