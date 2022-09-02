@implementation MOPUBNativeVideoAdConfigValues

-(void *)initWithPlayVisiblePercent:(long long)arg2 pauseVisiblePercent:(long long)arg3 impressionMinVisiblePixels:(double)arg4 impressionMinVisiblePercent:(long long)arg5 impressionMinVisibleSeconds:(double)arg6 maxBufferingTime:(double)arg7 trackers:(void *)arg8 {
    r31 = r31 - 0x70;
    var_50 = d11;
    stack[-88] = d10;
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
    r19 = arg5;
    r21 = arg3;
    r22 = arg2;
    r20 = [arg5 retain];
    r0 = [[&var_60 super] initWithImpressionMinVisiblePixels:arg4 impressionMinVisiblePercent:r3 impressionMinVisibleSeconds:r4];
    r23 = r0;
    if (r0 != 0x0) {
            r23->_playVisiblePercent = r22;
            r23->_pauseVisiblePercent = r21;
            r23->_maxBufferingTime = d8;
            objc_storeStrong((int64_t *)&r23->_trackers, r19);
    }
    [r20 release];
    r0 = r23;
    return r0;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isImpressionMinVisiblePixelsValid] & 0x1) == 0x0 && [r19 isImpressionMinVisiblePercentValid] == 0x0) {
            r0 = 0x0;
    }
    else {
            if ([r19 isImpressionMinVisibleSecondsValid] != 0x0) {
                    [r19 playVisiblePercent];
                    if ([r19 isValidPercentage:r2] != 0x0) {
                            r2 = [r19 pauseVisiblePercent];
                            if ([r19 isValidPercentage:r2] != 0x0) {
                                    [r19 maxBufferingTime];
                                    r0 = [r19 isValidTimeInterval:r2];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(long long)playVisiblePercent {
    r0 = self->_playVisiblePercent;
    return r0;
}

-(double)maxBufferingTime {
    r0 = self;
    return r0;
}

-(long long)pauseVisiblePercent {
    r0 = self->_pauseVisiblePercent;
    return r0;
}

-(void *)trackers {
    r0 = self->_trackers;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackers, 0x0);
    return;
}

@end