@implementation MPVASTMacroProcessor

+(void *)macroExpandedURLForURL:(void *)arg2 errorCode:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self macroExpandedURLForURL:r21 errorCode:arg3 videoTimeOffset:0x0 videoAssetURL:r5] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)macroExpandedURLForURL:(void *)arg2 errorCode:(void *)arg3 videoTimeOffset:(double)arg4 videoAssetURL:(void *)arg5 {
    r31 = r31 - 0x80;
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
    v8 = v0;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[r21 absoluteString] retain];
    [r21 release];
    r21 = [r22 mutableCopy];
    [r22 release];
    r23 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r0 = [r19 stringByTrimmingCharactersInSet:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if ([r22 length] != 0x0) {
            [r21 length];
            [r21 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
            objc_msgSend(r21, r23);
            r2 = @"%5BERRORCODE%5D";
            objc_msgSend(r21, r25);
    }
    if (d8 >= 0x0) {
            r23 = @selector(length);
            r0 = [MPVASTStringUtilities stringFromTimeInterval:r2];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r21, r23);
            [r21 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
            objc_msgSend(r21, r23);
            objc_msgSend(r21, r26);
            [r25 release];
    }
    if (r20 != 0x0) {
            r23 = @selector(length);
            r0 = [r20 absoluteString];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 mp_URLEncodedString];
            r29 = r29;
            [r0 retain];
            [r24 release];
            objc_msgSend(r21, r23);
            r24 = @selector(replaceOccurrencesOfString:withString:options:range:);
            objc_msgSend(r21, r24);
            objc_msgSend(r21, r23);
            objc_msgSend(r21, r24);
            [r25 release];
    }
    else {
            r24 = @selector(replaceOccurrencesOfString:withString:options:range:);
    }
    r23 = @selector(length);
    arc4random();
    [[NSString stringWithFormat:r2] retain];
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r24);
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r24);
    r23 = [[NSURL URLWithString:r2] retain];
    [r25 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

@end