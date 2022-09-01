// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCEASEPOLYNOMIAL_H
#define CCEASEPOLYNOMIAL_H



@class CCActionEase;
@protocol NSCopying;

@interface CCEasePolynomial : CCActionEase <NSCopying>

 {
    NSUInteger _polynomialOrder;
    CGFloat _intersetValue;
    BOOL _hasInflection;
}


@property (nonatomic) NSUInteger polynomialOrder;


-(id)initWithAction:(id)arg0 polynomialOrder:(float)arg1 ;
-(id)initWithAction:(id)arg0 ;
+(id)actionWithAction:(id)arg0 polynomialOrder:(float)arg1 ;
+(id)actionWithAction:(id)arg0 ;


@end


#endif