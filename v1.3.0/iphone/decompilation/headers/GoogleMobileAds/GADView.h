// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIEW_H
#define GADVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class GADEventContext;
@protocol GADEventContextSource;

@interface GADView : UIView <GADEventContextSource>

 {
    CGSize _lastSize;
    GADEventContext *_context;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithFrame:(struct CGRect )arg0 context:(id)arg1 ;
-(void)dealloc;
-(void)awakeFromNib;
-(void)didMoveToWindow;
-(void)layoutSubviews;


@end


#endif