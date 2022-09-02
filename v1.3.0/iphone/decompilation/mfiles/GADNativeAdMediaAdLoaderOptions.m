@implementation GADNativeAdMediaAdLoaderOptions

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaAspectRatio));
    *(r0 + r8) = *(self + r8);
    return r0;
}

-(long long)mediaAspectRatio {
    r0 = self->_mediaAspectRatio;
    return r0;
}

-(void *)requestParameters {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaAspectRatio));
    r8 = *(self + r8);
    r8 = r8 - 0x1;
    if (r8 > 0x3) goto loc_1008a9548;

loc_1008a9528:
    switch (sign_extend_64(*(int32_t *)(0x1008a95e8 + r8 * 0x4)) + 0x1008a95e8) {
        case 0:
            r19 = @"any";
            break;
        case 1:
            r19 = @"landscape";
            break;
        case 2:
            r19 = @"portrait";
            break;
        case 3:
            r19 = @"square";
            break;
    }
    [r19 retain];
    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r19 release];
    goto loc_1008a95b8;

loc_1008a95b8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1008a9548:
    r20 = 0x0;
    goto loc_1008a95b8;
}

-(void)setMediaAspectRatio:(long long)arg2 {
    self->_mediaAspectRatio = arg2;
    return;
}

@end