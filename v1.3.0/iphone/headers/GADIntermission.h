// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERMISSION_H
#define GADINTERMISSION_H


#import <Foundation/Foundation.h>

@class GADIntermissionStateMonitor;
@class GADObserverCollection;
@class GADAd;
@protocol GADPresenterSource;
@protocol GADEventContextSource;

@interface GADIntermission : NSObject <GADPresenterSource>

 {
    NSHashTable *_activePresenters;
    NSHashTable *_deactivatingParticipants;
    NSUInteger _activePresentersCount;
    NSUInteger _deactivatingParticipantsCount;
    GADIntermissionStateMonitor *_stateMonitor;
    GADObserverCollection *_observers;
    id<GADEventContextSource> *_contextSource;
    GADAd *_ad;
    GADAd *_strongAd;
}




-(id)initWithAd:(id)arg0 stateMonitor:(id)arg1 ;
-(id)initWithAd:(id)arg0 ;
-(id)activePresenters;
-(void)presentingObjectDidDeallocate;
-(void)cleanUpDeallocatedParticipants;
-(void)presenterWillPresentScreen:(id)arg0 ;
-(void)presenterWillRelinquishScreen:(id)arg0 ;
-(void)presenterDidRelinquishScreen:(id)arg0 ;
-(void)didBegin;
-(void)willEnd;
-(void)didEnd;
+(id)sharedInstance;


@end


#endif