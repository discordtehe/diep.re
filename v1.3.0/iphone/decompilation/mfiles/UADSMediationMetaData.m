@implementation UADSMediationMetaData

-(void *)init {
    r0 = [[&var_10 super] initWithCategory:@"mediation"];
    return r0;
}

-(void)setName:(void *)arg2 {
    [self set:@"name" value:arg2];
    return;
}

-(void)setOrdinal:(int)arg2 {
    r20 = [[NSNumber numberWithInt:arg2] retain];
    [self set:@"ordinal" value:r20];
    [r20 release];
    return;
}

-(void)setVersion:(void *)arg2 {
    [self set:@"version" value:arg2];
    return;
}

-(void)setMissedImpressionOrdinal:(int)arg2 {
    r20 = [[NSNumber numberWithInt:arg2] retain];
    [self set:@"missedImpressionOrdinal" value:r20];
    [r20 release];
    return;
}

@end