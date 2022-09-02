@implementation GADWebViewConfiguration

-(void *)init {
    r0 = [self initWithConfiguration:0x0];
    return r0;
}

-(unsigned long long)dataDetectorType {
    r0 = self->_dataDetectorType;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 init];
    [r0 setDataDetectorType:self->_dataDetectorType];
    [r0 setMediaPlaybackRequiresUserAction:*(int8_t *)(int64_t *)&self->_mediaPlaybackRequiresUserAction];
    [r0 setWebViewClassKey:self->_webViewClassKey];
    [r0 setMRAIDURLString:self->_MRAIDURLString];
    [r0 setCollectDynamicContentSize:*(int8_t *)(int64_t *)&self->_collectDynamicContentSize];
    [r0 setScrollEnabled:*(int8_t *)(int64_t *)&self->_scrollEnabled];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_GMSGScriptHandlerEnabled));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadOnIframeScriptEnabled));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_networkNotificationsEnabled));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_scalesPageToFit));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_augmentedRealityEnabled));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r0 = r0;
    return r0;
}

-(void)setDataDetectorType:(unsigned long long)arg2 {
    self->_dataDetectorType = arg2;
    return;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[GADSettings sharedInstance] retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_mediaPlaybackRequiresUserAction = [r0 boolValue];
                    [r0 release];
            }
            else {
                    *(int8_t *)(int64_t *)&r20->_mediaPlaybackRequiresUserAction = [r21 boolForKey:*0x100e9b490];
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
            }
            else {
                    r0 = [r21 stringForKey:*0x100e9b498];
                    r29 = r29;
            }
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_webViewClassKey));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_loadOnIframeScriptEnabled = [r0 boolValue];
                    [r0 release];
            }
            else {
                    *(int8_t *)(int64_t *)&r20->_loadOnIframeScriptEnabled = [r21 boolForKey:*0x100e9b4f8];
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_resizeScriptEnabled = [r0 boolValue];
                    [r0 release];
            }
            else {
                    *(int8_t *)(int64_t *)&r20->_resizeScriptEnabled = [r21 boolForKey:*0x100e9b518];
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_augmentedRealityEnabled = [r0 boolValue];
                    [r0 release];
            }
            else {
                    *(int8_t *)(int64_t *)&r20->_augmentedRealityEnabled = [r21 boolForKey:*0x100e9b508];
            }
            if (sub_100818968(0x9, 0x0, 0x0) != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            *(int8_t *)(int64_t *)&r20->_GMSGScriptHandlerEnabled = [r0 boolValue];
                            [r0 release];
                    }
                    else {
                            *(int8_t *)(int64_t *)&r20->_GMSGScriptHandlerEnabled = [r21 boolForKey:*0x100e9b500];
                    }
            }
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)mediaPlaybackRequiresUserAction {
    r0 = *(int8_t *)(int64_t *)&self->_mediaPlaybackRequiresUserAction;
    return r0;
}

-(void)setMediaPlaybackRequiresUserAction:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_mediaPlaybackRequiresUserAction = arg2;
    return;
}

-(void *)webViewClassKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_webViewClassKey)), 0x0);
    return r0;
}

-(void)setWebViewClassKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)GMSGScriptHandlerEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_GMSGScriptHandlerEnabled;
    return r0;
}

-(void *)MRAIDURLString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_MRAIDURLString)), 0x0);
    return r0;
}

-(void)setMRAIDURLString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)collectDynamicContentSize {
    r0 = *(int8_t *)(int64_t *)&self->_collectDynamicContentSize;
    return r0;
}

-(void)setCollectDynamicContentSize:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_collectDynamicContentSize = arg2;
    return;
}

-(bool)scrollEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_scrollEnabled;
    return r0;
}

-(void)setScrollEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_scrollEnabled = arg2;
    return;
}

-(bool)resizeScriptEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_resizeScriptEnabled;
    return r0;
}

-(bool)loadOnIframeScriptEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_loadOnIframeScriptEnabled;
    return r0;
}

-(bool)networkNotificationsEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_networkNotificationsEnabled;
    return r0;
}

-(void)setNetworkNotificationsEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_networkNotificationsEnabled = arg2;
    return;
}

-(bool)scalesPageToFit {
    r0 = *(int8_t *)(int64_t *)&self->_scalesPageToFit;
    return r0;
}

-(void)setScalesPageToFit:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_scalesPageToFit = arg2;
    return;
}

-(bool)augmentedRealityEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_augmentedRealityEnabled;
    return r0;
}

-(void)setAugmentedRealityEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_augmentedRealityEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_MRAIDURLString, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewClassKey, 0x0);
    return;
}

@end