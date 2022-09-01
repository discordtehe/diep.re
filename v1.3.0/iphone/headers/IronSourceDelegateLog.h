// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEDELEGATELOG_H
#define IRONSOURCEDELEGATELOG_H


#import <Foundation/Foundation.h>

@protocol ISLogDelegate;

@interface IronSourceDelegateLog : NSObject <ISLogDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)sendLog:(id)arg0 level:(int)arg1 tag:(int)arg2 ;


@end


#endif