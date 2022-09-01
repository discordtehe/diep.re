// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOACTIONAUTOFAILURE_H
#define MCPROMOACTIONAUTOFAILURE_H


#import <Foundation/Foundation.h>

@protocol MCPromoActionDelegate;

@interface MCPromoActionAutoFailure : NSObject <MCPromoActionDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(int)executeAction:(id)arg0 withParameters:(id)arg1 successEvents:(id)arg2 successOnFirstEvent:(BOOL)arg3 failureEvents:(id)arg4 failureOnFirstEvent:(BOOL)arg5 ;


@end


#endif