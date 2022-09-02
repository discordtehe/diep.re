@implementation MPClassMapper

-(void *)init {
    [self doesNotRecognizeSelector:_cmd];
    [self release];
    return 0x0;
}

-(void *)initWithDestinationClass:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r20 + 0x8, r19);
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
    r20 = self;
    r19 = [arg2 retain];
    [r20 requiredSourceObjectClass];
    if ([r19 isKindOfClass:r2] != 0x0 && [[r20 destinationClass] isSubclassOfClass:[MPVASTModel class]] != 0x0) {
            if ([[r20 destinationClass] instancesRespondToSelector:@selector(initWithDictionary:)] != 0x0) {
                    [r20 destinationClass];
                    r20 = [objc_alloc() initWithDictionary:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)requiredSourceObjectClass {
    r0 = [NSDictionary class];
    return r0;
}

-(void *)destinationClass {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setDestinationClass:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end