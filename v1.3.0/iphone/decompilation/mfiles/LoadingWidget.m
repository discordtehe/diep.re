@implementation LoadingWidget

+(void *)widget {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:r2 owner:r3];
    return r0;
}

+(void *)widgetRunningAnim {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:r2 owner:r3];
    sub_10004ef7c(r0, @"LoopLoading");
    r0 = r19;
    return r0;
}

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    [self stopAnim];
    [[&var_20 super] dealloc];
    return;
}

-(void)didLoadFromCCBAfterChildren {
    return;
}

-(void)setLoadingDescription:(void *)arg2 {
    [self->_descriptionLabel setString:r2];
    return;
}

-(void)runAnim {
    sub_10004ef7c(self, @"LoopLoading");
    return;
}

-(void)stopAnim {
    [self stopAllActions];
    return;
}

@end