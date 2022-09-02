@implementation VunglePrepareThirdPartyMRAIDAdOperation

-(void *)initWithVungleMRAIDAd:(void *)arg2 completionHandler:(void *)arg3 {
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
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_thirdPartyAd, r19);
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileManager));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)finishOperationWithInvalidAd:(void *)arg2 error:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [[NSSet setWithObjects:arg3] retain];
    [arg2 setState:0x2];
    [r22 release];
    r0 = self->_completionHandler;
    (*(r0 + 0x10))(r0, 0x0, r19);
    [self finishWithErrors:r19];
    [r19 release];
    return;
}

-(void)execute {
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
    r19 = self;
    r20 = (int64_t *)&self->_thirdPartyAd;
    r0 = objc_loadWeakRetained(r20);
    [r0 setState:0x3];
    [r0 release];
    r0 = objc_loadWeakRetained(r20);
    r22 = r0;
    r23 = [[r0 campaign] retain];
    r24 = [[r19 expectedLocalIndexURLWithCampaignID:r23] retain];
    r0 = objc_loadWeakRetained(r20);
    [r0 setExpectedLocalTemplateURL:r24];
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    r23 = objc_loadWeakRetained(r20);
    r0 = [r19 decodeHTMLWithAd:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r24 = objc_loadWeakRetained(r20);
            r23 = [[r19 createCampaignDirectoryWithAd:r24] retain];
            [r24 release];
            if (r23 != 0x0) {
                    r24 = objc_loadWeakRetained(r20);
                    r25 = [r19 writeIndexHTMLFileWithBaseURL:r23 markup:r22 ad:r24];
                    [r24 release];
                    if (r25 != 0x0) {
                            r0 = objc_loadWeakRetained(r20);
                            [r0 setState:0x4];
                            [r0 release];
                            r21 = r19->_completionHandler;
                            (*(r21 + 0x10))(r21, objc_loadWeakRetained(r20), 0x0);
                            [r20 release];
                            [r19 finishWithErrors:0x0];
                    }
            }
            [r23 release];
    }
    [r22 release];
    return;
}

-(void *)expectedLocalIndexURLWithCampaignID:(void *)arg2 {
    r19 = self->_fileManager;
    r21 = [arg2 retain];
    r0 = [r19 URLsForDirectory:0xd inDomains:0x1];
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndexedSubscript:0x0] retain];
    [r0 release];
    r22 = [[r20 URLByAppendingPathComponent:r21] retain];
    [r21 release];
    [r20 release];
    r19 = [[r22 URLByAppendingPathComponent:@"index.html"] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)decodeHTMLWithAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = (int64_t *)&self->_thirdPartyAd;
    r0 = objc_loadWeakRetained(r21);
    r22 = r0;
    r0 = [r0 decodedMRAIDContent];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 == 0x0) {
            r22 = [[VunglePrepareThirdPartyMRAIDAdOperation invalidBase64Error] retain];
            r21 = objc_loadWeakRetained(r21);
            [r19 finishOperationWithInvalidAd:r21 error:r22];
            [r21 release];
            [r22 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)createCampaignDirectoryWithAd:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [r0 expectedLocalTemplateURL];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 URLByDeletingLastPathComponent];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r23 = [r20->_fileManager createDirectoryAtURL:r21 withIntermediateDirectories:0x1 attributes:0x0 error:&var_38];
    r22 = [var_38 retain];
    if ((r23 & 0x1) != 0x0) {
            r20 = [r21 retain];
    }
    else {
            r24 = [[r22 userInfo] retain];
            r23 = [[VunglePrepareThirdPartyMRAIDAdOperation campaignDirectoryCreationErrorWithUserInfo:r24] retain];
            [r24 release];
            [r20 finishOperationWithInvalidAd:r19 error:r23];
            [r23 release];
            r20 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)writeIndexHTMLFileWithBaseURL:(void *)arg2 markup:(void *)arg3 ad:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [arg2 URLByAppendingPathComponent:@"index.html"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    r22 = 0x1;
    r24 = [arg3 writeToURL:r20 atomically:0x1 encoding:0x4 error:&var_38];
    [r23 release];
    r21 = [var_38 retain];
    if ((r24 & 0x1) == 0x0) {
            r23 = [[r21 userInfo] retain];
            r22 = [[VunglePrepareThirdPartyMRAIDAdOperation localIndexCreationErrorWithUserInfo:r23] retain];
            [r23 release];
            r23 = objc_loadWeakRetained((int64_t *)&r19->_thirdPartyAd);
            [r19 finishOperationWithInvalidAd:r23 error:r22];
            [r23 release];
            [r22 release];
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    r0 = r22;
    return r0;
}

+(void *)invalidBase64Error {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r19 = objc_alloc();
    r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
    r20 = [r0 retain];
    r19 = [r19 initWithDomain:@"com.vungle.prepareThirdPartyMRAIDAd" code:0xffffffffffff15a0 userInfo:r20];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)campaignDirectoryCreationErrorWithUserInfo:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = objc_alloc();
    r19 = [arg2 copy];
    [r21 release];
    r20 = [r20 initWithDomain:@"com.vungle.prepareThirdPartyMRAIDAd" code:0xffffffffffff15a1 userInfo:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)localIndexCreationErrorWithUserInfo:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = objc_alloc();
    r19 = [arg2 copy];
    [r21 release];
    r20 = [r20 initWithDomain:@"com.vungle.prepareThirdPartyMRAIDAd" code:0xffffffffffff15a2 userInfo:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void)setFileManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fileManager, arg2);
    return;
}

-(void *)thirdPartyAd {
    r0 = objc_loadWeakRetained((int64_t *)&self->_thirdPartyAd);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setThirdPartyAd:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_thirdPartyAd, arg2);
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_thirdPartyAd);
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    return;
}

@end