@implementation MPStringToNumberMapper

-(void *)init {
    [self doesNotRecognizeSelector:_cmd];
    [self release];
    return 0x0;
}

-(void *)initWithNumberStyle:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r21);
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            [*(r20 + 0x8) setNumberStyle:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)mappedObjectFromSourceObject:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [r20 requiredSourceObjectClass];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r20 numberFormatter];
            r0 = [r0 retain];
            r20 = [[r0 numberFromString:r19] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)requiredSourceObjectClass {
    r0 = [NSString class];
    return r0;
}

-(void *)numberFormatter {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setNumberFormatter:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end