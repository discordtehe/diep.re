@implementation GADMAdapterVungleUtils

+(void *)findPlacement:(void *)arg2 networkExtras:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [arg2 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [r19 playingPlacement];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    if (r20 != 0x0) {
                            NSLog(@"'placementID' had a value in both serverParameters and networkExtras. Used one from serverParameters");
                    }
                    else {
                            r20 = [[r19 playingPlacement] retain];
                    }
            }
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)findAppID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"application_id"];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            NSLog(@"Vungle app ID should be specified!");
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end