@implementation ISNPresentationStrategyStandAloneView

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_configuration, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ISNStandaloneViewPresentationConfiguration defaultConfiguration];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isPresented {
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 supersonicAdsView];
    r0 = [r0 retain];
    r21 = [r0 isPresented];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)presentProductFromViewController:(void *)arg2 product:(unsigned long long)arg3 completionHandler:(void *)arg4 {
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
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [[self calcPresentingViewControllerWithViewInjectedViewController:r22] retain];
    [r22 release];
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    [r0 setPresentingViewController:r20];
    [r0 release];
    r22 = [[r20 view] retain];
    r24 = [[SupersonicAdsView alloc] init];
    r0 = @class(SupersonicAdsPublisher);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setSupersonicAdsView:r24];
    [r0 release];
    [r24 release];
    r0 = @class(SupersonicAdsPublisher);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 supersonicAdsView];
    r0 = [r0 retain];
    [r0 show:arg3 withView:r22];
    [r0 release];
    [r23 release];
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19, 0x0);
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)dismissWithCompletionHandler:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 supersonicAdsView] retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r21 hideSuperSonicAdsViewWithCompletionHandler:&var_48];
    [r21 release];
    [r0 release];
    [var_28 release];
    [r19 release];
    return;
}

-(void *)presentedViewController {
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
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 supersonicAdsView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100705a98;

loc_100705944:
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 supersonicAdsView];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 isPresented] == 0x0) goto loc_100705a88;

loc_100705980:
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 supersonicAdsView];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 nextResponder];
    r29 = r29;
    r28 = [r0 retain];
    [UIViewController class];
    r24 = [r28 isKindOfClass:r2];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r20 release];
    if (r24 != 0x0) {
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 supersonicAdsView];
            r0 = [r0 retain];
            r19 = [[r0 nextResponder] retain];
            [r0 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    goto loc_100705aac;

loc_100705aac:
    r0 = [r19 autorelease];
    return r0;

loc_100705a88:
    [r25 release];
    [r23 release];
    goto loc_100705a98;

loc_100705a98:
    [r22 release];
    [r20 release];
    r19 = 0x0;
    goto loc_100705aac;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)calcPresentingViewControllerWithViewInjectedViewController:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r23 = [r0 calcTopViewController];
    [r0 release];
    r20 = [[SupersonicLogManager sharedManager] retain];
    r21 = [NSStringFromClass([self class]) retain];
    r0 = NSStringFromSelector(_cmd);
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r19 != 0x0 && r23 == 0x0) {
            r23 = [[NSString stringWithFormat:r2] retain];
            [r20 log:r23 withLevel:0x1 withTag:0x5];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r0 = [r19 retain];
    }
    else {
            r23 = [[NSString stringWithFormat:r2] retain];
            [r20 log:r23 withLevel:0x1 withTag:0x5];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r0 = [SSAHelperMethods topMostController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    return;
}

@end