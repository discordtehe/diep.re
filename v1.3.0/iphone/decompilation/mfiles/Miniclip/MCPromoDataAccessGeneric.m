@implementation MCPromoDataAccessGeneric

-(void *)execute {
    r0 = [self resolveDataAccess];
    return r0;
}

-(void *)getPropertyValue {
    return 0x0;
}

-(void *)resolveDataAccess {
    r0 = self->mConfig;
    return r0;
}

@end