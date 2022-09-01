// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYTEST_H
#define FBADQUALITYTEST_H


#import <Foundation/Foundation.h>

@class FBAdQualityStatistics;
@class FBAdQualityRule;

@interface FBAdQualityTest : NSObject

@property (retain, nonatomic) FBAdQualityStatistics *testStatistics; // ivar: _testStatistics
@property (readonly, nonatomic) FBAdQualityRule *rule; // ivar: _rule
@property (nonatomic) BOOL ended; // ivar: _ended
@property (nonatomic) BOOL passed; // ivar: _passed
@property (nonatomic) BOOL complete; // ivar: _complete


-(id)initWithRule:(id)arg0 ;
-(void)registerEnd;
-(void)registerProgress:(CGFloat)arg0 viewableRatio:(float)arg1 ;
-(void)resetContinuity;
-(void)onPassed;
-(void)onComplete;
-(void)onEnd;
+(id)testWithRule:(id)arg0 ;


@end


#endif