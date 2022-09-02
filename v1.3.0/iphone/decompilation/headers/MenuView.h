// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUVIEW_H
#define MENUVIEW_H



@class CCNode;

@interface MenuView : CCNode {
    BOOL _menusGathered;
    vector<CCMenu *, std::__1::allocator<CCMenu *> > _menus;
}




-(id)init;
-(void)setupLayout;
-(void)setupLayout:(NSUInteger)arg0 ;
-(void)dealloc;
-(void)disableInput;
-(void)enableInput;
-(void)gatherChildrenMenus;
-(void)gatherChildrenMenus:(id)arg0 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeChildByTag:(NSInteger)arg0 cleanup:(BOOL)arg1 ;
-(void)removeChildFromMenus:(id)arg0 ;
-(CGFloat)onEnterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)onLeaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(CGFloat)refresh;


@end


#endif