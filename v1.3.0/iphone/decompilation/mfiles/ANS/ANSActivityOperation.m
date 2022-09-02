@implementation ANSActivityOperation

-(void)startActivityWithName:(void *)arg2 options:(unsigned long long)arg3 {
    r0 = [ANSActivity beginActivity:arg2 withOptions:arg3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_activity));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

+(void *)operationByStartingActivityName:(void *)arg2 options:(unsigned long long)arg3 {
    r22 = [arg2 retain];
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 startActivityWithName:r22 options:arg3];
    [r22 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)main {
    r0 = [self activity];
    r0 = [r0 retain];
    [r0 end];
    [r19 release];
    return;
}

-(void *)activity {
    r0 = self->_activity;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_activity, 0x0);
    return;
}

@end