@implementation USRVPreferences

+(bool)hasKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 objectForKey:r2] retain];
    [r21 release];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)getString:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getInteger:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [r0 integerForKey:r22];
    [r22 release];
    r19 = [[NSNumber numberWithLong:r21] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getLong:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r22] retain];
    [r22 release];
    r19 = [[NSNumber numberWithLong:[r21 longValue]] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getBoolean:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 boolForKey:r22];
    [r22 release];
    r19 = [[NSNumber numberWithBool:r2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getFloat:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r22] retain];
    [r22 release];
    [r21 floatValue];
    r19 = [[NSNumber numberWithFloat:r2] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)setString:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(NSUserDefaults);
    r19 = [arg3 retain];
    r0 = [r22 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setValue:arg2 forKey:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)setInteger:(int)arg2 forKey:(void *)arg3 {
    r21 = @class(NSUserDefaults);
    r22 = [arg3 retain];
    r21 = [[r21 standardUserDefaults] retain];
    r0 = [NSNumber numberWithInt:arg2];
    r0 = [r0 retain];
    [r21 setInteger:[r0 integerValue] forKey:r22];
    [r22 release];
    [r0 release];
    [r21 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)setFloat:(float)arg2 forKey:(void *)arg3 {
    r20 = @class(NSUserDefaults);
    r21 = [arg2 retain];
    r20 = [[r20 standardUserDefaults] retain];
    r0 = [NSNumber numberWithFloat:r2];
    r0 = [r0 retain];
    [r0 floatValue];
    [r20 setFloat:r21 forKey:arg3];
    [r21 release];
    [r0 release];
    [r20 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)setLong:(long long)arg2 forKey:(void *)arg3 {
    r20 = @class(NSUserDefaults);
    r22 = [arg3 retain];
    r20 = [[r20 standardUserDefaults] retain];
    r19 = [[NSNumber numberWithLong:arg2] retain];
    [r20 setObject:r19 forKey:r22];
    [r22 release];
    [r19 release];
    [r20 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)setBoolean:(bool)arg2 forKey:(void *)arg3 {
    r21 = @class(NSUserDefaults);
    r22 = [arg3 retain];
    r21 = [[r21 standardUserDefaults] retain];
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    [r21 setInteger:[r0 boolValue] forKey:r22];
    [r22 release];
    [r0 release];
    [r21 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)removeKey:(void *)arg2 {
    r19 = @class(NSUserDefaults);
    r21 = [arg2 retain];
    r0 = [r19 standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r21];
    [r21 release];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

@end