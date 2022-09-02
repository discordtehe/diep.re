@implementation VungleAdContainerView

-(void *)initWithContainedView:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setClipsToBounds:0x1];
            r22 = [[UIColor clearColor] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            objc_storeStrong((int64_t *)&r20->_vungleContainedView, r21);
            [r20 addSubview:r20->_vungleContainedView];
            [r20 setOpaque:0x0];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r20 setNeedsUpdateConstraints];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)enclosedView {
    r0 = [self vungleContainedView];
    return r0;
}

-(void)setVungleContainedView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_vungleContainedView, arg2);
    return;
}

-(void *)vungleContainedView {
    r0 = self->_vungleContainedView;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_vungleContainedView, 0x0);
    return;
}

-(void)updateConstraints {
    r22 = [[self bottomAnchor] retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_vungleContainedView));
    r23 = [[*(self + r25) bottomAnchor] retain];
    r0 = [r22 constraintEqualToAnchor:r23];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r23 release];
    [r22 release];
    r23 = [[self topAnchor] retain];
    r22 = [[*(self + r25) topAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r22];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r22 release];
    [r23 release];
    r23 = [[self leftAnchor] retain];
    r22 = [[*(self + r25) leftAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r22];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r22 release];
    [r23 release];
    r23 = [[self rightAnchor] retain];
    r22 = [[*(self + r25) rightAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r22];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r22 release];
    [r23 release];
    [[&var_50 super] updateConstraints];
    return;
}

@end