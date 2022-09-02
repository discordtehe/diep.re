@implementation GADMediaContent

-(double)aspectRatio {
    r0 = self->_internalMediaContent;
    r0 = [r0 aspectRatio];
    return r0;
}

-(void)setMainImage:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r20->_mainImage;
    objc_storeStrong(r21, arg2);
    if (*r21 != 0x0) {
            r21 = [[GADNativeAdImage alloc] initWithImage:*r21];
    }
    else {
            r21 = 0x0;
    }
    [r20->_internalMediaContent setMainImage:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)setInternalMediaContent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalMediaContent, arg2);
    r20 = [arg2 retain];
    r0 = [GADVideoController alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    r22 = *(self + r22);
    r24 = [[self->_internalMediaContent videoController] retain];
    [r22 setInternalVideoController:r24];
    [r24 release];
    r0 = self->_internalMediaContent;
    r0 = [r0 videoController];
    r0 = [r0 retain];
    r22 = [r0 hasVideoContent];
    [r20 release];
    *(int8_t *)(int64_t *)&self->_hasVideoContent = r22;
    [r0 release];
    return;
}

-(void *)mainImage {
    r0 = self->_mainImage;
    return r0;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(bool)hasVideoContent {
    r0 = *(int8_t *)(int64_t *)&self->_hasVideoContent;
    return r0;
}

-(void *)internalMediaContent {
    r0 = self->_internalMediaContent;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_internalMediaContent, 0x0);
    objc_storeStrong((int64_t *)&self->_mainImage, 0x0);
    return;
}

@end