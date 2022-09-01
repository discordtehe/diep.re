// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADPLACERINVOCATION_H
#define MPADPLACERINVOCATION_H


#import <Foundation/Foundation.h>


@interface MPAdPlacerInvocation : NSObject



+(id)invocationForTarget:(id)arg0 selector:(SEL)arg1 indexPath:(id)arg2 streamAdPlacer:(id)arg3 ;
+(id)invokeForTarget:(id)arg0 with2ArgSelector:(SEL)arg1 firstArg:(id)arg2 secondArg:(id)arg3 streamAdPlacer:(id)arg4 ;
+(id)invokeForTarget:(id)arg0 with3ArgSelector:(SEL)arg1 firstArg:(id)arg2 secondArg:(id)arg3 thirdArg:(id)arg4 streamAdPlacer:(id)arg5 ;
+(id)invokeForTarget:(id)arg0 with3ArgIntSelector:(SEL)arg1 firstArg:(id)arg2 secondArg:(NSInteger)arg3 thirdArg:(id)arg4 streamAdPlacer:(id)arg5 ;
+(BOOL)boolResultForInvocation:(id)arg0 defaultValue:(BOOL)arg1 ;
+(id)resultForInvocation:(id)arg0 defaultValue:(id)arg1 ;
+(NSInteger)integerResultForInvocation:(id)arg0 defaultValue:(NSInteger)arg1 ;


@end


#endif