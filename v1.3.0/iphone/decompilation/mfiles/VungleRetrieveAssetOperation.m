@implementation VungleRetrieveAssetOperation

-(void *)initWithVungleMRAIDAsset:(void *)arg2 {
    r0 = [self initWithVungleMRAIDAsset:arg2 placementID:@"" completion:0x0];
    return r0;
}

-(void *)initWithVungleMRAIDAsset:(void *)arg2 placementID:(void *)arg3 completion:(void *)arg4 {
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
    r23 = arg2;
    r28 = self;
    r19 = [arg2 retain];
    var_C0 = arg3;
    r22 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [r19 URL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isFileURL];
    [r0 release];
    var_B8 = r26;
    if (r21 != 0x0) {
            r20 = [r19 verifyLocalAssetWithError:r29 - 0x58];
            r27 = [0x0 retain];
            r26 = 0x0;
    }
    else {
            objc_initWeak(r29 - 0x60, r28);
            objc_copyWeak(&var_90 + 0x28, r29 - 0x60);
            var_70 = [r26 retain];
            r0 = [VungleRetrieveAssetOperation loadRemoteAsset:r19 placementID:r22 completionBlock:&var_90];
            r29 = r29;
            r26 = [r0 retain];
            [var_70 release];
            objc_destroyWeak(&var_90 + 0x28);
            objc_destroyWeak(r29 - 0x60);
            r27 = 0x0;
            r20 = 0x0;
    }
    r0 = [[&var_A0 super] init];
    r28 = r0;
    if (r0 != 0x0) {
            var_C8 = r22;
            r0 = [r19 URL];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_assetURL));
            r8 = *(r28 + r9);
            *(r28 + r9) = r0;
            [r8 release];
            [r22 release];
            objc_storeStrong((int64_t *)&r28->_asset, r23);
            r0 = [r19 URL];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r28->_isLocalAsset = [r0 isFileURL];
            [r0 release];
            *(int8_t *)(int64_t *)&r28->_didVerifyLocalAsset = r20;
            objc_storeStrong((int64_t *)&r28->_assetVerificationError, r27);
            objc_storeStrong((int64_t *)&r28->_downloadOperation, r26);
            objc_storeStrong((int64_t *)&r28->_placementID, var_C0);
            r0 = r28->_assetVerificationError;
            if (r0 != 0x0) {
                    r20 = [r0 copy];
                    [[&var_B0 super] aggregateError:r20];
                    [r20 release];
            }
            r22 = var_C8;
    }
    [r27 release];
    [r26 release];
    [var_B8 release];
    [r22 release];
    [r19 release];
    r0 = r28;
    return r0;
}

-(void)execute {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_40 super] execute];
    if (*(int8_t *)(int64_t *)&r19->_isLocalAsset == 0x0) goto loc_100642d08;

loc_100642c74:
    r20 = [NSMutableSet new];
    r0 = r19->_assetVerificationError;
    if (r0 != 0x0) {
            [r0 copy];
            [r20 addObject:r2];
            [r22 release];
    }
    r21 = @selector(copy);
    r21 = objc_msgSend(r20, r21);
    [[&var_50 super] finishWithErrors:r21];
    [r21 release];
    r0 = r20;
    goto loc_100642d88;

loc_100642d88:
    [r0 release];
    return;

loc_100642d08:
    r0 = [r19 downloadOperation];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100642da4;

loc_100642d30:
    r21 = [[VNGNetworkManager sharedManager] retain];
    r19 = [[r19 downloadOperation] retain];
    [r21 sendVungleOperation:r19];
    [r19 release];
    r0 = r21;
    goto loc_100642d88;

loc_100642da4:
    [[&var_60 super] finish];
    return;
}

+(void *)loadRemoteAsset:(void *)arg2 placementID:(void *)arg3 completionBlock:(void *)arg4 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r19 = [[VNGNetworkManager sharedManager] retain];
    r23 = [[r20 URL] retain];
    r25 = [[r20 expectedLocalCacheURL] retain];
    r0 = [r20 retain];
    r20 = r0;
    var_50 = r0;
    r0 = [r22 retain];
    r22 = r0;
    var_48 = r0;
    r0 = [r19 vungleDownloadOperationWithRemoteURL:r23 localFileURL:r25 placementID:r21 error:&var_78 responseBlock:&var_70];
    r24 = [r0 retain];
    [r21 release];
    r21 = [var_78 retain];
    [r25 release];
    [r23 release];
    r23 = 0x0;
    if (r24 != 0x0) {
            r23 = 0x0;
            if (r21 == 0x0) {
                    [r24 setMaxAttempts:0x5];
                    r23 = [r24 retain];
            }
    }
    [r24 release];
    [var_48 release];
    [var_50 release];
    [r21 release];
    [r19 release];
    [r22 release];
    [r20 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)asset {
    r0 = self->_asset;
    return r0;
}

-(void)setAsset:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_asset, arg2);
    return;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_campaignName));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_assetURL));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_asset));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    var_28 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&r19->_isLocalAsset] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithBool:*(int8_t *)(int64_t *)&r19->_didVerifyLocalAsset];
    r0 = [r0 retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_80 count:0x5] retain];
    [r0 release];
    [r21 release];
    [r19 class];
    r19 = [[NSString stringWithFormat:@"<%@: 0x%lx %@> "] retain];
    [r22 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)downloadOperation {
    r0 = self->_downloadOperation;
    return r0;
}

-(void)setDownloadOperation:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_downloadOperation, arg2);
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

-(void *)campaignName {
    r0 = self->_campaignName;
    return r0;
}

-(void)setCampaignName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_campaignName, arg2);
    return;
}

-(void *)assetURL {
    r0 = self->_assetURL;
    return r0;
}

-(void)setAssetURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_assetURL, arg2);
    return;
}

-(bool)isLocalAsset {
    r0 = *(int8_t *)(int64_t *)&self->_isLocalAsset;
    return r0;
}

-(void)setIsLocalAsset:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLocalAsset = arg2;
    return;
}

-(bool)didVerifyLocalAsset {
    r0 = *(int8_t *)(int64_t *)&self->_didVerifyLocalAsset;
    return r0;
}

-(void)setDidVerifyLocalAsset:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didVerifyLocalAsset = arg2;
    return;
}

-(void *)assetVerificationError {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_assetVerificationError)), 0x0);
    return r0;
}

-(void)setAssetVerificationError:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_assetVerificationError, 0x0);
    objc_storeStrong((int64_t *)&self->_assetURL, 0x0);
    objc_storeStrong((int64_t *)&self->_campaignName, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadOperation, 0x0);
    objc_storeStrong((int64_t *)&self->_asset, 0x0);
    return;
}

@end