@implementation MCLocalizationResourceEntry

+(void *)mcLocalizationResourceEntryWithId:(void *)arg2 withLocalizedResourceId:(void *)arg3 withCountryCode:(void *)arg4 andRegionCode:(void *)arg5 isSpritesheetResource:(bool)arg6 shouldSkipResourceCheck:(bool)arg7 {
    r0 = [MCLocalizationResourceEntry alloc];
    r0 = [r0 initWithResourceEntryId:arg2 withLocalizedResourceId:arg3 withCountryCode:arg4 andRegionCode:arg5 isSpritesheetResource:arg6 shouldSkipResourceCheck:arg7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithResourceEntryId:(void *)arg2 withLocalizedResourceId:(void *)arg3 withCountryCode:(void *)arg4 andRegionCode:(void *)arg5 isSpritesheetResource:(bool)arg6 shouldSkipResourceCheck:(bool)arg7 {
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
    r19 = arg7;
    r20 = arg6;
    r21 = arg5;
    r23 = arg4;
    r24 = arg3;
    r0 = [[&var_50 super] initWithEntryId:arg2];
    r22 = r0;
    if (r0 != 0x0) {
            r22->_localizedResourceId = [r24 retain];
            r22->_countryCode = [r23 retain];
            r22->_regionCode = [r21 retain];
            *(int8_t *)(int64_t *)&r22->_isSpritesheetResource = r20;
            *(int8_t *)(int64_t *)&r22->_skipResourceCheck = r19;
    }
    r0 = r22;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_localizedResourceId));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_countryCode));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_regionCode));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void *)localizedResourceId {
    r0 = self->_localizedResourceId;
    return r0;
}

-(void *)countryCode {
    r0 = self->_countryCode;
    return r0;
}

-(void *)regionCode {
    r0 = self->_regionCode;
    return r0;
}

-(bool)isSpritesheetResource {
    r0 = *(int8_t *)(int64_t *)&self->_isSpritesheetResource;
    return r0;
}

-(bool)skipResourceCheck {
    r0 = *(int8_t *)(int64_t *)&self->_skipResourceCheck;
    return r0;
}

@end