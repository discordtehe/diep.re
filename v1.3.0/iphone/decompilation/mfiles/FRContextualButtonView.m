@implementation FRContextualButtonView

-(void)addTarget:(void *)arg2 action:(void *)arg3 {
    r22 = [arg2 retain];
    [self setUserInteractionEnabled:0x1];
    [self setMultipleTouchEnabled:0x0];
    [self setTarget:r22];
    [r22 release];
    [self setAction:arg3];
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self clickedView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 normalView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [[r19 clickedView] retain];
            [r19 addSubview:r2];
            [r20 release];
    }
    [r19 setTouchDown:0x1];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self clickedView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 clickedView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [[r19 normalView] retain];
            [r19 addSubview:r2];
            [r20 release];
    }
    [r19 setTouchDown:0x0];
    return;
}

-(void *)target {
    r0 = objc_loadWeakRetained((int64_t *)&self->_target);
    r0 = [r0 autorelease];
    return r0;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 clickedView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 clickedView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            r0 = [r19 normalView];
            r29 = r29;
            [r0 retain];
            [r19 addSubview:r2];
            [r21 release];
    }
    [r19 setTouchDown:0x0];
    var_118 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1009465b8;

loc_100946490:
    r25 = *var_118;
    goto loc_1009464a0;

loc_1009464a0:
    r28 = 0x0;
    goto loc_1009464ac;

loc_1009464ac:
    if (*var_118 != r25) {
            objc_enumerationMutation(r20);
    }
    [*(var_120 + r28 * 0x8) locationInView:r2];
    if (CGRectContainsPoint(objc_msgSend(r19, r24), r24) != 0x0) goto loc_10094652c;

loc_1009464fc:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1009464ac;

loc_100946508:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1009464a0;

loc_1009465b8:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10094652c:
    r0 = [r19 target];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r24 = [r19 action];
            [r23 release];
            if (r24 != 0x0) {
                    r22 = @selector(action);
                    [[r19 target] retain];
                    objc_msgSend(r19, r22);
                    [r21 performSelector:r2 withObject:r3];
                    [r21 release];
            }
    }
    goto loc_1009465b8;
}

-(void)setTarget:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_target, arg2);
    return;
}

-(void *)normalView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_normalView)), 0x1);
    return r0;
}

-(void)setNormalView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)clickedView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickedView)), 0x1);
    return r0;
}

-(void)setClickedView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 button:(void *)arg3 {
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
    r19 = [r2 retain];
    r0 = [[&var_80 super] initWithFrame:r2];
    r20 = r0;
    if (r20 == 0x0) goto loc_100945f60;

loc_100945a7c:
    r0 = [r19 image];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100945ac8;

loc_100945ab8:
    [r0 release];
    [r24 release];
    goto loc_100945b14;

loc_100945b14:
    r0 = [r19 image];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_100945bc8;

loc_100945b50:
    r23 = [[TJFLAnimatedImageView alloc] init];
    r0 = [r19 image];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r25 = [r0 retain];
    [r23 setAnimatedImage:r25];
    [r25 release];
    [r24 release];
    goto loc_100945c84;

loc_100945c84:
    [r20 setNormalView:r23];
    [r23 release];
    goto loc_100945ca0;

loc_100945ca0:
    r0 = [r20 normalView];
    r0 = [r0 retain];
    [r0 setSize:r2];
    [r0 release];
    r0 = [r20 normalView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x0];
    [r0 release];
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    if (r0 == 0x0) goto loc_100945de8;

loc_100945d58:
    r21 = [[TJFLAnimatedImageView alloc] init];
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r22 = [r0 retain];
    [r21 setAnimatedImage:r22];
    [r22 release];
    [r26 release];
    [r20 setClickedView:r21];
    r0 = r21;
    goto loc_100945ea8;

loc_100945ea8:
    [r0 release];
    goto loc_100945eac;

loc_100945eac:
    r0 = [r20 clickedView];
    r0 = [r0 retain];
    [r0 setSize:0x0];
    [r0 release];
    r0 = [r20 clickedView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x0];
    [r0 release];
    r21 = [[r20 normalView] retain];
    [r20 addSubview:r21];
    [r21 release];
    [r20 addTarget:r19 action:@selector(action:)];
    goto loc_100945f60;

loc_100945f60:
    [r19 release];
    r0 = r20;
    return r0;

loc_100945de8:
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 image];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 == 0x0) goto loc_100945eac;

loc_100945e24:
    r22 = [UIImageView alloc];
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 image];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [r22 initWithImage:r21];
    [r21 release];
    [r26 release];
    [r20 setClickedView:r22];
    r0 = r22;
    goto loc_100945ea8;

loc_100945bc8:
    r0 = [r19 image];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 image];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_100945ca0;

loc_100945c04:
    r23 = [UIImageView alloc];
    r0 = [r19 image];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 image];
    r29 = r29;
    r25 = [r0 retain];
    r23 = [r23 initWithImage:r25];
    [r25 release];
    [r24 release];
    [r23 setUserInteractionEnabled:0x0];
    goto loc_100945c84;

loc_100945ac8:
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 animatedImage];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r0 == 0x0) goto loc_100945f94;
    goto loc_100945b14;

loc_100945f94:
    r22 = [[UIButton buttonWithType:0x0] retain];
    r0 = [r19 image];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 image];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_1009460a4;

loc_100945fe8:
    r2 = 0x0;
    r0 = [r19 image];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r27 == r0) goto loc_1009460b4;

loc_100946060:
    r2 = 0x0;
    r0 = [r19 image];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 image];
    r29 = r29;
    r25 = [r0 retain];
    [r22 setBackgroundImage:r25 forState:0x0];
    goto loc_1009460a4;

loc_1009460a4:
    [r25 release];
    [r24 release];
    goto loc_1009460b4;

loc_1009460b4:
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 image];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_1009461b0;

loc_1009460e4:
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r27 == r0) goto loc_1009461c0;

loc_10094615c:
    r0 = [r19 imageClicked];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r22 setBackgroundImage:r21 forState:0x1];
    [r21 release];
    r0 = r0;
    goto loc_1009461bc;

loc_1009461bc:
    [r0 release];
    goto loc_1009461c0;

loc_1009461c0:
    [r22 setFrame:r2];
    [r22 addTarget:r19 action:@selector(action:) forControlEvents:0x40];
    [r20 addSubview:r2];
    [r22 release];
    goto loc_100945f60;

loc_1009461b0:
    [r25 release];
    r0 = r24;
    goto loc_1009461bc;
}

-(void *)action {
    r0 = self->_action;
    return r0;
}

-(void)setAction:(void *)arg2 {
    self->_action = arg2;
    return;
}

-(bool)touchDown {
    r0 = *(int8_t *)(int64_t *)&self->_touchDown & 0x1;
    return r0;
}

-(void)setTouchDown:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_touchDown = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_clickedView, 0x0);
    objc_storeStrong((int64_t *)&self->_normalView, 0x0);
    objc_destroyWeak((int64_t *)&self->_target);
    return;
}

@end