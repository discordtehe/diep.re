@implementation GADNativeAdSettings

+(void *)sharedInstance {
    if (*qword_1011db8a8 != -0x1) {
            dispatch_once(0x1011db8a8, 0x100e93a40);
    }
    r0 = *0x1011db8b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdSettings));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.native-ad-settings", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)mediaViewUnavailableToRenderMediaContentForAdType:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)nativeAdSettings {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdSettings, 0x0);
    return;
}

@end