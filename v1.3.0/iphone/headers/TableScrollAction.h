// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TABLESCROLLACTION_H
#define TABLESCROLLACTION_H



@class CCActionInterval;
@class CCTable;

@interface TableScrollAction : CCActionInterval {
    float _originalOffset;
}


@property (retain, nonatomic) CCTable *table; // ivar: _table
@property (nonatomic) float numNodesToScroll; // ivar: _numNodesToScroll


-(void)dealloc;
-(void)update:(CGFloat)arg0 ;
-(void)stop;
-(void)startWithTarget:(id)arg0 ;
-(id)initWithDuration:(CGFloat)arg0 table:(id)arg1 numNodesToScroll:(float)arg2 ;
+(id)actionWithDuration:(CGFloat)arg0 table:(id)arg1 numNodesToScroll:(float)arg2 ;


@end


#endif