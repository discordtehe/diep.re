@implementation ADCTextView

-(void)buttonTapped {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_editing));
    r8 = *(int8_t *)(r19 + r20);
    r0 = r19->_textView;
    if (r8 != 0x0) {
            [r0 resignFirstResponder];
            r8 = 0x0;
    }
    else {
            [r0 becomeFirstResponder];
            r8 = 0x1;
    }
    *(int8_t *)(r19 + r20) = r8;
    return;
}

-(void)setText:(void *)arg2 {
    [arg2 retain];
    objc_storeStrong((int64_t *)&self->_text, arg2);
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r21 release];
    [r19 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_80 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(initWithFrame:);
            r0 = [UITextView alloc];
            r0 = objc_msgSend(r0, r20);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_textView));
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_text, @"");
            [*(r19 + r26) setDelegate:r19];
            r0 = @class(UIColor);
            r0 = [r0 blackColor];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_color));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r19->_typeface, @"HelveticaNeue");
            *(int8_t *)(int64_t *)&r19->_editing = 0x0;
            r0 = @class(UIColor);
            r0 = [r0 blackColor];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_editable = 0x0;
            [*(r19 + r26) setAutoresizingMask:0x12];
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r24 = r0;
                    r25 = [r0 userInterfaceIdiom];
                    [r24 release];
                    if (r25 == 0x1) {
                            if (!CPU_FLAGS & E) {
                                    r24 = 0xc;
                            }
                            else {
                                    r24 = 0x12;
                            }
                    }
            }
            else {
                    r24 = 0xc;
            }
            r20 = @selector(initWithFrame:);
            [r23 release];
            r19->_size = r24;
            r21 = [UIButton alloc];
            [*(r19 + r26) frame];
            r0 = objc_msgSend(r21, r20);
            [r0 setAlpha:@selector(userInterfaceIdiom)];
            [r0 setAutoresizingMask:0x12];
            [r0 addTarget:r19 action:@selector(buttonTapped) forControlEvents:0x40];
            [r19 addSubview:r2];
            objc_msgSend(r19, r21);
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setTypeface:(void *)arg2 {
    [arg2 retain];
    objc_storeStrong((int64_t *)&self->_typeface, arg2);
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r21 release];
    [r19 release];
    return;
}

-(void)setSize:(unsigned long long)arg2 {
    self->_size = arg2;
    dispatch_async(*__dispatch_main_q, &var_30);
    return;
}

-(void)setColor:(void *)arg2 {
    [arg2 retain];
    objc_storeStrong((int64_t *)&self->_color, arg2);
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r21 release];
    [r19 release];
    return;
}

-(void)setBackgroundColor:(void *)arg2 {
    [arg2 retain];
    objc_storeStrong((int64_t *)&self->_backgroundColor, arg2);
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r21 release];
    [r19 release];
    return;
}

-(void)setEditable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_editable = arg2;
    dispatch_async(*__dispatch_main_q, &var_30);
    return;
}

-(void *)text {
    r0 = self->_text;
    return r0;
}

-(unsigned long long)size {
    r0 = self->_size;
    return r0;
}

-(void *)typeface {
    r0 = self->_typeface;
    return r0;
}

-(void *)color {
    r0 = self->_color;
    return r0;
}

-(void *)backgroundColor {
    r0 = self->_backgroundColor;
    return r0;
}

-(bool)editable {
    r0 = *(int8_t *)(int64_t *)&self->_editable;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_color, 0x0);
    objc_storeStrong((int64_t *)&self->_typeface, 0x0);
    objc_storeStrong((int64_t *)&self->_text, 0x0);
    objc_storeStrong((int64_t *)&self->_textView, 0x0);
    return;
}

@end