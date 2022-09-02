@implementation FacebookAdapterConfiguration

+(bool)isTestMode {
    r0 = [FBAdSettings isTestMode];
    return r0;
}

-(void *)adapterVersion {
    return @"5.4.0.0";
}

+(void)setIsTestMode:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [FBAdSettings isTestMode];
    if (arg2 == 0x0) goto loc_1004a3a74;

loc_1004a3a44:
    if ((r0 & 0x1) != 0x0) goto .l1;

loc_1004a3a48:
    r20 = [[FBAdSettings testDeviceHash] retain];
    r1 = @selector(addTestDevice:);
    goto loc_1004a3aa0;

loc_1004a3aa0:
    objc_msgSend(@class(FBAdSettings), r1);
    [r20 release];
    return;

.l1:
    return;

loc_1004a3a74:
    if (r0 == 0x0) goto .l1;

loc_1004a3a78:
    r20 = [[FBAdSettings testDeviceHash] retain];
    r1 = @selector(clearTestDevice:);
    goto loc_1004a3aa0;
}

-(void *)biddingToken {
    r0 = [FBAdSettings bidderToken];
    return r0;
}

-(void *)moPubNetworkName {
    return @"facebook";
}

-(void *)networkSdkVersion {
    return @"5.4.0";
}

+(void *)mediationString {
    r0 = [NSString stringWithFormat:@"MOPUB_%@:%@"];
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = objc_alloc();
    r23 = [[r21 objectForKeyedSubscript:@"placement_ids"] retain];
    [r21 release];
    r21 = [[FacebookAdapterConfiguration mediationString] retain];
    r22 = [r22 initWithPlacementIDs:r23 mediationService:r21];
    [r21 release];
    [r23 release];
    var_38 = r20;
    r20 = [r20 retain];
    [FBAudienceNetworkAds initializeWithSettings:r22 completionHandler:&var_60];
    [var_38 release];
    [r20 release];
    [r22 release];
    return;
}

@end