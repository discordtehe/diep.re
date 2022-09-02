@implementation MPVASTResource

-(void *)content {
    r0 = self->_content;
    return r0;
}

+(void *)modelMap {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_18 forKeys:&var_28 count:0x2];
    r0 = [r0 retain];
    if (**___stack_chk_guard == var_8) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)staticCreativeType {
    r0 = self->_staticCreativeType;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_staticCreativeType, 0x0);
    objc_storeStrong((int64_t *)&self->_content, 0x0);
    return;
}

@end