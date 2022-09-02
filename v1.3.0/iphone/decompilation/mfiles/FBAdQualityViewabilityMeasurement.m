@implementation FBAdQualityViewabilityMeasurement

-(void *)initWithTargetView:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_targetView, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r20 = [UIView new];
    r19 = [self initWithTargetView:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(float)viewableRatio {
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdBackgroundStateManagerFactory backgroundStateManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 applicationState];
    r0 = [r0 release];
    if (r21 < 0x3) goto .l1;

loc_100a7ab7c:
    r0 = [r19 targetView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 visible] & 0x1) == 0x0) goto loc_100a7ad6c;

loc_100a7abac:
    r0 = [r19 targetView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 displayedAlpha];
    [r0 release];
    r0 = [r21 release];
    if (*0x100b9e2d0 - d0 > *0x100bc5908) goto .l1;

loc_100a7abfc:
    r0 = [r19 targetView];
    r0 = [r0 retain];
    [r0 clippedScreenRect];
    [r0 release];
    r22 = [[r19 targetView] retain];
    r21 = [[r19 overlappingRectsInView:r22 targetRect:r3] retain];
    [r22 release];
    [r19 unionAreaOfRects:r21];
    r23 = [[NSValue valueWithCGRect:r21] retain];
    [r21 addObject:r23];
    [r23 release];
    [r19 unionAreaOfRects:r21];
    r0 = [r19 targetView];
    r0 = [r0 retain];
    [r0 frame];
    v8 = v10;
    r0 = [r19 targetView];
    r0 = [r0 retain];
    objc_msgSend(r0, r23);
    [r19 release];
    [r22 release];
    asm { fdiv       d0, d9, d8 };
    asm { fcvt       s8, d0 };
    goto loc_100a7ad6c;

loc_100a7ad6c:
    r0 = [r21 release];
    return r0;

.l1:
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_targetView, 0x0);
    return;
}

-(void *)overlappingRectsInView:(void *)arg2 targetRect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [NSMutableArray new];
    r0 = [r19 superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0 || [r19 isWindow] != 0x0) {
            r0 = [r19 isWindow];
            var_80 = r21;
            var_78 = r19;
            if (r0 != 0x0) {
                    r0 = [r19 retain];
                    r25 = r0;
                    r0 = [r0 siblingWindows];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    r24 = [r0 indexOfObject:r25];
                    [r25 release];
            }
            else {
                    r0 = [r21 subviews];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    r24 = [r0 indexOfObject:r19];
            }
            r24 = r24 + 0x1;
            if (r24 < [r23 count]) {
                    do {
                            r0 = [r22 intersectingRectsInView:[[r23 objectAtIndex:r24] retain] targetRect:r3];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r21 release];
                            [r19 release];
                            r24 = r24 + 0x1;
                    } while (r24 < objc_msgSend(r23, r28));
            }
            r21 = var_80;
            if (r21 != 0x0) {
                    r19 = [[r22 overlappingRectsInView:r21 targetRect:r3] retain];
                    [r20 addObjectsFromArray:r19];
                    [r19 release];
            }
            [r23 release];
            r19 = var_78;
    }
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)intersectingRectsInView:(void *)arg2 targetRect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x100;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
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
    r20 = self;
    r19 = [arg2 retain];
    var_98 = &var_A0;
    var_78 = [NSMutableArray new];
    if (([r19 visible] & 0x1) != 0x0) {
            [r19 clippedScreenRect];
            v12 = v0;
            v13 = v1;
            v14 = v2;
            v15 = v3;
            r1 = @selector(blocking);
            r0 = objc_msgSend(r19, r1);
            if (r0 != 0x0 && CGRectIntersectsRect(r0, r1) != 0x0) {
                    r22 = *(var_98 + 0x28);
                    r0 = [NSValue valueWithCGRect:r2];
                    r29 = r29;
                    [r0 retain];
                    [r22 addObject:r2];
                    [r23 release];
            }
            if ([r19 clipsToBounds] == 0x0 || ([r19 blocking] & 0x1) == 0x0) {
                    r0 = [r19 subviews];
                    r0 = [r0 retain];
                    [r0 enumerateObjectsUsingBlock:&var_F0];
                    [r0 release];
            }
    }
    [*(var_98 + 0x28) retain];
    _Block_object_dispose(&var_A0, 0x8);
    [var_78 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)targetView {
    r0 = self->_targetView;
    return r0;
}

-(void)setTargetView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_targetView, arg2);
    return;
}

+(void *)measurementWithTargetView:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithTargetView:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(double)unionAreaOfRects:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r28 = r0;
    r0 = [r0 count];
    r26 = r0;
    r19 = &var_B0;
    r20 = r0 << 0x1;
    r22 = &var_B0 - r0 * 0x10;
    r21 = &var_B0 - r0 * 0x10;
    r23 = &var_B0 - (r20 * r20 + 0xf & 0xfffffffffffffff0);
    bzero(r23, r20 * r20);
    if (r26 == 0x0) goto loc_100a7b5d4;

loc_100a7b304:
    var_A8 = r19;
    var_A0 = r23;
    r25 = 0x0;
    r19 = r21 + 0x8;
    r24 = r22 + 0x8;
    do {
            r0 = [r28 objectAtIndexedSubscript:r25];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r28;
            [r0 CGRectValue];
            r0 = r28;
            r28 = r23;
            [r0 release];
            *(r19 + 0xfffffffffffffff8) = d9 + d11;
            *(int128_t *)(r24 + 0xfffffffffffffff8) = d8;
            *(int128_t *)r24 = d8 + d10;
            *r19 = d9;
            r19 = r19 + 0x10;
            r25 = r25 + 0x1;
            r24 = r24 + 0x10;
    } while (r26 != r25);
    var_80 = r26;
    qsort(r22, r20, 0x8, 0x100a7b6c4);
    qsort(r21, r20, 0x8, 0x100a7b6c4);
    r25 = 0x0;
    var_98 = var_A0 + 0x1;
    goto loc_100a7b3ec;

loc_100a7b3ec:
    var_88 = @selector(objectAtIndexedSubscript:);
    var_90 = @selector(CGRectValue);
    r0 = objc_msgSend(r28, var_88);
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, var_90);
    v8 = v1;
    [r26 release];
    if (r20 < 0x1) goto loc_100a7b558;

loc_100a7b430:
    r10 = r20;
    goto loc_100a7b438;

loc_100a7b438:
    r8 = r10 - 0x0;
    if (r8 < 0x0) {
            asm { cinc       x8, x8, lt };
    }
    r8 = 0x0 + r8 / 0x2;
    if (*(r22 + r8 * 0x8) == d10) goto loc_100a7b468;

loc_100a7b454:
    if (CPU_FLAGS & G) {
            asm { csinc      x9, x9, x8, gt };
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r10 = r10;
            }
            else {
                    r10 = r8;
            }
    }
    if (r10 > 0x0) goto loc_100a7b438;

loc_100a7b464:
    r8 = 0xffffffffffffffff;
    goto loc_100a7b468;

loc_100a7b468:
    d0 = d10 + d11;
    r11 = r20;
    goto loc_100a7b474;

loc_100a7b474:
    r9 = r11 - 0x0;
    if (r9 < 0x0) {
            asm { cinc       x9, x9, lt };
    }
    r9 = 0x0 + r9 / 0x2;
    if (*(r22 + r9 * 0x8) == d0) goto loc_100a7b4a4;

loc_100a7b490:
    if (CPU_FLAGS & G) {
            asm { csinc      x10, x10, x9, gt };
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r11 = r11;
            }
            else {
                    r11 = r9;
            }
    }
    if (r11 > 0x0) goto loc_100a7b474;

loc_100a7b4a0:
    r9 = 0xffffffffffffffff;
    goto loc_100a7b4a4;

loc_100a7b4a4:
    r11 = r20;
    goto loc_100a7b4ac;

loc_100a7b4ac:
    r12 = r11 - 0x0;
    if (r12 < 0x0) {
            asm { cinc       x12, x12, lt };
    }
    r27 = 0x0 + r12 / 0x2;
    if (*(r21 + r27 * 0x8) == d8) goto loc_100a7b4dc;

loc_100a7b4c8:
    if (CPU_FLAGS & G) {
            asm { csinc      x10, x10, x27, gt };
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r11 = r11;
            }
            else {
                    r11 = r27;
            }
    }
    if (r11 > 0x0) goto loc_100a7b4ac;

loc_100a7b4d8:
    r27 = 0xffffffffffffffff;
    goto loc_100a7b4dc;

loc_100a7b4dc:
    d0 = d8 + d9;
    r11 = r20;
    goto loc_100a7b4e8;

loc_100a7b4e8:
    r12 = r11 - 0x0;
    if (r12 < 0x0) {
            asm { cinc       x12, x12, lt };
    }
    r19 = 0x0 + r12 / 0x2;
    if (*(r21 + r19 * 0x8) == d0) goto loc_100a7b518;

loc_100a7b504:
    if (CPU_FLAGS & G) {
            asm { csinc      x10, x10, x19, gt };
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r11 = r11;
            }
            else {
                    r11 = r19;
            }
    }
    if (r11 > 0x0) goto loc_100a7b4e8;

loc_100a7b514:
    r19 = 0xffffffffffffffff;
    goto loc_100a7b518;

loc_100a7b518:
    r24 = r9 - r8;
    if (r24 > 0x0) {
            r8 = r8 + 0x1;
            r28 = r19 - r27;
            asm { madd       x8, x20, x8, x27 };
            r26 = var_98 + r8;
            do {
                    if (r19 > r27) {
                            memset(r26, 0x1, r28);
                    }
                    r26 = r26 + r20;
                    r24 = r24 - 0x1;
            } while (r24 != 0x0);
    }
    goto loc_100a7b558;

loc_100a7b558:
    r25 = r25 + 0x1;
    r28 = r23;
    if (r25 != var_80) goto loc_100a7b3ec;

loc_100a7b56c:
    if (r20 != 0x0) {
            r8 = 0x0;
            d8 = 0x0;
            r19 = var_A8;
            r14 = var_A0;
            do {
                    r9 = r8 - 0x1;
                    r10 = r14;
                    r11 = r21;
                    r12 = r20;
                    do {
                            if (*(int8_t *)r10 != 0x0) {
                                    d8 = d8 + (*(r22 + r8 * 0x8) - *(r22 + r9 * 0x8)) * (*(int128_t *)r11 - *(int128_t *)(r11 + 0xfffffffffffffff8));
                            }
                            r11 = r11 + 0x8;
                            r10 = r10 + 0x1;
                            r12 = r12 - 0x1;
                    } while (r12 != 0x0);
                    r8 = r8 + 0x1;
                    r14 = r14 + r20;
            } while (r8 != r20);
    }
    else {
            r19 = var_A8;
    }
    goto loc_100a7b614;

loc_100a7b614:
    var_78 = **___stack_chk_guard;
    r0 = [r28 release];
    if (**___stack_chk_guard != var_78) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a7b5d4:
    qsort(r22, r20, 0x8, 0x100a7b6c4);
    qsort(r21, r20, 0x8, 0x100a7b6c4);
    goto loc_100a7b614;
}

@end