@implementation GADRecursiveAdRenderer

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    return;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x150;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_D0 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    var_D8 = [arg4 retain];
    r0 = [arg2 serverRequest];
    r0 = [r0 retain];
    r24 = [[r0 targeting] retain];
    [r0 release];
    r0 = [arg2 serverRequest];
    r0 = [r0 retain];
    var_E0 = r0;
    r23 = [[r0 signals] retain];
    r20 = [arg2 serverResponse];
    [r21 release];
    r0 = [r20 retain];
    r21 = r0;
    r20 = [[r0 common] retain];
    r22 = [r24 retain];
    var_F0 = [r23 retain];
    var_F8 = [r20 retain];
    r0 = [r19 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a08];
    r0 = [r0 retain];
    var_100 = r0;
    var_118 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    r24 = [[GADRequest request] retain];
    r19 = [[r22 testDeviceIdentifiers] retain];
    [r24 setTestDevices:r19];
    [r19 release];
    r0 = [r22 location];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 precise];
    var_E8 = r21;
    if (r0 != 0x0) {
            [r23 latitude];
            [r23 longitude];
            [r23 accuracy];
            [r24 setLocationWithLatitude:r2 longitude:r3 accuracy:r4];
    }
    else {
            r0 = [r23 locationDescription];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r23 description];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r24 setLocationWithDescription:r19];
                    [r19 release];
            }
    }
    var_108 = r23;
    r0 = [r22 childDirectedTreatment];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r22 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r24 tagForChildDirectedTreatment:[r0 boolValue]];
            [r0 release];
    }
    [r24 setGender:[r22 gender]];
    r19 = [[r22 birthday] retain];
    [r24 setBirthday:r19];
    [r19 release];
    r19 = [[r22 keywords] retain];
    [r24 setKeywords:r19];
    [r19 release];
    r19 = [[r22 requestAgent] retain];
    var_130 = r24;
    [r24 setRequestAgent:r19];
    [r19 release];
    var_128 = [[GADExtras alloc] init];
    r21 = [r22 retain];
    r25 = [r25 retain];
    r19 = [r21 networkExtrasForClass:[GADExtras class]];
    var_110 = r21;
    [r21 release];
    r0 = [r19 additionalParameters];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 mutableCopy];
    [r0 release];
    if (r24 == 0x0) {
            r24 = [[NSMutableDictionary alloc] init];
    }
    sub_100822058(r24, *0x100e9f050, @"1");
    r0 = [r24 objectForKeyedSubscript:*0x100e9f040];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            sub_100822058(r24, *0x100e9f038, [r21 copy]);
            [r28 release];
    }
    r0 = [r25 objectForKeyedSubscript:*0x100e95a08];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"mad_hac"];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            sub_100822058(r24, *0x100e9f048, r28);
    }
    r20 = [[r25 objectForKeyedSubscript:*0x100e95a10] retain];
    r24 = objc_retainAutorelease(r24);
    [r20 enumerateKeysAndObjectsUsingBlock:r29 - 0x88];
    [r24 release];
    [r20 release];
    [r28 release];
    [r19 release];
    [r21 release];
    [r25 release];
    [var_128 setAdditionalParameters:r24];
    [var_130 registerAdNetworkExtras:var_128];
    [[GADTargeting alloc] initWithRequest:var_130 adUnitID:var_118];
    sub_1008c5a0c();
    r0 = sub_10085b540(&var_A0);
    r19 = [r0 retain];
    [r20 setSignalSource:r19 forKey:*0x100e92168];
    r24 = sub_10086791c(var_F8, r25, var_F0);
    [var_F8 release];
    [var_F0 release];
    [r20 setSignalSource:r24 forKey:*0x100e921e8];
    r24 = [sub_1008b3c5c() retain];
    [r20 setSignalSource:r24 forKey:*0x100e921c8];
    [r24 release];
    [r19 release];
    [var_128 release];
    [var_108 release];
    [var_130 release];
    [var_118 release];
    [var_100 release];
    [r25 release];
    [var_110 release];
    r19 = [[r20 autorelease] retain];
    [var_F8 release];
    [var_E8 release];
    [var_F0 release];
    [var_E0 release];
    r0 = [GADAdSource alloc];
    r0 = [r0 init];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
    r8 = *(var_D0 + r20);
    *(var_D0 + r20) = r0;
    [r8 release];
    r20 = *(var_D0 + r20);
    r23 = [var_D8 retain];
    [r20 loadAdsWithTargeting:r19 completionHandler:&var_C8];
    [r19 release];
    [var_D8 release];
    [r23 release];
    [var_110 release];
    [r25 release];
    return;
}

@end