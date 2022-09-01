// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCWAVES_H
#define CCWAVES_H



@class CCGrid3DAction;

@interface CCWaves : CCGrid3DAction {
    NSUInteger _waves;
    BOOL _vertical;
    BOOL _horizontal;
}


@property (nonatomic) float amplitude; // ivar: _amplitude
@property (nonatomic) float amplitudeRate; // ivar: _amplitudeRate


-(id)initWithWaves:(int)arg0 amplitude:(float)arg1 horizontal:(BOOL)arg2 vertical:(BOOL)arg3 grid:(struct CGSize )arg4 duration:(CGFloat)arg5 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 waves:(NSUInteger)arg2 amplitude:(float)arg3 horizontal:(BOOL)arg4 vertical:(BOOL)arg5 ;
-(void)update:(CGFloat)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)actionWithWaves:(int)arg0 amplitude:(float)arg1 horizontal:(BOOL)arg2 vertical:(BOOL)arg3 grid:(struct CGSize )arg4 duration:(CGFloat)arg5 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 waves:(NSUInteger)arg2 amplitude:(float)arg3 horizontal:(BOOL)arg4 vertical:(BOOL)arg5 ;


@end


#endif