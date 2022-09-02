@implementation AdColony_InternalAvidAdSessionContext

+(void *)contextWithId:(void *)arg2 avidSessionType:(void *)arg3 mediaType:(void *)arg4 context:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [AdColony_InternalAvidAdSessionContext new];
    [r0 setAvidAdSessionId:r22];
    [r22 release];
    [r0 setAvidAdSessionContext:r19];
    [r19 release];
    [r0 setAvidSessionType:r21];
    [r21 release];
    [r0 setMediaType:r20];
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAvidAdSessionId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)avidAdSessionId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessionId)), 0x0);
    return r0;
}

-(void *)fullContext {
    var_58 = **___stack_chk_guard;
    var_E0 = [[self avidAdSessionId] retain];
    r0 = @class(AdColony_AvidContext);
    r0 = [r0 sharedContext];
    r0 = [r0 retain];
    var_E8 = r0;
    var_F0 = [[r0 bundleId] retain];
    r0 = @class(AdColony_AvidContext);
    r0 = [r0 sharedContext];
    r0 = [r0 retain];
    var_F8 = r0;
    r23 = [[r0 partnerName] retain];
    r0 = [self avidAdSessionContext];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 partnerVersion] retain];
    r0 = @class(AdColony_AvidContext);
    r0 = [r0 sharedContext];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 avidVersion] retain];
    r20 = [[self avidSessionType] retain];
    r21 = [[self mediaType] retain];
    r0 = [self avidAdSessionContext];
    r0 = [r0 retain];
    r24 = r0;
    r22 = [[NSNumber numberWithBool:[r0 isDeferred]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_D8 count:0x8];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [var_F8 release];
    [var_F0 release];
    [var_E8 release];
    [var_E0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)avidAdSessionContext {
    r0 = self->_avidAdSessionContext;
    return r0;
}

-(void)setAvidAdSessionContext:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessionContext));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)avidSessionType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_avidSessionType)), 0x0);
    return r0;
}

-(void)setAvidSessionType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mediaType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaType)), 0x0);
    return r0;
}

-(void)setMediaType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediaType, 0x0);
    objc_storeStrong((int64_t *)&self->_avidSessionType, 0x0);
    objc_storeStrong((int64_t *)&self->_avidAdSessionContext, 0x0);
    objc_storeStrong((int64_t *)&self->_avidAdSessionId, 0x0);
    return;
}

@end