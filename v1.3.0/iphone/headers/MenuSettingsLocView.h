// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSLOCVIEW_H
#define MENUSETTINGSLOCVIEW_H


#import <Foundation/Foundation.h>

@class MenuDefaultPopupView;
@class CCSprite;
@class CCNode;
@class MCAdjustableLabelTTF;
@class CCTable;
@class MCScrollBar;
@class MenuSettingsLocNode;

@interface MenuSettingsLocView : MenuDefaultPopupView {
    CCSprite *_flagPosition;
    CCSprite *_flagSprite;
    CCNode *_outerFrame;
    MCAdjustableLabelTTF *_countryLabel;
    CGSize _cellSize;
    CCNode *_tableArea;
    CCTable *_table;
    CCNode *_tableNode;
    MCScrollBar *_scrollbar;
    MenuSettingsLocNode *_selNode;
    NSString *_startCountryCode;
    NSString *_startCountryRegion;
    NSString *_startCountryFlag;
}




-(void)setupLayout;
-(void)scrollCallback;
-(void)createTable;
-(void)addNodesFromConfig;
-(void)callbackNodeSelected:(id)arg0 ;
-(id)addNode:(id)arg0 flag:(id)arg1 code:(id)arg2 region:(id)arg3 ;
-(void)setCurrentCountry;
-(id)getSelectedNode;
+(float)numVisibleItems;
+(struct CGSize )cellSize;


@end


#endif