// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSPLITVIEWCONTROLLER_H
#define ISSPLITVIEWCONTROLLER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISAbstractViewController;
@class ISAbstractView;
@protocol ISSplitViewDelegate;

@interface ISSplitViewController : ISAbstractViewController

@property (nonatomic) NSUInteger productType; // ivar: _productType
@property (retain, nonatomic) NSMutableArray *hybridObjectsArray; // ivar: _hybridObjectsArray
@property (retain, nonatomic) NSMutableArray *viewsArray; // ivar: _viewsArray
@property (retain, nonatomic) NSMutableArray *viewHeightConstraintArray; // ivar: _viewHeightConstraintArray
@property (retain, nonatomic) NSString *viewUniqueId; // ivar: _viewUniqueId
@property (nonatomic) BOOL isOrientationAllowed; // ivar: _isOrientationAllowed
@property (nonatomic) CGRect viewOriginalBounds; // ivar: _viewOriginalBounds
@property (nonatomic) BOOL applicationHasStatusBar; // ivar: _applicationHasStatusBar
@property (retain, nonatomic) ISAbstractView *baseViewContainer; // ivar: _baseViewContainer
@property (weak, nonatomic) NSObject<ISSplitViewDelegate> *delegate; // ivar: _delegate


-(id)initWithViewJsonArray:(id)arg0 andViewUniqueId:(id)arg1 ;
-(BOOL)isPresented;
-(void)dealloc;
-(BOOL)prefersStatusBarHidden;
-(void)viewDidLoad;
-(void)ISSplitViewControllerDidChangeOrientation;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)didReceiveMemoryWarning;
-(void)show:(NSUInteger)arg0 andViewUniqueId:(id)arg1 ;
-(void)handleStatusBar;
-(void)hide;
-(void)updateConstraintsForViews:(id)arg0 ;
-(void)addSubviewWithFullScreenConstrains:(id)arg0 toView:(id)arg1 ;
-(void)createViews;


@end


#endif