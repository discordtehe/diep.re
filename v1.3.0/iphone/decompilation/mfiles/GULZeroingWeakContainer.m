@implementation GULZeroingWeakContainer

-(void *)object {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_object, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_object);
    return;
}

@end