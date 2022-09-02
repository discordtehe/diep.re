@implementation TableScrollAction

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_table))) setViewPositionByGridOffset:r2];
    return;
}

-(void)stop {
    [[&var_20 super] stop];
    r0 = self->_table;
    [r0 setViewPositionByGridOffset:r2];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [self->_table getCurrentGridOffset];
    *(int32_t *)(int64_t *)&self->_originalOffset = s0;
    return;
}

+(void *)actionWithDuration:(double)arg2 table:(void *)arg3 numNodesToScroll:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 table:arg3 numNodesToScroll:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 table:(void *)arg3 numNodesToScroll:(float)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_table = [r19 retain];
            *(int32_t *)(int64_t *)&r20->_numNodesToScroll = s8;
    }
    r0 = r20;
    return r0;
}

-(void *)table {
    r0 = self->_table;
    return r0;
}

-(void)setTable:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(float)numNodesToScroll {
    r0 = self;
    return r0;
}

-(void)setNumNodesToScroll:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_numNodesToScroll = s0;
    return;
}

@end