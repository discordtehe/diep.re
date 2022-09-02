@implementation MRSupportsProperty

+(void *)defaultProperty {
    r20 = [[self supportedFeatures] retain];
    r19 = [[self propertyWithSupportedFeaturesDictionary:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)supportedFeatures {
    r31 = r31 - 0xa0;
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
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedCarrierInfo];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"carrierName"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    [r19 release];
    r19 = [[NSNumber numberWithBool:r21] retain];
    r21 = [[NSNumber numberWithBool:r21] retain];
    r22 = [@(NO) retain];
    r24 = [@(NO) retain];
    r23 = [@(YES) retain];
    r20 = [[NSDictionary dictionaryWithObjectsAndKeys:r19] retain];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)propertyWithSupportedFeaturesDictionary:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() init];
    r0 = [r20 objectForKey:@"sms"];
    r0 = [r0 retain];
    [r19 setSupportsSms:[r0 boolValue]];
    [r0 release];
    r0 = [r20 objectForKey:@"tel"];
    r0 = [r0 retain];
    [r19 setSupportsTel:[r0 boolValue]];
    [r0 release];
    [r19 setSupportsCalendar:0x0];
    [r19 setSupportsStorePicture:0x0];
    r22 = [[r20 objectForKey:@"inlineVideo"] retain];
    [r20 release];
    [r19 setSupportsInlineVideo:[r22 boolValue]];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)javascriptBooleanStringFromBoolValue:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"false";
            }
            else {
                    r0 = @"true";
            }
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)description {
    r19 = [[self javascriptBooleanStringFromBoolValue:[self supportsSms]] retain];
    r21 = [[self javascriptBooleanStringFromBoolValue:[self supportsTel]] retain];
    r24 = [[self javascriptBooleanStringFromBoolValue:[self supportsCalendar]] retain];
    r25 = [[self javascriptBooleanStringFromBoolValue:[self supportsStorePicture]] retain];
    r22 = [[self javascriptBooleanStringFromBoolValue:[self supportsInlineVideo]] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r25 release];
    [r24 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setSupportsSms:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportsSms = arg2;
    return;
}

-(bool)supportsSms {
    r0 = *(int8_t *)(int64_t *)&self->_supportsSms;
    return r0;
}

-(void)setSupportsCalendar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportsCalendar = arg2;
    return;
}

-(bool)supportsCalendar {
    r0 = *(int8_t *)(int64_t *)&self->_supportsCalendar;
    return r0;
}

-(void)setSupportsTel:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportsTel = arg2;
    return;
}

-(bool)supportsTel {
    r0 = *(int8_t *)(int64_t *)&self->_supportsTel;
    return r0;
}

-(bool)supportsStorePicture {
    r0 = *(int8_t *)(int64_t *)&self->_supportsStorePicture;
    return r0;
}

-(void)setSupportsInlineVideo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportsInlineVideo = arg2;
    return;
}

-(void)setSupportsStorePicture:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportsStorePicture = arg2;
    return;
}

-(bool)supportsInlineVideo {
    r0 = *(int8_t *)(int64_t *)&self->_supportsInlineVideo;
    return r0;
}

@end