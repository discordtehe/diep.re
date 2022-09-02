@implementation GADDelayedAdRenderingOptions

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r19 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 setDelegate:r19];
    [r19 release];
    r0 = r0;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)requestParameters {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r19 = r0;
    [r0 release];
    if (r19 != 0x0) {
            r20 = [@(0x1) retain];
            r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r20 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end