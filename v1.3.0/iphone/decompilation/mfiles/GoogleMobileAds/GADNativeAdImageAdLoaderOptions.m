@implementation GADNativeAdImageAdLoaderOptions

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_disableImageLoading));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shouldRequestMultipleImages));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredImageOrientation));
    *(r0 + r8) = *(self + r8);
    return r0;
}

-(bool)disableImageLoading {
    r0 = *(int8_t *)(int64_t *)&self->_disableImageLoading;
    return r0;
}

-(void)setDisableImageLoading:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disableImageLoading = arg2;
    return;
}

-(void *)requestParameters {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredImageOrientation));
    r8 = *(r19 + r8);
    if (r8 == 0x3) goto loc_10081a190;

loc_10081a174:
    if (r8 == 0x2) goto loc_10081a19c;

loc_10081a17c:
    if (r8 != 0x1) goto loc_10081a1b0;

loc_10081a184:
    r20 = @"any";
    goto loc_10081a1a4;

loc_10081a1a4:
    [r20 retain];
    goto loc_10081a1b4;

loc_10081a1b4:
    r21 = [[NSMutableDictionary alloc] init];
    if (r20 != 0x0) {
            sub_100822058(r21, @"native_image_orientation", r20);
    }
    if (*(int8_t *)(int64_t *)&r19->_shouldRequestMultipleImages != 0x0) {
            sub_100822058(r21, @"multiple_images", @"1");
    }
    if (*(int8_t *)(int64_t *)&r19->_disableImageLoading != 0x0) {
            sub_100822058(r21, @"disable_image_loading", @"1");
    }
    [r20 release];
    r0 = [r21 autorelease];
    return r0;

loc_10081a1b0:
    r20 = 0x0;
    goto loc_10081a1b4;

loc_10081a19c:
    r20 = @"portrait";
    goto loc_10081a1a4;

loc_10081a190:
    r20 = @"landscape";
    goto loc_10081a1a4;
}

-(bool)shouldRequestMultipleImages {
    r0 = *(int8_t *)(int64_t *)&self->_shouldRequestMultipleImages;
    return r0;
}

-(void)setShouldRequestMultipleImages:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldRequestMultipleImages = arg2;
    return;
}

-(long long)preferredImageOrientation {
    r0 = self->_preferredImageOrientation;
    return r0;
}

-(void)setPreferredImageOrientation:(long long)arg2 {
    self->_preferredImageOrientation = arg2;
    return;
}

@end