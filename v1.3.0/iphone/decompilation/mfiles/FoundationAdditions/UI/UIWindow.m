@implementation UIWindow

-(void)setApmStack:(void *)arg2 {
    objc_setAssociatedObject(self, @selector(apmStack), arg2, 0x301);
    return;
}

-(void *)apmStack {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = objc_getAssociatedObject(self, @selector(apmStack));
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [NSPointerArray class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r22 = [[APMMeasurement monitor] retain];
                    r21 = [NSStringFromClass([r19 class]) retain];
                    [r22 logWithLevel:0x4 messageCode:0x9470 message:@"Found unknown associated object" context:r21];
                    [r21 release];
                    [r22 release];
                    [r20 setApmStack:0x0];
                    r20 = 0x0;
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)siblingWindows {
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
    r20 = self;
    var_58 = [NSMutableArray new];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 windows];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if ([r21 count] != 0x0) {
            r22 = 0x0;
            do {
                    r0 = [r21 objectAtIndex:r22];
                    r0 = [r0 retain];
                    r27 = r0;
                    r28 = [[r0 screen] retain];
                    r0 = [r20 screen];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r28 release];
                    if (r28 == r0) {
                            [var_58 addObject:r2];
                    }
                    r26 = @selector(count);
                    [r27 release];
                    r22 = r22 + 0x1;
            } while (r22 < objc_msgSend(r21, r26));
    }
    r20 = [[NSArray arrayWithArray:var_58] retain];
    [r21 release];
    [var_58 release];
    r0 = [r20 autorelease];
    return r0;
}

@end