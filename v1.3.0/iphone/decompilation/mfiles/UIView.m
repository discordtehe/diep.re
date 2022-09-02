@implementation UIView

-(double)mp_x {
    r0 = [self frame];
    return r0;
}

-(double)mp_width {
    r0 = [self frame];
    return r0;
}

-(double)mp_y {
    r0 = [self frame];
    return r0;
}

-(double)mp_height {
    r0 = [self frame];
    return r0;
}

-(void)setMp_x:(double)arg2 {
    [self frame];
    [self setX:arg2 andY:r3];
    return;
}

-(void)setMp_y:(double)arg2 {
    [self frame];
    [self setX:arg2 andY:r3];
    return;
}

-(void)setX:(double)arg2 andY:(double)arg3 {
    [self frame];
    [self setFrame:r2];
    return;
}

-(void)setMp_width:(double)arg2 {
    [self frame];
    [self setFrame:r2];
    return;
}

-(void)setMp_height:(double)arg2 {
    [self frame];
    [self setFrame:r2];
    return;
}

-(void *)mp_snapshot:(bool)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [self bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r0 = [r20 window];
    r0 = [r0 retain];
    r0 = [r0 screen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 scale];
    UIGraphicsBeginImageContextWithOptions();
    [r22 release];
    [r21 release];
    if ((r19 & 0x1) == 0x0 && [r20 respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:), r3] != 0x0) {
            [r20 drawViewHierarchyInRect:0x0 afterScreenUpdates:r3];
    }
    else {
            r21 = UIGraphicsGetCurrentContext();
            r0 = [r20 layer];
            r29 = r29;
            r20 = [r0 retain];
            if (r19 != 0x0) {
                    r0 = [r20 presentationLayer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 renderInContext:r21];
                    [r0 release];
            }
            else {
                    [r20 renderInContext:r21];
            }
            [r20 release];
    }
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

-(void *)mp_snapshotView {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    r0 = [r19 window];
    r0 = [r0 retain];
    r0 = [r0 screen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 scale];
    UIGraphicsBeginImageContextWithOptions();
    [r21 release];
    [r20 release];
    if ([r19 respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)] != 0x0) {
            r19 = [[r19 snapshotViewAfterScreenUpdates:0x0] retain];
    }
    else {
            r20 = UIGraphicsGetCurrentContext();
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 renderInContext:r20];
            [r0 release];
            r20 = [UIGraphicsGetImageFromCurrentImageContext() retain];
            r19 = [objc_alloc() initWithImage:r20];
            [r20 release];
    }
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

-(void)gad_matchSuperviewSize {
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r22 = [[NSLayoutConstraint constraintWithItem:r20 attribute:0x7 relatedBy:0x0 toItem:r19 attribute:0x7 multiplier:r7 constant:var_40] retain];
            [r19 addConstraint:r22];
            [r22 release];
            r20 = [[NSLayoutConstraint constraintWithItem:r20 attribute:0x8 relatedBy:0x0 toItem:r19 attribute:0x8 multiplier:r7 constant:var_40] retain];
            [r19 addConstraint:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)gad_centerInSuperview {
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r22 = [[NSLayoutConstraint constraintWithItem:r20 attribute:0x9 relatedBy:0x0 toItem:r19 attribute:0x9 multiplier:r7 constant:var_40] retain];
            [r19 addConstraint:r22];
            [r22 release];
            r20 = [[NSLayoutConstraint constraintWithItem:r20 attribute:0xa relatedBy:0x0 toItem:r19 attribute:0xa multiplier:r7 constant:var_40] retain];
            [r19 addConstraint:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)gad_fillSuperview {
    [self gad_centerInSuperview];
    [self gad_matchSuperviewSize];
    return;
}

-(bool)VNG_hasHiddenParent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100660eec;

loc_100660ea0:
    r20 = r0;
    goto loc_100660eac;

loc_100660eac:
    if (([r20 isHidden] & 0x1) != 0x0) goto loc_100660ef4;

loc_100660ebc:
    r0 = [r20 superview];
    r29 = r29;
    r22 = [r0 retain];
    [r20 release];
    r20 = r22;
    if (r22 != 0x0) goto loc_100660eac;

loc_100660ee4:
    r19 = 0x0;
    goto loc_100660ef8;

loc_100660ef8:
    [r20 release];
    goto loc_100660f00;

loc_100660f00:
    r0 = r19;
    return r0;

loc_100660ef4:
    r19 = 0x1;
    goto loc_100660ef8;

loc_100660eec:
    r19 = 0x0;
    goto loc_100660f00;
}

-(void *)VNG_getParentWindow {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            do {
                    [UIWindow class];
                    if (objc_msgSend(r20, r22) != 0x0) {
                        break;
                    }
                    r0 = [r20 superview];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 release];
                    r20 = r23;
            } while (r23 != 0x0);
    }
    r0 = [r20 autorelease];
    return r0;
}

-(bool)VNG_isVisible {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isHidden] & 0x1) == 0x0 && ([r19 VNG_hasHiddenParent] & 0x1) == 0x0) {
            r0 = [r19 VNG_intersectsParentsWindow];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)VNG_intersectsParentsWindow {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self VNG_getParentWindow];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 superview] retain];
            [r20 frame];
            [r21 convertRect:r19 toView:r3];
            [r21 release];
            r20 = CGRectIntersectsRect([r19 frame], @selector(frame));
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(struct CGRect)screenRect {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isWindow] & 0x1) == 0x0) {
            r0 = [r19 window];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 release];
            if (r21 != 0x0) {
                    if ([r19 isWindow] != 0x0) {
                            r0 = [r19 retain];
                            r21 = r0;
                            [r0 bounds];
                            r0 = [r19 screen];
                            r0 = [r0 retain];
                            r20 = [[r0 coordinateSpace] retain];
                            [r21 convertRect:r20 toCoordinateSpace:r3];
                            v8 = v0;
                            v9 = v1;
                            v10 = v2;
                            v11 = v3;
                            [r21 release];
                            [r20 release];
                            r0 = r0;
                    }
                    else {
                            [r19 bounds];
                            r0 = [r19 window];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 screen];
                            r0 = [r0 retain];
                            r22 = [[r0 coordinateSpace] retain];
                            [r19 convertRect:r22 toCoordinateSpace:r3];
                            v8 = v0;
                            v9 = v1;
                            v10 = v2;
                            v11 = v3;
                            [r22 release];
                            [r0 release];
                            r0 = r20;
                    }
                    r0 = [r0 release];
            }
    }
    else {
            if ([r19 isWindow] != 0x0) {
                    r0 = [r19 retain];
                    r21 = r0;
                    [r0 bounds];
                    r0 = [r19 screen];
                    r0 = [r0 retain];
                    r20 = [[r0 coordinateSpace] retain];
                    [r21 convertRect:r20 toCoordinateSpace:r3];
                    v8 = v0;
                    v9 = v1;
                    v10 = v2;
                    v11 = v3;
                    [r21 release];
                    [r20 release];
                    r0 = r0;
            }
            else {
                    [r19 bounds];
                    r0 = [r19 window];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 screen];
                    r0 = [r0 retain];
                    r22 = [[r0 coordinateSpace] retain];
                    [r19 convertRect:r22 toCoordinateSpace:r3];
                    v8 = v0;
                    v9 = v1;
                    v10 = v2;
                    v11 = v3;
                    [r22 release];
                    [r0 release];
                    r0 = r20;
            }
            r0 = [r0 release];
    }
    return r0;
}

-(bool)isWindow {
    [UIWindow class];
    r0 = [self isKindOfClass:r2];
    return r0;
}

-(double)displayedAlpha {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    [self alpha];
    v8 = v0;
    r0 = [self retain];
    r21 = r0;
    r23 = @selector(superview);
    r0 = objc_msgSend(r0, r23);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            do {
                    r0 = objc_msgSend(r21, r23);
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    [r22 alpha];
                    if (d0 >= 0x0) {
                            asm { fcsel      d1, d0, d10, pl };
                    }
                    if (d0 > 0x3ff0000000000000) {
                            asm { fcsel      d0, d9, d1, gt };
                    }
                    d8 = d8 * d0;
                    r0 = [r22 superview];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    r21 = r22;
                    r23 = @selector(superview);
            } while (r0 != 0x0);
    }
    else {
            r22 = r21;
    }
    r0 = [r22 release];
    return r0;
}

-(struct CGRect)clippedScreenRect {
    var_80 = d13;
    stack[-136] = d12;
    r31 = r31 + 0xffffffffffffff70;
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
    [self screenRect];
    v11 = v0;
    v10 = v1;
    v9 = v2;
    v8 = v3;
    r0 = [self retain];
    r19 = r0;
    r25 = @selector(superview);
    r0 = objc_msgSend(r0, r25);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100a7bda4;

loc_100a7bc6c:
    r0 = objc_msgSend(r19, r25);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 isHidden] != 0x0) goto loc_100a7be20;

loc_100a7bc90:
    r0 = objc_msgSend(r19, r25);
    r29 = r29;
    r0 = [r0 retain];
    [r0 alpha];
    [r0 release];
    [r26 release];
    if (d12 == 0x0) goto loc_100a7be38;

loc_100a7bccc:
    r0 = objc_msgSend(r19, r25);
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 clipsToBounds];
    [r0 release];
    if (r27 != 0x0) {
            r0 = objc_msgSend(r19, r25);
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 screenRect];
            v0 = v11;
            v1 = v10;
            v2 = v9;
            v3 = v8;
            CGRectIntersection(r0, @selector(screenRect));
            v11 = v0;
            v10 = v1;
            v9 = v2;
            v8 = v3;
            [r26 release];
    }
    r26 = [objc_msgSend(r19, r25) retain];
    [r19 release];
    r0 = [r26 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r19 = r26;
    r25 = @selector(superview);
    if (r0 != 0x0) goto loc_100a7bc6c;

loc_100a7bda0:
    r19 = r26;
    goto loc_100a7bda4;

loc_100a7bda4:
    if ([r19 isWindow] != 0x0) {
            r0 = [r19 screen];
            r0 = [r0 retain];
            r0 = [r0 bounds];
            CGRectIntersection(r0, @selector(bounds));
            v8 = v11;
            v9 = v10;
            v10 = v2;
            v11 = v3;
            [r20 release];
    }
    goto loc_100a7be38;

loc_100a7be38:
    r0 = [r19 release];
    return r0;

loc_100a7be20:
    [r26 release];
    goto loc_100a7be38;
}

-(bool)visible {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ((CGRectIsEmpty([self frame]) & 0x1) == 0x0 && ([r19 isHidden] & 0x1) == 0x0) {
            [r19 alpha];
            if (d0 == 0x0) {
                    r0 = 0x0;
            }
            else {
                    if (([r19 isWindow] & 0x1) == 0x0) {
                            r0 = [r19 superview];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 window];
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = 0x1;
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)blocking {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self alpha];
    if (d0 == 0x0) goto loc_100a7c10c;

loc_100a7c0b0:
    r0 = [r19 backgroundColor];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a7c104;

loc_100a7c0d4:
    r0 = [r19 backgroundColor];
    r0 = [r0 retain];
    r22 = r0;
    [r0 alpha];
    if (d0 != 0x0) goto loc_100a7c120;

loc_100a7c0fc:
    [r22 release];
    goto loc_100a7c104;

loc_100a7c104:
    [r20 release];
    goto loc_100a7c10c;

loc_100a7c10c:
    r0 = 0x0;
    return r0;

loc_100a7c120:
    [FBAdMediationOverlay class];
    r19 = [r19 isKindOfClass:r2];
    [r22 release];
    [r20 release];
    if ((r19 & 0x1) == 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setNativeAdViewTag:(unsigned long long)arg2 {
    r22 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [FBAdUtility safeObjcSetAssociatedObject:self key:@selector(nativeAdViewTag) value:r22 objc_AssociationPolicy:0x0];
    [r22 release];
    return;
}

-(bool)fb_isTap:(struct CGPoint)arg2 inBoundsByMarginPercentage:(long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d13;
    stack[-72] = d12;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = 0x32;
    if (r2 < 0x32) {
            if (!CPU_FLAGS & L) {
                    r8 = 0x32;
            }
            else {
                    r8 = r2;
            }
    }
    r0 = 0x1;
    if (r2 >= 0x1) {
            r0 = 0x1;
            if (r8 != 0x0) {
                    if (r2 > 0x31) {
                            r0 = 0x0;
                    }
                    else {
                            asm { scvtf      s0, x8 };
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvt       d10, s0 };
                            [r19 bounds];
                            [r19 bounds];
                            [r19 bounds];
                            [r19 bounds];
                            [r19 bounds];
                            r0 = [r19 bounds];
                            r0 = CGRectContainsPoint(r0, @selector(bounds));
                    }
            }
    }
    return r0;
}

-(unsigned long long)nativeAdViewTag {
    r0 = objc_getAssociatedObject(self, @selector(nativeAdViewTag));
    r0 = [r0 retain];
    r20 = [r0 unsignedIntegerValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)an_topSafeAnchor {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self topAnchor];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r0 = [r21 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r20 = [[r0 topAnchor] retain];
            [r19 release];
            [r0 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)an_leadingSafeAnchor {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self leadingAnchor];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r0 = [r21 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r20 = [[r0 leadingAnchor] retain];
            [r19 release];
            [r0 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)an_trailingSafeAnchor {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self trailingAnchor];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r0 = [r21 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r20 = [[r0 trailingAnchor] retain];
            [r19 release];
            [r0 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)an_bottomSafeAnchor {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self bottomAnchor];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r0 = [r21 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r20 = [[r0 bottomAnchor] retain];
            [r19 release];
            [r0 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)makeToast:(void *)arg2 {
    r0 = [self makeToast:arg2 style:0x0];
    return r0;
}

-(void)showToast:(void *)arg2 {
    [self showToast:arg2 position:0x2 completion:0x0];
    return;
}

-(void)showToast:(void *)arg2 position:(int)arg3 offset:(struct CGSize)arg4 completion:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = r4;
    v8 = v1;
    v9 = v0;
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 != 0x0) {
            objc_setAssociatedObject(r20, 0x100eaea60, objc_retainBlock(r22), 0x1);
            [r22 release];
            [r21 fbad_showToast:r20 offset:r19 position:r4];
    }
    [r20 release];
    return;
}

-(void)showToast:(void *)arg2 position:(int)arg3 completion:(void *)arg4 {
    r22 = [arg2 retain];
    [self showToast:r22 position:arg3 offset:arg4 completion:r5];
    [r22 release];
    return;
}

-(void)setOffsetAndPositionForToast:(void *)arg2 position:(int)arg3 offset:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r22 = [arg2 retain];
    [self fbad_centerPointForPosition:arg3 offset:r22 withToast:r4];
    [r22 setCenter:arg3];
    [r22 release];
    return;
}

-(void *)makeToast:(void *)arg2 style:(void *)arg3 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            if (r20 == 0x0) {
                    r21 = [[FBToastStyle alloc] init];
                    [r20 release];
                    r20 = r21;
            }
            r25 = @selector(init);
            r0 = [UIView alloc];
            r0 = objc_msgSend(r0, r25);
            r21 = r0;
            [r0 setAutoresizingMask:0x2d];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x2d];
            [r0 release];
            r26 = [[r20 backgroundColor] retain];
            [r21 setBackgroundColor:r26];
            [r26 release];
            r0 = [UILabel alloc];
            r0 = objc_msgSend(r0, r25);
            r23 = r0;
            [r0 setTag:0x1];
            [r23 setNumberOfLines:[r20 messageNumberOfLines]];
            r25 = [[r20 messageFont] retain];
            [r23 setFont:r25];
            [r25 release];
            [r23 setTextAlignment:[r20 messageAlignment]];
            [r23 setLineBreakMode:0x4];
            r25 = [[r20 messageColor] retain];
            [r23 setTextColor:r25];
            [r25 release];
            r25 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r23 setBackgroundColor:r25];
            [r25 release];
            [r23 setAlpha:r25];
            [r23 setText:r19];
            [r22 bounds];
            [r20 maxWidthPercentage];
            d9 = d9 * 0x3ff0000000000000;
            [r22 bounds];
            [r20 maxHeightPercentage];
            d10 = d10 * 0x3ff0000000000000;
            [r23 sizeThatFits:r19];
            if (d9 < 0x3ff0000000000000) {
                    asm { fcsel      d2, d9, d0, mi };
            }
            if (d10 < d1) {
                    asm { fcsel      d3, d10, d1, mi };
            }
            [r23 setFrame:r2];
            [r23 bounds];
            [r23 bounds];
            [r21 setFrame:r2];
            [r23 setFrame:r2];
            [r21 addSubview:r2];
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)fbad_toastTimerDidFinish:(void *)arg2 {
    r20 = [[arg2 userInfo] retain];
    [self fbad_hideToast:r20];
    [r20 release];
    return;
}

-(void)fbad_hideToast:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = r0;
    r0 = objc_getAssociatedObject(r0, 0x100eae9f8);
    r0 = [r0 retain];
    [r0 invalidate];
    r0 = [r20 retain];
    r20 = @selector(animateWithDuration:delay:options:animations:completion:);
    [r0 retain];
    objc_msgSend(@class(UIView), r20);
    [r0 release];
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)fbad_showToast:(void *)arg2 offset:(struct CGSize)arg3 position:(int)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    [self fbad_centerPointForPosition:r3 offset:r21 withToast:r4];
    [r21 setCenter:r3];
    [r21 setAlpha:r3];
    [self addSubview:r21];
    r0 = [r21 retain];
    r19 = @selector(animateWithDuration:delay:options:animations:completion:);
    [r0 retain];
    objc_msgSend(@class(UIView), r19);
    [r0 release];
    [r0 release];
    [r21 release];
    return;
}

-(struct CGPoint)fbad_centerPointForPosition:(int)arg2 offset:(struct CGSize)arg3 withToast:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r21 = arg2;
    r20 = self;
    r19 = [r3 retain];
    sub_100aabe74();
    if (r21 != 0x1) {
            if (r21 == 0x0) {
                    CGRectGetWidth([r20 bounds]);
                    CGRectGetHeight([r19 frame]);
                    d0 = d0 * 0x3fe0000000000000 + d0 + 0x4024000000000000;
            }
            else {
                    CGRectGetWidth([r20 bounds]);
                    CGRectGetHeight([r20 bounds]);
                    CGRectGetHeight([r19 frame]);
                    d0 = d11 + 0x0 - d2 + 0x4024000000000000;
            }
    }
    else {
            CGRectGetWidth([r20 bounds]);
            CGRectGetHeight([r20 bounds]);
            d0 = d0 * 0x3fe0000000000000;
    }
    r0 = [r19 release];
    return r0;
}

@end