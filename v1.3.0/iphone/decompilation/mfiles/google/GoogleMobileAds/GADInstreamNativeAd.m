@implementation GADInstreamNativeAd

-(void *)mediaContent {
    r0 = self->_mediaContent;
    return r0;
}

-(void *)initWithInternalNativeAd:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_internalNativeAd, r21);
            r0 = [r19 assetForKey:*0x100e96760];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediaContent));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            if (*(r20 + r21) != 0x0) {
                    r21 = [r20 retain];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = [r20 retain];
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediaContent, 0x0);
    objc_storeStrong((int64_t *)&self->_internalNativeAd, 0x0);
    return;
}

@end