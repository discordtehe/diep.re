// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYDICTIONARYUTIL_H
#define OMIDTAPJOYDICTIONARYUTIL_H


#import <Foundation/Foundation.h>


@interface OMIDtapjoyDictionaryUtil : NSObject



+(id)stateWithFrame:(struct CGRect )arg0 clipsToBounds:(BOOL)arg1 ;
+(void)state:(id)arg0 addFriendlyObstructionForSessions:(id)arg1 ;
+(void)state:(id)arg0 addSessionId:(id)arg1 ;
+(void)state:(id)arg0 addChildState:(id)arg1 ;
+(BOOL)state:(id)arg0 isEqualToState:(id)arg1 ;
+(id)emptyState;
+(id)stringFromJSON:(id)arg0 ;


@end


#endif