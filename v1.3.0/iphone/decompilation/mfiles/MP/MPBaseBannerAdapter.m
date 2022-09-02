@implementation MPBaseBannerAdapter

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setDelegate:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self unregisterDelegate];
    r0 = [self timeoutTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)unregisterDelegate {
    [self setDelegate:0x0];
    return;
}

-(void)getAdWithConfiguration:(void *)arg2 targeting:(void *)arg3 containerSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    [self doesNotRecognizeSelector:_cmd];
    return;
}

-(void)_getAdWithConfiguration:(void *)arg2 targeting:(void *)arg3 containerSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setConfiguration:r21];
    [self startTimeoutTimer];
    [self getAdWithConfiguration:r21 targeting:r19 containerSize:r4];
    [r19 release];
    [r21 release];
    return;
}

-(void)didDisplayAd {
    [self trackImpression];
    return;
}

-(void)didStopLoading {
    r0 = [self timeoutTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void)timeout {
    r20 = [[NSError errorWithCode:0x19 localizedDescription:@"Banner ad request timed out"] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailToLoadAdWithError:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)startTimeoutTimer {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100487394;

loc_10048735c:
    r0 = [r19 configuration];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 adTimeoutInterval];
    if (d0 >= 0x0) goto loc_100487434;

loc_10048738c:
    [r22 release];
    goto loc_100487394;

loc_100487394:
    [r20 release];
    r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
    [r19 setTimeoutTimer:r20];
    [r20 release];
    r0 = [r19 timeoutTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    return;

loc_100487434:
    r0 = [r19 configuration];
    r29 = r29;
    r0 = [r0 retain];
    [r0 adTimeoutInterval];
    v8 = v0;
    [r21 release];
    [r22 release];
    [r20 release];
    if (d8 > 0x0) {
            r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
            [r19 setTimeoutTimer:r20];
            [r20 release];
            r0 = [r19 timeoutTimer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
    }
    return;
}

-(void)rotateToOrientation:(long long)arg2 {
    return;
}

-(void)trackImpression {
    r20 = [[MPAnalyticsTracker sharedTracker] retain];
    r19 = [[self configuration] retain];
    [r20 trackImpressionForConfiguration:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)impressionTrackingURL {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void)trackClick {
    r20 = [[MPAnalyticsTracker sharedTracker] retain];
    r19 = [[self configuration] retain];
    [r20 trackClickForConfiguration:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)clickTrackingURL {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setImpressionTrackingURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)configuration {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setClickTrackingURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)timeoutTimer {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setTimeoutTimer:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end