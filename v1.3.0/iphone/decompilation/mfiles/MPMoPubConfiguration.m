@implementation MPMoPubConfiguration

-(void *)initWithAdUnitIdForAppInitialization:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = *(r20 + 0x10);
            *(r20 + 0x10) = 0x0;
            [r0 release];
            objc_storeStrong(r20 + 0x18, r21);
            *(int8_t *)(r20 + 0x8) = 0x0;
            r0 = *(r20 + 0x20);
            *(r20 + 0x20) = 0x0;
            [r0 release];
            r0 = *(r20 + 0x30);
            *(int128_t *)(r20 + 0x28) = 0x46;
            *(int128_t *)(r20 + 0x30) = 0x0;
            [r0 release];
            r0 = *(r20 + 0x38);
            *(r20 + 0x38) = 0x0;
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setAdditionalNetworks:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)setMoPubRequestOptions:(void *)arg2 forMediationAdapter:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100511760;

loc_1005115ac:
    r0 = NSClassFromString(r20);
    if (r0 == 0x0) goto loc_100511668;

loc_1005115b8:
    if (([r0 conformsToProtocol:@protocol(MPAdapterConfiguration)] & 0x1) == 0x0) goto loc_1005116c4;

loc_1005115d0:
    r0 = [r21 moPubRequestOptions];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSMutableDictionary dictionaryWithCapacity:0x1];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setMoPubRequestOptions:r23];
            [r23 release];
    }
    r0 = [r21 moPubRequestOptions];
    r0 = [r0 retain];
    r22 = r0;
    [r0 setObject:r19 forKeyedSubscript:r20];
    goto loc_100511758;

loc_100511758:
    [r22 release];
    goto loc_100511760;

loc_100511760:
    [r20 release];
    [r19 release];
    return;

loc_1005116c4:
    r22 = [[NSString stringWithFormat:@"%@ does not conform to MPAdapterConfiguration protocol."] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
    goto loc_10051171c;

loc_10051171c:
    r24 = [r0 retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
    [r24 release];
    goto loc_100511758;

loc_100511668:
    r22 = [[NSString stringWithFormat:@"%@ is not a valid class name."] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
    goto loc_10051171c;
}

-(void *)additionalNetworks {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setNetworkConfiguration:(void *)arg2 forMediationAdapter:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_10051154c;

loc_100511398:
    r0 = NSClassFromString(r20);
    if (r0 == 0x0) goto loc_100511454;

loc_1005113a4:
    if (([r0 conformsToProtocol:@protocol(MPAdapterConfiguration)] & 0x1) == 0x0) goto loc_1005114b0;

loc_1005113bc:
    r0 = [r21 mediatedNetworkConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSMutableDictionary dictionaryWithCapacity:0x1];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setMediatedNetworkConfigurations:r23];
            [r23 release];
    }
    r0 = [r21 mediatedNetworkConfigurations];
    r0 = [r0 retain];
    r22 = r0;
    [r0 setObject:r19 forKeyedSubscript:r20];
    goto loc_100511544;

loc_100511544:
    [r22 release];
    goto loc_10051154c;

loc_10051154c:
    [r20 release];
    [r19 release];
    return;

loc_1005114b0:
    r22 = [[NSString stringWithFormat:@"%@ does not conform to MPAdapterConfiguration protocol."] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
    goto loc_100511508;

loc_100511508:
    r24 = [r0 retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
    [r24 release];
    goto loc_100511544;

loc_100511454:
    r22 = [[NSString stringWithFormat:@"%@ is not a valid class name."] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
    goto loc_100511508;
}

-(void)setAdUnitIdForAppInitialization:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(bool)allowLegitimateInterest {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setAllowLegitimateInterest:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)adUnitIdForAppInitialization {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setLoggingLevel:(unsigned long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(void *)globalMediationSettings {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setGlobalMediationSettings:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(unsigned long long)loggingLevel {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)mediatedNetworkConfigurations {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setMediatedNetworkConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)moPubRequestOptions {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setMoPubRequestOptions:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end