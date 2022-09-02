@implementation SSWVMessage

-(void *)function {
    r0 = self->_function;
    return r0;
}

-(void)setFunction:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_function, arg2);
    return;
}

-(void *)callback {
    r0 = self->_callback;
    return r0;
}

-(void)setCallback:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callback, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_callback, 0x0);
    objc_storeStrong((int64_t *)&self->_function, 0x0);
    return;
}

@end