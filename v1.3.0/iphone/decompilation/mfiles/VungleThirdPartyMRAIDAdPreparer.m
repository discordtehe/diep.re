@implementation VungleThirdPartyMRAIDAdPreparer

-(void)prepareAd:(void *)arg2 placmentID:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [arg4 retain];
    [r22 setAdBeingPrepared:r21];
    r20 = [r21 retain];
    r0 = [VNGPersistenceManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 checkFileSystemSizeAvailabilityForCase:0x3 withError:&var_48 withPlacementID:r23];
    [r23 release];
    r21 = [var_48 retain];
    [r0 release];
    if (r25 != 0x0) {
            r23 = objc_alloc();
            var_50 = [r19 retain];
            r23 = [r23 initWithVungleMRAIDAd:r20 completionHandler:&var_70];
            r0 = [r22 queue];
            r0 = [r0 retain];
            [r0 addOperation:r23];
            [r0 release];
            [var_50 release];
            r0 = r23;
    }
    else {
            r0 = [NSMutableSet set];
            r29 = r29;
            r22 = [r0 retain];
            if (r21 != 0x0) {
                    [r22 addObject:r2];
            }
            (*(r19 + 0x10))(r19, r20, [[r22 anyObject] retain]);
            [r23 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r20 release];
    return;
}

@end