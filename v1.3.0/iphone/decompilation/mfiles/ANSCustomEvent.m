@implementation ANSCustomEvent

-(void *)initWithCustomEventName:(void *)arg2 customAttributes:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_customEventName, r22);
            objc_storeStrong((int64_t *)&r23->_customAttributes, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)name {
    objc_retainAutorelease(@"custom");
    return @"custom";
}

-(void *)attributesDictionary {
    r0 = [ANSAttributeDictionary alloc];
    r0 = [r0 initWithDictionary:self->_customAttributes];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[self identifier] retain];
    r20 = [[self customEventName] retain];
    r0 = [self attributesDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 dictionaryRepresentation] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_68 count:0x3];
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    [self class];
    r22 = [[self customEventName] retain];
    r19 = [[self attributesDictionary] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)customEventName {
    r0 = self->_customEventName;
    return r0;
}

-(void *)customAttributes {
    r0 = self->_customAttributes;
    return r0;
}

-(void)setCustomAttributes:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customAttributes, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_customEventName, 0x0);
    return;
}

@end