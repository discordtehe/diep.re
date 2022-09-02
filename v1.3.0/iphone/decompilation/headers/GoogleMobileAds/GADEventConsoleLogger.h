// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADEVENTCONSOLELOGGER_H
#define GADEVENTCONSOLELOGGER_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADEventConsoleLogger : NSObject {
    NSOperationQueue *_operationQueue;
    GADObserverCollection *_settingsUpdateObservers;
    GADObserverCollection *_loggingObservers;
}




-(id)init;
-(void)updateEnabled;
-(void)logEvent:(id)arg0 ;
+(id)sharedInstance;


@end


#endif