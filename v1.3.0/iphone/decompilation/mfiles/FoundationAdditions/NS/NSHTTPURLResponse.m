@implementation NSHTTPURLResponse

-(unsigned long long)stringEncodingFromContentType:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] == 0x0) goto loc_1004be148;

loc_1004be06c:
    r21 = @selector(length);
    r20 = [[NSRegularExpression regularExpressionWithPattern:@"(?<=charset=)[^;]*" options:0x0 error:0x0] retain];
    objc_msgSend(r19, r21);
    r0 = [r20 firstMatchInString:r19 options:0x0 range:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0 || [r21 range] == 0x7fffffffffffffff) goto loc_1004be1dc;

loc_1004be0f8:
    r0 = [r19 substringWithRange:[r21 range]];
    r0 = [r0 retain];
    r23 = r0;
    r0 = CFStringConvertIANACharSetNameToEncoding(r0);
    if (r0 == -0x1) goto loc_1004be214;

loc_1004be134:
    r22 = CFStringConvertEncodingToNSStringEncoding(r0);
    [r23 release];
    goto loc_1004be1e0;

loc_1004be1e0:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1004be214:
    [r23 release];
    goto loc_1004be1dc;

loc_1004be1dc:
    r22 = 0x4;
    goto loc_1004be1e0;

loc_1004be148:
    r20 = [[NSString stringWithFormat:@"Attempting to set string encoding from nil %@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r20 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r22 class]];
    goto loc_1004be1dc;
}

@end