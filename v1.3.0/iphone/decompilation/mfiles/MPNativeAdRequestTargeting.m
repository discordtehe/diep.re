@implementation MPNativeAdRequestTargeting

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_desiredAssets, 0x0);
    return;
}

+(void *)targeting {
    r0 = objc_alloc();
    r0 = [r0 initWithCreativeSafeSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)desiredAssets {
    r0 = self->_desiredAssets;
    return r0;
}

-(void)setDesiredAssets:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xc0;
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
    r29 = &saved_fp;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_desiredAssets));
    if (*(r0 + r24) != r2) {
            r19 = r0;
            r23 = [r2 retain];
            r0 = [NSMutableSet setWithObjects:*0x100e7ee70];
            r0 = [r0 retain];
            r20 = r0;
            [r0 intersectSet:r23];
            [r23 release];
            r0 = *(r19 + r24);
            *(r19 + r24) = r20;
            [r0 release];
    }
    return;
}

@end