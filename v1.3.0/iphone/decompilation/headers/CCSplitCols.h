// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPLITCOLS_H
#define CCSPLITCOLS_H



@class CCTiledGrid3DAction;

@interface CCSplitCols : CCTiledGrid3DAction {
    NSUInteger _cols;
    CGSize _winSize;
}




-(id)initWithCols:(int)arg0 duration:(CGFloat)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 cols:(NSUInteger)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithCols:(int)arg0 duration:(CGFloat)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 cols:(NSUInteger)arg1 ;


@end


#endif