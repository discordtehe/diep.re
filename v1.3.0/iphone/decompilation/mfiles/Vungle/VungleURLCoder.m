@implementation VungleURLCoder

-(void *)encodeString:(void *)arg2 {
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, arg2, 0x0, @";/?:@&=+$, {}|\^[]`<>#%\"", 0x8000100);
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void *)decodeURLEncodedString:(void *)arg2 {
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    r0 = [r0 retain];
    r20 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

@end