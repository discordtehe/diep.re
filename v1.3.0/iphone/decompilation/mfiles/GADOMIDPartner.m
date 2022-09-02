@implementation GADOMIDPartner

-(void *)versionString {
    r0 = self->_versionString;
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r16 = *___stack_chk_guard;
    var_8 = **___stack_chk_guard;
    var_48 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x18 forKeys:&var_28 count:0x2];
    if (**___stack_chk_guard == var_8) {
            r0 = var_48;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithName:(void *)arg2 versionString:(void *)arg3 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    r0 = objc_storeStrong(&var_28, arg3);
    r0 = [[&var_38 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008db074;

loc_1008dafb0:
    if ([0x0 length] == 0x0 || [var_28 length] == 0x0) goto loc_1008dafe8;

loc_1008daffc:
    r0 = [0x0 copy];
    r9 = var_10->_name;
    var_10->_name = r0;
    [r9 release];
    r0 = [var_28 copy];
    r9 = var_10->_versionString;
    var_10->_versionString = r0;
    [r9 release];
    goto loc_1008db074;

loc_1008db074:
    var_8 = [var_10 retain];
    goto loc_1008db08c;

loc_1008db08c:
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008dafe8:
    var_8 = 0x0;
    goto loc_1008db08c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_versionString, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end