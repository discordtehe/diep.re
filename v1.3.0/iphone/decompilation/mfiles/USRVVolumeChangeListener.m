@implementation USRVVolumeChangeListener

-(void)onVolumeChanged:(float)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [[USRVWebViewApp getCurrentApp] retain];
            r20 = [sub_1000d1038() retain];
            r22 = [[NSNumber numberWithFloat:r2] retain];
            r23 = @class(NSNumber);
            [USRVDevice getDeviceMaxVolume];
            r21 = [[r23 numberWithFloat:r2] retain];
            [r19 sendEvent:@"VOLUME_CHANGED" category:r20 param1:r22];
            [r21 release];
            [r22 release];
            [r20 release];
            [r19 release];
    }
    return;
}

@end