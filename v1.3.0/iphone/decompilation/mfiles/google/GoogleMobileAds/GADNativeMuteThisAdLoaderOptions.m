@implementation GADNativeMuteThisAdLoaderOptions

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_customMuteThisAdRequested));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_customMuteThisAdRequested = 0x1;
    }
    return r0;
}

-(bool)customMuteThisAdRequested {
    r0 = *(int8_t *)(int64_t *)&self->_customMuteThisAdRequested;
    return r0;
}

-(void *)requestParameters {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [[NSMutableDictionary alloc] init];
    if (*(int8_t *)(int64_t *)&self->_customMuteThisAdRequested != 0x0) {
            sub_100822058(r19, *0x100e95ec8, [[NSNumber numberWithBool:r2] retain]);
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setCustomMuteThisAdRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_customMuteThisAdRequested = arg2;
    return;
}

@end