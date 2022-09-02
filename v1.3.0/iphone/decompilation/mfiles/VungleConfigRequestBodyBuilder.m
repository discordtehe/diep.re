@implementation VungleConfigRequestBodyBuilder

-(void *)initWithPublisherInformation:(void *)arg2 {
    r0 = [[&var_10 super] initWithPublisherInformation:arg2];
    return r0;
}

-(void *)buildRequestParameters {
    r0 = [[&var_20 super] buildRequestParameters];
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    r19 = [r20 copy];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end