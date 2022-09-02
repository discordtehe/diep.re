@implementation ISNProductPresenterJSHandler

-(void *)initWithPublisherAgent:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_publisherAgent, r19);
            r0 = [ISNProductPresenter new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_productPresenter));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)invokeAPIWithJSParams:(void *)arg2 {
    return;
}

-(void)handleWebViewVisibility:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10071575c;

loc_10071568c:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    r23 = [ISProductContext convertProductNameToProductType:r24 error:&var_70];
    r21 = [var_70 retain];
    [r24 release];
    if (r21 == 0x0) goto loc_1007157d8;

loc_1007156ec:
    r22 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [r21 localizedDescription];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r21 localizedDescription];
            r29 = r29;
            r24 = [r0 retain];
            r26 = 0x1;
    }
    else {
            r26 = 0x0;
            r24 = @"internal error - unknown reason";
    }
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r25 = [r0 retain];
    [r20 sendCallbackToController:r22 withParams:r25];
    [r25 release];
    if (r26 != 0x0) {
            [r24 release];
    }
    [r23 release];
    goto loc_100715890;

loc_100715890:
    [r22 release];
    goto loc_1007158b4;

loc_1007158b4:
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1007157d8:
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if (r24 != 0x0) {
            r1 = @selector(presentWebViewForProduct:jsParams:);
    }
    else {
            r1 = @selector(dismissWebViewForProduct:jsParams:);
    }
    objc_msgSend(r20, r1);
    goto loc_1007158b4;

loc_10071575c:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
    r22 = [r0 retain];
    [r20 sendCallbackToController:r21 withParams:r22];
    goto loc_100715890;
}

-(void)presentWebViewForProduct:(unsigned long long)arg2 jsParams:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r22 = [NSStringFromSelector(_cmd) retain];
    r24 = [[SSAHelperMethods productTypeBySSAType:r20] retain];
    r23 = [[NSString stringWithFormat:@"calling method:%@ | with product: %@"] retain];
    [r21 logInfo:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    r0 = [r21 productPresenter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isCurrentlyPresented];
    [r0 release];
    if (r24 != 0x0) {
            r20 = [[r19 objectForKeyedSubscript:@"fail"] retain];
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x40 forKeys:&var_48 count:0x1];
            r22 = [r0 retain];
            [r21 sendCallbackToController:r20 withParams:r22];
            [r22 release];
            [r20 release];
    }
    else {
            r23 = [[r21 createPresentationStrategyFromJsParams:r19] retain];
            r0 = [r21 productPresenter];
            r0 = [r0 retain];
            [r0 setStrategy:r23];
            [r0 release];
            [r23 release];
            objc_initWeak(&stack[-96], r21);
            [[r21 productPresenter] retain];
            objc_copyWeak(&var_80 + 0x28, &stack[-96]);
            var_60 = [r19 retain];
            [r22 presentProduct:r20 completionHandler:&var_80];
            [r22 release];
            [var_60 release];
            objc_destroyWeak(&var_80 + 0x28);
            objc_destroyWeak(&stack[-96]);
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)dismissWebViewForProduct:(unsigned long long)arg2 jsParams:(void *)arg3 {
    [arg3 retain];
    r22 = [NSStringFromSelector(_cmd) retain];
    r24 = [[SSAHelperMethods productTypeBySSAType:arg2] retain];
    r23 = [[NSString stringWithFormat:@"calling method:%@ | with product: %@"] retain];
    [self logInfo:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    objc_initWeak(&saved_fp - 0x38, self);
    [[self productPresenter] retain];
    objc_copyWeak(&var_68 + 0x28, &saved_fp - 0x38);
    r20 = [r20 retain];
    [r22 dismissProduct:arg2 completionHandler:&var_68];
    [r22 release];
    [r20 release];
    objc_destroyWeak(&var_68 + 0x28);
    objc_destroyWeak(&saved_fp - 0x38);
    [r20 release];
    return;
}

-(void *)createPresentationStrategyFromJsParams:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"standaloneView"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [ISNPresentationStrategyStandAloneView alloc];
            r0 = [r20 standAloneViewConfigurationFromJsParams:r19];
    }
    else {
            r21 = [ISNPresentationStrategyViewController alloc];
            r0 = [r20 viewControllerConfigurationFromJsParams:r19];
    }
    r20 = [r0 retain];
    [r19 release];
    r19 = [r21 initWithConfiguration:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)sendEmptyCallbackToController:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r19 = [[r19 publisherAgent] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
            r20 = [r0 retain];
            [r19 runCommand:r21 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)standAloneViewConfigurationFromJsParams:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[ISNStandaloneViewPresentationConfiguration defaultConfiguration] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setCalcTopViewController:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setAnimateIn:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setAnimateOut:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r2 = @"fadeTime";
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r21 = r0;
            [r0 floatValue];
            asm { fcvt       d0, s0 };
            [r20 setFadeTime:r2];
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)sendCallbackToController:(void *)arg2 withParams:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r0 = [r20 publisherAgent];
            r0 = [r0 retain];
            [r0 runCommand:r19 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)viewControllerConfigurationFromJsParams:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[ISNViewControllerPresentationConfiguration defaultConfiguration] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setCalcTopViewController:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setHideStatusBar:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setAnimateIn:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setAnimateOut:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r2 = @"fadeTime";
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            [r0 floatValue];
            asm { fcvt       d0, s0 };
            [r20 setFadeTime:r2];
            [r22 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r20 setModalPresentationStyle:[r0 integerValue]];
            [r0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)logInfo:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromClass([self class]) retain];
    r21 = [[NSString stringWithFormat:@"class: %@ | %@"] retain];
    [r22 release];
    [r19 log:r21 withLevel:0x1 withTag:0x5];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)productPresenter {
    r0 = self->_productPresenter;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    objc_storeStrong((int64_t *)&self->_productPresenter, 0x0);
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

@end