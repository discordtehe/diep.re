@implementation FBAdSimpleScrollView

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 commonInitialization];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 commonInitialization];
    }
    r0 = r19;
    return r0;
}

-(void)commonInitialization {
    r0 = [NSMutableArray array];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_pages));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self setUserInteractionEnabled:0x1];
    self->_xPadding = 0x4020000000000000;
    self->_yPadding = 0x0;
    self->_xInset = 0x0;
    [self updateView:0x1];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 loadPages];
    }
    return;
}

-(void *)scrollView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_scrollView;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [UIScrollView new];
            r21 = r0;
            [r0 setDelegate:r19];
            [r21 setShowsHorizontalScrollIndicator:0x0];
            [r21 setShowsVerticalScrollIndicator:0x0];
            [r21 setAlwaysBounceHorizontal:0x1];
            [r21 setAlwaysBounceVertical:0x0];
            [r19 bounds];
            [r21 setFrame:0x0];
            [r21 setScrollsToTop:0x0];
            [r21 setUserInteractionEnabled:0x1];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)layoutSubviews {
    [[&var_40 super] layoutSubviews];
    [self bounds];
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self layoutPages];
    return;
}

-(void)removePages {
    r31 = r31 - 0x140;
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
    r19 = [[self pages] retain];
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setContentOffset:r2];
    [r0 release];
    if ([r19 count] != 0x0) {
            var_120 = q0;
            r0 = [r19 retain];
            r20 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_120;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_128 + r26 * 0x8) removeFromSuperview];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [r20 release];
            [r20 removeAllObjects];
    }
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)pageForPosition:(long long)arg2 withData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 childViewProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 childViewProvider];
            r0 = [r0 retain];
            r20 = [(*(r0 + 0x10))() retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadPages {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [self removePages];
    r0 = [r20 data];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 bounds];
    if (r19 != 0x0 && sub_100aab508() != 0x0) {
            r22 = [[r20 pages] retain];
            r23 = [[r20 scrollView] retain];
            r21 = [[r20 data] retain];
            var_40 = r22;
            r22 = [r22 retain];
            var_38 = r23;
            r23 = [r23 retain];
            [r21 enumerateObjectsUsingBlock:&var_68];
            [r21 release];
            [r20 setNeedsLayout];
            [var_38 release];
            [var_40 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(double)pageFrameWidth {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    r0 = sub_100aab508();
    if (r0 != 0x0) {
            [r19 yPadding];
            r0 = [r19 xInset];
            if (d8 < d9 - d10 + d10 - 0x0) {
                    asm { fcsel      d0, d8, d0, mi };
            }
    }
    return r0;
}

-(void)layoutPages {
    r31 = r31 - 0xd0;
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
    r20 = self;
    r0 = [self pages];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            [r20 bounds];
            v9 = v2;
            v8 = v3;
            [r20 xPadding];
            [r20 yPadding];
            [r20 pageFrameWidth];
            [r19 enumerateObjectsUsingBlock:&var_B8];
            r0 = [r19 lastObject];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    [r21 frame];
            }
            r0 = [r20 scrollView];
            r0 = [r0 retain];
            [r0 setContentSize:r2];
            [r20 release];
            [r21 release];
            _Block_object_dispose(&var_80, 0x8);
    }
    [r19 release];
    return;
}

-(void)scrollViewDidScroll:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidScroll:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(struct CGPoint)paginatedOffsetForOffset:(struct CGPoint)arg2 scrollView:(void *)arg3 xPadding:(double)arg4 pageFrameWidth:(double)arg5 pageCount:(long long)arg6 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    v8 = v1;
    if (!OVERFLOW(d0 - d0)) {
            asm { fccmp      d1, d2, #0x4, vc };
    }
    if (!CPU_FLAGS & NE) {
            if (!OVERFLOW(d8 - d8)) {
                    asm { fccmp      d1, d2, #0x4, vc };
            }
            if (CPU_FLAGS & NE) {
                    d1 = d9 + d3;
                    asm { fcvtzs     x20, d1 };
                    asm { fcvtzs     x21, d0 };
                    r0 = [r2 contentOffset];
                    asm { scvtf      d1, x20 };
                    asm { fdiv       d0, d0, d1 };
                    asm { fcvtzs     x8, d0 };
                    r9 = r21 / r20;
                    r10 = r21 - r9 * r20;
                    if (r20 < 0x0) {
                            asm { cinc       x11, x20, lt };
                    }
                    if (r10 > r11 / 0x2) {
                            asm { cinc       x9, x9, gt };
                    }
                    if (r9 > &@selector(layerWithColor:)) {
                            asm { cinc       x8, x8, gt };
                    }
                    r8 = &@selector(layerWithColor:);
                    r9 = r19 - 0x1;
                    if (r8 < r9) {
                            if (!CPU_FLAGS & L) {
                                    r8 = r9;
                            }
                            else {
                                    r8 = &@selector(layerWithColor:);
                            }
                    }
                    r9 = (r8 & !(r8 / 0xffffffff80000000)) * r20;
                    asm { scvtf      d1, x9 };
                    asm { fcvtzs     x10, d0 };
                    asm { scvtf      d0, x8 };
            }
    }
    else {
            d1 = d9 + d3;
            asm { fcvtzs     x20, d1 };
            asm { fcvtzs     x21, d0 };
            r0 = [r2 contentOffset];
            asm { scvtf      d1, x20 };
            asm { fdiv       d0, d0, d1 };
            asm { fcvtzs     x8, d0 };
            r9 = r21 / r20;
            r10 = r21 - r9 * r20;
            if (r20 < 0x0) {
                    asm { cinc       x11, x20, lt };
            }
            if (r10 > r11 / 0x2) {
                    asm { cinc       x9, x9, gt };
            }
            if (r9 > &@selector(layerWithColor:)) {
                    asm { cinc       x8, x8, gt };
            }
            r8 = &@selector(layerWithColor:);
            r9 = r19 - 0x1;
            if (r8 < r9) {
                    if (!CPU_FLAGS & L) {
                            r8 = r9;
                    }
                    else {
                            r8 = &@selector(layerWithColor:);
                    }
            }
            r9 = (r8 & !(r8 / 0xffffffff80000000)) * r20;
            asm { scvtf      d1, x9 };
            asm { fcvtzs     x10, d0 };
            asm { scvtf      d0, x8 };
    }
    return r0;
}

-(void)scrollViewDidZoom:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidZoom:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewWillBeginDragging:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewWillBeginDragging:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewWillEndDragging:(void *)arg2 withVelocity:(struct CGPoint)arg3 targetContentOffset:(struct CGPoint *)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
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
    r19 = r3;
    v8 = v1;
    v9 = v0;
    r20 = [arg2 retain];
    [self xPadding];
    [self pageFrameWidth];
    r0 = [self pages];
    r0 = [r0 retain];
    [self paginatedOffsetForOffset:r20 scrollView:[r0 count] xPadding:r4 pageFrameWidth:r5 pageCount:r6];
    [r0 release];
    *r19 = d10;
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r22 scrollViewWillEndDragging:r20 withVelocity:r19 targetContentOffset:r4];
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)scrollViewDidEndDragging:(void *)arg2 willDecelerate:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewDidEndDragging:r19 willDecelerate:r20];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)scrollViewWillBeginDecelerating:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewWillBeginDecelerating:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndDecelerating:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidEndDecelerating:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndScrollingAnimation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidEndScrollingAnimation:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)viewForZoomingInScrollView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [[r20 viewForZoomingInScrollView:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)scrollViewWillBeginZooming:(void *)arg2 withView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewWillBeginZooming:r19 withView:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndZooming:(void *)arg2 withView:(void *)arg3 atScale:(double)arg4 {
    r4 = arg4;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewDidEndZooming:r19 withView:r20 atScale:r4];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)scrollViewShouldScrollToTop:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [r20 scrollViewShouldScrollToTop:r19];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)scrollViewDidScrollToTop:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidScrollToTop:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_storeStrong((int64_t *)&self->_pages, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_childViewProvider, 0x0);
    return;
}

-(void *)childViewProvider {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_childViewProvider)), 0x0);
    return r0;
}

-(void *)data {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_data)), 0x0);
    return r0;
}

-(void)setChildViewProvider:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
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

-(unsigned long long)maximumNativeAdCount {
    r0 = self->_maximumNativeAdCount;
    return r0;
}

-(double)xInset {
    r0 = self;
    return r0;
}

-(void)setXInset:(double)arg2 {
    self->_xInset = d0;
    return;
}

-(double)xPadding {
    r0 = self;
    return r0;
}

-(void)setXPadding:(double)arg2 {
    self->_xPadding = d0;
    return;
}

-(double)yPadding {
    r0 = self;
    return r0;
}

-(void)setYPadding:(double)arg2 {
    self->_yPadding = d0;
    return;
}

-(void *)pages {
    r0 = self->_pages;
    return r0;
}

-(void)setPages:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pages, arg2);
    return;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_scrollView, arg2);
    return;
}

@end