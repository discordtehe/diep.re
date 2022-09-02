@implementation MCLocalizationTextEntry

+(void *)mcLocalizationTextEntryWithId:(void *)arg2 withLocalizedText:(void *)arg3 {
    r0 = [MCLocalizationTextEntry alloc];
    r0 = [r0 initWithTextEntryId:arg2 withLocalizedText:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTextEntryId:(void *)arg2 withLocalizedText:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [[&var_20 super] initWithEntryId:arg2];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_localizedText = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void *)localizedText {
    r0 = self->_localizedText;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_localizedText));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

@end