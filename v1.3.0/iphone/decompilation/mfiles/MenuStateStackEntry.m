@implementation MenuStateStackEntry

-(void)dealloc {
    [self setMenuState:0x0];
    [self setInstance:0x0];
    [[&var_20 super] dealloc];
    return;
}

+(void *)createMenuStateStackEntry:(void *)arg2 instance:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = 0x0;
    if (r2 != 0x0) {
            r20 = 0x0;
            r19 = r3;
            if (r3 != 0x0) {
                    r0 = [MenuStateStackEntry object];
                    r20 = r0;
                    [r0 setMenuState:r2];
                    [r20 setInstance:r19];
            }
    }
    r0 = r20;
    return r0;
}

-(void *)menuState {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)instance {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setMenuState:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void)setInstance:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end