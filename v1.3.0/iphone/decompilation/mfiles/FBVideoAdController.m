@implementation FBVideoAdController

-(void *)initWithContentView:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setContentView:r19];
            r0 = [r20 contentView];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isDataModelValid];
    if (r0 != 0x0) {
            r0 = [r19 isNetworkOnline];
    }
    return r0;
}

-(bool)isDataModelValid {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self dataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r21 = [r0 isValid];
            [r0 release];
            [r19 release];
            if ((r21 & 0x1) != 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(bool)isNetworkOnline {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [FBAdConnectionInfo currentReachabilityStatus];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self logger] retain];
    r0 = [r19 contentView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 currentTime];
    }
    [r20 registerStop:&var_38];
    [r21 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r31 = r31 - 0x100;
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
    r22 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    [r22 setDataModel:r19];
    r0 = [r22 delegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (([r22 isDataModelValid] & 0x1) != 0x0) {
            var_D8 = r23;
            objc_initWeak(r29 - 0x70, r22);
            objc_copyWeak(&var_98 + 0x20, r29 - 0x70);
            r0 = objc_retainBlock(&var_98);
            var_C8 = r0;
            objc_copyWeak(&stack[-208] + 0x20, r29 - 0x70);
            r0 = objc_retainBlock(&stack[-208]);
            var_D0 = r0;
            r25 = [FBAdVideoLogger alloc];
            r23 = [[r22 contentView] retain];
            r0 = [r22 dataModel];
            r0 = [r0 retain];
            r24 = r0;
            r26 = [[r0 inlineClientToken] retain];
            r0 = [r22 contentView];
            r0 = [r0 retain];
            r25 = [r25 initWithTargetView:r23 inlineClientToken:r26 viewableImpressionBlock:var_C8 targetVolumeBlock:var_D0 autoplay:[r0 isAutoplay] cardIndex:0x0 cardCount:0x0];
            [r22 setLogger:r25];
            [r25 release];
            [r0 release];
            [r26 release];
            [r24 release];
            [r23 release];
            r20 = [[r22 contentView] retain];
            r22 = [[r22 dataModel] retain];
            [r20 loadAdFromDataModel:r22 placementDefinition:var_D8];
            [r22 release];
            [r20 release];
            [var_D0 release];
            objc_destroyWeak(&stack[-208] + 0x20);
            [var_C8 release];
            objc_destroyWeak(&var_98 + 0x20);
            objc_destroyWeak(r29 - 0x70);
            r23 = var_D8;
    }
    else {
            r20 = [[FBAdError getNSError:0x3e9] retain];
            [r21 controller:r22 didFailWithError:r20];
            [r20 release];
    }
    [r21 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)handleViewableImpression {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(controllerWillRegisterViewableImpression:)] != 0x0) {
            [r20 controllerWillRegisterViewableImpression:r19];
    }
    [r20 release];
    return;
}

-(void)contentViewDidLoad:(void *)arg2 {
    [self setContentViewLoaded:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 controllerDidLoad:self];
    [r0 release];
    return;
}

-(bool)showAdFromRootViewController:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (([r21 isNetworkOnline] & 0x1) != 0x0) {
            if ([r21 contentViewLoaded] != 0x0 && ([r21 started] & 0x1) == 0x0) {
                    r22 = 0x1;
                    [r21 setStarted:0x1];
                    r23 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
                    [r21 setRootViewController:r23];
                    [r23 release];
                    r23 = [[r21 contentView] retain];
                    r21 = [[r21 rootViewController] retain];
                    [r23 startFromRootViewController:r21];
                    [r21 release];
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = [[FBAdError getNSError:0x3e8] retain];
            [r20 controller:r21 didFailWithError:r22];
            [r22 release];
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)contentViewDidProgress:(void *)arg2 {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self contentView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    else {
            var_28 = 0x0;
            var_18 = 0x0;
    }
    [r20 release];
    r0 = CMTimeCompare(&var_40, &var_60);
    if (r0 >= 0x1) {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 registerProgress:&var_80];
            [r0 release];
    }
    return;
}

-(void)contentViewDidResume:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self logger] retain];
    r0 = [self contentView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    [r19 registerResume:&var_28];
    [r20 release];
    [r19 release];
    return;
}

-(void)contentViewDidSkip:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self logger] retain];
    r0 = [r19 contentView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 currentTime];
    }
    [r20 registerSkip:&var_38];
    [r21 release];
    [r20 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 controllerDidUnload:r19];
    [r0 release];
    return;
}

-(void)contentViewDidPause:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self logger] retain];
    r0 = [self contentView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    [r19 registerPause:&var_28];
    [r20 release];
    [r19 release];
    return;
}

-(void)contentViewDidClickthrough:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 controllerDidClick:self];
    [r0 release];
    return;
}

-(void)contentViewDidEnd:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self logger] retain];
    r0 = [self contentView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    [r19 registerComplete:&var_28];
    [r20 release];
    [r19 release];
    return;
}

-(void)contentViewDidUnload:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 controllerDidUnload:self];
    [r0 release];
    return;
}

-(void)contentView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 controller:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rootViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_contentView, 0x0);
    return;
}

-(void *)contentView {
    r0 = self->_contentView;
    return r0;
}

-(void)setContentView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_contentView, arg2);
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

-(bool)contentViewLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_contentViewLoaded;
    return r0;
}

-(void)setContentViewLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_contentViewLoaded = arg2;
    return;
}

-(bool)contentViewEnded {
    r0 = *(int8_t *)(int64_t *)&self->_contentViewEnded;
    return r0;
}

-(void)setContentViewEnded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_contentViewEnded = arg2;
    return;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void *)logger {
    r0 = self->_logger;
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logger, arg2);
    return;
}

-(bool)started {
    r0 = *(int8_t *)(int64_t *)&self->_started;
    return r0;
}

-(void)setStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_started = arg2;
    return;
}

-(void *)rootViewController {
    r0 = self->_rootViewController;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootViewController, arg2);
    return;
}

@end