// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDCOMMAND_H
#define ADCOLONY_AVIDCOMMAND_H


#import <Foundation/Foundation.h>


@interface AdColony_AvidCommand : NSObject



+(id)setNativeViewState:(id)arg0 ;
+(id)setAppState:(NSInteger)arg0 ;
+(id)setAvidAdSessionContext:(id)arg0 ;
+(id)publishVideoEvent:(id)arg0 data:(id)arg1 ;
+(id)publishReadyEventForDeferredAdSession;
+(id)callAvidbridge:(id)arg0 ;


@end


#endif