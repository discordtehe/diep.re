@implementation GADSearchRequest

-(void)setBackgroundSolid:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundColor, arg2);
    r19 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gradientFrom));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gradientTo));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [r19 release];
    return;
}

-(void)setBackgroundGradientFrom:(void *)arg2 toColor:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r23 = arg2;
    r21 = self;
    r19 = [r23 retain];
    r22 = [r20 retain];
    if (r19 != 0x0 && r22 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
            objc_storeStrong((int64_t *)&r21->_gradientFrom, r23);
            objc_storeStrong((int64_t *)&r21->_gradientTo, r20);
    }
    [r22 release];
    [r19 release];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_30 super] copyWithZone:arg2];
    r20 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_query));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gradientFrom));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gradientTo));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_headerColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionTextColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_anchorTextColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fontFamily));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_headerTextSize));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_borderColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_customChannels));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_callButtonColor));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_borderType));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_borderThickness));
    *(r20 + r8) = *(self + r8);
    r0 = r20;
    return r0;
}

-(void *)query {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_query)), 0x0);
    return r0;
}

-(void)setQuery:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void *)gradientFrom {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_gradientFrom)), 0x0);
    return r0;
}

-(void *)additionalSignals {
    r31 = r31 - 0x80;
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
    r21 = self;
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r19 = r0;
    sub_100822058(r0, *0x100e95dc0, r21->_query);
    sub_1008b0da0(r19, *0x100e95dc8, r21->_backgroundColor);
    sub_1008b0da0(r19, *0x100e95dd0, r21->_gradientFrom);
    sub_1008b0da0(r19, *0x100e95dd8, r21->_gradientTo);
    sub_1008b0da0(r19, *0x100e95de0, r21->_headerColor);
    sub_1008b0da0(r19, *0x100e95de8, r21->_descriptionTextColor);
    sub_1008b0da0(r19, *0x100e95df0, r21->_anchorTextColor);
    sub_100822058(r19, *0x100e95df8, r21->_fontFamily);
    sub_100822058(r19, *0x100e95e00, [[NSString alloc] initWithFormat:r2]);
    [r24 release];
    sub_1008b0da0(r19, *0x100e95e08, r21->_borderColor);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_borderType));
    r8 = *(r21 + r8);
    if (r8 > 0x3) goto loc_1008b0b70;

loc_1008b0b50:
    switch (sign_extend_64(*(int32_t *)(0x1008b0d90 + r8 * 0x4)) + 0x1008b0d90) {
        case 0:
            r24 = @"none";
            break;
        case 1:
            r24 = @"dashed";
            break;
        case 2:
            r24 = @"dotted";
            break;
        case 3:
            r24 = @"solid";
            break;
    }
    [r24 retain];
    goto loc_1008b0ba0;

loc_1008b0ba0:
    sub_100822058(r19, *0x100e95e10, r24);
    [r24 release];
    sub_100822058(r19, *0x100e95e18, [[NSString alloc] initWithFormat:r2]);
    [r22 release];
    sub_100822058(r19, *0x100e95e20, r21->_customChannels);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_callButtonColor));
    r8 = *(r21 + r8);
    if (r8 == 0x2) goto loc_1008b0c64;

loc_1008b0c4c:
    if (r8 == 0x1) goto loc_1008b0c70;

loc_1008b0c54:
    if (r8 != 0x0) goto loc_1008b0c84;

loc_1008b0c58:
    r23 = @"light";
    goto loc_1008b0c78;

loc_1008b0c78:
    [r23 retain];
    goto loc_1008b0c88;

loc_1008b0c88:
    sub_100822058(r19, *0x100e95e28, r23);
    [r23 release];
    r0 = [[&var_68 super] additionalSignals];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 initWithDictionary:r21];
            r20 = r0;
            sub_100822058(r0, *0x100e95db8, r19);
    }
    else {
            r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1008b0c84:
    r23 = 0x0;
    goto loc_1008b0c88;

loc_1008b0c70:
    r23 = @"medium";
    goto loc_1008b0c78;

loc_1008b0c64:
    r23 = @"dark";
    goto loc_1008b0c78;

loc_1008b0b70:
    r24 = 0x0;
    goto loc_1008b0ba0;
}

-(void *)gradientTo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_gradientTo)), 0x0);
    return r0;
}

-(void *)headerColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_headerColor)), 0x0);
    return r0;
}

-(void)setHeaderColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)descriptionTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_descriptionTextColor)), 0x0);
    return r0;
}

-(void)setDescriptionTextColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)anchorTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_anchorTextColor)), 0x0);
    return r0;
}

-(void)setAnchorTextColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)fontFamily {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fontFamily)), 0x0);
    return r0;
}

-(void)setFontFamily:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)headerTextSize {
    r0 = self->_headerTextSize;
    return r0;
}

-(void)setHeaderTextSize:(unsigned long long)arg2 {
    self->_headerTextSize = arg2;
    return;
}

-(void *)borderColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_borderColor)), 0x0);
    return r0;
}

-(void)setBorderColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)borderType {
    r0 = self->_borderType;
    return r0;
}

-(void)setBorderType:(unsigned long long)arg2 {
    self->_borderType = arg2;
    return;
}

-(unsigned long long)borderThickness {
    r0 = self->_borderThickness;
    return r0;
}

-(void)setBorderThickness:(unsigned long long)arg2 {
    self->_borderThickness = arg2;
    return;
}

-(void *)customChannels {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customChannels)), 0x0);
    return r0;
}

-(void)setCustomChannels:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)callButtonColor {
    r0 = self->_callButtonColor;
    return r0;
}

-(void)setCallButtonColor:(unsigned long long)arg2 {
    self->_callButtonColor = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customChannels, 0x0);
    objc_storeStrong((int64_t *)&self->_borderColor, 0x0);
    objc_storeStrong((int64_t *)&self->_fontFamily, 0x0);
    objc_storeStrong((int64_t *)&self->_anchorTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_descriptionTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_headerColor, 0x0);
    objc_storeStrong((int64_t *)&self->_gradientTo, 0x0);
    objc_storeStrong((int64_t *)&self->_gradientFrom, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_query, 0x0);
    return;
}

@end