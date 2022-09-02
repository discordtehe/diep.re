@implementation GADVideoOptions

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_startMuted = 0x1;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startMuted));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_customControlsRequested));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clickToExpandRequested));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [self init];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"startMuted"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r21 boolValue];
            }
            else {
                    r0 = 0x1;
            }
            *(int8_t *)(int64_t *)&r20->_startMuted = r0;
            r0 = [r19 objectForKeyedSubscript:@"customControlsRequested"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_customControlsRequested = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"clickToExpandRequested"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_clickToExpandRequested = [r0 boolValue];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)requestParameters {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->_startMuted] retain];
    r20 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->_customControlsRequested] retain];
    r22 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->_clickToExpandRequested] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)startMuted {
    r0 = *(int8_t *)(int64_t *)&self->_startMuted;
    return r0;
}

-(void)setStartMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_startMuted = arg2;
    return;
}

-(bool)customControlsRequested {
    r0 = *(int8_t *)(int64_t *)&self->_customControlsRequested;
    return r0;
}

-(void)setCustomControlsRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_customControlsRequested = arg2;
    return;
}

-(bool)clickToExpandRequested {
    r0 = *(int8_t *)(int64_t *)&self->_clickToExpandRequested;
    return r0;
}

-(void)setClickToExpandRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_clickToExpandRequested = arg2;
    return;
}

@end