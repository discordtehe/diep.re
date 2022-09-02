@implementation MPBaseAdapterConfiguration

-(void *)moPubRequestOptions {
    r0 = [self internalMopubRequestOptions];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r3 = arg3;
    if (r3 != 0x0) {
            r2 = *(r3 + 0x10);
            (r2)(r3, 0x0, r2);
    }
    return;
}

-(void)addMoPubRequestOptions:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r0 internalMopubRequestOptions];
            r0 = [r0 retain];
            [r0 addEntriesFromDictionary:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

+(void *)cachedInitializationParameters {
    r20 = [[MPMediationManager sharedManager] retain];
    r19 = [[r20 cachedInitializationParametersForNetwork:[self class]] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)setCachedInitializationParameters:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[MPMediationManager sharedManager] retain];
    [r20 setCachedInitializationParameters:r22 forNetwork:[self class]];
    [r22 release];
    [r20 release];
    return;
}

-(void *)internalMopubRequestOptions {
    r0 = *(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end