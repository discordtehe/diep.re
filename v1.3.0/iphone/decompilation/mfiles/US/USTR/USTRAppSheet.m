@implementation USTRAppSheet

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r22 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setAppSheetCache:r22];
            [r22 release];
            r20 = objc_msgSend([NSMutableSet alloc], r20);
            [r19 setAppSheetLoading:r20];
            [r20 release];
            [r19 setCanOpenAppSheet:[NSClassFromString(@"SKStoreProductViewController") instancesRespondToSelector:@selector(loadProductWithParameters:completionBlock:), r3]];
    }
    r0 = r19;
    return r0;
}

-(void)prepareAppSheet:(void *)arg2 prepareTimeoutInSeconds:(int)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r20 = [arg4 retain];
    r21 = [[r22 getItunesIdFromParameters:r19] retain];
    [r22 setPrepareTimeoutInSeconds:arg3];
    r0 = [r22 getCachedController:r21];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*(r20 + 0x10))(r20, 0x1, 0x0);
    }
    else {
            r0 = [r22 appSheetLoading];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 containsObject:r2];
            [r0 release];
            if ((r25 & 0x1) != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0, [sub_1000f8b8c() retain]);
                    r0 = r22;
            }
            else {
                    r0 = [r22 appSheetLoading];
                    r0 = [r0 retain];
                    [r0 addObject:r21];
                    [r0 release];
                    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
                    var_58 = [r21 retain];
                    var_50 = [r20 retain];
                    var_48 = [r19 retain];
                    dispatch_async(r23, &var_80);
                    [r23 release];
                    [var_48 release];
                    [var_50 release];
                    r0 = var_58;
            }
            [r0 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)presentAppSheet:(void *)arg2 animated:(bool)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r23 = arg3;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [[r24 getItunesIdFromParameters:r19] retain];
    r0 = [r24 getCachedController:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1000f9684;

loc_1000f9650:
    r0 = [r24 presentingParameters];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000f96b4;

loc_1000f9674:
    r0 = sub_1000f8b8c();
    goto loc_1000f9690;

loc_1000f9690:
    (*(r20 + 0x10))(r20, 0x0, [r0 retain]);
    r0 = r23;
    goto loc_1000f9758;

loc_1000f9758:
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000f96b4:
    [r24 setPresentingParameters:r19];
    [r24 setPresentingAnimated:r23];
    var_58 = [r22 retain];
    var_50 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_78);
    (*(r20 + 0x10))(r20, 0x1, 0x0);
    [var_50 release];
    r0 = var_58;
    goto loc_1000f9758;

loc_1000f9684:
    r0 = sub_1000f8b8c();
    goto loc_1000f9690;
}

-(void)destroyAppSheet {
    [self setPresentingParameters:0x0];
    r0 = [self appSheetCache];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [self appSheetLoading];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    return;
}

-(void *)getItunesIdFromParameters:(void *)arg2 {
    r0 = [arg2 objectForKey:@"id"];
    return r0;
}

-(bool)destroyAppSheet:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self getItunesIdFromParameters:arg2] retain];
    r0 = [r20 getCachedController:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 appSheetCache];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r19];
            [r0 release];
            r0 = [r20 appSheetLoading];
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getCachedController:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self appSheetCache];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:r2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 presentingViewController] retain];
            [r21 dismissViewControllerAnimated:[r20 presentingAnimated] completion:&var_48];
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)canOpenAppSheet {
    r0 = *(int8_t *)(int64_t *)&self->_canOpenAppSheet;
    return r0;
}

-(int)prepareTimeoutInSeconds {
    r0 = *(int32_t *)(int64_t *)&self->_prepareTimeoutInSeconds;
    return r0;
}

-(void)setCanOpenAppSheet:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canOpenAppSheet = arg2;
    return;
}

-(void *)appSheetCache {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appSheetCache)), 0x1);
    return r0;
}

-(void)setPrepareTimeoutInSeconds:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_prepareTimeoutInSeconds = arg2;
    return;
}

-(void *)appSheetLoading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appSheetLoading)), 0x1);
    return r0;
}

-(void)setAppSheetCache:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setAppSheetLoading:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)presentingParameters {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_presentingParameters)), 0x1);
    return r0;
}

-(void)setPresentingParameters:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)presentingAnimated {
    r0 = *(int8_t *)(int64_t *)&self->_presentingAnimated;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presentingParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_appSheetLoading, 0x0);
    objc_storeStrong((int64_t *)&self->_appSheetCache, 0x0);
    return;
}

-(void)setPresentingAnimated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_presentingAnimated = arg2;
    return;
}

@end