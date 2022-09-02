@implementation ISIronBeastEventsFormatter

-(void *)parseEventData:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x1 error:&var_48];
    r21 = [r0 retain];
    r22 = [var_48 retain];
    if (r21 != 0x0) {
            [[NSString alloc] initWithData:r21 encoding:0x4];
            [r20 setObject:r2 forKey:r3];
            objc_msgSend(r20, r24);
            [r23 release];
    }
    [r21 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)deparseEvenData:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"data"];
    r0 = [r0 retain];
    r20 = [[r0 dataUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x1 error:&var_18];
    r19 = [r0 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end