@implementation AdColony_AvidEvent

-(void *)initWithName:(void *)arg2 type:(void *)arg3 data:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setName:r19];
            [r22 setType:r20];
            [r22 setData:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void *)eventWithName:(void *)arg2 type:(void *)arg3 data:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [[self alloc] initWithName:r22 type:r20 data:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void)setName:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_name));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(void)setData:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_data));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end