@implementation UIViewController

+(void)load {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ([APMAEU isOSSupported] != 0x0 && *qword_1011d20b8 != -0x1) {
            dispatch_once(0x1011d20b8, 0x100e6f0d0);
    }
    return;
}

-(void *)apmScreen {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = objc_getAssociatedObject(self, @selector(apmScreen));
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [APMScreen class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r22 = [[APMMeasurement monitor] retain];
                    r21 = [NSStringFromClass([r19 class]) retain];
                    [r22 logWithLevel:0x4 messageCode:0x8ca0 message:@"Found unknown associated object" context:r21];
                    [r21 release];
                    [r22 release];
                    [r20 setApmScreen:0x0];
                    r20 = 0x0;
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setApmScreen:(void *)arg2 {
    objc_setAssociatedObject(self, @selector(apmScreen), arg2, 0x301);
    return;
}

@end