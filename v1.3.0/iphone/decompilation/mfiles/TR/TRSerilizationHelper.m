@implementation TRSerilizationHelper

+(void *)jsonStringFromDictionary:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSError alloc] init];
    var_28 = r20;
    r19 = [[NSJSONSerialization dataWithJSONObject:arg2 options:0x1 error:&var_28] retain];
    [r22 release];
    r22 = [var_28 retain];
    [r20 release];
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r19 encoding:0x4];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@"\n" withString:@""] retain];
    [r22 release];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)dictionaryWithPropertiesOfObject:(void *)arg2 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r19 class];
    r0 = class_copyPropertyList(r0, &var_54);
    r21 = r0;
    if (var_54 != 0x0) {
            r27 = 0x0;
            do {
                    r24 = @selector(setObject:forKey:);
                    r0 = [r19 valueForKey:[[NSString stringWithUTF8String:property_getName(*(r21 + r27 * 0x8))] retain]];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r20, r24);
                    [r26 release];
                    [r25 release];
                    r27 = r27 + 0x1;
            } while (r27 < var_54);
    }
    free(r21);
    r21 = [[NSDictionary dictionaryWithDictionary:r20] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end