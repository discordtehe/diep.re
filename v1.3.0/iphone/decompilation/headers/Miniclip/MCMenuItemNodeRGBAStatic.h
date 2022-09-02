// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMNODERGBASTATIC_H
#define MCMENUITEMNODERGBASTATIC_H


#import <CoreFoundation/CoreFoundation.h>

@class MCMenuItem;
@class CCNode;

@interface MCMenuItemNodeRGBAStatic : MCMenuItem {
    BOOL _isHierarchyDirty;
    pair<CGPoint, CGPoint> occupiedArea;
    BOOL _needToUpdatePickingAreas;
    NSArray *_classesToIgnore;
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
@property (nonatomic) BOOL pickOnChildren; // ivar: _pickOnChildren
@property (nonatomic) BOOL ignoreInvisibleClasses; // ivar: _ignoreInvisibleClasses


// -(id)initWithBlock:(id)arg0 selectedBlock:(unk)arg1 unselectedBlock:(id)arg2  ;
-(id)init;
-(id)initFromNormalNode:(id)arg0 selectedNode:(id)arg1 disabledNode:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(void)dealloc;
-(void)setDefaultStateColors;
-(struct _ccColor4B )getCascadeColor;
-(void)showNode:(id)arg0 withColor:(struct _ccColor4B )arg1 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)updatePickingAreas;
-(id)pickingAreas;
-(void)addPickingAreas:(id)arg0 ;
-(void)selected;
-(void)unselected;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)updateNodeBasedInState;
-(BOOL)simulateTouch;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)visit;
-(void)didLoadFromCCBAfterChildren;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 ;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemFromNormalNode:(id)arg0 selectedNode:(id)arg1 disabledNode:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;


@end


#endif