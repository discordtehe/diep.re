// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEM_H
#define MCMENUITEM_H



@class CCMenuItem;

@interface MCMenuItem : CCMenuItem {
    id *_selectedBlock;
    id *_unselectedBlock;
}




-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 selectedSelector:(SEL)arg2 unselectedSelector:(SEL)arg3 ;
// -(id)initWithBlock:(id)arg0 selectedBlock:(unk)arg1 unselectedBlock:(id)arg2  ;
-(void)dealloc;
-(void)setSelectedBlock:(id)arg0 ;
-(void)setUnselectedBlock:(id)arg0 ;
-(void)setSelectedTarget:(id)arg0 selector:(SEL)arg1 ;
-(void)setUnselectedTarget:(id)arg0 selector:(SEL)arg1 ;
-(void)selected;
-(void)unselected;
+(id)itemWithTarget:(id)arg0 selector:(SEL)arg1 selectedSelector:(SEL)arg2 unselectedSelector:(SEL)arg3 ;
// +(id)itemWithBlock:(id)arg0 selectedBlock:(unk)arg1 unselectedBlock:(id)arg2  ;


@end


#endif