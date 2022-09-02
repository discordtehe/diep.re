@implementation NSDate

+(void *)now {
    r0 = [NSDate date];
    return r0;
}

+(void *)tj_dateFromHttpHeaderString:(void *)arg2 {
    r0 = [NSDate tj_dateFromRFC1123String:arg2];
    return r0;
}

+(void *)tj_dateFromRFC1123String:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = *0x1011dc070;
    r19 = [arg2 retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011dc070, 0x100ea0f50);
    }
    r20 = [[*0x1011dc068 dateFromString:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)tj_rfc1123String {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dc080 != -0x1) {
            dispatch_once(0x1011dc080, 0x100ea0f90);
    }
    r0 = *0x1011dc078;
    r0 = [r0 stringFromDate:r19];
    return r0;
}

@end