@implementation AdColony_AvidObstructionsWhiteList

-(void *)whiteList {
    r0 = self->_whiteList;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffd0) = self;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_whiteList));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)addView:(void *)arg2 {
    r19 = self->_whiteList;
    [[AdColony_AvidView avidViewWithView:arg2] retain];
    [r19 addObject:r2];
    [r20 release];
    return;
}

-(bool)containsView:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_whiteList;
    r19 = [r0 retain];
    [r20 enumerateObjectsUsingBlock:&var_70];
    [r19 release];
    _Block_object_dispose(&var_40, 0x8);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_whiteList, 0x0);
    return;
}

@end