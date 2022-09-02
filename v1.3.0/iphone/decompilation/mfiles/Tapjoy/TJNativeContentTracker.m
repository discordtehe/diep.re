@implementation TJNativeContentTracker

-(void *)initWithPlacementName:(void *)arg2 placementType:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithPlacementName:r21 placementType:arg3 contentType:@"mm"];
    r19 = r0;
    [r21 release];
    if (r19 != 0x0) {
            [r19 addDimension:@"content_card" value:@"n2e"];
    }
    r0 = r19;
    return r0;
}

@end