@implementation TRSurveyURLRequest

-(void *)surveyURLString {
    r0 = self->_surveyURLString;
    return r0;
}

-(void *)initWithSurveyURL:(void *)arg2 andCPIdentifier:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setName:@"Track URL"];
            [r21 setShouldLog:0x0];
            [r21 setRelativeURL:*0x100e7d648];
            [r21 setSurveyURLString:r19];
            [r21 setCpIdentifier:r20];
            r23 = [[r21 requestPayload] retain];
            r24 = [[r21 surveyURLString] retain];
            [r23 setObject:r24 forKey:@"survey_url"];
            [r24 release];
            [r23 release];
            r22 = [[r21 requestPayload] retain];
            r23 = [[r21 cpIdentifier] retain];
            [r22 setObject:r23 forKey:@"cp_identifier"];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setSurveyURLString:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_surveyURLString, arg2);
    return;
}

-(void *)cpIdentifier {
    r0 = self->_cpIdentifier;
    return r0;
}

-(void)setCpIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cpIdentifier, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cpIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_surveyURLString, 0x0);
    return;
}

@end