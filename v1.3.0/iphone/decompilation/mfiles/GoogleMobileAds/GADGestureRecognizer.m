@implementation GADGestureRecognizer

-(union ? *)gestureInfo {
    r0 = (int64_t *)&self->_gestureInfo;
    return r0;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    loc_1007c44fc();
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0xc0;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    [[&saved_fp - 0x30 super] touchesMoved:arg2 withEvent:arg3];
    var_38 = [arg2 anyObject];
    if (class_getInstanceMethod(sub_1007c57ec(*0x1011c29c0, 0x1011db760), sub_1007c5720(*0x1011c29c8, 0x1011db768)) != 0x0) {
            objc_msgSend(var_38, sub_1007c5720(*0x1011c29c8, 0x1011db768));
            r0 = [var_8 gestureInfo];
            *(r0 + 0x18) = *(r0 + 0x18) + d0;
            r0 = [var_8 gestureInfo];
            d0 = d0;
            *(r0 + 0x20) = d0;
    }
    if (class_getInstanceMethod(sub_1007c57ec(*0x1011c29c0, 0x1011db760), sub_1007c5720(*0x1011c29d0, 0x1011db770)) != 0x0) {
            objc_msgSend(var_38, sub_1007c5720(*0x1011c29d0, 0x1011db770));
            r0 = [var_8 gestureInfo];
            *(r0 + 0x28) = *(r0 + 0x28) + d0;
            *([var_8 gestureInfo] + 0x30) = d0;
    }
    r0 = [var_8 gestureInfo];
    *(int32_t *)(r0 + 0x4) = *(int32_t *)(r0 + 0x4) + 0x1;
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    [[&var_30 super] touchesCancelled:arg2 withEvent:arg3];
    [self setState:0x5];
    var_38 = [arg2 anyObject];
    r0 = [self gestureInfo];
    *(int32_t *)(r0 + 0xc) = *(int32_t *)(r0 + 0xc) + 0x1;
    sub_1007c4510([self gestureInfo], [self view], var_38, arg3);
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x140;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = self;
    var_28 = arg2;
    var_30 = arg3;
    r0 = r29 - 0x40;
    [[r0 super] touchesEnded:r2 withEvent:r3];
    [var_18 setState:0x5];
    var_48 = [var_28 anyObject];
    r0 = [var_48 view];
    r0 = [r0 superview];
    r3 = @selector(view);
    [objc_msgSend(var_48, r3) frame];
    [r0 convertPoint:[var_48 window] toView:r3];
    var_50 = var_68;
    r0 = [var_18 gestureInfo];
    r1 = &@selector(gestureInfo);
    r8 = *(int32_t *)(r0 + 0x58);
    asm { scvtf      d0, w8 };
    asm { fcvtzs     w8, d0 };
    *(int32_t *)(objc_msgSend(var_18, *r1) + 0x60) = r8;
    d0 = var_50;
    var_E0 = d0;
    r0 = [var_18 gestureInfo];
    r1 = &@selector(gestureInfo);
    r8 = *(int32_t *)(r0 + 0x5c);
    asm { scvtf      d0, w8 };
    d1 = var_E0;
    d0 = d1 - d0;
    asm { fcvtzs     w8, d0 };
    r8 = r8;
    *(int32_t *)(objc_msgSend(var_18, *r1) + 0x64) = r8;
    [var_48 locationInView:[var_48 view]];
    r0 = &@selector(gestureInfo);
    var_A0 = d0;
    var_98 = d1;
    asm { fcvtzs     w8, d0 };
    r0 = *r0;
    r0 = objc_msgSend(var_18, r0);
    r1 = &@selector(gestureInfo);
    *(int32_t *)(r0 + 0x38) = r8;
    asm { fcvtzs     w9, d0 };
    *(int32_t *)(objc_msgSend(var_18, *r1) + 0x3c) = r9;
    r0 = [var_18 gestureInfo];
    r1 = &@selector(gestureInfo);
    r8 = *(int32_t *)(r0 + 0x68);
    asm { scvtf      d0, w8 };
    asm { fcvtzs     w8, d0 };
    var_A4 = r8;
    r0 = objc_msgSend(var_18, *r1);
    r1 = &@selector(gestureInfo);
    r8 = *(int32_t *)(r0 + 0x6c);
    asm { scvtf      d0, w8 };
    asm { fcvtzs     w8, d0 };
    r8 = var_A4 * var_A4 + r8 * r8;
    asm { scvtf      d0, w8 };
    asm { fsqrt      d0, d0 };
    asm { fcvtzs     w8, d0 };
    *(int32_t *)(objc_msgSend(var_18, *r1) + 0x54) = r8;
    r0 = [var_18 gestureInfo];
    *(int32_t *)r0 = *(int32_t *)r0 + 0x1;
    sub_1007c4510([var_18 gestureInfo], [var_18 view], var_48, var_30);
    return;
}

@end