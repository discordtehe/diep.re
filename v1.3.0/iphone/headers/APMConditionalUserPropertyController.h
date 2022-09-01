// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMCONDITIONALUSERPROPERTYCONTROLLER_H
#define APMCONDITIONALUSERPROPERTYCONTROLLER_H


#import <Foundation/Foundation.h>


@interface APMConditionalUserPropertyController : NSObject



-(id)processEventOnWorkerQueue:(id)arg0 ;
-(BOOL)removeTimedOutCUPWithTimedOutEvents:(*id)arg0 ;
-(BOOL)removeExpiredCUPWithExpiredEvents:(*id)arg0 ;
-(id)updateConditionalUserPropertiesWithEventNameOnWorkerQueue:(id)arg0 ;
-(void)setConditionalUserProperty:(id)arg0 forName:(id)arg1 ;
-(void)clearConditionalUserPropertyWithClearEvent:(id)arg0 forName:(id)arg1 ;
-(id)conditionalUserPropertiesWithNamePrefix:(id)arg0 filterByOrigin:(id)arg1 ;
-(void)setConditionalUserPropertyOnWorkerQueue:(id)arg0 ;
-(void)removeConditionalUserPropertyOnWorkerQueue:(id)arg0 ;
+(id)sharedInstance;


@end


#endif