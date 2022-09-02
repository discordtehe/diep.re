@implementation APMDailyCounts

-(void *)initWithDay:(int)arg2 conversionsCount:(int)arg3 allEventsCount:(int)arg4 publicEventsCount:(int)arg5 errorEventsCount:(int)arg6 realtimeCount:(int)arg7 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg7;
    r20 = arg6;
    r21 = arg5;
    r22 = arg4;
    r23 = arg3;
    r24 = arg2;
    r0 = [[&var_40 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_day = r24;
            *(int32_t *)(int64_t *)&r0->_conversionsCount = r23;
            *(int32_t *)(int64_t *)&r0->_allEventsCount = r22;
            *(int32_t *)(int64_t *)&r0->_publicEventsCount = r21;
            *(int32_t *)(int64_t *)&r0->_errorEventsCount = r20;
            *(int32_t *)(int64_t *)&r0->_realtimeCount = r19;
    }
    return r0;
}

-(void)incrementCountsForCurrentDay:(int)arg2 isPublicEvent:(bool)arg3 isConversion:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_day));
    if (*(int32_t *)(r0 + r8) == r2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_conversionsCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + r4;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_allEventsCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + 0x1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_publicEventsCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + r3;
    }
    else {
            *(int32_t *)(r0 + r8) = r2;
            *(int32_t *)(int64_t *)&r0->_conversionsCount = r4;
            *(int32_t *)(int64_t *)&r0->_allEventsCount = 0x1;
            *(int32_t *)(int64_t *)&r0->_publicEventsCount = r3;
            *(int32_t *)(int64_t *)&r0->_errorEventsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_realtimeCount = 0x0;
    }
    return;
}

-(void)incrementErrorEventsCountForCurrentDay:(int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_day));
    if (*(int32_t *)(r0 + r8) == r2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_allEventsCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + 0x1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_errorEventsCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + 0x1;
    }
    else {
            *(int32_t *)(r0 + r8) = r2;
            *(int32_t *)(int64_t *)&r0->_conversionsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_allEventsCount = 0x1;
            *(int32_t *)(int64_t *)&r0->_publicEventsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_errorEventsCount = 0x1;
            *(int32_t *)(int64_t *)&r0->_realtimeCount = 0x0;
    }
    return;
}

-(void)incrementRealtimeCountsForCurrentDay:(int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_day));
    if (*(int32_t *)(r0 + r8) == r2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_realtimeCount));
            *(int32_t *)(r0 + r8) = *(int32_t *)(r0 + r8) + 0x1;
    }
    else {
            *(int32_t *)(r0 + r8) = r2;
            *(int32_t *)(int64_t *)&r0->_realtimeCount = 0x1;
            *(int32_t *)(int64_t *)&r0->_conversionsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_allEventsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_publicEventsCount = 0x0;
            *(int32_t *)(int64_t *)&r0->_errorEventsCount = 0x0;
    }
    return;
}

-(void)decrementAllEventsCount {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_allEventsCount));
    r9 = *(int32_t *)(self + r8);
    *(int32_t *)(self + r8) = r9 - 0x1 & !((r9 - 0x1) / 0xffffffff80000000);
    return;
}

-(void)resetWithNewDay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_day = arg2;
    *(int32_t *)(int64_t *)&self->_conversionsCount = 0x0;
    *(int32_t *)(int64_t *)&self->_allEventsCount = 0x0;
    *(int32_t *)(int64_t *)&self->_publicEventsCount = 0x0;
    *(int32_t *)(int64_t *)&self->_errorEventsCount = 0x0;
    *(int32_t *)(int64_t *)&self->_realtimeCount = 0x0;
    return;
}

-(int)day {
    r0 = *(int32_t *)(int64_t *)&self->_day;
    return r0;
}

-(int)conversionsCount {
    r0 = *(int32_t *)(int64_t *)&self->_conversionsCount;
    return r0;
}

-(int)allEventsCount {
    r0 = *(int32_t *)(int64_t *)&self->_allEventsCount;
    return r0;
}

-(int)publicEventsCount {
    r0 = *(int32_t *)(int64_t *)&self->_publicEventsCount;
    return r0;
}

-(int)errorEventsCount {
    r0 = *(int32_t *)(int64_t *)&self->_errorEventsCount;
    return r0;
}

-(int)realtimeCount {
    r0 = *(int32_t *)(int64_t *)&self->_realtimeCount;
    return r0;
}

@end