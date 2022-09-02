@implementation FlatBundleHelper

-(void)dealloc {
    [self setCollectionKeys:0x0];
    [[&var_20 super] dealloc];
    return;
}

+(void *)helperForObject:(void *)arg2 withParent:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 setParentObject:arg3];
    [r0 setObject:arg2];
    [r0 setCollectionKeys:0x0];
    r0 = r0;
    return r0;
}

-(void *)parentObject {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setParentObject:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void)setObject:(void *)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void *)object {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)collectionKeys {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCollectionKeys:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end