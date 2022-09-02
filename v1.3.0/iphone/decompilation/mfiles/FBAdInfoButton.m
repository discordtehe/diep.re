@implementation FBAdInfoButton

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_iconColor));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_renderAsAudienceNetworkLogo = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setIconColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconColor, arg2);
    r19 = [arg2 retain];
    [self setNeedsDisplay];
    [r19 release];
    return;
}

-(void)setRenderAsAudienceNetworkLogo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_renderAsAudienceNetworkLogo = arg2;
    [self setNeedsDisplay];
    return;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = self;
    r20 = [[self iconColor] retain];
    [r19 contentEdgeInsets];
    CGRectInset([r19 contentEdgeInsets], @selector(contentEdgeInsets), r2);
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r8 = &@selector(drawInfoIconInRect:iconColor:);
    if ([r19 renderAsAudienceNetworkLogo] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(drawInfoIconInRect:iconColor:);
            }
            else {
                    r8 = &@selector(drawAudienceNetworkLogoInRect:iconColor:);
            }
    }
    objc_msgSend(r19, *r8);
    [r20 release];
    return;
}

-(void)drawInfoIconInRect:(struct CGRect)arg2 iconColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r20 = @class(UIBezierPath);
    r19 = [r2 retain];
    r20 = [[r20 bezierPathWithRoundedRect:r2 cornerRadius:r3] retain];
    [r19 setStroke];
    [r20 setLineWidth:r2];
    r0 = [r20 stroke];
    CGRectGetMidX(r0);
    r22 = [[r22 bezierPathWithRoundedRect:r2 cornerRadius:r3] retain];
    [r19 setFill];
    r0 = [r22 fill];
    CGRectGetMidX(r0);
    r21 = [[r25 bezierPathWithRoundedRect:r2 cornerRadius:r3] retain];
    [r19 setFill];
    [r19 release];
    [r21 fill];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_iconColor, 0x0);
    return;
}

-(void *)iconColor {
    r0 = self->_iconColor;
    return r0;
}

-(bool)renderAsAudienceNetworkLogo {
    r0 = *(int8_t *)(int64_t *)&self->_renderAsAudienceNetworkLogo;
    return r0;
}

-(void)drawAudienceNetworkLogoInRect:(struct CGRect)arg2 iconColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [r2 retain];
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetWidth(r0);
    r0 = CGRectGetHeight(r0);
    r0 = CGRectGetWidth(r0);
    CGRectGetHeight(r0);
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = objc_msgSend(r0, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa00));
    r0 = [r0 retain];
    r0 = CGRectGetMinX(r0);
    var_90 = d12 * *double_value_0_85789;
    CGRectGetMinY(r0);
    var_98 = d13 * *double_value_0_77803;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc10));
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    var_88 = d13 * *double_value_0_89084;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc18));
    r0 = CGRectGetMinX(r0);
    d0 = d12 * *double_value_0_89778 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_99024;
    var_B0 = d13 * d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_A0 = d13 * *double_value_0_92564;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_93384;
    CGRectGetMinY(r0);
    var_A8 = d14 * *double_value_0_97015;
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa08));
    r0 = CGRectGetMinX(r0);
    d0 = d12 * *double_value_0_79477 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_9636;
    var_C8 = d14 * d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_B8 = d14 * *double_value_1_01033;
    var_78 = d14;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_8156;
    CGRectGetMinY(r0);
    var_C0 = d14 * *double_value_0_99841;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_75124;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_24629;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_20276;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    d0 = d12 * *double_value_0_09976 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_18194;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_13582;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d12 * *double_value_0_07216 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_06369;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_05133;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_77687;
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_45761;
    var_88 = var_78 * d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_69628;
    CGRectGetMinY(CGRectGetMinX(r0));
    d1 = *double_value_0_58458;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d12 * *double_value_0_49948 + d12 * 0x0 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_19327;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_20468;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = d15 + d0;
    r0 = CGRectGetMinY(r0);
    d0 = var_88 + d15 + d0;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    d1 = *double_value_0_19344;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_88 = var_90 + var_A0;
    r0 = CGRectGetMinY(r0);
    d0 = var_98 + var_90 + var_A0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_58515;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_69734;
    objc_msgSend(r20, r21);
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa10));
    r0 = CGRectGetMinX(r0);
    var_88 = d15 * *double_value_0_49899;
    CGRectGetMinY(r0);
    var_90 = d12 * *double_value_0_76684;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d13 = d15 * *double_value_0_84815;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_45881;
    var_98 = d14 * d1;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    d1 = *double_value_0_63398;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_14553;
    var_B0 = var_78 * d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_27578;
    r0 = CGRectGetMinX(r0);
    d1 = *0x100bfba70;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d15 * *double_value_0_15081 + var_88 + d13 + d0;
    var_A0 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = var_98 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    d1 = *double_value_0_27554;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_88 + var_A0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_6342;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_29885;
    CGRectGetMinY(r0);
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r23);
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa18));
    objc_msgSend(r19, *(&@selector(_initOpenAL) + 0x9f8));
    [r19 release];
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa20));
    [r20 release];
    return;
}

@end