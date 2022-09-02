@implementation GADCloseButton

-(void *)initWithFrame:(struct CGRect)arg2 context:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r19 = [r20 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setShowsTouchWhenHighlighted:0x1];
            [r21 setAccessibilityLabel:@"Close Advertisement"];
            r22 = [sub_1007cd880() retain];
            [r21 setImage:r22 forState:0x0];
            [r22 release];
            objc_storeStrong((int64_t *)&r21->_context, r20);
            *(int128_t *)(int64_t *)&r21->_preferredTapSize = *(int128_t *)0x100bf3e60;
            r21->_preferredPosition = 0x2;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithContext:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b970];
    [r0 release];
    r19 = [self initWithFrame:r22 context:r3];
    [r22 release];
    r0 = r19;
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self;
    return r0;
}

-(void)setPreferredTapSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTapSize));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    [self invalidateIntrinsicContentSize];
    return;
}

-(void)setUseCustomCloseImage:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_useCustomCloseImage));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 updateImageAndEnabled];
    }
    return;
}

-(void)updateImageAndEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_useCustomCloseImage));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [sub_1007cd880() retain];
    }
    [r19 setImage:r20 forState:0x0];
    [r19 setEnabled:r2];
    [r20 release];
    return;
}

-(void)setEnabledOnCustomClose:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_enabledOnCustomClose));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 updateImageAndEnabled];
    }
    return;
}

-(bool)useCustomCloseImage {
    r0 = *(int8_t *)(int64_t *)&self->_useCustomCloseImage;
    return r0;
}

-(bool)enabledOnCustomClose {
    r0 = *(int8_t *)(int64_t *)&self->_enabledOnCustomClose;
    return r0;
}

-(long long)preferredPosition {
    r0 = self->_preferredPosition;
    return r0;
}

-(void)setPreferredPosition:(long long)arg2 {
    self->_preferredPosition = arg2;
    return;
}

-(struct CGSize)preferredTapSize {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end