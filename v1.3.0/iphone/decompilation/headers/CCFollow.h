// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFOLLOW_H
#define CCFOLLOW_H



@class CCAction;
@class CCNode;
@protocol NSCopying;

@interface CCFollow : CCAction <NSCopying>

 {
    CCNode *_followedNode;
    BOOL _boundaryFullyCovered;
    CGPoint _halfScreenSize;
    CGPoint _fullScreenSize;
    float _leftBoundary;
    float _rightBoundary;
    float _topBoundary;
    float _bottomBoundary;
}


@property (nonatomic) BOOL boundarySet; // ivar: _boundarySet


-(id)initWithTarget:(id)arg0 ;
-(id)initWithTarget:(id)arg0 worldBoundary:(struct CGRect )arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)step:(CGFloat)arg0 ;
-(BOOL)isDone;
-(void)stop;
-(void)dealloc;
+(id)actionWithTarget:(id)arg0 ;
+(id)actionWithTarget:(id)arg0 worldBoundary:(struct CGRect )arg1 ;


@end


#endif