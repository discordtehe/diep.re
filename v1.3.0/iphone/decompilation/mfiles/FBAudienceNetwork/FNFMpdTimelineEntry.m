@implementation FNFMpdTimelineEntry

-(void *)initWithTime:(unsigned int)arg2 duration:(unsigned int)arg3 mediaUrl:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r23 = arg2;
    r20 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r22->_time = r23;
            *(int32_t *)(int64_t *)&r22->_duration = r21;
            *(int32_t *)(int64_t *)&r22->_repetition = 0x0;
            objc_storeStrong((int64_t *)&r22->_mediaUrl, r19);
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)initWithTime:(unsigned int)arg2 duration:(unsigned int)arg3 mediaTemplate:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r22 = arg3;
    r23 = arg2;
    r19 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r21->_time = r23;
            *(int32_t *)(int64_t *)&r21->_duration = r22;
            *(int32_t *)(int64_t *)&r21->_repetition = 0x0;
            objc_storeStrong((int64_t *)&r21->_mediaTemplate, r20);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaUrl));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithTime:(unsigned int)arg2 duration:(unsigned int)arg3 repetition:(unsigned int)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r21->_time = r22;
            *(int32_t *)(int64_t *)&r21->_duration = r20;
            *(int32_t *)(int64_t *)&r21->_repetition = r19;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaUrl));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
    }
    r0 = r21;
    return r0;
}

-(void *)mediaUrl {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_mediaUrl));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r20 = [[NSString stringWithFormat:r2] retain];
            r21 = [[r19->_mediaTemplate stringByReplacingOccurrencesOfString:@"$Time$" withString:r20] retain];
            r0 = [NSURL URLWithString:r21];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r19 = [*(r19 + r22) retain];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned int)time {
    r0 = *(int32_t *)(int64_t *)&self->_time;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediaTemplate, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaUrl, 0x0);
    return;
}

-(unsigned int)duration {
    r0 = *(int32_t *)(int64_t *)&self->_duration;
    return r0;
}

-(unsigned int)repetition {
    r0 = *(int32_t *)(int64_t *)&self->_repetition;
    return r0;
}

-(void *)mediaTemplate {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaTemplate)), 0x0);
    return r0;
}

@end