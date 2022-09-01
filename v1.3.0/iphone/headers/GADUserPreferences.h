// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUSERPREFERENCES_H
#define GADUSERPREFERENCES_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADUserPreferences : NSObject {
    NSNumber *_NPA;
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADObserverCollection *_observers;
    BOOL _adRequested;
    NSNumber *_lastRequestLevelTFCD;
    NSNumber *_lastRequestLevelNPA;
}


@property (readonly, nonatomic) NSNumber *NPA;


-(id)init;
-(void)adRequested;
-(void)updateLastRequestParameters:(id)arg0 ;
+(id)sharedInstance;


@end


#endif