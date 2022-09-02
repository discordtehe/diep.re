@implementation APMFilterResult

-(void *)initWithAudienceID:(int)arg2 currentResults:(void *)arg3 previousResults:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            *(int32_t *)(int64_t *)&r21->_audienceID = r22;
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentResults));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_previousResults));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(int)audienceID {
    r0 = *(int32_t *)(int64_t *)&self->_audienceID;
    return r0;
}

-(void *)currentResults {
    r0 = self->_currentResults;
    return r0;
}

-(void *)previousResults {
    r0 = self->_previousResults;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_previousResults, 0x0);
    objc_storeStrong((int64_t *)&self->_currentResults, 0x0);
    return;
}

@end