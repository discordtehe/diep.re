@implementation UMONJSONUtilities

+(void *)objectToData:(void *)arg2 {
    r0 = [NSJSONSerialization dataWithJSONObject:arg2 options:0x1 error:&var_8];
    return r0;
}

@end