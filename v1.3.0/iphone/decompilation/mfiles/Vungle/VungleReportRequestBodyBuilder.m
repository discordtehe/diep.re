@implementation VungleReportRequestBodyBuilder

-(void *)initWithReportInfo:(void *)arg2 publisherInformation:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] initWithPublisherInformation:arg3];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_reportDictionary, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)buildRequestParameters {
    r0 = [[&var_30 super] buildRequestParameters];
    r0 = [r0 retain];
    r21 = [r0 mutableCopy];
    [r0 release];
    r19 = [[self reportDictionary] retain];
    [r21 addEntriesFromDictionary:r19];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setReportDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportDictionary, arg2);
    return;
}

-(void *)reportDictionary {
    r0 = self->_reportDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reportDictionary, 0x0);
    return;
}

@end