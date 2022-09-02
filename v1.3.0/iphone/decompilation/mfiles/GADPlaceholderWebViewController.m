@implementation GADPlaceholderWebViewController

-(void *)initWithFrame:(struct CGRect)arg2 eventContext:(void *)arg3 configuration:(void *)arg4 {
    r4 = arg4;
    memcpy(&r2, &arg2, 0x8);
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r20 = [r2 retain];
    r21 = [r3 retain];
    r22 = [[r3 webViewClassKey] retain];
    if (([GADWebKitWebViewController isAvailable] & 0x1) == 0x0) {
            r24 = [*0x100e9f9a8 retain];
            [r22 release];
            r22 = r24;
    }
    if ([GADUIKitWebViewController isAvailable] != 0x0) {
            r23 = *0x100e9f9a0;
    }
    else {
            r23 = [*0x100e9f9a0 retain];
            [r22 release];
            r22 = r23;
    }
    if ([r22 isEqual:r2] != 0x0) {
            r0 = @class(GADWebKitWebViewController);
    }
    else {
            r0 = @class(GADUIKitWebViewController);
    }
    r23 = [[[r0 class] alloc] initWithFrame:r20 eventContext:r21 configuration:r4];
    [r21 release];
    [r20 release];
    [r22 release];
    [r19 release];
    r0 = r23;
    return r0;
}

@end