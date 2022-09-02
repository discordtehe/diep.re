@implementation MRBundleManager

+(void *)sharedManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d8370 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *0x1011d8370;
            *0x1011d8370 = r0;
            [r8 release];
    }
    r0 = *0x1011d8370;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)mraidPath {
    r0 = [NSBundle resourceBundleForClass:[self class]];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 pathForResource:@"MRAID" ofType:@"bundle"] retain];
    r0 = @class(NSBundle);
    r0 = [r0 bundleWithPath:r21];
    r0 = [r0 retain];
    r20 = [[r0 pathForResource:@"mraid" ofType:@"js"] retain];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end