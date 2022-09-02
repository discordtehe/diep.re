@implementation UMONPlacementContentFactory

+(void *)create:(void *)arg2 withParams:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r21 = [[r0 valueForKey:@"type"] retain];
    r0 = sub_1000f3c50();
    if (r0 != 0x3) {
            if (r0 != 0x1) {
                    if (r0 == 0x0) {
                            r0 = @class(UMONShowAdPlacementContent);
                    }
                    else {
                            r0 = @class(UMONPlacementContent);
                    }
            }
            else {
                    r0 = @class(UMONPromoAdPlacementContent);
            }
    }
    else {
            r0 = @class(UMONNoFillPlacementContent);
    }
    r22 = [[r0 alloc] initWithPlacementId:r19 withParams:r20];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end