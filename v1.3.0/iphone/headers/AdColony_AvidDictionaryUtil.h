// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDDICTIONARYUTIL_H
#define ADCOLONY_AVIDDICTIONARYUTIL_H


#import <Foundation/Foundation.h>


@interface AdColony_AvidDictionaryUtil : NSObject



+(id)stateWithFrame:(struct CGRect )arg0 clipsToBounds:(BOOL)arg1 ;
+(void)state:(id)arg0 addFriendlyObstructionForSessions:(id)arg1 ;
+(void)state:(id)arg0 addSessionId:(id)arg1 ;
+(void)state:(id)arg0 addChildState:(id)arg1 ;
+(BOOL)state:(id)arg0 isEqualToState:(id)arg1 ;
+(id)emptyState;
+(id)emptyRootView;
+(id)stateWithRoot:(id)arg0 timestamp:(CGFloat)arg1 ;
+(id)jsonStateWithRoot:(id)arg0 timestamp:(CGFloat)arg1 ;
+(id)jsonStringFromDictionary:(id)arg0 ;


@end


#endif