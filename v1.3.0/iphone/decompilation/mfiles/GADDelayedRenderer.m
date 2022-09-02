@implementation GADDelayedRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xe0;
    var_60 = d9;
    stack[-104] = d8;
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r20 objectForKeyedSubscript:@"renderers"];
    r0 = [r0 retain];
    r22 = [r0 mutableCopy];
    [r0 release];
    sub_1008223d0(r22, @"DelayedRenderer");
    r0 = sub_100809600(0xb, @"Invalid ad configuration.");
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [[sub_1008766e8() alloc] init];
    if (r24 == 0x0) goto loc_100866760;

loc_100866560:
    r0 = [r20 objectForKeyedSubscript:@"render_timeout_ms"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 doubleValue];
    v8 = v0;
    [r0 release];
    if (d8 < 0x0) goto loc_100866788;

loc_1008665a0:
    r26 = [GADOperation alloc];
    var_98 = [r24 retain];
    r27 = [r19 retain];
    var_90 = r27;
    var_88 = [r20 retain];
    r0 = [r26 initWithBlock:&var_B8];
    r26 = r0;
    [r0 setTimeout:&var_B8];
    r28 = [GADEventContext alloc];
    r0 = [r27 serverRequest];
    r0 = [r0 retain];
    var_C0 = r19;
    r19 = r0;
    r0 = [r0 context];
    r0 = [r0 retain];
    r27 = [r28 initWithParent:r0 component:@"rendering_delay"];
    [r0 release];
    [r19 release];
    [[GADUnrenderedAd alloc] initWithContext:r27 renderingOperation:r26];
    r0 = [NSArray arrayWithObjects:&var_80 count:0x1];
    (*(r21 + 0x10))(r21, [r0 retain], 0x0, 0x0);
    r0 = r23;
    r23 = r23;
    [r0 release];
    r0 = r19;
    r19 = var_C0;
    [r0 release];
    [r27 release];
    [r26 release];
    [var_88 release];
    [var_90 release];
    r0 = var_98;
    goto loc_1008667e4;

loc_1008667e4:
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100866788:
    sub_1007ce06c(0x0, @"Ad configuration with invalid timeout interval must be rejected before rendering, but was not. %@");
    r0 = [NSArray arrayWithObjects:&var_78 count:0x1];
    goto loc_1008667c0;

loc_1008667c0:
    (*(r21 + 0x10))(r21, 0x0, [r0 retain], 0x0);
    r0 = r25;
    goto loc_1008667e4;

loc_100866760:
    r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
    goto loc_1008667c0;
}

@end