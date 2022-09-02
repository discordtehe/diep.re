@implementation CCConfiguration

+(void *)sharedConfiguration {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *0x1011d4b38;
    if (r8 == 0x0) {
            r0 = [r0 alloc];
            r0 = [r0 init];
            r8 = r0;
            *0x1011d4b38 = r0;
    }
    r0 = r8;
    return r0;
}

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x140;
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
    r0 = [[&var_F0 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r24 = r19 + 0x20;
            *r24 = 0x0;
            *(int32_t *)(r24 + 0x8) = 0x0;
            r0 = [UIDevice currentDevice];
            r0 = [r0 systemVersion];
            r0 = [r0 componentsSeparatedByString:@"."];
            r20 = r0;
            var_120 = q0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = *var_120;
                    r26 = 0x1000000;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_120 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_128 + r28 * 0x8) intValue];
                                    r8 = *(int32_t *)r24;
                                    asm { madd       w8, w0, w26, w8 };
                                    *(int32_t *)r24 = r8;
                                    r26 = SAR(r26, 0x8);
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)checkForGLExtension:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (*0x1011d4b40 != 0x0 && *(int8_t *)*0x1011d4b40 != 0x0) {
            r0 = [NSString stringWithCString:*0x1011d4b40 encoding:0x1];
            r0 = [r0 componentsSeparatedByString:@" "];
            r0 = [r0 containsObject:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(int)maxTextureSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int32_t *)(r19 + 0xc);
    return r0;
}

-(int)maxTextureUnits {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int32_t *)(r19 + 0x1c);
    return r0;
}

-(long long)runningDevice {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ([[UIDevice currentDevice] respondsToSelector:r2] != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 userInterfaceIdiom];
            if (r0 == 0x1) {
                    if (*(int32_t *)0x1011bcc00 == 0x4000000000000000) {
                            if (!CPU_FLAGS & E) {
                                    r0 = 0x6;
                            }
                            else {
                                    r0 = 0x7;
                            }
                    }
            }
            else {
                    if ([[UIDevice currentDevice] respondsToSelector:r2] != 0x0 && [[UIDevice currentDevice] userInterfaceIdiom] != 0x0) {
                            r0 = 0xffffffffffffffff;
                    }
                    else {
                            [[UIScreen mainScreen] bounds];
                            if (d2 > d3) {
                                    asm { fcsel      d8, d2, d3, gt };
                            }
                            r0 = [UIScreen mainScreen];
                            r0 = [r0 scale];
                            if (d0 < 0x4000000000000000) {
                                    r8 = 0x100bc3000;
                                    if (d8 >= *(r8 + 0xdb8)) {
                                            r8 = 0x100bc3000;
                                            if (CPU_FLAGS & GE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    r0 = r8 << 0x1;
                            }
                            else {
                                    if (d8 >= *0x100bc3db8) {
                                            if (d8 < 0x4087000000000000) {
                                                    if (d8 < *0x100bc3dc0) {
                                                            if (!CPU_FLAGS & L) {
                                                                    r0 = 0x4;
                                                            }
                                                            else {
                                                                    r0 = 0x3;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r0 = 0x5;
                                            }
                                    }
                                    else {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
    }
    else {
            if ([[UIDevice currentDevice] respondsToSelector:r2] != 0x0 && [[UIDevice currentDevice] userInterfaceIdiom] != 0x0) {
                    r0 = 0xffffffffffffffff;
            }
            else {
                    [[UIScreen mainScreen] bounds];
                    if (d2 > d3) {
                            asm { fcsel      d8, d2, d3, gt };
                    }
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 scale];
                    if (d0 < 0x4000000000000000) {
                            r8 = 0x100bc3000;
                            if (d8 >= *(r8 + 0xdb8)) {
                                    r8 = 0x100bc3000;
                                    if (CPU_FLAGS & GE) {
                                            r8 = 0x1;
                                    }
                            }
                            r0 = r8 << 0x1;
                    }
                    else {
                            if (d8 >= *0x100bc3db8) {
                                    if (d8 < 0x4087000000000000) {
                                            if (d8 < *0x100bc3dc0) {
                                                    if (!CPU_FLAGS & L) {
                                                            r0 = 0x4;
                                                    }
                                                    else {
                                                            r0 = 0x3;
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = 0x5;
                                    }
                            }
                            else {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(bool)supportsNPOT {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x10);
    return r0;
}

-(bool)supportsDiscardFramebuffer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x12);
    return r0;
}

-(bool)supportsBGRA8888 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x11);
    return r0;
}

-(bool)supportsShareableVAO {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x13);
    return r0;
}

-(void)getOpenGLvariables {
    r0 = self;
    r31 = r31 - 0xa0;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) goto .l21;

loc_10032b9a0:
    r19 = r0;
    *0x1011d4b40 = glGetString(0x1f03);
    var_58 = 0x0;
    if (glGetString(0x1f02) != 0x0) {
            var_58 = 0x0;
            r21 = &var_58;
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            r10 = var_58;
            r11 = r10 + 0x0;
            r8 = r21 + var_41;
            if (sign_extend_64(var_41) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r20 = r8;
                    }
                    else {
                            r20 = r11;
                    }
            }
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r21 = r21;
                    }
                    else {
                            r21 = r10;
                    }
            }
            if (r21 != r20) {
                    do {
                            *(int8_t *)r21 = __tolower(sign_extend_64(*(int8_t *)r21));
                            r21 = r21 + 0x1;
                    } while (r20 != r21);
            }
    }
    r1 = r19 + 0x18;
    if (*(int32_t *)(r19 + 0x20) >> 0x1a != 0x0) {
            glGetIntegerv(0x8d57, r1);
    }
    else {
            *(int32_t *)r1 = 0x0;
    }
    glGetIntegerv(0xd33, r19 + 0xc);
    glGetIntegerv(0x8b4d, r19 + 0x1c);
    *(int8_t *)(r19 + 0x10) = 0x1;
    r21 = [r19 checkForGLExtension:@"GL_IMG_texture_format_BGRA8888"];
    *(int8_t *)(r19 + 0x11) = r21 | [r19 checkForGLExtension:@"GL_APPLE_texture_format_BGRA8888"];
    *(int8_t *)(r19 + 0x12) = [r19 checkForGLExtension:@"GL_EXT_discard_framebuffer"];
    *(int8_t *)(r19 + 0x13) = [r19 checkForGLExtension:@"GL_APPLE_vertex_array_object"];
    if (([r19 checkForGLExtension:@"OES_vertex_array_object"] & 0x1) == 0x0 && ([r19 checkForGLExtension:@"GL_APPLE_vertex_array_object"] & 0x1) == 0x0) {
            r0 = [r19 checkForGLExtension:@"GL_OES_vertex_array_object"];
    }
    else {
            r0 = 0x1;
    }
    *(int8_t *)(r19 + 0x2c) = r0;
    r9 = var_41;
    r8 = sign_extend_64(r9);
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r23 = r9;
            }
            else {
                    r23 = 0x0;
            }
    }
    if (r23 == 0x0) goto loc_10032bc38;

loc_10032bb28:
    var_58 = 0x0;
    r9 = var_58;
    COND = r8 < 0x0;
    r8 = &var_58;
    if (COND) {
            if (!CPU_FLAGS & L) {
                    r21 = r8;
            }
            else {
                    r21 = r9;
            }
    }
    if (r23 < 0x5) goto loc_10032bbb4;

loc_10032bb40:
    r22 = r21 + r23;
    r8 = r23;
    r0 = r21;
    goto loc_10032bb58;

loc_10032bb58:
    r2 = r8 - 0x4;
    if (r2 == 0x0) goto loc_10032bbac;

loc_10032bb60:
    r0 = memchr(r0, 0x77, r2);
    if (r0 == 0x0) goto loc_10032bbac;

loc_10032bb6c:
    if ((*(int32_t *)r0 ^ 0x67626577 | *(int8_t *)(r0 + 0x4) ^ 0x6c) == 0x0) goto loc_10032bb98;

loc_10032bb84:
    r0 = r0 + 0x1;
    r8 = r22 - r0;
    if (r8 >= 0x5) goto loc_10032bb58;

loc_10032bbac:
    if (r23 >= 0x9) goto loc_10032bc6c;

loc_10032bbb4:
    sub_10032bd54(&var_88, " ");
    r0 = sub_10098e85c(&var_58, &var_88);
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    r20 = var_70;
    if (r20 != stack[-120]) {
            sub_10032bd54(&var_88, "1.5");
            r0 = sub_1009908a4(r20, &var_88);
            r20 = r0;
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
            if ((r20 & 0xfffffffd) == 0x0) {
                    *(int8_t *)(r19 + 0x14) = 0x1;
            }
    }
    sub_10000e380(&var_70);
    goto loc_10032bc38;

loc_10032bc38:
    *(int8_t *)(r19 + 0x8) = 0x1;
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    return;

.l21:
    return;

loc_10032bc6c:
    r0 = r21;
    goto loc_10032bc84;

loc_10032bc84:
    r2 = r23 - 0x8;
    if (r2 == 0x0) goto loc_10032bbb4;

loc_10032bc8c:
    r0 = memchr(r0, 0x6f, r2);
    if (r0 == 0x0) goto loc_10032bbb4;

loc_10032bc98:
    if ((*r0 ^ 0x65206c676e65706f | *(int8_t *)(r0 + 0x8) ^ 0x73) == 0x0) goto loc_10032bcc4;

loc_10032bcb0:
    r0 = r0 + 0x1;
    r23 = r22 - r0;
    if (r23 >= 0x9) goto loc_10032bc84;
    goto loc_10032bbb4;

loc_10032bcc4:
    if (r0 != r22 && r0 - r21 != -0x1) {
            if (([r19 checkForGLExtension:@"OES_mapbuffer"] & 0x1) != 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = [r19 checkForGLExtension:@"GL_OES_mapbuffer"];
            }
            *(int8_t *)(r19 + 0x14) = r0;
    }
    else {
            sub_10032bd54(&var_88, " ");
            r0 = sub_10098e85c(&var_58, &var_88);
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
            r20 = var_70;
            if (r20 != stack[-120]) {
                    sub_10032bd54(&var_88, "1.5");
                    r0 = sub_1009908a4(r20, &var_88);
                    r20 = r0;
                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_88);
                    }
                    if ((r20 & 0xfffffffd) == 0x0) {
                            *(int8_t *)(r19 + 0x14) = 0x1;
                    }
            }
            sub_10000e380(&var_70);
    }
    goto loc_10032bc38;

loc_10032bb98:
    if (r0 == r22 || r0 - r21 == -0x1) goto loc_10032bbac;

loc_10032bcd8:
    if (([r19 checkForGLExtension:@"OES_mapbuffer"] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 checkForGLExtension:@"GL_OES_mapbuffer"];
    }
    *(int8_t *)(r19 + 0x14) = r0;
    goto loc_10032bc38;
}

-(bool)supportsVAO {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x2c);
    return r0;
}

-(bool)supportsMapBuffer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x8) == 0x0) {
            [r19 getOpenGLvariables];
    }
    r0 = *(int8_t *)(r19 + 0x14);
    return r0;
}

-(void)dumpInfo {
    return;
}

-(unsigned int)OSVersion {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(bool)UseNewTextureLoadingCode {
    r0 = *(int8_t *)(self + 0x24);
    return r0;
}

-(void)setUseNewTextureLoadingCode:(bool)arg2 {
    *(int8_t *)(self + 0x24) = arg2;
    return;
}

-(bool)UseNewTTFRenderingCode {
    r0 = *(int8_t *)(self + 0x25);
    return r0;
}

-(void)setUseNewTTFRenderingCode:(bool)arg2 {
    *(int8_t *)(self + 0x25) = arg2;
    return;
}

-(bool)useNewResourceManagement {
    r0 = *(int8_t *)(self + 0x26);
    return r0;
}

-(void)setUseNewResourceManagement:(bool)arg2 {
    *(int8_t *)(self + 0x26) = arg2;
    return;
}

-(bool)useNewPlistSerialization {
    r0 = *(int8_t *)(self + 0x27);
    return r0;
}

-(void)setUseNewPlistSerialization:(bool)arg2 {
    *(int8_t *)(self + 0x27) = arg2;
    return;
}

-(bool)useNewTTFAtlas {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)setUseNewTTFAtlas:(bool)arg2 {
    *(int8_t *)(self + 0x28) = arg2;
    return;
}

-(bool)useNewRenderer {
    r0 = *(int8_t *)(self + 0x29);
    return r0;
}

-(void)setUseNewRenderer:(bool)arg2 {
    *(int8_t *)(self + 0x29) = arg2;
    return;
}

-(bool)useMiniclipWindowManager {
    r0 = *(int8_t *)(self + 0x2a);
    return r0;
}

-(void)setUseMiniclipWindowManager:(bool)arg2 {
    *(int8_t *)(self + 0x2a) = arg2;
    return;
}

-(bool)useNewTextureScale {
    r0 = *(int8_t *)(self + 0x2b);
    return r0;
}

-(void)setUseNewTextureScale:(bool)arg2 {
    *(int8_t *)(self + 0x2b) = arg2;
    return;
}

@end