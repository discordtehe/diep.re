// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCRASHREPORTER_H
#define GADCRASHREPORTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADCrashReporter : NSObject {
    GADObserverCollection *_observers;
    NSArray *_crashFileURLs;
    atomic_flag _hasReported;
}




-(id)init;
-(void)updateSettings;
-(void)storeEnvironmentInfo;
-(void)reportIssues;
-(void)reportURL:(id)arg0 ;
+(id)sharedInstance;


@end


#endif