// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCVIEWHANDLER_H
#define TJCVIEWHANDLER_H


#import <Foundation/Foundation.h>

@class TJCViewController;

@interface TJCViewHandler : NSObject

@property BOOL isRetina; // ivar: _isRetina
@property (retain, nonatomic) TJCViewController *viewController; // ivar: _viewController
@property (nonatomic) BOOL isViewShowing; // ivar: _isViewShowing
@property (nonatomic) int prerenderLimit; // ivar: _prerenderLimit
@property (nonatomic) int prerenderCount; // ivar: _prerenderCount


-(id)init;
-(void)animateTJCView:(id)arg0 isClosing:(BOOL)arg1 ;
-(void)setViewOpen:(BOOL)arg0 ;
-(BOOL)isViewOpen;
-(void)removeTempView:(id)arg0 ;
+(int)getPrerenderLimit;
+(void)incrementPrerenderCount;
+(void)decrementPrerenderCount;
+(int)getPrerenderCount;
+(BOOL)canPrerenderAdUnit;


@end


#endif