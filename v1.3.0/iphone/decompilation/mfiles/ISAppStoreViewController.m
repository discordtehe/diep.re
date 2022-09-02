@implementation ISAppStoreViewController

-(void *)initWithAbstractView:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setBaseViewContainer:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)defaultAppStoreViewController {
    r20 = [ISAppStoreViewController alloc];
    r19 = [[ISAbstractView alloc] init];
    r20 = [r20 initWithAbstractView:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)viewDidAppear:(bool)arg2 {
    [[&var_10 super] viewDidAppear:arg2];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    [[&var_20 super] viewWillDisappear:arg2];
    r0 = [self baseViewContainer];
    r0 = [r0 retain];
    [r0 setOrientationUpdates:0x0];
    [r0 release];
    return;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r21 = [[self view] retain];
    r22 = [[self baseViewContainer] retain];
    [self setView:r22];
    [r22 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 addSubview:r21];
    [r0 release];
    [self setStoreKitDismissed:0x0];
    [r21 release];
    return;
}

-(void)viewDidDisappear:(bool)arg2 {
    [[&var_20 super] viewDidDisappear:arg2];
    [self setStoreKitDismissed:0x1];
    return;
}

-(bool)isAppPageLoadedForAppId:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 appId];
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r21 release];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 appPageLoaded];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)loadProductWithParameters:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10072333c;

loc_100723284:
    [NSString class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1007233b0;

loc_1007232b0:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_100723498;

loc_1007232cc:
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-144] forKeys:&var_88 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.ironsrc.erros" code:0x0 userInfo:r22];
    goto loc_10072341c;

loc_10072341c:
    (*(r20 + 0x10))(r20, 0x0, [r0 retain]);
    [r23 release];
    r0 = r22;
    goto loc_100723444;

loc_100723444:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100723498:
    r0 = [NSNumberFormatter alloc];
    r0 = [r0 init];
    r23 = r0;
    [r0 setNumberStyle:0x1];
    r0 = [r23 numberFromString:r21];
    r29 = r29;
    r24 = [r0 retain];
    r26 = [r19 mutableCopy];
    if (r24 != 0x0) {
            [r26 setObject:r24 forKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier];
    }
    else {
            r25 = [[SupersonicLogManager sharedManager] retain];
            r0 = @class(NSString);
            r0 = [r0 stringWithFormat:@"%s - unable to convert app id:%@ into NSNumber"];
            r29 = r29;
            r27 = [r0 retain];
            [r25 log:r27 withLevel:0x1 withTag:0x5];
            [r27 release];
            [r25 release];
    }
    [r22 setAppId:r21];
    r25 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_A0 = r26;
    [r26 retain];
    var_98 = [r20 retain];
    dispatch_async(r25, &var_C0);
    [r25 release];
    [var_98 release];
    [var_A0 release];
    [r26 release];
    [r24 release];
    r0 = r23;
    goto loc_100723444;

loc_1007233b0:
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.ironsrc.erros" code:0x0 userInfo:r22];
    goto loc_10072341c;

loc_10072333c:
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:&var_68 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.ironsrc.erros" code:0x0 userInfo:r22];
    goto loc_10072341c;
}

-(void)showForViewController:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r20 baseViewContainer];
    r0 = [r0 retain];
    [r0 setOrientationUpdates:0x1];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 compare:@"8.4" options:0x40] != -0x1) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r0 = [UIDevice currentDevice];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 userInterfaceIdiom];
                    [r0 release];
                    [r25 release];
                    [r23 release];
                    [r22 release];
                    if (r26 != 0x1) {
                            r0 = [UIApplication sharedApplication];
                            r0 = [r0 retain];
                            r23 = [r0 isStatusBarHidden];
                            [r0 release];
                            if ((r23 & 0x1) == 0x0) {
                                    [r19 setModalPresentationStyle:0x0];
                            }
                    }
            }
            else {
                    [r25 release];
                    [r23 release];
                    [r22 release];
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r23 = [r0 isStatusBarHidden];
                    [r0 release];
                    if ((r23 & 0x1) == 0x0) {
                            [r19 setModalPresentationStyle:0x0];
                    }
            }
    }
    else {
            [r23 release];
            [r22 release];
    }
    var_58 = r21;
    r21 = [r21 retain];
    [r19 presentViewController:r20 animated:0x1 completion:&var_78];
    [var_58 release];
    [r21 release];
    [r19 release];
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 appOrientation];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(bool)appPageLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_appPageLoaded;
    return r0;
}

-(void)setAppPageLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_appPageLoaded = arg2;
    return;
}

-(bool)storeKitDismissed {
    r0 = *(int8_t *)(int64_t *)&self->_storeKitDismissed;
    return r0;
}

-(void)setStoreKitDismissed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_storeKitDismissed = arg2;
    return;
}

-(void *)appId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appId)), 0x0);
    return r0;
}

-(void)setAppId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)baseViewContainer {
    r0 = self->_baseViewContainer;
    return r0;
}

-(void)setBaseViewContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_baseViewContainer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_baseViewContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_appId, 0x0);
    return;
}

@end