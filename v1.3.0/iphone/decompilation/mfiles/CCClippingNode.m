@implementation CCClippingNode

+(void *)clippingNode {
    r0 = [self node];
    return r0;
}

-(void)dealloc {
    [self->_stencil release];
    [[&var_20 super] dealloc];
    return;
}

+(void *)clippingNodeWithStencil:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithStencil:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithStencil:0x0];
    return r0;
}

-(void *)initWithStencil:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setStencil:r20];
            [r19 setAlphaThreshold:r20];
            [r19 setInverted:0x0];
            if (*qword_1011d3938 != -0x1) {
                    dispatch_once(0x1011d3938, 0x100e78128);
            }
    }
    r0 = r19;
    return r0;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [self->_stencil onEnter];
    return;
}

-(void)onEnterTransitionDidFinish {
    [[&var_20 super] onEnterTransitionDidFinish];
    [self->_stencil onEnterTransitionDidFinish];
    return;
}

-(void)onExitTransitionDidStart {
    [self->_stencil onExitTransitionDidStart];
    [[&var_20 super] onExitTransitionDidStart];
    return;
}

-(void)onExit {
    [self->_stencil onExit];
    [[&var_20 super] onExit];
    return;
}

-(void *)stencil {
    r0 = self->_stencil;
    return r0;
}

-(void)visit {
    r31 = r31 - 0xb0;
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
    if (*(int32_t *)0x1011abfb0 <= 0x0) goto loc_1002eafd4;

loc_1002eaf44:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_stencil));
    r0 = *(r19 + r24);
    if (r0 == 0x0 || ([r0 visible] & 0x1) == 0x0) goto loc_1002eafa8;

loc_1002eaf64:
    r8 = *(int32_t *)0x1011abfb4;
    r8 = r8 + 0x1;
    if (r8 != *(int32_t *)0x1011abfb0) goto loc_1002eb00c;

loc_1002eaf7c:
    if (*qword_1011d3940 != -0x1) {
            dispatch_once(0x1011d3940, 0x100e78148);
    }
    r0 = &var_70;
    goto loc_1002eafec;

loc_1002eafec:
    [[r0 super] visit];
    return;

.l6:
    return;

loc_1002eb00c:
    *(int32_t *)0x1011abfb4 = r8;
    r21 = (0x1 << r8) - 0x1 | 0x1 << r8;
    r20 = glIsEnabled(0xb90);
    r0 = glGetIntegerv(0xb98, &var_74);
    r0 = glGetIntegerv(0xb92, &var_78);
    r0 = glGetIntegerv(0xb97, &var_7C);
    r0 = glGetIntegerv(0xb93, &var_80);
    r0 = glGetIntegerv(0xb94, &stack[-148]);
    r0 = glGetIntegerv(0xb95, &var_88);
    r0 = glGetIntegerv(0xb96, &var_8C);
    glEnable(0xb90);
    glStencilMask(r22);
    r0 = glGetBooleanv(0xb72, &var_8D);
    r0 = glDepthMask(0x0);
    asm { sbfx       w0, w8, #0x0, #0x1 };
    glClearStencil(r0);
    glClear(0x400);
    r0 = glStencilFunc(0x200, r22, r22);
    if (*(int8_t *)(r19 + r25) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x1e01;
            }
    }
    glStencilOp(r0, 0x1e00, 0x1e00);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_alphaThreshold));
    if (*(int32_t *)(r19 + r25) < 0x3ff0000000000000) {
            r0 = [CCShaderCache sharedShaderCache];
            r0 = [r0 programForKey:@"ShaderPositionTextureColorAlphaTest"];
            [r0 setUniformLocation:glGetUniformLocation([r0 program], "CC_AlphaValue") withF1:r3];
            sub_1002eb250(*(r19 + r24), r0);
    }
    sub_1003575dc();
    [r19 transform];
    loc_100357620([*(r19 + r24) visit], @selector(visit));
    glDepthMask(var_8D);
    glStencilFunc(0x202, r21, r21);
    glStencilOp(0x1e00, 0x1e00, 0x1e00);
    [[&var_A0 super] visit];
    glStencilFunc(var_78, var_7C, var_80);
    glStencilOp(stack[-148], var_88, var_8C);
    glStencilMask(var_74);
    if (r20 == 0x0) {
            glDisable(0xb90);
    }
    *(int32_t *)0x1011abfb4 = *(int32_t *)0x1011abfb4 - 0x1;
    return;

loc_1002eafa8:
    if (*(int8_t *)(int64_t *)&r19->_inverted == 0x0) goto .l6;

loc_1002eafb8:
    r0 = &var_60;
    goto loc_1002eafec;

loc_1002eafd4:
    r0 = &var_50;
    goto loc_1002eafec;
}

-(void)setStencil:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(float)alphaThreshold {
    r0 = self;
    return r0;
}

-(void)setAlphaThreshold:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_alphaThreshold = s0;
    return;
}

-(bool)inverted {
    r0 = *(int8_t *)(int64_t *)&self->_inverted;
    return r0;
}

-(void)setInverted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_inverted = arg2;
    return;
}

@end