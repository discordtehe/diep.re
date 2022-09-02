@implementation VungleNotifyPrepareStoreSuccessGenerator

-(void *)generateJavascript {
    objc_retainAutorelease(@"vungle.mraidBridgeExt.notifyPrepareStoreViewSuccess();");
    return @"vungle.mraidBridgeExt.notifyPrepareStoreViewSuccess();";
}

@end