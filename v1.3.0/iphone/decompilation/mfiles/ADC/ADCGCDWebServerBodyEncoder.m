@implementation ADCGCDWebServerBodyEncoder

-(void *)initWithResponse:(void *)arg2 reader:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    [r20 release];
    if (r21 != 0x0) {
            r21->_response = r20;
            r21->_reader = r19;
    }
    r0 = r21;
    return r0;
}

-(bool)open:(void * *)arg2 {
    r0 = self->_reader;
    r0 = [r0 open:arg2];
    return r0;
}

-(void *)readData:(void * *)arg2 {
    r0 = self->_reader;
    r0 = [r0 readData:arg2];
    return r0;
}

-(void)close {
    [self->_reader close];
    return;
}

@end