@implementation MCNGetitButton

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setPressed:0x1];
    [[&var_30 super] touchesBegan:r21 withEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setPressed:0x0];
    [[&var_30 super] touchesEnded:r21 withEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 anyObject];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 view] retain];
    [r22 locationInView:r23];
    v8 = v0;
    v9 = v1;
    [r23 release];
    if (CGRectContainsPoint([r21 bounds], @selector(bounds)) == 0x0 || ([r21 isPressed] & 0x1) != 0x0) goto loc_1003eb1a4;

loc_1003eb1e8:
    r0 = r21;
    goto loc_1003eb1f8;

loc_1003eb1f8:
    [r0 setPressed:r2];
    goto loc_1003eb1fc;

loc_1003eb1fc:
    [[&var_50 super] touchesMoved:r19 withEvent:r20];
    [r22 release];
    [r20 release];
    [r19 release];
    return;

loc_1003eb1a4:
    if ((CGRectContainsPoint([r21 bounds], @selector(bounds)) & 0x1) != 0x0 || [r21 isPressed] == 0x0) goto loc_1003eb1fc;

loc_1003eb1d4:
    r0 = r21;
    goto loc_1003eb1f8;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setPressed:0x0];
    [[&var_30 super] touchesCancelled:r21 withEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

@end