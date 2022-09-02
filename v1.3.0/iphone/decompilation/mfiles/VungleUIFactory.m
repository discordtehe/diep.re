@implementation VungleUIFactory

+(void *)vungleCloseButtonWithImage:(void *)arg2 {
    r0 = [VungleUIFactory vungleButtonWithImage:arg2];
    r0 = [r0 retain];
    [r0 setEnabled:0x1];
    [r0 setAlpha:r2];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)vungleButtonWithImage:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = objc_alloc();
    r0 = [r0 initWithFrame:r2];
    r20 = r0;
    r0 = [r0 imageView];
    r0 = [r0 retain];
    [r0 setContentMode:0x1];
    [r0 release];
    [r20 setAdjustsImageWhenDisabled:0x0];
    [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r20 setImage:r19 forState:0x0];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)vungleProgressBar {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)vungleCTAButtonWithImage:(void *)arg2 originalSize:(struct CGSize)arg3 clickArea:(double)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    [VungleUIFactory adjustedButtonSize:r2 clickArea:r3];
    r0 = objc_alloc();
    r0 = [r0 initWithFrame:r2];
    [r0 setImage:r21 forState:0x0];
    [r21 release];
    [r0 setImageEdgeInsets:r21];
    [r0 setAdjustsImageWhenDisabled:0x0];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)vungleBlue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = *0x1011da910;
    if (r19 == 0x0) {
            r19 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
            r0 = *0x1011da910;
            *0x1011da910 = r19;
            [r0 release];
    }
    r0 = objc_retainAutoreleaseReturnValue(r19);
    return r0;
}

+(void *)closeButtonImage {
    UIGraphicsBeginImageContextWithOptions();
    [VungleShapes drawClose];
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

+(void *)callToActionButtonImage {
    UIGraphicsBeginImageContextWithOptions();
    [VungleShapes drawCallToAction];
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

+(void *)muteOnButtonImage {
    UIGraphicsBeginImageContextWithOptions();
    [VungleShapes drawMuteOn];
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

+(struct CGSize)adjustedButtonSize:(struct CGSize)arg2 clickArea:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

+(void *)muteOffButtonImage {
    UIGraphicsBeginImageContextWithOptions();
    [VungleShapes drawMuteOff];
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

+(double)adjustedButtonPadding:(double)arg2 originalSize:(struct CGSize)arg3 adjustedSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = self;
    d2 = (d3 - d1) * 0x3fe0000000000000;
    d1 = (d3 - d1) * 0xbfe0000000000000;
    if (d2 > 0x0) {
            asm { fcsel      d1, d1, d2, gt };
    }
    return r0;
}

@end