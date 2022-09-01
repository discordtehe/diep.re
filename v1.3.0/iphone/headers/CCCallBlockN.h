// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCALLBLOCKN_H
#define CCCALLBLOCKN_H



@class CCActionInstant;
@protocol NSCopying;

@interface CCCallBlockN : CCActionInstant <NSCopying>

 {
    id *_block;
}




-(id)initWithBlock:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)execute;
-(void)dealloc;
+(id)actionWithBlock:(id)arg0 ;


@end


#endif