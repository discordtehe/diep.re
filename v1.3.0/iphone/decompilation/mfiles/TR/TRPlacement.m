@implementation TRPlacement

-(void *)initWithComment:(void *)arg2 identifier:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setPlacementIdentifier:r20];
            [r21 setPlacementErrorMessage:r19];
            [r21 setCurrencyName:@""];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithOffer:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) {
            NSLog(@"Offer is nil in initWithOffer");
    }
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[r19 offerIdentifier] retain];
            [r20 setPlacementIdentifier:r21];
            [r21 release];
            r21 = [[r19 currencyName] retain];
            [r20 setCurrencyName:r21];
            [r21 release];
            [r20 setMaxPayoutInCurrency:[r19 maxPayoutInCurrency]];
            [r20 setMinPayoutInCurrency:[r19 minPayoutInCurrency]];
            [r20 setMinSurveyLength:[r19 minSurveyLength]];
            [r20 setMaxSurveyLength:[r19 maxSurveyLength]];
            r21 = [[r19 reasonComment] retain];
            [r20 setPlacementErrorMessage:r21];
            [r21 release];
            [r20 setPlacementCode:[r19 offerReason]];
            [r20 setIsSurveyWallAvailable:[r19 isSurveyWallAvailable]];
            [r20 setHasHotSurvey:[r19 hasHotSurvey]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithComment:(void *)arg2 identifier:(void *)arg3 placementCode:(long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r22 = [arg2 retain];
    r20 = [self initWithComment:r22 identifier:arg3];
    [r22 release];
    if (r20 != 0x0) {
            [r20 setPlacementCode:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)placementIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementIdentifier)), 0x0);
    return r0;
}

-(void)setPlacementIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)showSurveyWallWithDelegate:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = @class(TRSessionManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 player] retain];
    [r0 release];
    r0 = @class(TRSessionManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 cachedOffers] retain];
    r25 = [[r22 placementIdentifier] retain];
    r0 = [r24 objectForKey:r25];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    [r24 release];
    [r23 release];
    if (([r21 isSurveyWallAvailable] & 0x1) != 0x0) {
            r23 = [[TRWebviewController alloc] initWithOffer:r21 surveyDelegate:r19];
            r24 = [[UINavigationController alloc] initWithRootViewController:r23];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            r25 = [[r0 rootViewController] retain];
            [r0 release];
            [r26 release];
            r27 = @selector(presentedViewController);
            r0 = objc_msgSend(r25, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    do {
                            r28 = r25;
                            r25 = [objc_msgSend(r28, r27) retain];
                            [r28 release];
                            r0 = [r25 presentedViewController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            r27 = @selector(presentedViewController);
                    } while (r0 != 0x0);
            }
            [r21 setIsSurveyWallAvailable:0x0];
            [r22 setIsSurveyWallAvailable:0x0];
            [r25 presentViewController:r24 animated:0x1 completion:0x0];
            if ([r19 respondsToSelector:@selector(tapResearchSurveyWallOpenedWithPlacement:)] != 0x0) {
                    [r19 tapResearchSurveyWallOpenedWithPlacement:r22];
            }
            [r25 release];
            [r24 release];
            r0 = r23;
    }
    else {
            r22 = [[r20 messageForKey:*0x100e7d680] retain];
            r23 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
            r0 = objc_retainBlock(0x100e7d758);
            r25 = r0;
            r26 = objc_retainBlock(r0);
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:&var_68 count:0x1];
            r24 = [r0 retain];
            [r26 release];
            r0 = [TRAlertHandler alloc];
            r0 = [r0 init];
            [r0 showAlertWithTitle:@"" message:r22 buttonTitles:r23 handlers:r24];
            [r0 release];
            [r24 release];
            [r25 release];
            [r23 release];
            r0 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)currencyName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currencyName)), 0x0);
    return r0;
}

-(void)setCurrencyName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)placementErrorMessage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementErrorMessage)), 0x0);
    return r0;
}

-(bool)isSurveyWallAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_isSurveyWallAvailable;
    return r0;
}

-(void)setPlacementErrorMessage:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setIsSurveyWallAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isSurveyWallAvailable = arg2;
    return;
}

-(bool)hasHotSurvey {
    r0 = *(int8_t *)(int64_t *)&self->_hasHotSurvey;
    return r0;
}

-(void)setHasHotSurvey:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasHotSurvey = arg2;
    return;
}

-(long long)placementCode {
    r0 = self->_placementCode;
    return r0;
}

-(void)setPlacementCode:(long long)arg2 {
    self->_placementCode = arg2;
    return;
}

-(void)setMaxPayoutInCurrency:(long long)arg2 {
    self->_maxPayoutInCurrency = arg2;
    return;
}

-(long long)maxPayoutInCurrency {
    r0 = self->_maxPayoutInCurrency;
    return r0;
}

-(long long)minPayoutInCurrency {
    r0 = self->_minPayoutInCurrency;
    return r0;
}

-(void)setMinPayoutInCurrency:(long long)arg2 {
    self->_minPayoutInCurrency = arg2;
    return;
}

-(long long)maxSurveyLength {
    r0 = self->_maxSurveyLength;
    return r0;
}

-(void)setMaxSurveyLength:(long long)arg2 {
    self->_maxSurveyLength = arg2;
    return;
}

-(long long)minSurveyLength {
    r0 = self->_minSurveyLength;
    return r0;
}

-(void)setMinSurveyLength:(long long)arg2 {
    self->_minSurveyLength = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementErrorMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_currencyName, 0x0);
    objc_storeStrong((int64_t *)&self->_placementIdentifier, 0x0);
    return;
}

@end