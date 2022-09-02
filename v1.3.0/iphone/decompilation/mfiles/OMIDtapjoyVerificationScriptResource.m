@implementation OMIDtapjoyVerificationScriptResource

-(void *)initWithURL:(void *)arg2 vendorKey:(void *)arg3 parameters:(void *)arg4 {
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
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_100962090;

loc_100961fd0:
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 length] == 0x0 || [r20 length] == 0x0) goto loc_1009620a0;

loc_100962010:
    r25 = @selector(length);
    r25 = objc_msgSend(r21, r25);
    [r24 release];
    if (r25 == 0x0) goto loc_1009620a8;

loc_10096202c:
    objc_storeStrong((int64_t *)&r22->_URL, r23);
    r0 = [r20 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_vendorKey));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    r0 = [r21 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_parameters));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    goto loc_100962090;

loc_100962090:
    r23 = [r22 retain];
    goto loc_1009620ac;

loc_1009620ac:
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;

loc_1009620a8:
    r23 = 0x0;
    goto loc_1009620ac;

loc_1009620a0:
    [r24 release];
    goto loc_1009620a8;
}

-(void *)URL {
    r0 = self->_URL;
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
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
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100962188;

loc_10096213c:
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 == 0x0) goto loc_100962198;

loc_100962174:
    objc_storeStrong((int64_t *)&r20->_URL, r21);
    goto loc_100962188;

loc_100962188:
    r21 = [r20 retain];
    goto loc_10096219c;

loc_10096219c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100962198:
    r21 = 0x0;
    goto loc_10096219c;
}

-(void *)vendorKey {
    r0 = self->_vendorKey;
    return r0;
}

-(void *)parameters {
    r0 = self->_parameters;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    objc_storeStrong((int64_t *)&self->_vendorKey, 0x0);
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    return;
}

@end