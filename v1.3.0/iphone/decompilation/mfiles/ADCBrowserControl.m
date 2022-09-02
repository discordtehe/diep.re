@implementation ADCBrowserControl

-(void)setVisible:(bool)arg2 {
    dispatch_async(*__dispatch_main_q, &var_30);
    return;
}

-(void *)initWithFilePath:(void *)arg2 glowImage:(void *)arg3 delegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_10023aaf8;

loc_10023a998:
    r0 = [UIImage imageWithContentsOfFile:r19];
    r29 = r29;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_imageNormal));
    r8 = *(r22 + r23);
    *(r22 + r23) = r0;
    [r8 release];
    if (*(r22 + r23) == 0x0) goto loc_10023ab08;

loc_10023a9d8:
    r0 = [UIImageView alloc];
    r0 = [r0 initWithImage:r20];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_glow));
    r8 = *(r22 + r23);
    *(r22 + r23) = r0;
    [r8 release];
    [*(r22 + r23) setContentMode:0x4];
    [*(r22 + r23) setUserInteractionEnabled:0x0];
    [*(r22 + r23) setHidden:0x1];
    r0 = [UIButton buttonWithType:0x0];
    r0 = [r0 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_button));
    r8 = *(r22 + r24);
    *(r22 + r24) = r0;
    [r8 release];
    [*(r22 + r24) addTarget:r22 action:@selector(buttonPushed:) forControlEvents:0x40];
    [*(r22 + r24) addTarget:r22 action:@selector(buttonDown:) forControlEvents:0x1];
    [*(r22 + r24) addTarget:r22 action:@selector(buttonUp:) forControlEvents:0x80];
    objc_storeWeak((int64_t *)&r22->_delegate, r21);
    goto loc_10023aaf8;

loc_10023aaf8:
    r23 = [r22 retain];
    goto loc_10023ab0c;

loc_10023ab0c:
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;

loc_10023ab08:
    r23 = 0x0;
    goto loc_10023ab0c;
}

-(void)dim {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)notDim {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)buttonPushed:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [UIView animateWithDuration:&var_58 animations:r3];
    r20 = (int64_t *)&r19->_delegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            r24 = [r0 respondsToSelector:@selector(browserControlButtonPushed:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 browserControlButtonPushed:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)buttonDown:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)buttonUp:(void *)arg2 {
    [UIView animateWithDuration:&var_28 animations:r3];
    return;
}

-(void *)button {
    r0 = self->_button;
    return r0;
}

-(void)setButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_button, arg2);
    return;
}

-(void *)imageNormal {
    r0 = self->_imageNormal;
    return r0;
}

-(void)setImageNormal:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageNormal, arg2);
    return;
}

-(void *)imageDown {
    r0 = self->_imageDown;
    return r0;
}

-(void)setImageDown:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageDown, arg2);
    return;
}

-(void *)glow {
    r0 = self->_glow;
    return r0;
}

-(void)setGlow:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_glow, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_glow, 0x0);
    objc_storeStrong((int64_t *)&self->_imageDown, 0x0);
    objc_storeStrong((int64_t *)&self->_imageNormal, 0x0);
    objc_storeStrong((int64_t *)&self->_button, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_clickAction, 0x0);
    return;
}

@end