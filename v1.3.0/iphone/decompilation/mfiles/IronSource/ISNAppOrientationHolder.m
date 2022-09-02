@implementation ISNAppOrientationHolder

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dacf0 != -0x1) {
            dispatch_once(0x1011dacf0, &var_28);
    }
    r0 = *0x1011dace8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 updateAppOrientation];
    }
    r0 = r19;
    return r0;
}

-(void)setExternalAppOrientation:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_externalAppOrientation = arg2;
    [self updateAppOrientation];
    return;
}

-(void)setPresentingViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_presentingViewController, arg2);
    [self updateAppOrientation];
    return;
}

-(void)setSessionConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionConfiguration, arg2);
    r19 = [arg2 retain];
    [self updateAppOrientation];
    [r19 release];
    return;
}

-(void)updateAppOrientation {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self presentingViewController];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 presentingViewController];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 supportedInterfaceOrientations];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    r0 = [r19 sessionConfiguration];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 sessionConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 allowOrientationFromAppDelegate];
            [r0 release];
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    r22 = [[SSEOrientationContext applicationOrientationDataWithAppDelegateDataIfAllowed:r22] retain];
    *(int32_t *)(int64_t *)&r19->_appOrientation = [ISNAppOrientationCalculator calculateApplicationSupportedOrientationMaskFromOrientationData:r22 externalOrientation:[r19 externalAppOrientation] presentingViewControllerOrientation:r20];
    [r22 release];
    return;
}

-(int)externalAppOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_externalAppOrientation;
    return r0;
}

-(void *)presentingViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_presentingViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)sessionConfiguration {
    r0 = self->_sessionConfiguration;
    return r0;
}

-(int)appOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_appOrientation;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sessionConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_presentingViewController);
    return;
}

@end