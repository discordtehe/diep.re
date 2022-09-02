// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_ABSTRACTAVIDADSESSION_H
#define ADCOLONY_ABSTRACTAVIDADSESSION_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidDeferredAdSessionListener;

@interface AdColony_AbstractAvidAdSession : NSObject

@property (readonly, nonatomic) NSString *avidAdSessionId; // ivar: _avidAdSessionId
@property (readonly, nonatomic) NSObject<AdColony_AvidDeferredAdSessionListener> *avidDeferredAdSessionListener;


-(id)init;
-(void)registerAdView:(id)arg0 ;
-(void)unregisterAdView:(id)arg0 ;
-(void)endSession;
-(void)registerFriendlyObstruction:(id)arg0 ;


@end


#endif