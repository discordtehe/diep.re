// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCEASERATEACTION_H
#define CCEASERATEACTION_H



@class CCActionEase;
@protocol NSCopying;

@interface CCEaseRateAction : CCActionEase <NSCopying>



@property (nonatomic) float rate; // ivar: _rate


-(id)initWithAction:(id)arg0 rate:(float)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(id)reverse;
+(id)actionWithAction:(id)arg0 rate:(float)arg1 ;


@end


#endif