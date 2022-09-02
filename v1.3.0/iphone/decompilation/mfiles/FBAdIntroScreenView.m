@implementation FBAdIntroScreenView

-(void *)initWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 iconStyle:(unsigned long long)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    [FBAdScreen boundsInOrientation];
    r0 = [[&var_40 super] initWithFrame:r2];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 setupAdDetailsViewWithTitle:r19 subtitle:r21 iconURL:r22 iconStyle:r20];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)setupAdDetailsViewWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 iconStyle:(unsigned long long)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[FBAdDetailsVerticalView alloc] initWithTitle:r23 subtitle:r21 iconURL:r20 iconStyle:arg5];
    [r20 release];
    [r21 release];
    [r23 release];
    [self addSubview:r19];
    objc_storeWeak((int64_t *)&self->_adDetailsView, r19);
    [r19 release];
    return;
}

-(void *)adDetailsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDetailsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)layoutSubviews {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self bounds];
    v9 = v2;
    v8 = v3;
    r0 = [self adDetailsView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 sizeThatFits:r2];
            [r19 setFrame:r2];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adDetailsView);
    return;
}

-(void)setAdDetailsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsView, arg2);
    return;
}

@end