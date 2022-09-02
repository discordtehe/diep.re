@implementation GADAdChoicesView

-(void *)adChoicesContentView {
    r0 = self->_adChoicesContentView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setAdChoicesContentView:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = self;
    r20 = [r22 retain];
    r21 = (int64_t *)&r19->_adChoicesContentView;
    r0 = *r21;
    r0 = [r0 superview];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) {
            [*r21 removeFromSuperview];
    }
    objc_storeStrong(r21, r22);
    r0 = *r21;
    if (r0 != 0x0) {
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r19 addSubview:r2];
    }
    [r19 setNeedsLayout];
    [r20 release];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self->_adChoicesContentView;
    r0 = [r0 intrinsicContentSize];
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [[&var_40 super] layoutSubviews];
    r19 = r20->_adChoicesContentView;
    if (r19 != 0x0) {
            CGRectGetMidX([r20 bounds]);
            CGRectGetMidY([r20 bounds]);
            [r19 setCenter:r2];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adChoicesContentView, 0x0);
    return;
}

@end