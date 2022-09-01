// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGOPTIONSVIEWCONTROLLER_H
#define FBADREPORTINGOPTIONSVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdReportingOptionsContentView;

@interface FBAdReportingOptionsViewController : UIViewController

@property (retain, nonatomic) FBAdReportingOptionsContentView *bodyView; // ivar: _bodyView
@property (copy, nonatomic) NSString *titleText; // ivar: _titleText
@property (copy, nonatomic) NSString *heading; // ivar: _heading
@property (copy, nonatomic) NSArray *items; // ivar: _items
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss
@property (copy, nonatomic) id *onBack; // ivar: _onBack
@property (copy, nonatomic) id *onSelect; // ivar: _onSelect


-(id)initWithTitle:(id)arg0 heading:(id)arg1 items:(id)arg2 ;
-(id)initWithTitle:(id)arg0 heading:(id)arg1 items:(id)arg2 layoutType:(NSInteger)arg3 ;
-(void)setupBodyViewWithLayoutType:(NSInteger)arg0 ;


@end


#endif