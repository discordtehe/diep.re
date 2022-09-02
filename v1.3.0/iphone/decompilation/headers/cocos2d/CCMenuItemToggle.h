// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMTOGGLE_H
#define CCMENUITEMTOGGLE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCMenuItem;
@protocol CCRGBAProtocol;

@interface CCMenuItemToggle : CCMenuItem <CCRGBAProtocol>

 {
    NSUInteger _selectedIndex;
}


@property (nonatomic) CCMenuItem *currentItem; // ivar: _currentItem
@property (nonatomic) NSUInteger selectedIndex;
@property (retain, nonatomic) NSMutableArray *subItems; // ivar: _subItems
@property (nonatomic) _ccColorThreeB color;
@property (readonly, nonatomic) _ccColorThreeB displayedColor;
@property (nonatomic, getter=isCascadeColorEnabled) BOOL cascadeColorEnabled;
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) unsigned char displayedOpacity;
@property (nonatomic, getter=isCascadeOpacityEnabled) BOOL cascadeOpacityEnabled;
@property (nonatomic) _ccColorThreeB emission;
@property (readonly, nonatomic) _ccColorThreeB displayedEmission;
@property (nonatomic, getter=isCascadeEmissionEnabled) BOOL cascadeEmissionEnabled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithItems:(id)arg0 block:(id)arg1 ;
-(void)dealloc;
-(void)selected;
-(void)unselected;
-(void)activate;
-(void)setIsEnabled:(BOOL)arg0 ;
-(id)selectedItem;
+(id)itemWithTarget:(id)arg0 selector:(SEL)arg1 items:(id)arg2 ;
+(id)itemWithTarget:(id)arg0 selector:(SEL)arg1 items:(id)arg2 vaList:(char *)arg3 ;
+(id)itemWithItems:(id)arg0 ;
+(id)itemWithItems:(id)arg0 block:(id)arg1 ;


@end


#endif