@implementation NSBundle

+(void *)resourceBundleForClass:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 pathForResource:@"MoPub" ofType:@"bundle"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = @class(NSBundle);
            r0 = [r0 bundleWithPath:r19];
    }
    else {
            r0 = @class(NSBundle);
            r0 = [r0 bundleForClass:r20];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end