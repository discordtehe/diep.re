@implementation FRContextualButton

+(void *)objectWithDictionary:(void *)arg2 content:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[FRContextualButton alloc] initWithDictionary:r20 content:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)action:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self content];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 content];
            r0 = [r0 retain];
            [r0 buttonClicked:r19];
            [r0 release];
    }
    return;
}

-(struct _FloatAndUnit)x {
    objc_copyStruct(&var_10, (int64_t *)&self->_x, 0x10, 0x1, 0x0);
    r0 = var_10;
    return r0;
}

-(void)setX:(struct _FloatAndUnit)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_x, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(struct _FloatAndUnit)y {
    objc_copyStruct(&var_10, (int64_t *)&self->_y, 0x10, 0x1, 0x0);
    r0 = var_10;
    return r0;
}

-(void)loadImageWithDelegate:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 image];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10095a524;

loc_10095a47c:
    r22 = [[r20 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r22 == r0) goto loc_10095a52c;

loc_10095a4d0:
    if (r19 == 0x0 || [r19 respondsToSelector:@selector(didLoadRemoteImageWithURL:)] == 0x0) goto loc_10095a614;

loc_10095a4f4:
    r0 = [r20 imageURL];
    r29 = r29;
    r22 = [r0 retain];
    [r19 didLoadRemoteImageWithURL:r22];
    goto loc_10095a60c;

loc_10095a60c:
    r0 = r22;
    goto loc_10095a610;

loc_10095a610:
    [r0 release];
    goto loc_10095a614;

loc_10095a614:
    r0 = [r20 imageClicked];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10095a6e4;

loc_10095a638:
    r22 = [[r20 imageClicked] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r22 == r0) goto loc_10095a6ec;

loc_10095a68c:
    if (r19 == 0x0 || [r19 respondsToSelector:@selector(didLoadRemoteImageWithURL:)] == 0x0) goto loc_10095a7d4;

loc_10095a6b0:
    r20 = [[r20 imageClickedURL] retain];
    [r19 didLoadRemoteImageWithURL:r20];
    r0 = r20;
    goto loc_10095a7d0;

loc_10095a7d0:
    [r0 release];
    goto loc_10095a7d4;

loc_10095a7d4:
    [r19 release];
    return;

loc_10095a6ec:
    r0 = [r20 imageClickedURL];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10095a7cc;

loc_10095a710:
    r23 = [[r20 imageClickedURL] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r23 == r0) goto loc_10095a7d4;

loc_10095a764:
    r21 = [[r20 imageClickedURL] retain];
    r22 = [[FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r19] retain];
    [r20 setImageClicked:r22];
    [r22 release];
    r0 = r21;
    goto loc_10095a7d0;

loc_10095a7cc:
    r0 = r22;
    goto loc_10095a7d0;

loc_10095a6e4:
    [r21 release];
    goto loc_10095a6ec;

loc_10095a52c:
    r0 = [r20 imageURL];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10095a60c;

loc_10095a550:
    r23 = [[r20 imageURL] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r23 == r0) goto loc_10095a614;

loc_10095a5a4:
    r0 = [FRRemoteImage objectWithRemoteUrl:[[r20 imageURL] retain] withDelegate:r19];
    r29 = r29;
    [r0 retain];
    [r20 setImage:r2];
    [r22 release];
    r0 = r21;
    goto loc_10095a610;

loc_10095a524:
    [r21 release];
    goto loc_10095a52c;
}

-(void)setY:(struct _FloatAndUnit)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_y, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(struct _FloatAndUnit)width {
    objc_copyStruct(&var_10, (int64_t *)&self->_width, 0x10, 0x1, 0x0);
    r0 = var_10;
    return r0;
}

-(void)setWidth:(struct _FloatAndUnit)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_width, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(struct _FloatAndUnit)height {
    objc_copyStruct(&var_10, (int64_t *)&self->_height, 0x10, 0x1, 0x0);
    r0 = var_10;
    return r0;
}

-(void)setHeight:(struct _FloatAndUnit)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_height, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(long long)align {
    r0 = self->_align;
    return r0;
}

-(void)setAlign:(long long)arg2 {
    self->_align = arg2;
    return;
}

-(long long)valign {
    r0 = self->_valign;
    return r0;
}

-(void *)imageURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageURL)), 0x1);
    return r0;
}

-(void)setValign:(long long)arg2 {
    self->_valign = arg2;
    return;
}

-(void)setImageURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)initWithDictionary:(void *)arg2 content:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            var_C0 = r20;
            [r21 setContent:r20];
            r22 = [[r19 valueForKey:@"x"] retain];
            r24 = [[r19 valueForKey:@"y"] retain];
            r25 = [[r19 valueForKey:@"width"] retain];
            r28 = [[r19 valueForKey:@"height"] retain];
            r26 = [[r19 valueForKey:@"dismiss"] retain];
            var_68 = [[r19 valueForKey:@"url"] retain];
            var_70 = [[r19 valueForKey:@"redirect_url"] retain];
            var_78 = [[r19 valueForKey:@"ad_content"] retain];
            var_A8 = [[r19 valueForKey:@"image"] retain];
            var_B0 = [[r19 valueForKey:@"image_clicked"] retain];
            r20 = [[r19 valueForKey:@"align"] retain];
            r27 = [[r19 valueForKey:@"valign"] retain];
            r0 = [r19 valueForKey:@"value"];
            r29 = r29;
            r0 = [r0 retain];
            var_88 = r22;
            var_80 = r0;
            [r21 setX:sub_100959a3c()];
            var_90 = r24;
            [r21 setY:sub_100959a3c()];
            var_98 = r25;
            [r21 setWidth:sub_100959a3c()];
            var_A0 = r28;
            [r21 setHeight:sub_100959a3c()];
            [NSString class];
            if ([r20 isKindOfClass:r2] != 0x0 && [r20 length] != 0x0) {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            r0 = r21;
                    }
                    else {
                            if ([r20 isEqualToString:r2] != 0x0) {
                                    r0 = r21;
                            }
                            else {
                                    r0 = r21;
                            }
                    }
                    [r0 setAlign:r2];
            }
            r24 = @selector(isKindOfClass:);
            var_B8 = r20;
            [NSString class];
            r0 = objc_msgSend(r27, r24);
            r25 = var_68;
            r20 = var_C0;
            if (r0 != 0x0 && [r27 length] != 0x0) {
                    if ([r27 isEqualToString:r2] != 0x0) {
                            r0 = r21;
                    }
                    else {
                            if ([r27 isEqualToString:r2] != 0x0) {
                                    r0 = r21;
                            }
                            else {
                                    r0 = r21;
                            }
                    }
                    [r0 setValign:r2];
            }
            r24 = @selector(isKindOfClass:);
            [NSString class];
            if (objc_msgSend(r25, r24) != 0x0) {
                    if ([r25 length] != 0x0) {
                            [r21 setLink:r25];
                    }
            }
            r25 = var_70;
            if (r25 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r25 != r0) {
                            [r21 setRedirectURL:r25];
                    }
                    else {
                            r0 = [r20 redirectURL];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r21 setRedirectURL:r22];
                            [r22 release];
                    }
            }
            else {
                    r0 = [r20 redirectURL];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 setRedirectURL:r22];
                    [r22 release];
            }
            r25 = var_78;
            if (r25 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r25 != r0) {
                            [r21 setAdContent:r25];
                    }
                    else {
                            r0 = [r20 adContent];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r21 setAdContent:r22];
                            [r22 release];
                    }
            }
            else {
                    r0 = [r20 adContent];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 setAdContent:r22];
                    [r22 release];
            }
            r24 = @selector(isKindOfClass:);
            [NSString class];
            r22 = var_80;
            if (objc_msgSend(r22, r24) != 0x0 && [r22 length] != 0x0) {
                    [r21 setName:r22];
            }
            if (r26 != 0x0) {
                    r22 = [[NSNull null] retain];
                    if (r26 != r22) {
                            r24 = @selector(isKindOfClass:);
                            [NSString class];
                            if (objc_msgSend(r26, r24) != 0x0) {
                                    [r22 release];
                                    [r21 setBDismiss:[r26 boolValue]];
                            }
                            else {
                                    r24 = @selector(isKindOfClass:);
                                    [NSNumber class];
                                    r25 = objc_msgSend(r26, r24);
                                    [r22 release];
                                    if (r25 != 0x0) {
                                            [r21 setBDismiss:[r26 boolValue]];
                                    }
                            }
                    }
                    else {
                            [r26 release];
                    }
            }
            r24 = @selector(isKindOfClass:);
            [NSString class];
            r25 = var_A8;
            if (objc_msgSend(r25, r24) != 0x0 && [r25 length] != 0x0) {
                    [r21 setImageURL:r25];
            }
            r24 = @selector(isKindOfClass:);
            [NSString class];
            r28 = var_B0;
            r0 = objc_msgSend(r28, r24);
            r23 = var_70;
            r22 = var_68;
            r24 = var_78;
            if (r0 != 0x0 && [r28 length] != 0x0) {
                    [r21 setImageClickedURL:r28];
            }
            [var_80 release];
            [r27 release];
            [var_B8 release];
            [r28 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r26 release];
            [var_A0 release];
            [var_98 release];
            [var_90 release];
            [var_88 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setImageClickedURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)imageClickedURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageClickedURL)), 0x1);
    return r0;
}

-(void *)image {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_image)), 0x1);
    return r0;
}

-(void)setImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setImageClicked:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)imageClicked {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageClicked)), 0x1);
    return r0;
}

-(void *)button {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_button)), 0x1);
    return r0;
}

-(void)setButton:(void *)arg2 {
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_content);
    objc_storeStrong((int64_t *)&self->_button, 0x0);
    objc_storeStrong((int64_t *)&self->_imageClicked, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    objc_storeStrong((int64_t *)&self->_imageClickedURL, 0x0);
    objc_storeStrong((int64_t *)&self->_imageURL, 0x0);
    return;
}

@end