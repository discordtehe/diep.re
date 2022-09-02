@implementation VungleDownloadOperation

-(void *)initWithURL:(void *)arg2 fileURL:(void *)arg3 session:(void *)arg4 placementID:(void *)arg5 taskSetupCompletionBlock:(void *)arg6 taskCompletionBlock:(void *)arg7 {
    r31 = r31 - 0x70;
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
    r19 = arg5;
    r21 = arg3;
    r26 = [arg2 retain];
    r20 = [r21 retain];
    r27 = [arg4 retain];
    r22 = [r19 retain];
    r24 = [arg6 retain];
    r0 = [[&var_60 super] initWithURL:r26 requestType:0x0 parameters:0x0 session:r27 taskSetupCompletionBlock:r24 taskCompletionBlock:arg7];
    r23 = r0;
    [r24 release];
    [r27 release];
    [r26 release];
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_localFileURL, r21);
            objc_storeStrong((int64_t *)&r23->_placementID, r19);
    }
    [r22 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void *)localFileURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localFileURL)), 0x0);
    return r0;
}

-(void *)taskWithRequest:(void *)arg2 session:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isURLSessionValid];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [[r20 downloadTaskWithRequest:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_localFileURL, 0x0);
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

@end