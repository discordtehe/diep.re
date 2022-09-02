@implementation ADCShadowedLabel

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setClipsToBounds:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCShadowedLabel dealloc]" line:0x23 withFormat:@"dealloc called on ADCShadowedLabel"];
    [[&var_20 super] dealloc];
    return;
}

-(void)drawTextInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_48 = **___stack_chk_guard;
    r0 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(r0);
    r0 = CGColorSpaceCreateDeviceRGB();
    r0 = CGColorCreate(r0, &var_70);
    CGContextSetShadowWithColor(r20, r0, r2, r3);
    [[&var_80 super] drawTextInRect:r2];
    CGColorRelease(r22);
    CGColorSpaceRelease(r21);
    CGContextRestoreGState(r20);
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end