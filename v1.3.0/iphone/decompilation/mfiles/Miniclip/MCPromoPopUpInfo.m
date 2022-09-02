@implementation MCPromoPopUpInfo

-(void *)init {
    return 0x0;
}

-(void *)initWithImage:(void *)arg2 buttonText:(void *)arg3 dismissEvent:(void *)arg4 killEvent:(void *)arg5 andCustomData:(void *)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg6;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r24 = arg2;
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(r21 + 0x8) = [r24 retain];
            *(r21 + 0x10) = [r23 retain];
            *(r21 + 0x18) = [r22 retain];
            *(r21 + 0x20) = [r20 retain];
            *(r21 + 0x28) = [r19 retain];
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)buttonText {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)image {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)dismissEvent {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)killEvent {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)customData {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)clientCustomData {
    r0 = *(self + 0x30);
    return r0;
}

@end