// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDECCELAMPLITUDE_H
#define CCDECCELAMPLITUDE_H



@class CCActionInterval;

@interface CCDeccelAmplitude : CCActionInterval {
    CCActionInterval *_other;
}


@property (nonatomic) float rate; // ivar: _rate


-(id)initWithAction:(id)arg0 duration:(CGFloat)arg1 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithAction:(id)arg0 duration:(CGFloat)arg1 ;


@end


#endif