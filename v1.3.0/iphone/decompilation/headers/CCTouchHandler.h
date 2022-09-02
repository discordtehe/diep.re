// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTOUCHHANDLER_H
#define CCTOUCHHANDLER_H


#import <Foundation/Foundation.h>


@interface CCTouchHandler : NSObject

@property (retain, nonatomic) id *delegate; // ivar: _delegate
@property (nonatomic) NSInteger priority; // ivar: _priority
@property (nonatomic) int enabledSelectors; // ivar: _enabledSelectors


-(id)initWithDelegate:(id)arg0 priority:(NSInteger)arg1 ;
-(void)dealloc;
+(id)handlerWithDelegate:(id)arg0 priority:(NSInteger)arg1 ;


@end


#endif