// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENU_H
#define CCMENU_H



@class CCLayerRGBA;
@class CCMenuItem;

@interface CCMenu : CCLayerRGBA {
    int _state;
    CCMenuItem *_selectedItem;
    unsigned int _mouseEventId;
    CCMenuItem *_hoveredItem;
}


@property (nonatomic) BOOL enabled; // ivar: _enabled
@property (nonatomic) BOOL preventTouchesInMultipleMenus; // ivar: _preventTouchesInMultipleMenus
@property (nonatomic) BOOL invertTouchDetectionOrder; // ivar: _invertTouchDetectionOrder


-(void)resetInput;
-(void)selectItem:(id)arg0 ;
-(void)setCurrentSelectedMenu:(id)arg0 ;
-(id)currentSelectedMenu;
-(id)init;
-(id)initWithArray:(id)arg0 ;
-(void)dealloc;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)detachChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)onEnter;
-(void)onExit;
-(void)setHandlerPriority:(NSInteger)arg0 ;
-(BOOL)canTouchNewCCMenu;
-(id)itemForPoint:(struct CGPoint )arg0 ;
-(id)itemForTouch:(id)arg0 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)alignItemsVertically;
-(void)alignItemsVerticallyWithPadding:(float)arg0 ;
-(void)alignItemsHorizontally;
-(void)alignItemsHorizontallyWithPadding:(float)arg0 ;
-(void)alignItemsInColumns:(id)arg0 ;
-(void)alignItemsInColumns:(id)arg0 vaList:(char *)arg1 ;
-(void)alignItemsInColumnsWithArray:(id)arg0 ;
-(void)alignItemsInRows:(id)arg0 ;
-(void)alignItemsInRows:(id)arg0 vaList:(char *)arg1 ;
-(void)alignItemsInRowsWithArray:(id)arg0 ;
+(id)menuWithArray:(id)arg0 ;
+(id)menuWithItems:(id)arg0 ;
+(id)menuWithItems:(id)arg0 vaList:(char *)arg1 ;


@end


#endif