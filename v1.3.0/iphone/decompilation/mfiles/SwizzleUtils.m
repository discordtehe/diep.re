@implementation SwizzleUtils

+(void)safeMethodSwizzling:(void *)arg2 originalSelector:(void *)arg3 swizzledSelector:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg2;
    r21 = class_getInstanceMethod(arg2, arg3);
    r0 = class_getInstanceMethod(r20, r19);
    r22 = r0;
    if (class_addMethod(r20, arg3, method_getImplementation(r0), method_getTypeEncoding(r22)) != 0x0) {
            class_replaceMethod(r20, r19, method_getImplementation(r21), method_getTypeEncoding(r21));
    }
    else {
            method_exchangeImplementations(r21, r22);
    }
    return;
}

@end