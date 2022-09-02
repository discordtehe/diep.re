@implementation NSMutableData

-(void *)_RNConsumeToIndex:(unsigned long long)arg2 {
    r21 = [[self subdataWithRange:0x0] retain];
    r23 = [self length] - arg2;
    r0 = objc_retainAutorelease(self);
    [r0 mutableBytes] + arg2;
    [r0 replaceBytesInRange:0x0 withBytes:r23];
    [r0 setLength:[r0 length] - arg2];
    r0 = [r21 autorelease];
    return r0;
}

@end