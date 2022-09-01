// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBVIDEOADCONTROLLER_H
#define FBVIDEOADCONTROLLER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBVideoAdContentView;
@class FBInstreamAdDataModel;
@class FBAdVideoLogger;
@protocol FBVideoAdContentViewDelegate;
@protocol FBVideoAdControllerDelegate;

@interface FBVideoAdController : NSObject <FBVideoAdContentViewDelegate>



@property (retain, nonatomic) FBVideoAdContentView *contentView; // ivar: _contentView
@property (nonatomic) BOOL contentViewLoaded; // ivar: _contentViewLoaded
@property (nonatomic) BOOL contentViewEnded; // ivar: _contentViewEnded
@property (retain, nonatomic) FBInstreamAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) FBAdVideoLogger *logger; // ivar: _logger
@property (nonatomic) BOOL started; // ivar: _started
@property (retain, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly, nonatomic, getter=isValid) BOOL valid;
@property (weak, nonatomic) NSObject<FBVideoAdControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithContentView:(id)arg0 ;
-(BOOL)isDataModelValid;
-(void)dealloc;
-(BOOL)isNetworkOnline;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(void)handleViewableImpression;
-(void)contentViewDidLoad:(id)arg0 ;
-(void)contentViewDidProgress:(id)arg0 ;
-(void)contentViewDidPause:(id)arg0 ;
-(void)contentViewDidResume:(id)arg0 ;
-(void)contentViewDidSkip:(id)arg0 ;
-(void)contentViewDidClickthrough:(id)arg0 ;
-(void)contentViewDidEnd:(id)arg0 ;
-(void)contentViewDidUnload:(id)arg0 ;
-(void)contentView:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif