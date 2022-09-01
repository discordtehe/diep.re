// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMDRAG_H
#define CCMENUITEMDRAG_H



@class CCMenuItemSprite;
@class CCTable;
@class CCMenuItem;

@interface CCMenuItemDrag : CCMenuItemSprite

@property (nonatomic) CCTable *table; // ivar: table_
@property (nonatomic) CCMenuItem *cell; // ivar: cell_


-(id)initFromCell:(id)arg0 target:(id)arg1 selector:(SEL)arg2 normalImage:(id)arg3 selectedImage:(id)arg4 ;
-(void)activate;
-(void)selected;
-(void)unselected;
+(id)initFromCell:(id)arg0 target:(id)arg1 selector:(SEL)arg2 normalImage:(id)arg3 selectedImage:(id)arg4 ;


@end


#endif