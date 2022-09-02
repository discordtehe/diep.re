@implementation MOPUBReplayView

-(void *)initWithFrame:(struct CGRect)arg2 displayMode:(unsigned long long)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            if (r20 == 0x1) {
                    r0 = [UIView new];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_overlayView));
                    r8 = *(r19 + r21);
                    *(r19 + r21) = r0;
                    [r8 release];
                    r0 = [UIColor mp_colorFromHexString:@"#000000" alpha:r3];
                    r29 = r29;
                    r20 = [r0 retain];
                    [*(r19 + r21) setBackgroundColor:r20];
                    [r20 release];
                    [r19 addSubview:r2];
            }
            r20 = @selector(addSubview:);
            r0 = [UIButton buttonWithType:0x0];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_replayVideoButton));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            r21 = *(r19 + r24);
            r23 = [sub_1004af7bc() retain];
            r22 = [[UIImage imageNamed:r23] retain];
            [r21 setImage:r22 forState:0x0];
            [r22 release];
            [r23 release];
            [*(r19 + r24) addTarget:r19 action:@selector(replayButtonTapped) forControlEvents:0x40];
            [*(r19 + r24) sizeToFit];
            objc_msgSend(r19, r20);
    }
    r0 = r19;
    return r0;
}

-(void)layoutSubviews {
    [[&var_50 super] layoutSubviews];
    [self bounds];
    r0 = [self overlayView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self center];
    r0 = [self replayVideoButton];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    r0 = [self replayVideoButton];
    r0 = [r0 retain];
    CGRectIntegral([r0 frame]);
    r0 = [self replayVideoButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r22 release];
    return;
}

-(void)replayButtonTapped {
    r0 = [self actionBlock];
    r0 = [r0 retain];
    (*(r0 + 0x10))();
    [r20 release];
    return;
}

-(void *)actionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_actionBlock)), 0x0);
    return r0;
}

-(void)setActionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)overlayView {
    r0 = self->_overlayView;
    return r0;
}

-(void)setOverlayView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_overlayView, arg2);
    return;
}

-(void *)replayVideoButton {
    r0 = self->_replayVideoButton;
    return r0;
}

-(void)setReplayVideoButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_replayVideoButton, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_replayVideoButton, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayView, 0x0);
    objc_storeStrong((int64_t *)&self->_actionBlock, 0x0);
    return;
}

@end