// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCONTROLLER_H
#define ADCCONTROLLER_H


#import <Foundation/Foundation.h>

@class ADCWebViewModule;
@class ADCJSCoreModule;
@class ADCModule;

@interface ADCController : NSObject {
    NSString *_launchServerURL;
    NSString *_controllerConfigFilepath;
    NSString *_controllerDataFilepath;
    ADCWebViewModule *_webViewModule;
    ADCJSCoreModule *_jsCoreModule;
    int _decryptionRetries;
}


@property (retain, nonatomic) ADCModule *module; // ivar: _module
@property (nonatomic) BOOL shouldForceBootstrap; // ivar: _shouldForceBootstrap
@property (nonatomic) BOOL loaded; // ivar: _loaded
@property (nonatomic) BOOL useStagingLaunchServer; // ivar: _useStagingLaunchServer


-(id)init;
-(void)loadWithCompletion:(id)arg0 ;
-(id)decryptControllerSource:(id)arg0 controllerConfig:(id)arg1 ;
-(void)getPIEKey:(id)arg0 ;
-(void)getInitialConfigAndDataWithCompletionHandler:(id)arg0 ;
-(id)externalAvidAdSessionContext;
-(BOOL)beginMessagePassingWithControllerSource:(id)arg0 ;
-(void)evaluateJavascriptString:(id)arg0 ;
-(id)valueEvaluatingJavascriptString:(id)arg0 ;
-(BOOL)checkSentinel;
-(void)update;
-(void)getMostUpdatedController:(id)arg0 oldURL:(id)arg1 oldVersion:(id)arg2 ;
-(BOOL)validateNewVersion:(id)arg0 againstOldVersion:(id)arg1 ;
-(void)downloadControllerConfigWithCompletionHandler:(id)arg0 ;
-(void)downloadControllerWithURL:(id)arg0 completionHandler:(id)arg1 ;
-(void)configureDynamicControls:(id)arg0 ;
-(void)disable;
-(BOOL)recover;
+(id)sharedController;


@end


#endif