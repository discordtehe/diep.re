// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCTABLEWITHNAVIGATION_H
#define MCTABLEWITHNAVIGATION_H



@class CCTable;
@class MCMenuItemNodeRGBAStatic;

@interface MCTableWithNavigation : CCTable {
    int _numActiveItems;
}


@property (retain, nonatomic) MCMenuItemNodeRGBAStatic *leftButton; // ivar: _leftButton
@property (retain, nonatomic) MCMenuItemNodeRGBAStatic *rightButton; // ivar: _rightButton
@property BOOL forceDisableArrowButtons; // ivar: _forceDisableArrowButtons


-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 springOffset:(float)arg5 menu:(id)arg6 leftButton:(id)arg7 rightButton:(id)arg8 numActiveItems:(int)arg9 screenOffset:(int)arg10 ;
-(void)buttonPressed;
-(void)enableButtons;
-(void)reEnableButtons;
-(void)setButtonVisible:(id)arg0 ;
-(void)setButtonInvisible:(id)arg0 ;
-(void)forceMoveCaroussel:(NSUInteger)arg0 ;
-(id)getScrollSequenceWithOrientation:(NSUInteger)arg0 ;
-(void)setOpacityGradientShaderToChildren;
-(void)setOpacityGradientShaderToChildren:(id)arg0 ;
-(id)getMenuGameTypeButtonShaderProgram:(BOOL)arg0 ;


@end


#endif