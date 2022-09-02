@implementation SSWVMessageFunctionParameter

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void *)value {
    r0 = self->_value;
    return r0;
}

-(void)setValue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_value, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end