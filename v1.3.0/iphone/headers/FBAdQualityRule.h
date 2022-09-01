// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYRULE_H
#define FBADQUALITYRULE_H


#import <Foundation/Foundation.h>


@interface FBAdQualityRule : NSObject

@property (readonly, nonatomic, getter=isContinuous) BOOL continuous; // ivar: _continuous
@property (readonly, copy, nonatomic) id *endCallback; // ivar: _endCallback
@property (readonly, nonatomic) float viewableRatio; // ivar: _viewableRatio
@property (readonly, nonatomic) CGFloat viewableSeconds; // ivar: _viewableSeconds


-(id)initWithViewableRatio:(float)arg0 viewableSeconds:(CGFloat)arg1 continuous:(BOOL)arg2 endCallback:(id)arg3 ;
-(id)init;
+(id)mrcRuleWithEndCallback:(id)arg0 ;
+(id)viewableImpressionRuleWithEndCallback:(id)arg0 ;
+(id)ruleWithViewableRatio:(float)arg0 viewableSeconds:(CGFloat)arg1 continuous:(BOOL)arg2 endCallback:(id)arg3 ;


@end


#endif