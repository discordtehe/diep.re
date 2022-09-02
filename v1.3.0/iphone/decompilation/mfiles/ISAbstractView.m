@implementation ISAbstractView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r19 setCurrentOrientation:0x0];
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    }
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)setOrientationUpdates:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setShouldUpdateOreintation:r2];
    r0 = [ISOrientationManager sharedManager];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (arg2 != 0x0) {
            [r21 insertView:r19];
            r0 = r21;
    }
    else {
            [r21 updateViewsOrientation];
            [r21 release];
            r0 = @class(ISOrientationManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 removeView:r19];
            r0 = r0;
    }
    [r0 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] layoutSubviews];
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 appOrientation];
    [r0 release];
    r0 = [ISOrientationManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 orientationPolicy];
    r0 = [r0 retain];
    r20 = [r0 allowedOrientations];
    [r0 release];
    [r22 release];
    r21 = [ISOrientationUtillis orientationsHasSharedOrientation:r21 andOrientation:r20];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r23 = [r0 statusBarOrientation];
    [r0 release];
    r22 = [ISOrientationUtillis UIInterfaceOrientation2ISOrientation:r23];
    r24 = [[r19 viewConstraintsArray] retain];
    [ISConstrainsHelper removeConstraintsForView:r19 constraints:r24];
    [r24 release];
    if ([r19 shouldUpdateOreintation] == 0x0) goto loc_1007069dc;

loc_1007069d0:
    if ((r21 & 0x1) == 0x0) goto loc_1007069e8;

loc_1007069d4:
    if ((r22 & r20) != 0x0) {
            r1 = @selector(revertOrientationChanges);
    }
    else {
            r1 = @selector(updateViewOrientation);
    }
    goto loc_1007069f4;

loc_1007069f4:
    objc_msgSend(r19, r1);
    return;

.l1:
    return;

loc_1007069e8:
    if (r20 == 0x0) goto .l1;

loc_1007069ec:
    r1 = @selector(updateViewOrientation);
    goto loc_1007069f4;

loc_1007069dc:
    r1 = @selector(revertOrientationChanges);
    goto loc_1007069f4;
}

-(long long)currentViewOrientation {
    r0 = self->_currentViewOrientation;
    return r0;
}

-(bool)revertOrientationChanges {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    r21 = [ISOrientationUtillis UIInterfaceOrientation2ISOrientation:r20];
    [self setTransform:&var_50];
    r22 = [[ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:self] retain];
    [self setViewConstraintsArray:r22];
    [r22 release];
    r0 = [self setCurrentOrientation:r21];
    if (r20 < 0x3) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setCurrentViewOrientation:(long long)arg2 {
    self->_currentViewOrientation = arg2;
    return;
}

-(int)currentOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_currentOrientation;
    return r0;
}

-(void)setCurrentOrientation:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_currentOrientation = arg2;
    return;
}

-(bool)updateViewOrientation {
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
    r31 = r31 + 0xffffffffffffffb0 - 0x240;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 statusBarOrientation];
    [r0 release];
    r0 = @class(ISOrientationManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 orientationPolicy];
    r0 = [r0 retain];
    r24 = [r0 allowedOrientations];
    [r0 release];
    [r22 release];
    r0 = @class(ISOrientationManager);
    r0 = [r0 sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 preferredOrientation:r24];
    r0 = [r0 release];
    r8 = r21 - 0x1;
    if (r8 > 0x3) goto loc_100706ff4;

loc_100706bcc:
    goto *0x10070703c[sign_extend_64(*(int32_t *)(0x10070703c + r8 * 0x4)) + 0x10070703c];

loc_100706be0:
    r8 = r20 - 0x2;
    asm { ror        w8, w8, #0x1 };
    if (r8 == 0x7) goto loc_100706dfc;

loc_100706bf0:
    if (r8 == 0x3) goto loc_100706d74;

loc_100706bf8:
    if (r8 != 0x1) goto loc_100706ff4;

loc_100706c00:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:r29 - 0x70];
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706fd0:
    r21 = [r0 retain];
    [r19 setViewConstraintsArray:r21];
    [r21 release];
    goto loc_100706ff4;

loc_100706ff4:
    [r19 setCurrentOrientation:r20];
    r0 = [r19 currentOrientation];
    if ((r0 & 0x6) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_100706d74:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:r29 - 0xd0];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706dfc:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:r29 - 0xa0];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706d14:
    r8 = r20 - 0x2;
    asm { ror        w8, w8, #0x1 };
    if (r8 == 0x7) goto loc_100706e40;

loc_100706d24:
    if (r8 == 0x3) goto loc_100706db8;

loc_100706d2c:
    if (r8 != 0x0) goto loc_100706ff4;

loc_100706d30:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:r29 - 0x100];
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706db8:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-320]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706e40:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-368]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706c44:
    r8 = r20 - 0x2;
    asm { ror        w8, w8, #0x1 };
    if (r8 > 0x7) goto loc_100706ff4;

loc_100706c54:
    goto *0x10070704c[sign_extend_64(*(int32_t *)(0x10070704c + r8 * 0x4)) + 0x10070704c];

loc_100706c68:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-560]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706e84:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-608]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706ec8:
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706ee8:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-656]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706cac:
    r8 = r20 - 0x2;
    asm { ror        w8, w8, #0x1 };
    if (r8 > 0x7) goto loc_100706ff4;

loc_100706cbc:
    goto *0x10070706c[sign_extend_64(*(int32_t *)(0x10070706c + r8 * 0x4)) + 0x10070706c];

loc_100706cd0:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-416]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706f2c:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-464]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706f70:
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&stack[-512]];
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;

loc_100706fb4:
    r0 = [ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r19];
    goto loc_100706fd0;
}

-(void)setViewConstraintsArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewConstraintsArray, arg2);
    return;
}

-(void *)viewConstraintsArray {
    r0 = self->_viewConstraintsArray;
    return r0;
}

-(bool)shouldUpdateOreintation {
    r0 = *(int8_t *)(int64_t *)&self->_shouldUpdateOreintation;
    return r0;
}

-(void)setShouldUpdateOreintation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldUpdateOreintation = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewConstraintsArray, 0x0);
    return;
}

@end