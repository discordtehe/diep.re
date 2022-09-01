// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADHIDDENVIEWCONTROLLER_H
#define FBADHIDDENVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdHiddenContentView;
@class FBAdImage;

@interface FBAdHiddenViewController : UIViewController

@property (retain, nonatomic) FBAdHiddenContentView *bodyView; // ivar: _bodyView
@property (retain, nonatomic) FBAdImage *logoImage; // ivar: _logoImage
@property (copy, nonatomic) NSString *reason; // ivar: _reason
@property (nonatomic) NSInteger flowType; // ivar: _flowType
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss
@property (copy, nonatomic) id *onManageAdSettings; // ivar: _onManageAdSettings


-(id)initWithReason:(id)arg0 logoImage:(id)arg1 flowType:(NSInteger)arg2 ;
-(id)initWithReason:(id)arg0 logoImage:(id)arg1 flowType:(NSInteger)arg2 layoutType:(NSInteger)arg3 ;
-(void)viewDidLoad;
-(void)setupBodyViewWithLayoutType:(NSInteger)arg0 ;


@end


#endif