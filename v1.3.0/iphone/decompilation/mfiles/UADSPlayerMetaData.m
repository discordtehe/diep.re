@implementation UADSPlayerMetaData

-(void *)init {
    r0 = [[&var_10 super] initWithCategory:@"player"];
    return r0;
}

-(void)setServerId:(void *)arg2 {
    [self set:@"server_id" value:arg2];
    return;
}

@end