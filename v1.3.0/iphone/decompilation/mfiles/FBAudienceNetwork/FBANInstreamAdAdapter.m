@implementation FBANInstreamAdAdapter

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithDelegate:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [FBVideoAdController alloc];
            r21 = [FBInstreamAdContentView new];
            r0 = [r20 initWithContentView:r21];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoAdController));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [r21 release];
            [*(r19 + r20) setDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void *)adView {
    r0 = [self videoAdController];
    r0 = [r0 retain];
    r20 = [[r0 contentView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadAdData:(void *)arg2 placementDefinition:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[FBInstreamAdDataModel alloc] initWithMetadata:r21];
    [r21 release];
    [self setDataModel:r22];
    [r22 release];
    r21 = [[self videoAdController] retain];
    r20 = [[self dataModel] retain];
    [r21 loadAdFromDataModel:r20 placementDefinition:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)setAdView:(void *)arg2 {
    return;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
    r23 = [arg2 retain];
    r20 = [r4 retain];
    r19 = [r5 retain];
    r22 = [arg8 retain];
    r24 = [r20 copy];
    [r20 release];
    [self setPlacementID:r24];
    [r24 release];
    [self setExtraHint:r22];
    [r22 release];
    [self loadAdData:r23 placementDefinition:r19];
    [r19 release];
    [r23 release];
    return;
}

-(void *)adDataModel {
    r0 = [self dataModel];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r0 = [self startAdFromRootViewController:arg2 animated:0x0];
    return r0;
}

-(bool)isAdValid {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoAdController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 videoAdController];
            r0 = [r0 retain];
            r20 = [r0 isValid];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)controllerDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:self];
    [r0 release];
    return;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    r22 = [arg2 retain];
    r0 = [self videoAdController];
    r0 = [r0 retain];
    r19 = [r0 showAdFromRootViewController:r22];
    [r22 release];
    [r0 release];
    r0 = [self videoAdController];
    r0 = [r0 retain];
    r25 = [[r0 contentView] retain];
    r26 = [[self placementID] retain];
    [FBAdDebugOverlay addToSuperview:r25 withPlacementID:r26];
    [r26 release];
    [r25 release];
    [r0 release];
    r23 = [FBAdMediationOverlay alloc];
    r0 = [self extraHint];
    r0 = [r0 retain];
    r25 = [[r0 mediationData] retain];
    r23 = [r23 initWithString:r25];
    [r25 release];
    [r0 release];
    r0 = [self videoAdController];
    r0 = [r0 retain];
    r21 = [[r0 contentView] retain];
    [r0 release];
    [r23 attachToView:r21];
    [r21 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void)controller:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)controllerWillRegisterViewableImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillLogImpression:self];
    [r0 release];
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self dataModel];
    r0 = [r0 retain];
    r21 = [[r0 inlineClientToken] retain];
    [r20 logImpressionForToken:r21 withExtraData:0x0];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)controllerDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidClick:self url:0x0 playerHandles:0x0];
    [r0 release];
    return;
}

-(void)controllerDidUnload:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillUnload:self];
    [r0 adapterDidUnload:self];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAdController, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    return;
}

-(bool)controllerStarted {
    r0 = *(int8_t *)(int64_t *)&self->_controllerStarted;
    return r0;
}

-(void)setControllerStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_controllerStarted = arg2;
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)videoAdController {
    r0 = self->_videoAdController;
    return r0;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

@end