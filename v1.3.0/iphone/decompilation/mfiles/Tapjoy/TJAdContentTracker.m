@implementation TJAdContentTracker

-(void *)initWithPlacementName:(void *)arg2 placementType:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithPlacementName:r21 placementType:arg3 contentType:@"ad"];
    [r21 release];
    r0 = r0;
    return r0;
}

@end