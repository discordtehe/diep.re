@implementation SFSafariViewController

+(void)load {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8610 != -0x1) {
            dispatch_once(0x1011d8610, &var_28);
    }
    return;
}

-(void *)mcAds_initWithURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*0x1011e4b78 != 0x0) {
            (*(**0x1011e4b78 + 0x30))();
    }
    r20 = [[r20 mcAds_initWithURL:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end