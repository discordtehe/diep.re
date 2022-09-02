@implementation GADCustomEventExtras

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_extras));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)allExtras {
    r0 = self->_extras;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setExtras:(void *)arg2 forLabel:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            sub_100822058(r21->_extras, r20, r19);
    }
    else {
            NSLog(@"<Google> Must specify a label for extras.");
    }
    [r19 release];
    return;
}

-(void *)extrasForLabel:(void *)arg2 {
    r0 = self->_extras;
    r0 = [r0 objectForKeyedSubscript:arg2];
    return r0;
}

-(void)removeAllExtras {
    [self->_extras removeAllObjects];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    return;
}

@end