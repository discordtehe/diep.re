@implementation FRInterstitialContentView

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    objc_sync_enter(self);
    r20 = *0x1011dc0f8;
    r19 = [self retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011dc0f8, 0x100ea1f48);
    }
    objc_retainAutoreleaseReturnValue(*0x1011dc100);
    objc_sync_exit(r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)toggleNoMoreToday {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self FRNoMoreTodayButton];
    r0 = [r0 retain];
    r22 = [r0 isSelected];
    [r0 release];
    r0 = [r19 FRNoMoreTodayButton];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r21 setSelected:r2];
    [r21 release];
    r0 = [r19 FRNoMoreTodayButton];
    r0 = [r0 retain];
    [r0 setNeedsDisplay];
    [r0 release];
    return;
}

-(void)handleCreativeClick:(void *)arg2 {
    r31 = r31 - 0x100;
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 FRCreativeTapGestureRecognizer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) goto loc_10091e340;

loc_10091e0c4:
    r0 = [r21 currentPlacementContent];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10091e28c;

loc_10091e0e8:
    r24 = [[r21 currentPlacementContent] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r24 == r0) goto loc_10091e340;

loc_10091e13c:
    r20 = [[r21 currentPlacementContent] retain];
    var_78 = &var_80;
    r22 = [[r21 FRCreativeTapGestureRecognizer] retain];
    r23 = [[r21 FRCreativeView] retain];
    [r22 locationInView:r23];
    [r23 release];
    [r22 release];
    r0 = [r21 currentPlacementContentOrientation];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 portraitCreativeClickAreaMappings];
            r0 = [r0 retain];
            r21 = r0;
            [r0 enumerateObjectsUsingBlock:&var_B8];
    }
    else {
            r0 = [r20 landscapeCreativeClickAreaMappings];
            r0 = [r0 retain];
            r21 = r0;
            [r0 enumerateObjectsUsingBlock:&var_F0];
    }
    [r21 release];
    [FiveRocks handleClick:*(var_78 + 0x28) placementContent:r20];
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    r0 = r20;
    goto loc_10091e33c;

loc_10091e33c:
    [r0 release];
    goto loc_10091e340;

loc_10091e340:
    [r19 release];
    return;

loc_10091e28c:
    r0 = r23;
    goto loc_10091e33c;
}

-(void)closePlacementContent {
    [FiveRocks closeFRPlacementContent];
    return;
}

-(void *)FRPlacementContentView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRPlacementContentView)), 0x1);
    return r0;
}

-(void)dismissContent:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 bShowStatusBarWhenDismiss] != 0x0) {
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setStatusBarHidden:0x0];
            [r0 release];
            [r20 setBShowStatusBarWhenDismiss:0x0];
    }
    r0 = [r20 FRPlacementContentView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = [r20 FRPlacementContentView];
    r0 = [r0 retain];
    r23 = [[r0 superview] retain];
    r24 = [[r20 FRPlacementContentView] retain];
    [r23 sendSubviewToBack:r24];
    [r24 release];
    [r23 release];
    [r0 release];
    r0 = [r20 FRPlacementContentView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r20 FRNoMoreTodayButton];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isSelected];
    [r0 release];
    if (r23 != 0x0) {
            [FiveRocks addNoMoreTodayPlacementContent:r19];
    }
    r0 = [r20 FRNoMoreTodayButton];
    r0 = [r0 retain];
    [r0 setSelected:0x0];
    [r0 release];
    [r20 setCurrentPlacementContent:0x0];
    [r19 release];
    return;
}

-(void)setFRPlacementContentView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRTranslucentView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRTranslucentView)), 0x1);
    return r0;
}

-(void)setFRTranslucentView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRFrameView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRFrameView)), 0x1);
    return r0;
}

-(void)setFRFrameView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)init {
    r31 = r31 - 0xa0;
    var_70 = d11;
    stack[-120] = d10;
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
    r29 = &saved_fp;
    r0 = [[&var_80 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [UIView alloc];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            [r0 bounds];
            r20 = [r20 initWithFrame:r2];
            [r19 setFRPlacementContentView:r20];
            [r20 release];
            [r0 release];
            [r25 release];
            r0 = [r19 FRPlacementContentView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r0 = [r19 FRPlacementContentView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = [r19 FRPlacementContentView];
            r0 = [r0 retain];
            [r0 setMultipleTouchEnabled:0x0];
            [r0 release];
            r20 = [UIView alloc];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            [r0 bounds];
            r20 = [r20 initWithFrame:0x0];
            [r19 setFRTranslucentView:r20];
            [r20 release];
            [r0 release];
            [r21 release];
            r0 = [r19 FRTranslucentView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r0 = [r19 FRTranslucentView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = [r19 FRTranslucentView];
            r0 = [r0 retain];
            [r0 setMultipleTouchEnabled:0x0];
            [r0 release];
            r20 = [[r19 FRTranslucentView] retain];
            r23 = [[UIColor blackColor] retain];
            [r20 setBackgroundColor:r23];
            [r23 release];
            [r20 release];
            r0 = [r19 FRTranslucentView];
            r0 = [r0 retain];
            [r0 setAlpha:r23];
            [r0 release];
            r0 = @class(UIImageView);
            r0 = [r0 alloc];
            r20 = [r0 initWithFrame:r23];
            [r19 setFRFrameView:r20];
            [r20 release];
            r0 = [r19 FRFrameView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = [r19 FRFrameView];
            r0 = [r0 retain];
            [r0 setMultipleTouchEnabled:0x0];
            [r0 release];
            r20 = [[UIImageView alloc] initWithFrame:0x0];
            [r19 setFRCreativeView:r20];
            [r20 release];
            r0 = [r19 FRCreativeView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = [r19 FRCreativeView];
            r0 = [r0 retain];
            [r0 setMultipleTouchEnabled:0x0];
            [r0 release];
            r20 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(handleCreativeClick:)];
            [r19 setFRCreativeTapGestureRecognizer:r20];
            [r20 release];
            r20 = [[r19 FRCreativeView] retain];
            r22 = [[r19 FRCreativeTapGestureRecognizer] retain];
            [r20 addGestureRecognizer:r22];
            [r22 release];
            [r20 release];
            r22 = [[UIButton buttonWithType:0x0] retain];
            [r19 setFRCloseButton:r22];
            [r22 release];
            r0 = [r19 FRCloseButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(closePlacementContent) forControlEvents:0x40];
            [r0 release];
            r20 = [[UIButton buttonWithType:0x0] retain];
            [r19 setFRNoMoreTodayButton:r20];
            [r20 release];
            r0 = [r19 FRNoMoreTodayButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(toggleNoMoreToday) forControlEvents:0x40];
            [r0 release];
            r0 = [r19 FRNoMoreTodayButton];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r0 = [r19 FRNoMoreTodayButton];
            r0 = [r0 retain];
            [r0 setSelected:0x0];
            [r0 release];
            r20 = [[r19 FRCreativeView] retain];
            r27 = [[r19 FRNoMoreTodayButton] retain];
            [r20 addSubview:r27];
            [r27 release];
            [r20 release];
            r20 = [[r19 FRFrameView] retain];
            r24 = [[r19 FRCreativeView] retain];
            [r20 addSubview:r24];
            [r24 release];
            [r20 release];
            r20 = [[r19 FRFrameView] retain];
            r22 = [[r19 FRCloseButton] retain];
            [r20 addSubview:r22];
            [r22 release];
            [r20 release];
            r20 = [[r19 FRPlacementContentView] retain];
            r22 = [[r19 FRFrameView] retain];
            [r20 addSubview:r22];
            [r22 release];
            [r20 release];
            r0 = [r19 FRPlacementContentView];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r20 = [[r19 FRPlacementContentView] retain];
            r22 = [[r19 FRTranslucentView] retain];
            [r20 addSubview:r22];
            [r22 release];
            [r20 release];
            r20 = [[r19 FRPlacementContentView] retain];
            r21 = [[r19 FRTranslucentView] retain];
            [r20 sendSubviewToBack:r21];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)FRCloseButton {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRCloseButton)), 0x1);
    return r0;
}

-(void)setFRCloseButton:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRNoMoreTodayButton {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRNoMoreTodayButton)), 0x1);
    return r0;
}

-(void)setFRNoMoreTodayButton:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRCreativeView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRCreativeView)), 0x1);
    return r0;
}

-(void)setFRCreativeView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)FRCreativeTapGestureRecognizer {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_FRCreativeTapGestureRecognizer)), 0x1);
    return r0;
}

-(void *)currentPlacementContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentPlacementContent)), 0x1);
    return r0;
}

-(void)setFRCreativeTapGestureRecognizer:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setCurrentPlacementContent:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)currentPlacementContentOrientation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentPlacementContentOrientation)), 0x1);
    return r0;
}

-(void)setCurrentPlacementContentOrientation:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)bShowStatusBarWhenDismiss {
    r0 = *(int8_t *)(int64_t *)&self->_bShowStatusBarWhenDismiss & 0x1;
    return r0;
}

-(void)setBShowStatusBarWhenDismiss:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bShowStatusBarWhenDismiss = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentPlacementContentOrientation, 0x0);
    objc_storeStrong((int64_t *)&self->_currentPlacementContent, 0x0);
    objc_storeStrong((int64_t *)&self->_FRCreativeTapGestureRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_FRCreativeView, 0x0);
    objc_storeStrong((int64_t *)&self->_FRNoMoreTodayButton, 0x0);
    objc_storeStrong((int64_t *)&self->_FRCloseButton, 0x0);
    objc_storeStrong((int64_t *)&self->_FRFrameView, 0x0);
    objc_storeStrong((int64_t *)&self->_FRTranslucentView, 0x0);
    objc_storeStrong((int64_t *)&self->_FRPlacementContentView, 0x0);
    return;
}

-(void)showContent:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff80 - 0x6c0;
    r25 = self;
    r27 = [arg2 retain];
    [r25 setCurrentPlacementContent:r27];
    r0 = [r25 FRPlacementContentView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r23 = r0;
    [r0 bounds];
    r0 = [r25 FRPlacementContentView];
    r0 = [r0 retain];
    v0 = v0;
    v1 = v1;
    v2 = v2;
    v3 = v3;
    [r0 setFrame:0x1];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [r25 FRFrameView];
    r0 = [r0 retain];
    r8 = *_CGAffineTransformIdentity;
    var_720 = *(int128_t *)r8;
    var_710 = *(int128_t *)(r8 + 0x10);
    var_700 = *(int128_t *)(r8 + 0x20);
    [r0 setTransform:&saved_fp - 0xa0];
    [r0 release];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r22 = [[r0 keyWindow] retain];
    r23 = [[r25 FRPlacementContentView] retain];
    [r22 addSubview:r23];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [r27 closeButtonImage];
    r29 = &saved_fp;
    r23 = [r0 retain];
    var_6C8 = r27;
    var_6C0 = r25;
    if (r23 == 0x0) goto loc_10091e884;

loc_10091e6fc:
    r26 = [[r27 closeButtonImage] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == r25) goto loc_10091e890;

loc_10091e740:
    r0 = [r27 closeButtonImage];
    r0 = [r0 retain];
    r19 = r27;
    r27 = r0;
    r0 = [r0 image];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10091e8ac;

loc_10091e77c:
    r0 = [r19 closeButtonImage];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 image] retain];
    r0 = @class(NSNull);
    r0 = [r0 null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    [r19 release];
    [r21 release];
    [r27 release];
    [r25 release];
    [r26 release];
    [r23 release];
    r27 = var_6C8;
    r25 = var_6C0;
    if (r20 == r0) goto loc_10091e8d4;

loc_10091e80c:
    r19 = [[r25 FRCloseButton] retain];
    r0 = [r27 closeButtonImage];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 image];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setBackgroundImage:r21 forState:0x0];
    [r21 release];
    [r20 release];
    r0 = r19;
    goto loc_10091e888;

loc_10091e888:
    [r0 release];
    goto loc_10091e8d4;

loc_10091e8d4:
    r0 = [r27 noMoreTodayButtonImage];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10091ec80;

loc_10091e8f8:
    r28 = [[r27 noMoreTodayButtonImage] retain];
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r28 == r25) goto loc_10091ec8c;

loc_10091e93c:
    r0 = [r27 noMoreTodayButtonImage];
    r0 = [r0 retain];
    r26 = r27;
    r27 = r0;
    r0 = [r0 image];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10091eca8;

loc_10091e978:
    r0 = [r26 noMoreTodayButtonImage];
    r0 = [r0 retain];
    r19 = r0;
    var_6E8 = @selector(image);
    r20 = [[r0 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    [r19 release];
    [r21 release];
    [r27 release];
    [r25 release];
    [r28 release];
    [r23 release];
    r27 = r26;
    r25 = var_6C0;
    if (r20 != r0) {
            r0 = [r27 noMoreTodayButtonImage];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, var_6E8);
            r0 = [r0 retain];
            [r0 size];
            [r0 release];
            [r19 release];
            r0 = [r27 noMoreTodayButtonImage];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, var_6E8);
            r0 = [r0 retain];
            [r0 size];
            [r0 release];
            [r19 release];
            r0 = [r27 noMoreTodayButtonImage];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, var_6E8);
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = CGImageCreateWithImageInRect([r0 CGImage], @selector(CGImage));
            [r0 release];
            [r19 release];
            r19 = [[r25 FRNoMoreTodayButton] retain];
            r20 = [[UIImage imageWithCGImage:r21] retain];
            [r19 setImage:r20 forState:0x0];
            [r20 release];
            [r19 release];
            CGImageRelease(r21);
            r0 = [var_6C8 noMoreTodayButtonImage];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, var_6E8);
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r20 = r0;
            r0 = [r0 CGImage];
            v0 = v9;
            v2 = v9;
            v3 = v1;
            r21 = CGImageCreateWithImageInRect(r0, @selector(CGImage));
            [r20 release];
            [r19 release];
            r19 = [objc_msgSend(var_6C0, r23) retain];
            r27 = var_6C8;
            r20 = [[UIImage imageWithCGImage:r21] retain];
            r25 = var_6C0;
            [r19 setImage:r20 forState:0x4];
            [r20 release];
            [r19 release];
            CGImageRelease(r21);
            r0 = objc_msgSend(r25, r23);
            r29 = r29;
            r19 = [r0 retain];
    }
    else {
            r0 = [r25 FRNoMoreTodayButton];
            r29 = r29;
            r19 = [r0 retain];
    }
    goto loc_10091ecf4;

loc_10091ecf4:
    [r19 setHidden:r2];
    [r19 release];
    r28 = @selector(FRPlacementContentView);
    r0 = objc_msgSend(r25, r23);
    r0 = [r0 retain];
    [r0 setSelected:0x0];
    [r0 release];
    r0 = objc_msgSend(r25, r28);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    v8 = v0;
    r0 = [r27 hasLandscape];
    v0 = v8;
    v1 = v1;
    v2 = v2;
    r19 = [FRPlacementContent viewOrientationWithFrame:r0 landscapeForSquare:r3];
    [r20 release];
    r0 = [r27 hasPortrait];
    var_6C0 = r19;
    if (r0 == 0x0) goto loc_10091f21c;

loc_10091edd8:
    r0 = [r27 hasLandscape];
    r20 = @selector(FRFrameView);
    if (r0 == 0x0) goto loc_10091f660;

loc_10091edec:
    var_6E8 = @selector(FRNoMoreTodayButton);
    if (r19 > 0x2) goto loc_10091fb00;

loc_10091ee04:
    [r25 setCurrentPlacementContentOrientation:r2];
    r19 = [objc_msgSend(r25, r20) retain];
    r0 = [r27 portraitFrameImage];
    r0 = [r0 retain];
    r28 = r20;
    r22 = [[r0 image] retain];
    [r19 setImage:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r19 = [[r25 FRCreativeView] retain];
    r0 = [r27 portraitCreativeImage];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r19 setImage:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    v2 = v8;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRPlacementContentView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 center];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    d9 = *0x100ba2aa0 * 0x3fe0000000000000;
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r20 release];
    [r19 release];
    [r27 closeButtonOffset];
    d8 = *0x100bf2e60 - 0x0;
    [r27 closeButtonOffset];
    r0 = [r25 FRCloseButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r27 noMoreTodayButtonPortraitOffset];
    [r27 noMoreTodayButtonPortraitOffset];
    r0 = objc_msgSend(r25, var_6E8);
    r0 = [r0 retain];
    v3 = v2;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:r2 options:r3];
    [r0 release];
    r0 = [r19 release];
    if (r21 == -0x1) goto loc_1009200cc;

loc_10091f1cc:
    r0 = objc_msgSend(r25, r28);
    r29 = r29;
    r0 = [r0 retain];
    q0 = var_700;
    r21 = @selector(setTransform:);
    objc_msgSend(r0, r21);
    [r19 release];
    r20 = r28;
    goto loc_1009202f0;

loc_1009202f0:
    r26 = @selector(frame);
    r28 = @selector(FRPlacementContentView);
    goto loc_1009202f4;

loc_1009202f4:
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    objc_msgSend(r0, r26);
    v8 = v2;
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, r26);
    [r19 release];
    if (d8 < d9) {
            r0 = objc_msgSend(r25, r28);
            r0 = [r0 retain];
            objc_msgSend(r0, r26);
            v8 = v3;
            [r19 release];
            r0 = objc_msgSend(r25, r28);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r26);
            [r19 release];
    }
    d1 = d9 * *0x100ba2a98;
    asm { fdiv       d1, d1, d2 };
    if (d8 > d1) {
            asm { fcsel      d1, d1, d8, gt };
    }
    asm { fdiv       d8, d1, d0 };
    r1 = r20;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r24 != 0x0) {
            r1 = @selector(transform);
            r0 = objc_msgSend(r24, r1);
    }
    CGAffineTransformMakeScale(r0, r1);
    CGAffineTransformConcat(&var_640, &stack[-1664]);
    r0 = objc_msgSend(r25, r20);
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    [r19 release];
    [r24 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:r2 options:r3];
    [r0 release];
    [r19 release];
    if (r21 == -0x1) {
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 isStatusBarHidden];
            [r0 release];
            if ((r20 & 0x1) == 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setStatusBarHidden:0x1];
                    [r0 release];
                    [r25 setBShowStatusBarWhenDismiss:0x1];
            }
    }
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    [r0 setHidden:r2];
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r20 = [[r0 superview] retain];
    r21 = [objc_msgSend(r25, r28) retain];
    [r20 bringSubviewToFront:r21];
    [r21 release];
    [r20 release];
    [r0 release];
    [var_6C8 release];
    return;

loc_1009200cc:
    r21 = @selector(setTransform:);
    if (var_6C0 == 0x2) {
            CGAffineTransformMakeRotation(r0);
            r20 = @selector(FRFrameView);
            r0 = objc_msgSend(r25, r20);
            r29 = r29;
            r19 = [r0 retain];
            q0 = var_E0;
    }
    else {
            r20 = @selector(FRFrameView);
            r0 = objc_msgSend(r25, r20);
            r29 = r29;
            r19 = [r0 retain];
            q0 = var_700;
    }
    goto loc_1009202dc;

loc_1009202dc:
    r0 = r19;
    goto loc_1009202e0;

loc_1009202e0:
    objc_msgSend(r0, r21);
    [r19 release];
    goto loc_1009202f0;

loc_10091fb00:
    [r25 setCurrentPlacementContentOrientation:r2];
    r19 = [objc_msgSend(r25, r20) retain];
    r0 = [r27 landscapeFrameImage];
    r0 = [r0 retain];
    r22 = [[r0 image] retain];
    [r19 setImage:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r19 = [[r25 FRCreativeView] retain];
    r0 = [r27 landscapeCreativeImage];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r19 setImage:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r20);
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRPlacementContentView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 center];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    d9 = *0x100bf2e60 * 0x3fe0000000000000;
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r20 release];
    [r19 release];
    [r27 closeButtonOffset];
    d8 = *0x100bf4920 - 0x0;
    [r27 closeButtonOffset];
    r0 = [r25 FRCloseButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r27 noMoreTodayButtonLandscapeOffset];
    [r27 noMoreTodayButtonLandscapeOffset];
    r0 = objc_msgSend(r25, var_6E8);
    r0 = [r0 retain];
    v3 = v2;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:r2 options:r3];
    [r0 release];
    r0 = [r19 release];
    if (r21 == -0x1) goto loc_100920128;

loc_10091fecc:
    r20 = @selector(FRFrameView);
    r0 = objc_msgSend(r25, r20);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    q0 = var_700;
    r21 = @selector(setTransform:);
    goto loc_1009202e0;

loc_100920128:
    r28 = var_6C0;
    r21 = @selector(setTransform:);
    if (r28 != 0x3) {
            r20 = @selector(FRFrameView);
            if (r28 == 0x4) {
                    CGAffineTransformMakeRotation(r0);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_1A0;
            }
            else {
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_700;
            }
    }
    else {
            CGAffineTransformMakeRotation(r0);
            r20 = @selector(FRFrameView);
            r0 = objc_msgSend(r25, r20);
            r29 = r29;
            r19 = [r0 retain];
            q0 = var_200;
    }
    goto loc_1009202dc;

loc_10091f660:
    [r25 setCurrentPlacementContentOrientation:@"Portrait"];
    r19 = [objc_msgSend(r25, r20) retain];
    r0 = [r27 portraitFrameImage];
    r0 = [r0 retain];
    r22 = [[r0 image] retain];
    [r19 setImage:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r19 = [[r25 FRCreativeView] retain];
    r0 = [r27 portraitCreativeImage];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r19 setImage:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r20);
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    v2 = v8;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRPlacementContentView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 center];
    r0 = objc_msgSend(r25, r23);
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r19 release];
    r0 = objc_msgSend(r25, r23);
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    d9 = *0x100ba2aa0 * 0x3fe0000000000000;
    r0 = objc_msgSend(r25, r23);
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r20 release];
    [r19 release];
    [r27 closeButtonOffset];
    d8 = *0x100bf2e60 - 0x0;
    [r27 closeButtonOffset];
    r0 = [r25 FRCloseButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r27 noMoreTodayButtonPortraitOffset];
    [r27 noMoreTodayButtonPortraitOffset];
    r0 = [r25 FRNoMoreTodayButton];
    r0 = [r0 retain];
    v3 = v2;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:r2 options:r3];
    [r0 release];
    r0 = [r19 release];
    if (r21 != -0x1) {
            r28 = var_6C0;
            r21 = @selector(setTransform:);
            if (r28 != 0x3) {
                    if (r28 == 0x4) {
                            CGAffineTransformMakeRotation(r0);
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_290;
                    }
                    else {
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_700;
                    }
            }
            else {
                    CGAffineTransformMakeRotation(r0);
                    r20 = @selector(FRFrameView);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_2F0;
            }
    }
    else {
            r21 = @selector(setTransform:);
            if (var_6C0 == 0x2) {
                    CGAffineTransformMakeRotation(r0);
                    r20 = @selector(FRFrameView);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_380;
            }
            else {
                    r20 = @selector(FRFrameView);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_700;
            }
    }
    goto loc_100920200;

loc_100920200:
    objc_msgSend(r19, r21);
    [r19 release];
    r28 = @selector(FRPlacementContentView);
    r26 = @selector(frame);
    goto loc_1009202f4;

loc_10091f21c:
    [r25 setCurrentPlacementContentOrientation:@"Landscape"];
    r19 = [[r25 FRFrameView] retain];
    r0 = [r27 landscapeFrameImage];
    r0 = [r0 retain];
    r22 = [[r0 image] retain];
    [r19 setImage:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r19 = [[r25 FRCreativeView] retain];
    r0 = [r27 landscapeCreativeImage];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r19 setImage:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    r0 = [r25 FRFrameView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    r0 = objc_msgSend(r25, r28);
    r0 = [r0 retain];
    r19 = r0;
    [r0 center];
    r0 = [r25 FRFrameView];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r19 release];
    r0 = [r25 FRFrameView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    r0 = [r25 FRFrameView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    d9 = *0x100bf2e60 * 0x3fe0000000000000;
    r0 = [r25 FRCreativeView];
    r0 = [r0 retain];
    [r0 setCenter:r2];
    [r0 release];
    [r20 release];
    [r19 release];
    [r27 closeButtonOffset];
    d8 = *0x100bf4920 - 0x0;
    [r27 closeButtonOffset];
    r0 = [r25 FRCloseButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r27 noMoreTodayButtonLandscapeOffset];
    [r27 noMoreTodayButtonLandscapeOffset];
    r0 = [r25 FRNoMoreTodayButton];
    r0 = [r0 retain];
    v3 = v2;
    [r0 setFrame:r2];
    [r19 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:r2 options:r3];
    [r0 release];
    r0 = [r19 release];
    if (r21 != -0x1) {
            r8 = var_6C0;
            r21 = @selector(setTransform:);
            if (r8 != 0x2) {
                    if (r8 == 0x1) {
                            CGAffineTransformMakeRotation(r0);
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_410;
                    }
                    else {
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_700;
                    }
            }
            else {
                    CGAffineTransformMakeRotation(r0);
                    r20 = @selector(FRFrameView);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_470;
            }
    }
    else {
            r9 = var_6C0;
            r21 = @selector(setTransform:);
            if (r9 < 0x4) {
                    CGAffineTransformMakeRotation(r0);
                    r20 = @selector(FRFrameView);
                    r0 = objc_msgSend(r25, r20);
                    r29 = r29;
                    r19 = [r0 retain];
                    q0 = var_560;
            }
            else {
                    if (r9 == 0x4) {
                            CGAffineTransformMakeRotation(r0);
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_500;
                    }
                    else {
                            r20 = @selector(FRFrameView);
                            r0 = objc_msgSend(r25, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            q0 = var_700;
                    }
            }
    }
    goto loc_100920200;

loc_10091eca8:
    [r27 release];
    [r25 release];
    [r28 release];
    [r23 release];
    r27 = r26;
    goto loc_10091eccc;

loc_10091eccc:
    r25 = var_6C0;
    goto loc_10091ecd0;

loc_10091ecd0:
    r0 = [r25 FRNoMoreTodayButton];
    r29 = r29;
    r19 = [r0 retain];
    goto loc_10091ecf4;

loc_10091ec8c:
    [r25 release];
    [r28 release];
    [r23 release];
    goto loc_10091eccc;

loc_10091ec80:
    [r23 release];
    goto loc_10091ecd0;

loc_10091e8ac:
    [r27 release];
    [r25 release];
    [r26 release];
    [r23 release];
    r27 = r19;
    goto loc_10091e8d0;

loc_10091e8d0:
    r25 = var_6C0;
    goto loc_10091e8d4;

loc_10091e890:
    [r25 release];
    [r26 release];
    [r23 release];
    goto loc_10091e8d0;

loc_10091e884:
    r0 = r23;
    goto loc_10091e888;
}

@end