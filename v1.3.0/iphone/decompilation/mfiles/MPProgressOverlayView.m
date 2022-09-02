@implementation MPProgressOverlayView

-(void *)initWithDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = sub_1004aec5c();
    r0 = [r0 retain];
    [r0 bounds];
    r20 = [self initWithFrame:r2];
    [r0 release];
    if (r20 != 0x0) {
            [r20 setDelegate:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)show {
    r0 = sub_1004aec5c();
    r0 = [r0 retain];
    [r0 addSubview:self];
    [self setNeedsLayout];
    [UIView animateWithDuration:&stack[-72] animations:&var_60 completion:r4];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    [r20 release];
    return;
}

-(void)layoutSubviews {
    [[&var_70 super] layoutSubviews];
    sub_1004aed94(0x1);
    r0 = sub_1004aec5c();
    r0 = [r0 retain];
    [r0 bounds];
    [self setFrame:r2];
    [r0 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r21 = r0;
    [r0 frame];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r24 = r0;
    [r0 frame];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r25 = r0;
    [r0 frame];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r25 release];
    [r24 release];
    [r21 release];
    [self center];
    r0 = [self progressContainer];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [self center];
    r0 = [self activityIndicator];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    return;
}

-(void)hide {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(enableCloseButton) object:0x0];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setAlpha:self];
    [r0 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    [UIView animateWithDuration:&stack[-88] animations:&var_70 completion:0x0];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_80 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setAlpha:r2];
            [r19 setOpaque:0x0];
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = [UIButton buttonWithType:0x0];
            r0 = [r0 retain];
            r23 = r0;
            [r0 setAlpha:0x0];
            [r23 setHidden:0x1];
            [r23 addTarget:r19 action:@selector(closeButtonPressed) forControlEvents:0x40];
            r25 = [sub_1004af7bc() retain];
            r24 = [[UIImage imageNamed:r25] retain];
            [r25 release];
            [r23 setImage:r24 forState:0x0];
            [r23 sizeToFit];
            [r24 release];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
            r0 = *(r19 + r20);
            *(r19 + r20) = r23;
            [r0 release];
            CGRectIntegral([r19 addSubview:*(r19 + r20)]);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r25 = r0;
            [r0 setAlpha:r2];
            r24 = [[UIColor whiteColor] retain];
            [r25 setBackgroundColor:r24];
            [r24 release];
            [r25 setOpaque:0x0];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x0];
            [r0 release];
            r0 = @class(UIColor);
            r0 = [r0 blackColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r20 = r0;
            r21 = [r0 CGColor];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r21];
            [r0 release];
            [r20 release];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setShadowOffset:r21];
            [r0 release];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r21];
            [r0 release];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setShadowRadius:r21];
            [r0 release];
            CGRectIntegral([r25 setTranslatesAutoresizingMaskIntoConstraints:0x0]);
            r22 = objc_msgSend(objc_alloc(), r23);
            r20 = [[UIColor blackColor] retain];
            [r22 setBackgroundColor:r20];
            [r20 release];
            r0 = [r22 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r20];
            [r0 release];
            [r22 setOpaque:0x0];
            [r22 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r25 addSubview:r22];
            [r25 center];
            [r22 setCenter:r22];
            [r22 release];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_progressContainer));
            r0 = *(r19 + r20);
            *(r19 + r20) = r25;
            [r0 release];
            [r19 addSubview:*(r19 + r20)];
            r0 = objc_alloc();
            r0 = [r0 initWithActivityIndicatorStyle:0x0];
            r20 = r0;
            [r0 sizeToFit];
            [r20 startAnimating];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_activityIndicator));
            r0 = *(r19 + r21);
            *(r19 + r21) = r20;
            [r0 release];
            [r19 addSubview:*(r19 + r21)];
            [r19 setNeedsLayout];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)deviceOrientationDidChange:(void *)arg2 {
    [self setNeedsLayout];
    return;
}

-(void)enableCloseButton {
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    [UIView animateWithDuration:&var_38 animations:r3];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)closeButtonPressed {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 overlayCancelButtonPressed];
            [r0 release];
    }
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)activityIndicator {
    r0 = self->_activityIndicator;
    return r0;
}

-(void)setActivityIndicator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activityIndicator, arg2);
    return;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void *)progressContainer {
    r0 = self->_progressContainer;
    return r0;
}

-(void)setProgressContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressContainer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_progressContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_activityIndicator, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end