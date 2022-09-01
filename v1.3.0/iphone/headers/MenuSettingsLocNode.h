// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSLOCNODE_H
#define MENUSETTINGSLOCNODE_H


#import <Foundation/Foundation.h>

@class CCMenuItem;
@class MenuSettingsLocNodeView;
@class CCTable;
@protocol TableCellProtocol;

@interface MenuSettingsLocNode : CCMenuItem <TableCellProtocol>

 {
    MenuSettingsLocNodeView *_view;
    CGSize _nodeSize;
    BOOL _loaded;
    NSString *_countryFlag;
    NSString *_countryCode;
    NSString *_countryRegion;
    BOOL _nodeIsSelected;
    CCTable *_table;
    id *_target;
    SEL _selector;
}


@property (retain, nonatomic) NSString *countryText; // ivar: _countryText
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTable:(id)arg0 ;
-(void)dealloc;
-(void)disableInput;
-(void)enableInput;
-(void)loadData;
-(void)unloadData;
-(id)view;
-(void)setCountryVisuals:(id)arg0 flag:(id)arg1 ;
-(void)setCountryDetails:(id)arg0 region:(id)arg1 ;
-(void)setSelectionCallbackDetails:(SEL)arg0 target:(id)arg1 ;
-(void)invokeCallback;
-(void)setSelected:(BOOL)arg0 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(id)getCountryCode;
-(id)getCountryRegion;
-(id)getCountryFlag;


@end


#endif