@implementation ADCStaticContainer

-(bool)shouldAutorotate {
    return 0x0;
}

-(void *)initWithDelegate:(void *)arg2 supportedOrientations:(unsigned long long)arg3 preferredOrientation:(long long)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r0 = [[&var_20 super] initWithDelegate:arg2 supportedOrientations:arg3];
    if (r0 != 0x0) {
            r0->_preferredOrientation = r19;
    }
    return r0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 beginGeneratingDeviceOrientationNotifications];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 orientation];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredOrientation));
    r8 = *(r20 + r8);
    if (r22 == 0x4) {
            asm { cinc       x10, x10, eq };
    }
    if (r8 != 0x1) {
            r21 = 0x0;
    }
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r20 = 0x3;
            }
            else {
                    r20 = 0x1;
            }
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 endGeneratingDeviceOrientationNotifications];
    [r0 release];
    if (r21 == 0x0) {
            r0 = r20;
    }
    else {
            r0 = objc_exception_rethrow();
    }
    return r0;
}

@end