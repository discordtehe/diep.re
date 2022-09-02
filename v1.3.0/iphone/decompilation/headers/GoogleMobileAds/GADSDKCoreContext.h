// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSDKCORECONTEXT_H
#define GADSDKCORECONTEXT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADJSContext;
@class GADPersistentStateMonitor;

@interface GADSDKCoreContext : NSObject {
    GADJSContext *_context;
    NSMutableArray *_monitors;
    GADPersistentStateMonitor *_persistentStateMonitor;
}


@property (readonly, nonatomic) id *messageSource;


-(void)setJSContext:(id)arg0 ;
-(void)normalizeAdBody:(id)arg0 headers:(id)arg1 statusCode:(NSInteger)arg2 serverRequest:(id)arg3 completionHandler:(id)arg4 ;
-(void)adDictionaryFromSignals:(id)arg0 completionHandler:(id)arg1 ;
-(void)encryptSignalDictionary:(id)arg0 completionHandler:(id)arg1 ;
-(void)notifyBlockedOpenActionWithParameters:(id)arg0 ;
-(void)runGcacheWithArguments:(id)arg0 completionHandler:(id)arg1 ;
-(void)fetchRemoteConfigurationWithSignals:(id)arg0 completionHandler:(id)arg1 ;
-(void)activate;
-(void)reloadSavedState;
-(void)requestSDKCoreConstantsUpdate;
-(void)updateSDKCoreConstants:(id)arg0 ;
+(void)loadWithEventContext:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif