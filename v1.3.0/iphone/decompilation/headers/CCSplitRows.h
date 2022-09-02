// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPLITROWS_H
#define CCSPLITROWS_H



@class CCTiledGrid3DAction;

@interface CCSplitRows : CCTiledGrid3DAction {
    NSUInteger _rows;
    CGSize _winSize;
}




-(id)initWithRows:(int)arg0 duration:(CGFloat)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 rows:(NSUInteger)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithRows:(int)arg0 duration:(CGFloat)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 rows:(NSUInteger)arg1 ;


@end


#endif