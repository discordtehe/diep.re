@implementation GADNativeAdImage

-(void *)initWithImage:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_image, r21);
            [r20->_image scale];
            r20->_scale = d0;
            [r20->_image size];
            objc_msgSend(r20->_image, r21);
            asm { fdiv       d0, d8, d1 };
            if (d1 < 0x3ff0000000000000) {
                    asm { fcsel      d0, d1, d0, mi };
            }
            r20->_aspectRatio = d0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithURL:(void *)arg2 scale:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_imageURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_scale = d8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100809470;

loc_1008092e4:
    r21 = [[r19 objectForKeyedSubscript:@"url"] retain];
    r0 = [NSURL URLWithString:r21];
    r29 = r29;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_imageURL));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    if (*(r20 + r23) == 0x0) goto loc_100809480;

loc_10080934c:
    r23 = [[r19 objectForKeyedSubscript:@"scale"] retain];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b938];
    [r0 release];
    if (r23 != 0x0) {
            [r23 doubleValue];
    }
    r20->_scale = d8;
    r0 = [r19 objectForKeyedSubscript:@"width"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r25 release];
    r0 = [r19 objectForKeyedSubscript:@"height"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r22 release];
    asm { fdiv       d0, d8, d9 };
    if (d9 < 0x3ff0000000000000) {
            asm { fcsel      d0, d1, d0, mi };
    }
    r20->_aspectRatio = d0;
    [r23 release];
    [r21 release];
    goto loc_100809470;

loc_100809470:
    r21 = [r20 retain];
    goto loc_10080948c;

loc_10080948c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100809480:
    [r21 release];
    r21 = 0x0;
    goto loc_10080948c;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void)setImage:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    objc_storeStrong((int64_t *)&r20->_image, arg2);
    [arg2 retain];
    [r20->_image size];
    objc_msgSend(r20->_image, r22);
    [r19 release];
    asm { fdiv       d0, d8, d9 };
    if (d9 < 0x3ff0000000000000) {
            asm { fcsel      d0, d1, d0, mi };
    }
    r20->_aspectRatio = d0;
    return;
}

-(void *)imageURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageURL)), 0x0);
    return r0;
}

-(double)scale {
    r0 = self;
    return r0;
}

-(double)aspectRatio {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_imageURL, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    return;
}

@end