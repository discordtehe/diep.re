@implementation VungleJSExpressionOperation

-(void *)initWithJSExpression:(void *)arg2 webViewFacade:(void *)arg3 resultBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] initWithCommand:r22 parameters:0x0 webViewFacade:r20 resultBlock:arg4];
    [r20 release];
    [r22 release];
    r0 = r0;
    return r0;
}

-(void)execute {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)constructJavascriptExpression {
    r0 = [self command];
    return r0;
}

@end