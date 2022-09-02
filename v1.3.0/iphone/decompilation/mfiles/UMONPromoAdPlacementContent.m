@implementation UMONPromoAdPlacementContent

-(void *)initWithPlacementId:(void *)arg2 withParams:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [[&var_30 super] initWithPlacementId:r21 withParams:r19];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            r21 = [[UMONPromoMetaDataUtilities createPromoMetadataFromParamsMap:r19] retain];
            [r20 setMetadata:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)metadata {
    r0 = self->_metadata;
    return r0;
}

-(void *)defaultEventCategory {
    objc_retainAutorelease(@"PROMO");
    return @"PROMO";
}

-(void)setMetadata:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_metadata, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    return;
}

@end