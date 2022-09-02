@implementation VungleMRAIDViewPropertiesFactory

+(void *)buildDefaultPropertiesForAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r0 = [VungleMRAIDViewProperties new];
    r19 = r0;
    [r0 setSupports];
    [r19 setIsViewable:0x1];
    [r19 setDimensionsWithSize:0x1];
    [r19 setVersion:@"1.0"];
    [r19 setPlacementType:@"interstitial"];
    r20 = [arg2 incentivized];
    [r22 release];
    if (r20 != 0x0) {
            r2 = @"interstitial";
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r19 setIsIncentivized:r2];
    r0 = [r19 autorelease];
    return r0;
}

@end