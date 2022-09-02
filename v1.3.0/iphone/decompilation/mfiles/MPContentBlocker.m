@implementation MPContentBlocker

+(void *)blockedResources {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[MPAPIEndpoints baseHostname] retain];
    r0 = [NSString stringWithFormat:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (*0x1011d8460 == 0x0) goto loc_1004f6060;

loc_1004f6030:
    if (([*0x1011d8460 containsObject:r2] & 0x1) != 0x0) goto loc_1004f6090;

loc_1004f6044:
    r0 = *0x1011d8460;
    r0 = [r0 setByAddingObject:r19];
    r29 = r29;
    goto loc_1004f607c;

loc_1004f607c:
    r8 = [r0 retain];
    r0 = *0x1011d8460;
    *0x1011d8460 = r8;
    [r0 release];
    goto loc_1004f6090;

loc_1004f6090:
    r20 = [[*0x1011d8460 allObjects] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1004f6060:
    r0 = [NSSet setWithObject:r19];
    r29 = r29;
    goto loc_1004f607c;
}

+(void *)blockPatternFromResource:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r20 = @class(NSDictionary);
            r19 = [r2 retain];
            r0 = [r20 dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
            r22 = [r0 retain];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
            r23 = [r0 retain];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
            r20 = [r0 retain];
            [r19 release];
            [r23 release];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)blockedResourcesList {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    if (*0x1011d8468 != 0x0) {
            r26 = *0x1011d8470;
            r0 = [MPContentBlocker blockedResources];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 count];
            [r0 release];
            if (r26 != r22) {
                    r20 = @selector(count);
                    r0 = @class(MPContentBlocker);
                    r0 = [r0 blockedResources];
                    r0 = [r0 retain];
                    *0x1011d8470 = objc_msgSend(r0, r20);
                    [r0 release];
                    r0 = @class(MPContentBlocker);
                    r0 = [r0 blockedResources];
                    r0 = [r0 retain];
                    r20 = [[NSMutableArray arrayWithCapacity:objc_msgSend(r0, r20)] retain];
                    [r0 release];
                    r21 = [[MPContentBlocker blockedResources] retain];
                    var_48 = r20;
                    r19 = [r20 retain];
                    [r21 enumerateObjectsUsingBlock:&var_68];
                    [r21 release];
                    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_70];
                    r20 = [r0 retain];
                    r21 = [var_70 retain];
                    r0 = objc_alloc();
                    r0 = [r0 initWithData:r20 encoding:0x4];
                    r8 = *0x1011d8468;
                    *0x1011d8468 = r0;
                    [r8 release];
                    [r21 release];
                    [r20 release];
                    [var_48 release];
                    [r19 release];
            }
    }
    else {
            r20 = @selector(count);
            r0 = @class(MPContentBlocker);
            r0 = [r0 blockedResources];
            r0 = [r0 retain];
            *0x1011d8470 = objc_msgSend(r0, r20);
            [r0 release];
            r0 = @class(MPContentBlocker);
            r0 = [r0 blockedResources];
            r0 = [r0 retain];
            r20 = [[NSMutableArray arrayWithCapacity:objc_msgSend(r0, r20)] retain];
            [r0 release];
            r21 = [[MPContentBlocker blockedResources] retain];
            var_48 = r20;
            r19 = [r20 retain];
            [r21 enumerateObjectsUsingBlock:&var_68];
            [r21 release];
            r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_70];
            r20 = [r0 retain];
            r21 = [var_70 retain];
            r0 = objc_alloc();
            r0 = [r0 initWithData:r20 encoding:0x4];
            r8 = *0x1011d8468;
            *0x1011d8468 = r0;
            [r8 release];
            [r21 release];
            [r20 release];
            [var_48 release];
            [r19 release];
    }
    r0 = *0x1011d8468;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end