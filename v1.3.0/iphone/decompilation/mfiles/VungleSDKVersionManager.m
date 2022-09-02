@implementation VungleSDKVersionManager

-(void)storeSDKVersion:(void *)arg2 {
    [*(self + 0x8) setObject:arg2 forKey:@"vungleSDKVersionKey"];
    [*(self + 0x8) synchronize];
    return;
}

-(void *)initWithUserDefaults:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x8, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)sdkVersionStored {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:@"vungleSDKVersionKey"];
    r0 = [r0 retain];
    r20 = [r0 boolValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)storedSDKVersionisEqualToVersion:(void *)arg2 {
    r20 = *(self + 0x8);
    r22 = [arg2 retain];
    r20 = [[r20 objectForKey:@"vungleSDKVersionKey"] retain];
    r19 = [arg2 isEqualToString:r2];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)setLocalDefaults:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)localDefaults {
    r0 = *(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end