@implementation UMONShowAdPlacementContent

-(void)show:(void *)arg2 withDelegate:(void *)arg3 {
    r21 = [arg2 retain];
    [self setDelegate:arg3];
    [self show:r21];
    [r21 release];
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)show:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(delegate);
            r22 = [[UMONShowAdDelegateManager sharedInstance] retain];
            r23 = [objc_msgSend(r20, r21) retain];
            r0 = [r20 placementId];
            r29 = r29;
            r24 = [r0 retain];
            [r22 setDelegate:r23 forPlacementId:r24];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    r0 = [r20 placementId];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [UnityAds isReady:r23];
    [r23 release];
    if (r22 == 0x0) goto loc_1000f4358;

loc_1000f4320:
    r20 = [[r20 placementId] retain];
    [UnityAds show:r19 placementId:r20];
    goto loc_1000f4414;

loc_1000f4414:
    [r20 release];
    goto loc_1000f441c;

loc_1000f441c:
    [r19 release];
    return;

loc_1000f4358:
    r22 = [[UMONShowAdDelegateManager sharedInstance] retain];
    r0 = [r20 placementId];
    r29 = r29;
    r23 = [r0 retain];
    r2 = r23;
    [r22 sendAdFinished:r2 withFinishState:0x0];
    [r23 release];
    [r22 release];
    if ([USRVDeviceLog getLogLevel] < 0x2) goto loc_1000f441c;

loc_1000f43d4:
    r20 = [[r20 placementId] retain];
    NSLog(@"%@/UnityAds: %s (line:%d) :: Ad with placement ID %@ was attempted to show without being ready", @selector(placementId), r2, 0x0, r4);
    goto loc_1000f4414;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

@end