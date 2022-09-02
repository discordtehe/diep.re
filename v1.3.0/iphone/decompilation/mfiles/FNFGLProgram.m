@implementation FNFGLProgram

-(void *)initWithVertexShader:(char *)arg2 fragmentShader:(char *)arg3 {
    r31 = r31 - 0x60;
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
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_attributes));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            if (*qword_1011dd5f8 != -0x1) {
                    dispatch_once_f(0x1011dd5f8, 0x1011c68b0, 0x100a3d91c);
            }
            r0 = qword_1011dd600();
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_program));
            *(int32_t *)(r19 + r24) = r0;
            r22 = (int64_t *)&r19->_vertexShader;
            r23 = (int64_t *)&r19->_vertexShaderLog;
            if ((sub_100b4220c(r22, 0x8b31, r21, r23) & 0x1) != 0x0) {
                    r21 = (int64_t *)&r19->_fragmentShader;
                    r23 = (int64_t *)&r19->_fragmentShaderLog;
                    if ((sub_100b4220c(r21, 0x8b30, r20, r23) & 0x1) != 0x0) {
                            r20 = *(int32_t *)(r19 + r24);
                            r22 = *(int32_t *)r22;
                            if (*0x1011dd6a8 != -0x1) {
                                    dispatch_once_f(0x1011dd6a8, 0x1011c69b8, 0x100a3d91c);
                            }
                            (*0x1011dd6b0)(r20, r22);
                            r20 = *(int32_t *)(r19 + r24);
                            r21 = *(int32_t *)r21;
                            if (*0x1011dd6a8 != -0x1) {
                                    dispatch_once_f(0x1011dd6a8, 0x1011c69b8, 0x100a3d91c);
                            }
                            (*0x1011dd6b0)(r20, r21);
                            *(int8_t *)(int64_t *)&r19->_initialized = 0x1;
                    }
                    else {
                            if (*r23 == 0x0) {
                                    [@"Failed to compile fragment shader" retain];
                                    *r23 = @"Failed to compile fragment shader";
                                    [0x0 release];
                            }
                            *(int32_t *)r21 = 0x0;
                    }
            }
            else {
                    if (*r23 == 0x0) {
                            [@"Failed to compile vertex shader" retain];
                            *r23 = @"Failed to compile vertex shader";
                            [0x0 release];
                    }
                    *(int32_t *)r22 = 0x0;
            }
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)validate {
    r0 = self;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_initialized));
    if (*(int8_t *)(r0 + r23) != 0x0) {
            r19 = r0;
            r20 = *(int32_t *)(int64_t *)&r0->_program;
            if (*qword_1011dd628 != -0x1) {
                    dispatch_once_f(0x1011dd628, 0x1011c68f8, 0x100a3d91c);
            }
            qword_1011dd630(r20);
            if (*0x1011dd608 != -0x1) {
                    dispatch_once_f(0x1011dd608, 0x1011c68c8, 0x100a3d91c);
            }
            r0 = (*0x1011dd610)(r20, 0x8b83, &var_34);
            if (var_34 == 0x1) {
                    if (*(int8_t *)(r19 + r23) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    if (*0x1011dd608 != -0x1) {
                            dispatch_once_f(0x1011dd608, 0x1011c68c8, 0x100a3d91c);
                    }
                    (*0x1011dd610)(r20, 0x8b84, &var_38);
                    r22 = var_38;
                    if (r22 >= 0x1) {
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_programLog));
                            r21 = malloc(r22);
                            if (*qword_1011dd658 != -0x1) {
                                    dispatch_once_f(0x1011dd658, 0x1011c6940, 0x100a3d91c);
                            }
                            qword_1011dd660(r20, r22, &var_38, r21);
                            r0 = [NSString stringWithUTF8String:r21];
                            r0 = [r0 retain];
                            r8 = *(r19 + r24);
                            *(r19 + r24) = r0;
                            [r8 release];
                            free(r21);
                    }
                    if (*qword_1011dd638 != -0x1) {
                            dispatch_once_f(0x1011dd638, 0x1011c6910, 0x100a3d91c);
                    }
                    qword_1011dd640(r20);
                    r0 = 0x0;
                    *(int8_t *)(r19 + r23) = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(unsigned int)addAttribute:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_initialized != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_attributes));
            if ([*(r20 + r25) containsObject:r2] == 0x0) {
                    [*(r20 + r25) addObject:r19];
                    r22 = *(int32_t *)(int64_t *)&r20->_program;
                    r23 = [*(r20 + r25) indexOfObject:r19];
                    r24 = [objc_retainAutorelease(r19) UTF8String];
                    if (*qword_1011dd6f8 != -0x1) {
                            dispatch_once_f(0x1011dd6f8, 0x1011c6a30, 0x100a3d91c);
                    }
                    qword_1011dd700(r22, r23, r24);
            }
            r20 = [*(r20 + r25) indexOfObject:r2];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(int)uniformIndex:(char *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_initialized != 0x0) {
            r19 = r2;
            r20 = *(int32_t *)(int64_t *)&r0->_program;
            if (*qword_1011dd6e8 != -0x1) {
                    dispatch_once_f(0x1011dd6e8, 0x1011c6a18, 0x100a3d91c);
            }
            r2 = *0x1011dd6f0;
            r0 = (r2)(r20, r19, r2);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)link {
    r0 = self;
    r31 = r31 - 0x70;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_initialized));
    if (*(int8_t *)(r0 + r23) != 0x0) {
            r19 = r0;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_program));
            r20 = *(int32_t *)(r0 + r24);
            if (*qword_1011dd648 != -0x1) {
                    dispatch_once_f(0x1011dd648, 0x1011c6928, 0x100a3d91c);
            }
            qword_1011dd650(r20);
            if (*0x1011dd608 != -0x1) {
                    dispatch_once_f(0x1011dd608, 0x1011c68c8, 0x100a3d91c);
            }
            r0 = (*0x1011dd610)(r20, 0x8b82, &var_54);
            if (var_54 != 0x1) {
                    if (*0x1011dd608 != -0x1) {
                            dispatch_once_f(0x1011dd608, 0x1011c68c8, 0x100a3d91c);
                    }
                    (*0x1011dd610)(r20, 0x8b84, &var_58);
                    r22 = var_58;
                    if (r22 >= 0x1) {
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_programLog));
                            r21 = malloc(r22);
                            if (*qword_1011dd658 != -0x1) {
                                    dispatch_once_f(0x1011dd658, 0x1011c6940, 0x100a3d91c);
                            }
                            qword_1011dd660(r20, r22, &var_58, r21);
                            r0 = [NSString stringWithUTF8String:r21];
                            r0 = [r0 retain];
                            r8 = *(r19 + r25);
                            *(r19 + r25) = r0;
                            [r8 release];
                            free(r21);
                    }
                    if (*qword_1011dd638 != -0x1) {
                            dispatch_once_f(0x1011dd638, 0x1011c6910, 0x100a3d91c);
                    }
                    r0 = qword_1011dd640(r20);
                    *(int8_t *)(r19 + r23) = 0x0;
            }
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_vertexShader));
            r20 = *(int32_t *)(r19 + r28);
            if (r20 != 0x0) {
                    r21 = *(int32_t *)(r19 + r24);
                    if (*0x1011dd6b8 != -0x1) {
                            dispatch_once_f(0x1011dd6b8, 0x1011c69d0, 0x100a3d91c);
                    }
                    (*0x1011dd6c0)(r21, r20);
                    r20 = *(int32_t *)(r19 + r28);
                    if (*0x1011dd698 != -0x1) {
                            dispatch_once_f(0x1011dd698, 0x1011c69a0, 0x100a3d91c);
                    }
                    r0 = (*0x1011dd6a0)(r20);
                    *(int32_t *)(r19 + r28) = 0x0;
            }
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_fragmentShader));
            r20 = *(int32_t *)(r19 + r28);
            if (r20 != 0x0) {
                    r21 = *(int32_t *)(r19 + r24);
                    if (*0x1011dd6b8 != -0x1) {
                            dispatch_once_f(0x1011dd6b8, 0x1011c69d0, 0x100a3d91c);
                    }
                    (*0x1011dd6c0)(r21, r20);
                    r20 = *(int32_t *)(r19 + r28);
                    if (*0x1011dd698 != -0x1) {
                            dispatch_once_f(0x1011dd698, 0x1011c69a0, 0x100a3d91c);
                    }
                    r0 = (*0x1011dd6a0)(r20);
                    *(int32_t *)(r19 + r28) = 0x0;
            }
            if (*(int8_t *)(r19 + r23) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)use {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_initialized != 0x0) {
            r19 = *(int32_t *)(int64_t *)&r0->_program;
            if (*qword_1011dd618 != -0x1) {
                    dispatch_once_f(0x1011dd618, 0x1011c68e0, 0x100a3d91c);
            }
            r1 = *0x1011dd620;
            (r1)(r19, r1);
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_programLog, 0x0);
    objc_storeStrong((int64_t *)&self->_fragmentShaderLog, 0x0);
    objc_storeStrong((int64_t *)&self->_vertexShaderLog, 0x0);
    objc_storeStrong((int64_t *)&self->_attributes, 0x0);
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void *)fragmentShaderLog {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fragmentShaderLog)), 0x0);
    return r0;
}

-(void *)vertexShaderLog {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_vertexShaderLog)), 0x0);
    return r0;
}

-(void *)programLog {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_programLog)), 0x0);
    return r0;
}

@end