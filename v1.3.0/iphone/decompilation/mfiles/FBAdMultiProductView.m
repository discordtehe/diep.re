@implementation FBAdMultiProductView

-(void *)init {
    r0 = [self initWithMultiProductCellStyle:0x0];
    return r0;
}

-(void *)initWithMultiProductCellStyle:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_multiProductCellStyle = r20;
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 useSimpleNativeScrollView] & 0x1) != 0x0) {
                    r0 = @class(FBAdSimpleScrollView);
            }
            else {
                    r0 = @class(FBAdScrollView);
            }
            r20 = [r0 new];
            [r21 release];
            [r19 bounds];
            [r20 setFrame:r2];
            [r20 setDelegate:r19];
            [r19 addSubview:r20];
            [r19 setScrollView:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setMultiProductAds:(void *)arg2 placementDefinition:(void *)arg3 withImpressionHandler:(void *)arg4 withClickHandler:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r25 = [arg5 retain];
    [self setLoadedWasCalled:0x0];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_multiProductAds));
    r24 = *(self + r8);
    *(self + r8) = r23;
    r20 = [r23 retain];
    [r24 release];
    r23 = objc_retainBlock(r22);
    [r22 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_impressionBlock));
    r0 = *(self + r8);
    *(self + r8) = r23;
    [r0 release];
    r22 = objc_retainBlock(r25);
    [r25 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clickBlock));
    r0 = *(self + r8);
    *(self + r8) = r22;
    [r0 release];
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setData:r20];
    var_50 = r21;
    r21 = [r21 retain];
    [r0 setChildViewProvider:&var_70];
    [r0 updateView:0x1];
    [var_50 release];
    [r21 release];
    [r20 release];
    [r0 release];
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r19 = r0;
            [r0 bounds];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            if (sub_100aab508() != 0x0) {
                    r20 = [[r19 scrollView] retain];
                    if ([r19 multiProductCellStyle] == 0x1) {
                            if ([r19 shouldUseLargeLayoutStyle] != 0x0) {
                                    asm { fcsel      d0, d1, d0, ne };
                            }
                            [r20 setXInset:r2];
                    }
                    [r20 setFrame:r2];
                    [r20 release];
            }
    }
    return;
}

-(void)setHidden:(bool)arg2 {
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setHidden:arg2];
    [r0 release];
    [[&var_30 super] setHidden:arg2];
    return;
}

-(bool)hasAdMedia {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self firstCell];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 imageView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 image];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)multiProductCellClicked:(void *)arg2 withPosition:(struct CGPoint)arg3 inRect:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v13 = v0;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 clickBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = [[r21 clickBlock] retain];
            (*(r22 + 0x10))(r22, [[[r21 multiProductAds] retain] indexOfObject:[[r19 content] retain]]);
            [r23 release];
            [r21 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)multiProductCellLoadedAndVisible:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
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
    r19 = [arg2 retain];
    r24 = [[r20 multiProductAds] retain];
    r0 = [r19 content];
    r29 = &saved_fp;
    r25 = [r0 retain];
    if ([r24 indexOfObject:r2] == 0x0) goto loc_100a691c8;

loc_100a690f0:
    [r25 release];
    goto loc_100a690f8;

loc_100a690f8:
    [r24 release];
    goto loc_100a69100;

loc_100a69100:
    r0 = [r20 impressionBlock];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r25 = [[r20 impressionBlock] retain];
            r20 = [[r20 multiProductAds] retain];
            [[r19 content] retain];
            (*(r25 + 0x10))(r25, [r20 indexOfObject:r2]);
            [r21 release];
            [r20 release];
            [r25 release];
    }
    [r24 release];
    [r19 release];
    return;

loc_100a691c8:
    r26 = [r20 loadedWasCalled];
    [r25 release];
    [r24 release];
    if ((r26 & 0x1) != 0x0) goto loc_100a69100;

loc_100a691f0:
    [r20 setFirstCell:r19];
    [r20 setLoadedWasCalled:0x1];
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 respondsToSelector:@selector(multiProductViewDidLoad:)] != 0x0) {
            [r24 multiProductViewDidLoad:r20];
    }
    goto loc_100a690f8;
}

-(bool)shouldUseLargeLayoutStyle {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self bounds];
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    [r0 nativeCarouselCompactThreshold];
    asm { scvtf      d0, x0 };
    if (d8 >= d0) {
            if (CPU_FLAGS & GE) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_clickBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_impressionBlock, 0x0);
    objc_destroyWeak((int64_t *)&self->_firstCell);
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_storeStrong((int64_t *)&self->_multiProductAds, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)multiProductAds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_multiProductAds)), 0x0);
    return r0;
}

-(unsigned long long)multiProductCellStyle {
    r0 = self->_multiProductCellStyle;
    return r0;
}

-(void *)scrollView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_scrollView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMultiProductAds:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_scrollView, arg2);
    return;
}

-(void *)firstCell {
    r0 = objc_loadWeakRetained((int64_t *)&self->_firstCell);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)impressionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_impressionBlock)), 0x0);
    return r0;
}

-(void)setFirstCell:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_firstCell, arg2);
    return;
}

-(void)setImpressionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)clickBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickBlock)), 0x0);
    return r0;
}

-(void)setClickBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)loadedWasCalled {
    r0 = *(int8_t *)(int64_t *)&self->_loadedWasCalled;
    return r0;
}

-(void)setLoadedWasCalled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadedWasCalled = arg2;
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdMultiProductView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end