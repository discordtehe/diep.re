@implementation MOPUBPlayerManager

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8380 != -0x1) {
            dispatch_once(0x1011d8380, 0x100e7eba0);
    }
    r0 = *0x1011d8378;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)disposePlayerViewController {
    r0 = [self currentPlayerViewController];
    r0 = [r0 retain];
    [r0 dispose];
    [r0 release];
    [self setCurrentPlayerViewController:0x0];
    return;
}

-(void *)playerViewControllerWithVideoConfig:(void *)arg2 nativeVideoAdConfig:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [r19 currentPlayerViewController];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 disposePlayerViewController];
    }
    r23 = [objc_alloc() initWithVideoConfig:r21 nativeVideoAdConfig:r22];
    [r22 release];
    [r21 release];
    [r19 setCurrentPlayerViewController:r23];
    [r23 release];
    r0 = [r19 currentPlayerViewController];
    return r0;
}

-(void)setCurrentPlayerViewController:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)currentPlayerViewController {
    r0 = *(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end