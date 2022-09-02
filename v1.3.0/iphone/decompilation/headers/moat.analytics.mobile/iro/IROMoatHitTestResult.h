// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATHITTESTRESULT_H
#define IROMOATHITTESTRESULT_H


#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


@interface IROMoatHitTestResult : NSObject

@property BOOL isVisible; // ivar: _isVisible
@property (weak) CALayer *hitLayer; // ivar: _hitLayer


-(id)initWithVis:(BOOL)arg0 withHitLayer:(id)arg1 ;


@end


#endif