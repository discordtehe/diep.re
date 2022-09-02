@implementation VungleJavascriptGeneratorFactory

+(void *)notifyReadyEventGeneratorWithCacheableReplacements:(void *)arg2 nonCacheableReplacements:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = objc_alloc();
    r22 = [VungleJSONConverter new];
    r21 = [r21 initWithCacheableReplacementTokens:r20 nonCacheableReplacements:r19 converter:r22];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)notifyReadyEventGenerator {
    r19 = objc_alloc();
    r20 = [VungleJSONConverter new];
    r19 = [r19 initWithCacheableReplacementTokens:0x0 nonCacheableReplacements:0x0 converter:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)propertiesEventGeneratorWithDictionary:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = objc_alloc();
    r21 = [VungleJSONConverter new];
    r19 = [r19 initWithPropertiesDictionary:r20 converter:r21];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)notifyPrepareStoreViewSuccessGenerator {
    r0 = [VungleNotifyPrepareStoreSuccessGenerator new];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)notifyPresentStoreViewFinshedGenerator {
    r0 = [VNGNofityPresentStoreFinishedGenerator new];
    r0 = [r0 autorelease];
    return r0;
}

@end