@implementation CCCatmullRomTo

+(void *)actionWithDuration:(double)arg2 points:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 points:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 points:(void *)arg3 {
    r0 = [[&var_10 super] initWithDuration:arg2 points:arg3 tension:r4];
    return r0;
}

@end