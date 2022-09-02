@implementation AdColony_AvidView

+(void *)avidViewWithView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidView new];
    [r0 setView:r21];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)containsView:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self view];
    r0 = [r0 retain];
    r19 = [r0 isEqual:r2];
    [r22 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_view, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_view);
    return;
}

@end