// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMNODE_H
#define MCMENUITEMNODE_H



@class MCMenuItem;
@class CCNode;

@interface MCMenuItemNode : MCMenuItem {
    map<CCNode *, _ccColor4B, std::__1::less<CCNode *>, std::__1::allocator<std::__1::pair<CCNode *const, _ccColor4B> > > _originalColors;
    pair<CGPoint, CGPoint> occupiedArea;
}


@property (nonatomic) CCNode *normalNode; // ivar: _normalNode
@property (nonatomic) CCNode *selectedNode; // ivar: _selectedNode
@property (nonatomic) CCNode *disabledNode; // ivar: _disabledNode
@property (nonatomic) int normalNodeTag; // ivar: _normalNodeTag
@property (nonatomic) int selectedNodeTag; // ivar: _selectedNodeTag
@property (nonatomic) int disabledNodeTag; // ivar: _disabledNodeTag
@property (nonatomic) _ccColor4B normalColor; // ivar: _normalColor
@property (nonatomic) _ccColor4B selectedColor; // ivar: _selectedColor
@property (nonatomic) _ccColor4B disabledColor; // ivar: _disabledColor
@property (readonly) int currentState; // ivar: _currentState


// -(id)initWithBlock:(id)arg0 selectedBlock:(unk)arg1 unselectedBlock:(id)arg2  ;
-(id)init;
-(id)initFromNormalNode:(id)arg0 selectedNode:(id)arg1 disabledNode:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(void)dealloc;
-(void)setDefaultStateColors;
-(void)storeOriginalColorsRecursively:(id)arg0 ;
-(void)storeOriginalColorForNode:(id)arg0 ;
-(void)setOriginalColorsRecursively:(id)arg0 ;
-(void)setOriginalColorForNode:(id)arg0 ;
-(void)removeFromOriginalColorsRecursively:(id)arg0 ;
-(void)tintRecursively:(id)arg0 color:(struct _ccColor4B )arg1 ;
-(void)showNode:(id)arg0 withColor:(struct _ccColor4B )arg1 ;
-(struct pair<CGPoint, CGPoint> )calculateAreaOfNode:(id)arg0 ;
-(void)centerChild:(id)arg0 inArea:(struct pair<CGPoint, CGPoint> )arg1 ;
-(void)selected;
-(void)unselected;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)updateNodeBasedInState;
-(BOOL)simulateTouch;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)didLoadFromCCBAfterChildren;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 ;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 disabledNode:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;


@end


#endif