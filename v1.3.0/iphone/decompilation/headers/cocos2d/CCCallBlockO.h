// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCALLBLOCKO_H
#define CCCALLBLOCKO_H



@class CCActionInstant;
@protocol NSCopying;

@interface CCCallBlockO : CCActionInstant <NSCopying>

 {
    id *_block;
}


@property (retain, nonatomic) id *object; // ivar: _object


// -(id)initWithBlock:(id)arg0 object:(unk)arg1  ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)execute;
-(void)dealloc;
// +(id)actionWithBlock:(id)arg0 object:(unk)arg1  ;


@end


#endif