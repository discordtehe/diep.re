@implementation ADCImageView

-(void *)initWithFrame:(struct CGRect)arg2 image:(void *)arg3 {
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
    v8 = v3;
    v9 = v2;
    r19 = [r2 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(initWithFrame:);
            r0 = [UIImageView alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_imageView));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [*(r20 + r21) setImage:r19];
            [*(r20 + r21) setHidden:0x1];
            [*(r20 + r21) setAlpha:0x1];
            [r20 addSubview:*(r20 + r21)];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_expectedFrame));
            *(r20 + r8) = d11;
            *(0x8 + r20 + r8) = d10;
            *(0x10 + r20 + r8) = d9;
            *(0x18 + r20 + r8) = d8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_image, arg2);
    [arg2 retain];
    [self->_imageView setImage:r2];
    [r19 release];
    return;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCImageView dealloc]" line:0x1c withFormat:@"dealloc called on ADCImageView"];
    [[&var_20 super] dealloc];
    return;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void)setImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageView, arg2);
    return;
}

-(void *)imageView {
    r0 = self->_imageView;
    return r0;
}

-(struct CGRect)expectedFrame {
    r0 = self;
    return r0;
}

-(void)setExpectedFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_expectedFrame));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_imageView, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    return;
}

@end