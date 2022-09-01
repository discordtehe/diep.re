// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUCREDITSNODE_H
#define MENUCREDITSNODE_H


#import <Foundation/Foundation.h>

@class CCMenuItem;
@class MenuCreditsNodeView;
@protocol TableCellProtocol;

@interface MenuCreditsNode : CCMenuItem <TableCellProtocol>

 {
    MenuCreditsNodeView *_view;
    NSString *_text;
    BOOL _isTitle;
    BOOL _isLarge;
    BOOL _loaded;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithText:(id)arg0 isTitle:(BOOL)arg1 size:(struct CGSize )arg2 isLarge:(BOOL)arg3 ;
-(void)loadData;
-(void)unloadData;
-(void)dealloc;


@end


#endif