@implementation FBAdDSLModel

-(void *)initWithEndCardSize:(unsigned long long)arg2 {
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
    r19 = arg2;
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b8ad58;

loc_100b8acc0:
    r0 = [NSMutableArray arrayWithCapacity:r19];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_endCardLocalAssets));
    r8 = *(r20 + r25);
    *(r20 + r25) = r0;
    [r8 release];
    if (r19 == 0x0) goto loc_100b8ad58;

loc_100b8acfc:
    r26 = 0x0;
    goto loc_100b8ad14;

loc_100b8ad14:
    r22 = @selector(addObject:);
    r21 = @selector(new);
    r23 = *(r20 + r25);
    objc_msgSend(@class(NSURL), r21);
    r1 = r22;
    objc_msgSend(r23, r1);
    r0 = [r24 release];
    r8 = r26 + 0x1;
    if (OVERFLOW(r8)) goto loc_100b8ad7c;

loc_100b8ad48:
    asm { sxtw       x8, w8 };
    r26 = r26 + 0x1;
    if (r8 < r19) goto loc_100b8ad14;

loc_100b8ad58:
    r0 = r20;
    return r0;

loc_100b8ad7c:
    asm { brk        #0x1 };
    r0 = -[FBAdDSLModel .cxx_destruct](r0, r1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_endCardLocalAssets, 0x0);
    objc_storeStrong((int64_t *)&self->_iconLocalAsset, 0x0);
    objc_storeStrong((int64_t *)&self->_imageLocalAsset, 0x0);
    objc_storeStrong((int64_t *)&self->_videoLocalAsset, 0x0);
    objc_storeStrong((int64_t *)&self->_mainHTMLAsset, 0x0);
    return;
}

-(void *)mainHTMLAsset {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mainHTMLAsset)), 0x0);
    return r0;
}

-(void)setMainHTMLAsset:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)videoLocalAsset {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoLocalAsset)), 0x0);
    return r0;
}

-(void)setVideoLocalAsset:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)imageLocalAsset {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageLocalAsset)), 0x0);
    return r0;
}

-(void)setImageLocalAsset:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)iconLocalAsset {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_iconLocalAsset)), 0x0);
    return r0;
}

-(void)setIconLocalAsset:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)endCardLocalAssets {
    r0 = self->_endCardLocalAssets;
    return r0;
}

-(void)setEndCardLocalAssets:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_endCardLocalAssets, arg2);
    return;
}

@end