@implementation AdColony_AvidDeferredAdSessionListenerImpl

-(void)recordReadyEvent {
    r20 = [[AdColony_AvidEvent eventWithName:@"publishReadyEvent" type:@"deferredReady" data:0x0] retain];
    r0 = [self dispatcher];
    r0 = [r0 retain];
    [r0 postEvent:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void *)dispatcher {
    r0 = objc_loadWeakRetained((int64_t *)&self->_dispatcher);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDispatcher:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_dispatcher, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_dispatcher);
    return;
}

@end