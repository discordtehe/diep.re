// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSVIEW_H
#define MENUSETTINGSVIEW_H

@class CCNode<CCRGBAProtocol>;

#import <Foundation/Foundation.h>

@class MenuDefaultFullScreenView;
@class CCNode;
@class CCMutableCellTable;
@class MCScrollBar;
@class CCMenu;
@protocol CCScrollViewDelegate;

@interface MenuSettingsView : MenuDefaultFullScreenView <CCScrollViewDelegate>

 {
    CCNode *_bgNodeiPad;
    CCNode *_bgNodeiPhone;
    CCMutableCellTable *_table;
    MCScrollBar *_scrollbar;
    CGSize _cellSize;
    unsigned char mBackgroundOpacity;
    unsigned char mStopOnReleaseHintBackgroundOpacity;
    unsigned char mDirectionOnTouchHintBackgroundOpacity;
    CCMenu *_menuHelp;
    CCNode<CCRGBAProtocol> *_helpTransparentLayer;
    unsigned char _helpTransparentLayerOpacity;
    CCNode *_hintContainerRoot;
    CCNode *_fixedJoysticksHint;
    CCNode *_shootJoystickOnRightHint;
    CCNode *_stopOnReleaseHint;
    CCNode *_shootOnReleaseHint;
    CCNode *_showArrowHint;
    CCNode *_showMinimapHint;
    CCNode *_directionOnTouchHint;
    CCNode *_hintSprite;
    CCMenu *_targetedAdsPopup;
}


@property (nonatomic) BOOL buttonCallbackLock; // ivar: _buttonCallbackLock
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setupInitialState;
-(void)createTable;
-(id)bgNode;
-(void)createNodeByType:(int)arg0 ;
-(void)createNodes;
-(BOOL)canShowSetting:(int)arg0 ;
-(void)onEnter;
-(void)onExit;
-(void)scrollCallback;
-(void)updateUIValues;
-(void)showFixedJoysticksHint;
-(void)showShootJoystickOnRightHint;
-(void)showStopOnReleaseHint;
-(void)showShootOnReleaseHint;
-(void)showArrowHint;
-(void)showMinimapHint;
-(void)showTargetedAdsPopup;
-(void)closeTargetedAdsPopup;
-(void)showMenuHelp:(id)arg0 atNodePosition:(id)arg1 ;
-(void)closeHints;
-(BOOL)showingHints;
-(void)resetTouches;
-(void)disableInput;
-(void)enableInput;
+(float)numVisibleItems;
+(struct CGSize )cellSize;


@end


#endif