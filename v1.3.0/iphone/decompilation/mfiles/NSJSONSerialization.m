@implementation NSJSONSerialization

+(void *)mp_JSONObjectWithData:(void *)arg2 options:(unsigned long long)arg3 clearNullObjects:(bool)arg4 error:(void * *)arg5 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = [[NSJSONSerialization JSONObjectWithData:arg2 options:r19 | arg3 error:arg5] retain];
    if (arg5 == 0x0 && r19 != 0x0) {
            [r20 mp_removeNullsRecursively];
    }
    r0 = [r20 autorelease];
    return r0;
}

@end