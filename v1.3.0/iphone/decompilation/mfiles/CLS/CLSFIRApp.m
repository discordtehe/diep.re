@implementation CLSFIRApp

+(bool)isDataCollectionDefaultEnabled {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d18f8 != -0x1) {
            dispatch_once(0x1011d18f8, 0x100e67cc8);
    }
    r0 = *0x1011d18f0;
    r0 = objc_retainAutorelease(r0);
    r0 = [r0 defaultApp];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_100095000;

loc_100094f58:
    if (([r19 respondsToSelector:r2] & 0x1) == 0x0) goto loc_100094fb8;

loc_100094f78:
    if (*0x1011d18f8 != -0x1) {
            dispatch_once(0x1011d18f8, 0x100e67cc8);
    }
    r0 = *0x1011d18f0;
    r0 = objc_retainAutorelease(r0);
    r0 = [r0 defaultApp];
    r0 = [r0 retain];
    r20 = [r0 isDataCollectionDefaultEnabled];
    [r0 release];
    goto loc_100095004;

loc_100095004:
    [r19 release];
    r0 = r20;
    return r0;

loc_100094fb8:
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 debug];
    [r0 release];
    if (r21 != 0x0) {
            NSLog(@"[Fabric] [Crashlytics] This version of FIRApp does not support isDataCollectionDefaultEnabled. Ignoring.");
    }
    goto loc_100095000;

loc_100095000:
    r20 = 0x1;
    goto loc_100095004;
}

@end