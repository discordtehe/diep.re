@implementation FRContextualLayout

+(void *)objectWithDictionary:(void *)arg2 content:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[FRContextualLayout alloc] initWithDictionary:r20 content:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)orientation {
    r0 = self->_orientation;
    return r0;
}

-(void)load {
    r31 = r31 - 0x130;
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
    [self setCallbackCount:0x0];
    var_108 = q0;
    r0 = [r19 buttons];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            r24 = *var_108;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_108 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_110 + r26 * 0x8) loadImageWithDelegate:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setOrientation:(long long)arg2 {
    self->_orientation = arg2;
    return;
}

-(struct CGSize)windowAspectRatio {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->_windowAspectRatio, 0x10, 0x1, 0x0);
    return r0;
}

-(void)didLoadRemoteImageWithURL:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r25 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 setCallbackCount:[r20 callbackCount] + 0x1];
    [r20 callbackCount];
    [r20 imageCount];
    objc_sync_exit(r20);
    [r20 release];
    if (r21 < r22) goto loc_10092ce2c;

loc_10092cc4c:
    var_108 = q0;
    r0 = [r20 buttons];
    r29 = r29;
    r0 = [r0 retain];
    var_120 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_10092cdcc;

loc_10092cca0:
    r19 = @selector(countByEnumeratingWithState:objects:count:);
    r21 = *var_108;
    var_130 = r20;
    stack[-312] = r25;
    var_138 = r19;
    goto loc_10092ccb8;

loc_10092ccb8:
    r20 = 0x0;
    goto loc_10092ccc4;

loc_10092ccc4:
    if (*var_108 != r21) {
            objc_enumerationMutation(var_120);
    }
    r28 = *(var_110 + r20 * 0x8);
    r0 = [r28 image];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 image];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_10092cdd4;

loc_10092cd14:
    r0 = [r28 image];
    r0 = [r0 retain];
    r28 = r0;
    r19 = [[r0 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [r26 release];
    if (r19 == r0) goto loc_10092cde4;

loc_10092cd88:
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_10092ccc4;

loc_10092cd94:
    r23 = objc_msgSend(var_120, var_138);
    r20 = var_130;
    r25 = stack[-312];
    if (r23 != 0x0) goto loc_10092ccb8;

loc_10092cdc8:
    r24 = 0x1;
    goto loc_10092cdec;

loc_10092cdec:
    [var_120 release];
    r0 = [r20 content];
    r0 = [r0 retain];
    [r0 layout:r20 loaded:r24];
    [r0 release];
    goto loc_10092ce2c;

loc_10092ce2c:
    var_58 = **___stack_chk_guard;
    [r25 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10092cde4:
    r24 = 0x0;
    r20 = var_130;
    r25 = stack[-312];
    goto loc_10092cdec;

loc_10092cdd4:
    [r27 release];
    [r26 release];
    goto loc_10092cde4;

loc_10092cdcc:
    r24 = 0x1;
    goto loc_10092cdec;
}

-(void)setWindowAspectRatio:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_windowAspectRatio, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(void *)buttons {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttons)), 0x1);
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 content:(void *)arg3 {
    r31 = r31 - 0x1d0;
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
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [[&var_F8 super] init];
    var_180 = r0;
    if (r0 != 0x0) {
            [var_180 setContent:r23];
            r0 = [r22 valueForKey:@"orientation"];
            r29 = r29;
            r24 = [r0 retain];
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0 && [r24 length] != 0x0) {
                    if ([r24 isEqualToString:r2] != 0x0) {
                            r0 = var_180;
                    }
                    else {
                            if ([r24 isEqualToString:r2] != 0x0) {
                                    r0 = var_180;
                            }
                            else {
                                    r0 = var_180;
                            }
                    }
                    [r0 setOrientation:r2];
            }
            r25 = @selector(valueForKey:);
            r0 = objc_msgSend(r22, r25);
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0) {
                    r25 = @selector(valueForKey:);
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r27 != r0) {
                            var_1A0 = r24;
                            var_198 = r22;
                            r0 = [NSMutableArray array];
                            r29 = r29;
                            var_160 = [r0 retain];
                            var_1B0 = r27;
                            r0 = [r27 retain];
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_190 = r1;
                            var_188 = r0;
                            r0 = objc_msgSend(r0, r1);
                            var_148 = r0;
                            if (r0 != 0x0) {
                                    do {
                                            r22 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(var_188);
                                                    }
                                                    r25 = r23;
                                                    r0 = [FRContextualButton objectWithDictionary:*(0x0 + r22 * 0x8) content:r23];
                                                    r0 = [r0 retain];
                                                    r21 = r0;
                                                    r0 = [r0 imageClickedURL];
                                                    r29 = r29;
                                                    r27 = [r0 retain];
                                                    [NSString class];
                                                    if ((objc_msgSend(r27, r26) & 0x1) != 0x0) {
                                                            r0 = [r21 imageClickedURL];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r23 = [r0 length];
                                                            [r0 release];
                                                            [r27 release];
                                                            if (r23 != 0x0) {
                                                                    [var_180 setImageCount:[var_180 imageCount] + 0x1];
                                                            }
                                                    }
                                                    else {
                                                            [r27 release];
                                                    }
                                                    r0 = [r21 imageURL];
                                                    r29 = r29;
                                                    r27 = [r0 retain];
                                                    [NSString class];
                                                    if ((objc_msgSend(r27, r26) & 0x1) != 0x0) {
                                                            r0 = [r21 imageURL];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r24 = [r0 length];
                                                            [r0 release];
                                                            [r27 release];
                                                            r23 = r25;
                                                            if (r24 != 0x0) {
                                                                    [var_180 setImageCount:[var_180 imageCount] + 0x1];
                                                            }
                                                    }
                                                    else {
                                                            [r27 release];
                                                            r23 = r25;
                                                    }
                                                    [var_160 addObject:r2];
                                                    [r21 release];
                                                    r22 = r22 + 0x1;
                                            } while (r22 < var_148);
                                            r0 = objc_msgSend(var_188, var_190);
                                            var_148 = r0;
                                    } while (r0 != 0x0);
                            }
                            [var_188 release];
                            [var_180 setButtons:var_160];
                            [var_160 release];
                            r24 = var_1A0;
                            r22 = var_198;
                            r27 = var_1B0;
                            r25 = @selector(valueForKey:);
                    }
            }
            r0 = objc_msgSend(r22, r25);
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r19 != r0) {
                            r0 = objc_msgSend(r19, r25);
                            r0 = [r0 retain];
                            [r0 floatValue];
                            asm { fcvt       d8, s0 };
                            [r20 release];
                            r0 = objc_msgSend(r19, r25);
                            r0 = [r0 retain];
                            objc_msgSend(r0, r21);
                            asm { fcvt       d9, s0 };
                            [r20 release];
                            [var_180 setWindowAspectRatio:r2];
                    }
            }
            [r19 release];
            [r27 release];
            [r24 release];
    }
    var_68 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard == var_68) {
            r0 = var_180;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setButtons:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)content {
    r0 = objc_loadWeakRetained((int64_t *)&self->_content);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setContent:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_content, arg2);
    return;
}

-(long long)callbackCount {
    r0 = self->_callbackCount;
    return r0;
}

-(void)setCallbackCount:(long long)arg2 {
    self->_callbackCount = arg2;
    return;
}

-(long long)imageCount {
    r0 = self->_imageCount;
    return r0;
}

-(void)setImageCount:(long long)arg2 {
    self->_imageCount = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_content);
    objc_storeStrong((int64_t *)&self->_buttons, 0x0);
    return;
}

@end