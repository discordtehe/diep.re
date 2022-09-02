@implementation VungleTapPassingView

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
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r19 setAlpha:0x0];
            r20 = [[UIColor clearColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    v8 = v1;
    v9 = v0;
    r20 = self;
    r19 = [r2 retain];
    r0 = [r20 forwardView];
    r0 = [r0 retain];
    [r0 convertPoint:r20 fromView:r3];
    [r0 release];
    r0 = [r20 forwardView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = CGRectContainsPoint([r0 bounds], @selector(bounds));
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r20 forwardView];
            r0 = [r0 retain];
            r20 = [[r0 hitTest:r19 withEvent:r3] retain];
            [r0 release];
    }
    else {
            r0 = [[&var_60 super] hitTest:r19 withEvent:r3];
            r20 = [r0 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)forwardView {
    r0 = self->_forwardView;
    return r0;
}

-(void)setForwardView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_forwardView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_forwardView, 0x0);
    return;
}

@end