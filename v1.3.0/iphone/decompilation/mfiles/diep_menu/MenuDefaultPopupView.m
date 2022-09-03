@implementation MenuDefaultPopupView

-(double)onLeaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = sub_10004f308(r0);
    }
    return r0;
}

-(double)onEnterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = sub_10004f17c(r0);
    }
    return r0;
}

@end