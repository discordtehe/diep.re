@implementation ISEventSender

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)sendEvents:(void *)arg2 toUrl:(void *)arg3 onCompletion:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSMutableURLRequest alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setURL:r22];
    [r22 release];
    [r21 setHTTPMethod:@"POST"];
    [r21 setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    if ([NSJSONSerialization isValidJSONObject:r19] == 0x0) goto loc_1006f6de4;

loc_1006f6c3c:
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x1 error:&var_48];
    r29 = r29;
    r22 = [r0 retain];
    r24 = [var_48 retain];
    if (r22 == 0x0 || r24 != 0x0) goto loc_1006f6dec;

loc_1006f6c7c:
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r22 encoding:0x4];
    r23 = r0;
    r24 = [[r0 dataUsingEncoding:0x4] retain];
    [r21 setHTTPBody:r24];
    r26 = [[NSURLSessionConfiguration defaultSessionConfiguration] retain];
    r25 = [[NSURLSession sessionWithConfiguration:r26] retain];
    [r26 release];
    var_60 = [r20 retain];
    var_58 = [r19 retain];
    var_50 = r25;
    r0 = [r25 retain];
    r25 = r0;
    r0 = [r0 dataTaskWithRequest:r21 completionHandler:&var_80];
    r0 = [r0 retain];
    [r0 resume];
    [r0 release];
    [var_50 release];
    [var_58 release];
    [var_60 release];
    [r25 release];
    [r24 release];
    [r23 release];
    goto loc_1006f6de8;

loc_1006f6de8:
    r24 = 0x0;
    goto loc_1006f6dec;

loc_1006f6dec:
    [r22 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1006f6de4:
    r22 = 0x0;
    goto loc_1006f6de8;
}

@end