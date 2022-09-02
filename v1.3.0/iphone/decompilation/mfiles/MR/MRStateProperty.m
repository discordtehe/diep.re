@implementation MRStateProperty

-(unsigned long long)state {
    r0 = self->_state;
    return r0;
}

+(void *)propertyWithState:(unsigned long long)arg2 {
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setState:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)description {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = self->_state;
    if (r9 <= 0x3) {
            r0 = (0x1005109b8 + *(int8_t *)(0x100be3fb8 + r9) * 0x4)();
    }
    else {
            r0 = [NSString stringWithFormat:r2];
    }
    return r0;
}

-(void)setState:(unsigned long long)arg2 {
    self->_state = arg2;
    return;
}

@end