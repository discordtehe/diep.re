// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTWIRL_H
#define CCTWIRL_H



@class CCGrid3DAction;

@interface CCTwirl : CCGrid3DAction {
    CGPoint _position;
    NSUInteger _twirls;
}


@property (nonatomic) CGPoint position;
@property (nonatomic) float amplitude; // ivar: _amplitude
@property (nonatomic) float amplitudeRate; // ivar: _amplitudeRate


-(id)initWithPosition:(struct CGPoint )arg0 twirls:(int)arg1 amplitude:(float)arg2 grid:(struct CGSize )arg3 duration:(CGFloat)arg4 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 twirls:(NSUInteger)arg3 amplitude:(float)arg4 ;
-(void)update:(CGFloat)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)actionWithPosition:(struct CGPoint )arg0 twirls:(int)arg1 amplitude:(float)arg2 grid:(struct CGSize )arg3 duration:(CGFloat)arg4 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 twirls:(NSUInteger)arg3 amplitude:(float)arg4 ;


@end


#endif