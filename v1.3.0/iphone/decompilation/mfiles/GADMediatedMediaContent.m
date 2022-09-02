@implementation GADMediatedMediaContent

-(void *)initWithMediatedNativeAd:(void *)arg2 mainImage:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [r23 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_mediatedNativeAd, r19);
            objc_storeStrong((int64_t *)&r21->_mainImage, r23);
            [r21->_mainImage aspectRatio];
            asm { stlr       x8, [x23] };
            r0 = [GADAdVideoController alloc];
            r0 = objc_msgSend(r0, r22);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [*(r21 + r23) setHasVideoContent:[r19 hasVideoContent]];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)videoController {
    r0 = self->_videoController;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setMainImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mainImage, arg2);
    [arg2 retain];
    [*r21 aspectRatio];
    asm { stlr       x8, [x22] };
    r20 = r20->_mainImageView;
    [[*r21 image] retain];
    [r20 setImage:r2];
    [r19 release];
    [r21 release];
    return;
}

-(void *)mediaView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([r19->_videoController hasVideoContent] != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_mediatedNativeAd);
            r19 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r20 = [[r19 mediaView] retain];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_mainImageView));
            r0 = *(r19 + r22);
            if (r0 == 0x0) {
                    r20 = [UIImageView alloc];
                    r21 = [[r19->_mainImage image] retain];
                    r0 = [r20 initWithImage:r21];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    [r21 release];
                    [*(r19 + r22) setContentMode:0x1];
                    r0 = *(r19 + r22);
            }
            r20 = [r0 retain];
    }
    r0 = [r20 autorelease];
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 intrinsicContentSize];
    r0 = [r0 release];
    return r0;
}

-(double)aspectRatio {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_videoController;
    r0 = [r0 hasVideoContent];
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_mediatedNativeAd);
            r19 = r0;
            r0 = [r0 respondsToSelector:r2];
            v8 = 0x0;
            if (r0 != 0x0) {
                    [r19 mediaContentAspectRatio];
                    v8 = v0;
            }
            r0 = [r19 release];
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_mainImageAspectRatio));
            asm { ldar       x8, [x8] };
    }
    return r0;
}

-(void *)mainImage {
    r0 = self->_mainImage;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mainImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_mainImage, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediatedNativeAd);
    return;
}

@end