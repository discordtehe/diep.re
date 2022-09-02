@implementation __ARCLite__

+(void)load {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (**_kCFCoreFoundationVersionNumber < *0x100bfa1b8) {
            class_replaceMethod(objc_getClass("NSMutableDictionary"), protocol_getMethodDescription(@protocol(), @selector(setObject:forKeyedSubscript:), 0x1, 0x1), 0x1009f61a4, @selector(setObject:forKeyedSubscript:));
    }
    if (*_objc_readClassPair == 0x0) {
            _dyld_register_func_for_add_image(0x1009f61c4);
            r0 = objc_getClass("NSUndoManagerProxy");
            if (r0 != 0x0) {
                    r19 = r0;
                    r0 = class_getInstanceVariable(r0, "_targetClass");
                    *0x1011dc9b0 = r0;
                    if (r0 != 0x0) {
                            class_addMethod(r19, @selector(isKindOfClass:), 0x1009f65a4, "@:#");
                    }
            }
            r0 = objc_getClass("NSManagedObject");
            if (r0 != 0x0) {
                    r19 = object_getClass(r0);
                    r0 = class_getInstanceMethod(r0, @selector(init));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f65e8);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9b8 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(allocWithEntity:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f6604);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9c0 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(allocBatch:withEntity:count:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f6620);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9c8 = r0;
            }
            *0x1011dc9d0 = objc_getClass("NSMutableDictionary");
            *0x1011dc9d8 = objc_getClass("NSConstantString");
            *0x1011dc9e0 = objc_getClass("NSString");
            r0 = objc_getClass("NSKnownKeysMappingStrategy1");
            if (r0 != 0x0) {
                    r19 = r0;
                    r0 = class_getInstanceMethod(r0, @selector(fastIndexForKnownKey:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f6670);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9e8 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(indexForKey:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f66e0);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9f0 = r0;
            }
            r0 = objc_getClass("NSKnownKeysDictionary1");
            if (r0 != 0x0) {
                    r19 = r0;
                    r0 = class_getInstanceMethod(r0, @selector(objectForKey:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f6750);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dc9f8 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(removeObjectForKey:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f67c0);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dca00 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(setObject:forKey:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f6834);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dca08 = r0;
                    r0 = class_getInstanceMethod(r19, @selector(addEntriesFromDictionary:));
                    if (r0 != 0x0) {
                            r0 = method_setImplementation(r0, 0x1009f68bc);
                    }
                    else {
                            r0 = 0x1009f76a4;
                    }
                    *0x1011dca10 = r0;
            }
    }
    return;
}

@end