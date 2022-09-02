@implementation SSWVMessageFunction

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void *)params {
    r0 = self->_params;
    return r0;
}

-(void)setParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_params, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_params, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end