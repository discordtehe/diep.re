@implementation TR_AFXMLParserResponseSerializer

-(void *)init {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSSet alloc] initWithObjects:@"application/xml"];
            [r19 setAcceptableContentTypes:r20];
            [r20 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)serializer {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)responseObjectForResponse:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [self validateResponse:r22 data:r19 error:r20];
    [r22 release];
    if ((r21 & 0x1) == 0x0) {
            if (r20 != 0x0) {
                    if ((sub_100411d0c() & 0x1) != 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = [[NSXMLParser alloc] initWithData:r19];
                    }
            }
    }
    else {
            r20 = [[NSXMLParser alloc] initWithData:r19];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end