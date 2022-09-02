@implementation ISNAppOrientationCalculator

+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(void *)arg2 {
    r0 = [ISNAppOrientationCalculator calculateApplicationSupportedOrientationMaskFromOrientationData:arg2 externalOrientation:0x0 presentingViewControllerOrientation:0x0];
    return r0;
}

+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(void *)arg2 externalOrientation:(int)arg3 presentingViewControllerOrientation:(unsigned long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r19 = [arg2 retain];
    if (r21 == 0x0) {
            if (r20 == 0x0) {
                    r20 = [r19 topMostViewControllerOrientation];
            }
            if ([ISOrientationUtillis orientationsHasSharedOrientation:[r19 windowOrientation] andOrientation:r20] != 0x0) {
                    r21 = [ISOrientationUtillis sharedOrientationsBetweenOrientation:[r19 windowOrientation] andOrientation:r20];
            }
            else {
                    r1 = @selector(windowOrientation);
                    if (objc_msgSend(r19, r1) == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r1 = @selector(windowOrientation);
                            }
                            else {
                                    r1 = @selector(statusBarOrientation);
                            }
                    }
                    r21 = objc_msgSend(r19, r1);
            }
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(void *)arg2 externalOrientation:(int)arg3 {
    r0 = [ISNAppOrientationCalculator calculateApplicationSupportedOrientationMaskFromOrientationData:arg2 externalOrientation:arg3 presentingViewControllerOrientation:0x0];
    return r0;
}

+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(void *)arg2 presentingViewControllerOrientation:(unsigned long long)arg3 {
    r0 = [ISNAppOrientationCalculator calculateApplicationSupportedOrientationMaskFromOrientationData:arg2 externalOrientation:0x0 presentingViewControllerOrientation:arg3];
    return r0;
}

-(int)externalAppOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_externalAppOrientation;
    return r0;
}

-(void)setExternalAppOrientation:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_externalAppOrientation = arg2;
    return;
}

-(unsigned long long)presentingViewControllerOrientation {
    r0 = self->_presentingViewControllerOrientation;
    return r0;
}

-(void)setPresentingViewControllerOrientation:(unsigned long long)arg2 {
    self->_presentingViewControllerOrientation = arg2;
    return;
}

@end