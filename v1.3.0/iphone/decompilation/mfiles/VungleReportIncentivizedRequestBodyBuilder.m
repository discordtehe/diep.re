@implementation VungleReportIncentivizedRequestBodyBuilder

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

-(void *)reportDictionary {
    r0 = self->_reportDictionary;
    return r0;
}

-(void)setReportDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportDictionary, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reportDictionary, 0x0);
    return;
}

-(void *)buildRequestParameters {
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
    r20 = self;
    r0 = [[&var_50 super] buildRequestParameters];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    r0 = [r20 reportDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 reportDictionary];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            [r19 setObject:r25 forKeyedSubscript:@"placement_reference_id"];
            [r25 release];
            [r23 release];
    }
    r0 = [r20 reportDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 reportDictionary];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            [r19 setObject:r25 forKeyedSubscript:@"app_id"];
            [r25 release];
            [r23 release];
    }
    r0 = [r20 reportDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 reportDictionary];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            [r19 setObject:r25 forKeyedSubscript:@"adStartTime"];
            [r25 release];
            [r23 release];
    }
    r0 = [r20 reportDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 reportDictionary];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r2] retain];
            [r19 setObject:r22 forKeyedSubscript:@"user"];
            [r22 release];
            [r0 release];
    }
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end