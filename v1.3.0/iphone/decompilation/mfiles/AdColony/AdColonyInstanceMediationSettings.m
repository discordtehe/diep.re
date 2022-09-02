@implementation AdColonyInstanceMediationSettings

-(bool)showPrePopup {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setShowPrePopup:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)showPostPopup {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setShowPostPopup:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

@end