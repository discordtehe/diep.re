@implementation GADMTapjoyExtras

-(void)setDebugEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugEnabled = arg2;
    return;
}

-(bool)debugEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_debugEnabled;
    return r0;
}

@end