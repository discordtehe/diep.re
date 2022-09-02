@implementation NSThread

-(void)performBlock:(void *)arg2 {
    [self performBlock:arg2 waitUntilDone:0x0];
    return;
}

-(void)performBlock:(void *)arg2 waitUntilDone:(bool)arg3 {
    [self performSelector:@selector(executeBlock:) onThread:self withObject:[[arg2 copy] autorelease] waitUntilDone:arg3];
    return;
}

-(void)executeBlock:(void *)arg2 {
    r1 = *(arg2 + 0x10);
    (r1)(arg2, r1, arg2);
    return;
}

-(void)performBlock:(void *)arg2 withObject:(void *)arg3 waitUntilDone:(bool)arg4 {
    r0 = [CCObjectWith2Params alloc];
    r0 = [r0 init];
    [r0 setBlock:arg2];
    [r0 setParam:arg3];
    [r0 autorelease];
    [self performSelector:@selector(executeBlock2:) onThread:self withObject:r0 waitUntilDone:arg4];
    return;
}

-(void)executeBlock2:(void *)arg2 {
    r20 = [arg2 block];
    r1 = [arg2 param];
    r2 = *(r20 + 0x10);
    (r2)(r20, r1, r2);
    return;
}

-(void *)fb_threadIdentifier {
    r31 = r31 - 0x190;
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
    r19 = self;
    r0 = objc_getAssociatedObject(self, @selector(fb_threadIdentifier));
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100aa273c;

loc_100aa272c:
    r0 = [r0 retain];
    r21 = r0;
    r19 = r0;
    goto loc_100aa2a18;

loc_100aa2a18:
    var_60 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100aa273c:
    var_178 = r0;
    var_168 = @selector(fb_threadIdentifier);
    stack[-368] = r19;
    r0 = [r19 description];
    r0 = [r0 retain];
    var_140 = r0;
    r0 = [r0 componentsSeparatedByString:@","];
    r29 = r29;
    r0 = [r0 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100aa2920;

loc_100aa27b4:
    r27 = r0;
    var_138 = r20;
    var_130 = *var_110;
    goto loc_100aa27e0;

loc_100aa27e0:
    r24 = 0x0;
    goto loc_100aa280c;

loc_100aa280c:
    if (*var_110 != var_130) {
            objc_enumerationMutation(var_138);
    }
    r0 = *(var_118 + r24 * 0x8);
    r0 = [r0 componentsSeparatedByString:r2];
    r0 = [r0 retain];
    r28 = r0;
    r19 = [[r0 objectAtIndexedSubscript:r2] retain];
    r26 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r0 = [r19 stringByTrimmingCharactersInSet:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    [r26 release];
    if (([r23 containsString:r2] & 0x1) != 0x0) goto loc_100aa2954;

loc_100aa28c4:
    [r23 release];
    [r28 release];
    r24 = r24 + 0x1;
    if (r24 < r27) goto loc_100aa280c;

loc_100aa28e0:
    r20 = var_138;
    r0 = objc_msgSend(r20, var_170);
    r27 = r0;
    if (r0 != 0x0) goto loc_100aa27e0;

loc_100aa2920:
    [r20 release];
    r19 = [[NSNumber numberWithInt:r2] retain];
    r21 = var_178;
    goto loc_100aa2a08;

loc_100aa2a08:
    [r20 release];
    [var_140 release];
    goto loc_100aa2a18;

loc_100aa2954:
    r19 = [[NSNumberFormatter defaultFormatter] retain];
    r20 = [[r28 objectAtIndexedSubscript:r2] retain];
    [[r19 safeNumberFromString:r2] retain];
    [0x0 release];
    [r20 release];
    [r19 release];
    [FBAdUtility safeObjcSetAssociatedObject:r2 key:r3 value:r4 objc_AssociationPolicy:r5];
    r21 = [r21 retain];
    [r23 release];
    [r28 release];
    r20 = var_138;
    [r20 release];
    r19 = r21;
    goto loc_100aa2a08;
}

@end