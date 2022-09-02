@implementation MPAdPlacerInvocation

+(void *)invocationForTarget:(void *)arg2 selector:(void *)arg3 indexPath:(void *)arg4 streamAdPlacer:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if ([r19 respondsToSelector:r2] != 0x0 && ([r21 isAdAtIndexPath:r20] & 0x1) == 0x0) {
            r0 = [NSInvocation invocationWithMethodSignature:[[r19 methodSignatureForSelector:r22] retain]];
            r0 = [r0 retain];
            r23 = r0;
            [r0 setTarget:r19];
            [r23 setSelector:r2];
            [r24 release];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)invokeForTarget:(void *)arg2 with2ArgSelector:(void *)arg3 firstArg:(void *)arg4 secondArg:(void *)arg5 streamAdPlacer:(void *)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    var_38 = [arg4 retain];
    r19 = [arg5 retain];
    r20 = [arg6 retain];
    r0 = [MPAdPlacerInvocation invocationForTarget:r23 selector:arg3 indexPath:r19 streamAdPlacer:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            [[r20 originalIndexPathForAdjustedIndexPath:r19] retain];
            r0 = [r21 setArgument:&var_38 atIndex:0x2];
            [r21 setArgument:&var_40 atIndex:0x3];
            [r21 invoke];
            [var_40 release];
    }
    [r20 release];
    [r19 release];
    [var_38 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)invokeForTarget:(void *)arg2 with3ArgIntSelector:(void *)arg3 firstArg:(void *)arg4 secondArg:(long long)arg5 thirdArg:(void *)arg6 streamAdPlacer:(void *)arg7 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = [arg2 retain];
    var_38 = [arg4 retain];
    r19 = [arg6 retain];
    r20 = [arg7 retain];
    r0 = [MPAdPlacerInvocation invocationForTarget:r24 selector:arg3 indexPath:r19 streamAdPlacer:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 != 0x0) {
            [[r20 originalIndexPathForAdjustedIndexPath:r19] retain];
            r0 = [r21 setArgument:&var_38 atIndex:0x2];
            [r21 setArgument:&var_40 atIndex:0x3];
            [r21 setArgument:&var_48 atIndex:0x4];
            [r21 invoke];
            [var_48 release];
    }
    [r20 release];
    [r19 release];
    [var_38 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)invokeForTarget:(void *)arg2 with3ArgSelector:(void *)arg3 firstArg:(void *)arg4 secondArg:(void *)arg5 thirdArg:(void *)arg6 streamAdPlacer:(void *)arg7 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = [arg2 retain];
    var_38 = [arg4 retain];
    var_40 = [arg5 retain];
    r19 = [arg6 retain];
    r20 = [arg7 retain];
    r0 = [MPAdPlacerInvocation invocationForTarget:r24 selector:arg3 indexPath:r19 streamAdPlacer:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 != 0x0) {
            [[r20 originalIndexPathForAdjustedIndexPath:r19] retain];
            r0 = [r21 setArgument:&var_38 atIndex:0x2];
            r0 = [r21 setArgument:&var_40 atIndex:0x3];
            [r21 setArgument:&var_48 atIndex:0x4];
            [r21 invoke];
            [var_48 release];
    }
    [r20 release];
    [r19 release];
    [var_40 release];
    [var_38 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)boolResultForInvocation:(void *)arg2 defaultValue:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    if (r2 != 0x0) {
            r31 = r31 - 0x20;
            var_10 = r29;
            stack[-8] = r30;
            r0 = [r2 getReturnValue:&var_10 - 0x1];
            if (*(int8_t *)(&var_10 + 0xffffffffffffffff) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = r3;
    }
    return r0;
}

+(void *)resultForInvocation:(void *)arg2 defaultValue:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [r19 getReturnValue:&var_28];
            r0 = var_28;
    }
    else {
            r0 = r20;
    }
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(long long)integerResultForInvocation:(void *)arg2 defaultValue:(long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    if (r2 != 0x0) {
            [r2 getReturnValue:&var_18];
            r3 = var_18;
    }
    r0 = r3;
    return r0;
}

@end