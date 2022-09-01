// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEM_H
#define CCMENUITEM_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCNodeRGBA;
@protocol TestableCCItem;

@interface CCMenuItem : CCNodeRGBA <TestableCCItem>

 {
    id *_block;
    BOOL _isEnabled;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) BOOL isSelected; // ivar: _isSelected
@property (readonly, nonatomic) BOOL isFocused; // ivar: _isFocused
@property (nonatomic) BOOL releaseBlockAtCleanup; // ivar: _releaseBlockAtCleanup
@property (nonatomic) CGRect activeArea; // ivar: _activeArea
@property (nonatomic) NSArray *pickingAreas; // ivar: _pickingAreas


-(struct CGRect )rect;
-(void)setRect:(struct CGRect )arg0 ;
-(void)activate;
-(id)init;
-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 ;
-(id)initWithBlock:(id)arg0 ;
-(void)dealloc;
-(void)cleanup;
-(void)selected;
-(void)unselected;
-(void)focus;
-(void)unfocus;
-(void)activate;
-(void)setIsEnabled:(BOOL)arg0 ;
-(BOOL)isEnabled;
-(BOOL)isClickable;
-(void)setBlock:(id)arg0 ;
-(void)setTarget:(id)arg0 selector:(SEL)arg1 ;
-(void)setContentSize:(struct CGSize )arg0 ;
-(BOOL)isPointOver:(struct CGPoint )arg0 ;
+(id)itemWithTarget:(id)arg0 selector:(SEL)arg1 ;
+(id)itemWithBlock:(id)arg0 ;


@end


#endif