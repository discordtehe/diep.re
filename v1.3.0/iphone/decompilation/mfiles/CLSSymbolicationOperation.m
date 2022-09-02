@implementation CLSSymbolicationOperation

-(void)main {
    [self enumerateFramesWithBlock:&var_28];
    return;
}

-(void *)symbolResolver {
    r0 = self->_symbolResolver;
    return r0;
}

-(void)setSymbolResolver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_symbolResolver, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_symbolResolver, 0x0);
    return;
}

@end