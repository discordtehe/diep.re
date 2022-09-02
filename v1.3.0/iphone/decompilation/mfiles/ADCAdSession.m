@implementation ADCAdSession

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
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_boundObjects));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_active = 0x0;
            *(int8_t *)(int64_t *)&r19->_shouldPollViewability = 0x0;
            r0 = [NSDate date];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastViewabilityUpdate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_isAudioPlaying = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)adID {
    objc_retainAutorelease(@"");
    return @"";
}

-(void)pollViewability {
    return;
}

-(void *)creativeID {
    return 0x0;
}

-(bool)bindObject:(void *)arg2 withIdentifier:(unsigned long long)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_boundObjects));
            r23 = *(r21 + r25);
            r24 = [[NSNumber numberWithUnsignedInteger:r20] retain];
            r0 = [r23 objectForKeyedSubscript:r24];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r21 = *(r21 + r25);
                    r20 = [[NSNumber numberWithUnsignedInteger:r20] retain];
                    [r21 setObject:r19 forKeyedSubscript:r20];
                    [r20 release];
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)unbindObjectWithIdentifier:(unsigned long long)arg2 {
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
    r19 = arg2;
    r20 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_boundObjects));
    r22 = *(r20 + r24);
    r23 = [[NSNumber numberWithUnsignedInteger:r2] retain];
    r0 = [r22 objectForKeyedSubscript:r23];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r20 = *(r20 + r24);
            [[NSNumber numberWithUnsignedInteger:r19] retain];
            [r20 removeObjectForKey:r2];
            [r19 release];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)objectForIdentifier:(unsigned long long)arg2 {
    r19 = self->_boundObjects;
    r20 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r19 = [[r19 objectForKeyedSubscript:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCAdSession dealloc]" line:0x42 withFormat:@"dealloc called on ADCAdSession"];
    [[&var_20 super] dealloc];
    return;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void)setIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_identifier, arg2);
    return;
}

-(void)setZoneID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneID, arg2);
    return;
}

-(void *)zoneID {
    r0 = self->_zoneID;
    return r0;
}

-(unsigned long long)requestType {
    r0 = self->_requestType;
    return r0;
}

-(void)setRequestType:(unsigned long long)arg2 {
    self->_requestType = arg2;
    return;
}

-(void *)appViewController {
    r0 = self->_appViewController;
    return r0;
}

-(void)setAppViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appViewController, arg2);
    return;
}

-(void *)fullscreenModule {
    r0 = self->_fullscreenModule;
    return r0;
}

-(void)setFullscreenModule:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fullscreenModule, arg2);
    return;
}

-(void *)nativeModule {
    r0 = self->_nativeModule;
    return r0;
}

-(void)setNativeModule:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeModule, arg2);
    return;
}

-(void *)fullscreenContainer {
    r0 = self->_fullscreenContainer;
    return r0;
}

-(void)setFullscreenContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fullscreenContainer, arg2);
    return;
}

-(void)setCustomizableContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customizableContainer, arg2);
    return;
}

-(void *)customizableContainer {
    r0 = self->_customizableContainer;
    return r0;
}

-(unsigned long long)status {
    r0 = self->_status;
    return r0;
}

-(void)setStatus:(unsigned long long)arg2 {
    self->_status = arg2;
    return;
}

-(void *)options {
    r0 = self->_options;
    return r0;
}

-(void)setOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_options, arg2);
    return;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_active = arg2;
    return;
}

-(void)setViewabilityMonitor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityMonitor, arg2);
    return;
}

-(void *)viewabilityMonitor {
    r0 = self->_viewabilityMonitor;
    return r0;
}

-(void)setShouldPollViewability:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldPollViewability = arg2;
    return;
}

-(bool)shouldPollViewability {
    r0 = *(int8_t *)(int64_t *)&self->_shouldPollViewability;
    return r0;
}

-(void *)lastViewabilityUpdate {
    r0 = self->_lastViewabilityUpdate;
    return r0;
}

-(void)setLastViewabilityUpdate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastViewabilityUpdate, arg2);
    return;
}

-(void)setIsAudioPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAudioPlaying = arg2;
    return;
}

-(bool)isAudioPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_isAudioPlaying;
    return r0;
}

-(bool)alteredStatusBarVisibility {
    r0 = *(int8_t *)(int64_t *)&self->_alteredStatusBarVisibility & 0x1;
    return r0;
}

-(void)setAlteredStatusBarVisibility:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_alteredStatusBarVisibility = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastViewabilityUpdate, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_customizableContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_fullscreenContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeModule, 0x0);
    objc_storeStrong((int64_t *)&self->_fullscreenModule, 0x0);
    objc_storeStrong((int64_t *)&self->_appViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneID, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_boundObjects, 0x0);
    return;
}

@end