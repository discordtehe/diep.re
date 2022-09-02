@implementation MPNativeAdConfigValues

-(bool)isValidPercentage:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x65) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isValidTimeInterval:(double)arg2 {
    r0 = self;
    if (d0 > 0x0) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isValidNumberOfPixels:(double)arg2 {
    r0 = self;
    if (d0 >= 0x0) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)initWithImpressionMinVisiblePixels:(double)arg2 impressionMinVisiblePercent:(long long)arg3 impressionMinVisibleSeconds:(double)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = d9;
            *(r0 + 0x10) = r19;
            *(r0 + 0x18) = d8;
    }
    return r0;
}

-(bool)isImpressionMinVisibleSecondsValid {
    [self impressionMinVisibleSeconds];
    r0 = [self isValidTimeInterval:r2];
    return r0;
}

-(bool)isImpressionMinVisiblePixelsValid {
    [self impressionMinVisiblePixels];
    r0 = [self isValidNumberOfPixels:r2];
    return r0;
}

-(bool)isImpressionMinVisiblePercentValid {
    r0 = [self isValidPercentage:[self impressionMinVisiblePercent]];
    return r0;
}

-(double)impressionMinVisiblePixels {
    r0 = self;
    return r0;
}

-(long long)impressionMinVisiblePercent {
    r0 = *(self + 0x10);
    return r0;
}

-(double)impressionMinVisibleSeconds {
    r0 = self;
    return r0;
}

@end