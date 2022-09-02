@implementation USRVWebViewBackgroundView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setNeedsPlacement:0x0];
    r20 = [[NSArray alloc] init];
    [self setSubviews:r20];
    [r20 release];
    [self setAccessibilityElementsHidden:0x1];
    r0 = [[&var_40 super] initWithFrame:r2];
    return r0;
}

-(void)willMoveToSuperview:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] willMoveToSuperview:r2];
    if (arg2 == 0x0) {
            [r19 setNeedsPlacement:0x1];
    }
    return;
}

-(void)didMoveToSuperview {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] didMoveToSuperview];
    if ([r19 needsPlacement] != 0x0) {
            [r19 placeViewToBackground];
    }
    return;
}

-(void)addSubview:(void *)arg2 {
    [[&var_20 super] addSubview:arg2];
    r20 = [[NSArray alloc] init];
    [self setSubviews:r20];
    [r20 release];
    return;
}

-(void)placeViewToBackground {
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
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 setHidden:0x1];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r0 = [r0 windows];
            r0 = [r0 retain];
            r0 = [r0 firstObject];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r23 release];
            [r22 release];
            [r21 release];
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 superview];
                    r0 = [r0 retain];
                    [r0 sendSubviewToBack:r19];
                    [r0 release];
            }
            [r19 setNeedsPlacement:0x0];
    }
    return;
}

-(bool)needsPlacement {
    r0 = *(int8_t *)(int64_t *)&self->_needsPlacement;
    return r0;
}

-(void)setNeedsPlacement:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_needsPlacement = arg2;
    return;
}

-(void *)subviews {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subviews)), 0x0);
    return r0;
}

-(void)setSubviews:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_subviews, 0x0);
    return;
}

@end