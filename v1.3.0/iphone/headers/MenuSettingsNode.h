// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSNODE_H
#define MENUSETTINGSNODE_H


#import <Foundation/Foundation.h>

@class CCMenuItem;
@class MenuSettingsNodeView;
@protocol TableCellProtocol;
@protocol MenuSettingsViewDelegate;

@interface MenuSettingsNode : CCMenuItem <TableCellProtocol, MenuSettingsViewDelegate>

 {
    MenuSettingsNodeView *_view;
    CGSize _nodeSize;
    BOOL _loaded;
    int _type;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithType:(int)arg0 size:(struct CGSize )arg1 ;
-(void)dealloc;
-(void)disableInput;
-(void)enableInput;
-(void)hintButtonCallback;
-(void)buttonCallback;
-(void)reactivateButtonCallback;
-(void)leftButtonCallback:(BOOL)arg0 ;
-(void)rightButtonCallback:(BOOL)arg0 ;
-(void)centerButtonCallback:(BOOL)arg0 ;
-(void)toggleSwipeCallback:(BOOL)arg0 ;
-(void)loadData;
-(void)unloadData;
-(void)setupView;
-(void)setupLogoutView;
-(id)hint;
-(id)view;
-(void)updateUIValues;
-(void)updateTargetedAdsButton;


@end


#endif