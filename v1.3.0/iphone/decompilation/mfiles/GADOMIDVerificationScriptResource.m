@implementation GADOMIDVerificationScriptResource

-(void *)initWithURL:(void *)arg2 vendorKey:(void *)arg3 parameters:(void *)arg4 {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    objc_storeStrong(r29 - 0x28, arg3);
    objc_storeStrong(r29 - 0x30, arg4);
    r0 = [[&var_40 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008e1a1c;

loc_1008e18c4:
    r0 = [0x0 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    var_68 = r0;
    if ([0x0 length] == 0x0 && [r0 length] != 0x0 && [0x0 length] != 0x0) {
    }
    [var_68 release];
    if (0x1 == 0x0) goto loc_1008e1980;

loc_1008e196c:
    var_8 = 0x0;
    goto loc_1008e1a34;

loc_1008e1a34:
    objc_storeStrong(r29 - 0x30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008e1980:
    objc_storeStrong((int64_t *)&var_10->_URL, 0x0);
    r0 = [0x0 copy];
    r9 = var_10->_vendorKey;
    var_10->_vendorKey = r0;
    [r9 release];
    r0 = [0x0 copy];
    r9 = var_10->_parameters;
    var_10->_parameters = r0;
    [r9 release];
    goto loc_1008e1a1c;

loc_1008e1a1c:
    var_8 = [var_10 retain];
    goto loc_1008e1a34;
}

-(void *)URL {
    r0 = self->_URL;
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    r0 = [[&var_30 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008e1ba4;

loc_1008e1b18:
    r0 = [0x0 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    var_50 = [r0 length];
    [r0 release];
    if (var_50 != 0x0) goto loc_1008e1b80;

loc_1008e1b6c:
    var_8 = 0x0;
    goto loc_1008e1bbc;

loc_1008e1bbc:
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008e1b80:
    objc_storeStrong((int64_t *)&var_10->_URL, 0x0);
    goto loc_1008e1ba4;

loc_1008e1ba4:
    var_8 = [var_10 retain];
    goto loc_1008e1bbc;
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