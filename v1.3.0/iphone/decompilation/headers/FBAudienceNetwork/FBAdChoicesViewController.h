// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICESVIEWCONTROLLER_H
#define FBADCHOICESVIEWCONTROLLER_H


#import <UIKit/UIKit.h>

@class FBAdChoicesContentView;
@class FBAdReportingConfig;

@interface FBAdChoicesViewController : UIViewController

@property (retain, nonatomic) FBAdChoicesContentView *bodyView; // ivar: _bodyView
@property (retain, nonatomic) FBAdReportingConfig *adReportingConfig; // ivar: _adReportingConfig
@property (copy, nonatomic) id *onOptionSelected; // ivar: _onOptionSelected
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss


-(id)initWithLayoutType:(NSInteger)arg0 ;
-(id)init;
-(void)viewDidLoad;
-(void)setupBodyViewWithLayoutType:(NSInteger)arg0 ;
-(void)setupTapRecognizer;
-(void)handleDismissTap:(id)arg0 ;


@end


#endif