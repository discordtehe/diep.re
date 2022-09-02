@implementation TRActivityIndicatorView

-(void)show:(bool)arg2 {
    [UIView animateWithDuration:&var_30 animations:&var_60 completion:r4];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_70 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [UIView alloc];
            CGRectGetHeight(CGRectGetWidth(r0));
            r0 = objc_msgSend(r21, r20);
            [r0 setAlpha:r2];
            r21 = [[UIColor blackColor] retain];
            [r0 setBackgroundColor:r21];
            [r21 release];
            [r19 addSubview:r0];
            [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0x1];
            CGRectGetMidX([r19 frame]);
            CGRectGetWidth([r22 frame]);
            CGRectGetMidY([r19 frame]);
            CGRectGetHeight([r22 frame]);
            CGRectGetWidth([r22 frame]);
            CGRectGetHeight([r22 frame]);
            [r22 setFrame:0x1];
            [r19 addSubview:r22];
            [r22 startAnimating];
            [r22 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

@end