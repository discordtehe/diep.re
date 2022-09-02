@implementation GADSwappableView

-(void *)initWithViewToSwap:(void *)arg2 context:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r24 = [arg3 retain];
    [r19 frame];
    r0 = [[&var_40 super] initWithFrame:r24 context:r3];
    r21 = r0;
    [r24 release];
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_viewToSwap, r20);
            [r21 addSubview:r2];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self->_viewToSwap;
    r0 = [r0 intrinsicContentSize];
    return r0;
}

-(void)addSubview:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_viewToSwap != r19 && r20->_snapshotView != r19) {
            r0 = [r20 context];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Attempted to add subview to swappable view.");
            [r20 release];
    }
    else {
            [[&var_20 super] addSubview:r19];
            [r20 bounds];
            [r19 setFrame:r19];
            [r19 setAutoresizingMask:0x12];
    }
    [r19 release];
    return;
}

-(void)restoreSwappedView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_snapshotView));
    if (*(r19 + r20) != 0x0) {
            [r19 addSubview:r19->_viewToSwap];
            [*(r19 + r20) removeFromSuperview];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_snapshotView, 0x0);
    objc_storeStrong((int64_t *)&self->_viewToSwap, 0x0);
    return;
}

-(void)swapViewForImage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_snapshotView));
    if (*(r19 + r22) == 0x0) {
            r21 = (int64_t *)&r19->_viewToSwap;
            r0 = *r21;
            if (r0 != 0x0) {
                    r0 = [r0 snapshotViewAfterScreenUpdates:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    if (*(r19 + r22) == 0x0) {
                            r0 = [r19 context];
                            r29 = r29;
                            r0 = [r0 retain];
                            sub_1007ce06c(r0, @"Failed to create a snapshot view.");
                            [r20 release];
                            r20 = [UIView alloc];
                            [*r21 frame];
                            r0 = [r20 initWithFrame:r2];
                            r8 = *(r19 + r22);
                            *(r19 + r22) = r0;
                            [r8 release];
                            r2 = *(r19 + r22);
                    }
                    [r19 addSubview:r2];
                    r0 = *r21;
                    r0 = [r0 superview];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == r19) {
                            [*r21 removeFromSuperview];
                    }
            }
    }
    return;
}

@end