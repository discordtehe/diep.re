// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPTABLEVIEWADPLACER_H
#define MPTABLEVIEWADPLACER_H

@protocol MPTableViewAdPlacerDelegate;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MPStreamAdPlacer;
@class MPTimer;
@protocol UITableViewDataSource;
@protocol UITableViewDelegate;
@protocol MPStreamAdPlacerDelegate;
@protocol MPMoPubAdPlacer;
@protocol UITableViewDataSource;
@protocol UITableViewDelegate;

@interface MPTableViewAdPlacer : NSObject <UITableViewDataSource, UITableViewDelegate, MPStreamAdPlacerDelegate, MPMoPubAdPlacer>



@property (retain, nonatomic) MPStreamAdPlacer *streamAdPlacer; // ivar: _streamAdPlacer
@property (retain, nonatomic) UITableView *tableView; // ivar: _tableView
@property (weak, nonatomic) NSObject<UITableViewDataSource> *originalDataSource; // ivar: _originalDataSource
@property (weak, nonatomic) NSObject<UITableViewDelegate> *originalDelegate; // ivar: _originalDelegate
@property (retain, nonatomic) MPTimer *insertionTimer; // ivar: _insertionTimer
@property (weak, nonatomic) NSObject<MPTableViewAdPlacerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTableView:(id)arg0 viewController:(id)arg1 adPositioning:(id)arg2 rendererConfigurations:(id)arg3 ;
-(void)dealloc;
-(void)loadAdsForAdUnitID:(id)arg0 ;
-(void)loadAdsForAdUnitID:(id)arg0 targeting:(id)arg1 ;
-(void)updateVisibleCells;
-(void)adPlacer:(id)arg0 didLoadAdAtIndexPath:(id)arg1 ;
-(void)adPlacer:(id)arg0 didRemoveAdsAtIndexPaths:(id)arg1 ;
-(void)nativeAdWillPresentModalForStreamAdPlacer:(id)arg0 ;
-(void)nativeAdDidDismissModalForStreamAdPlacer:(id)arg0 ;
-(void)nativeAdWillLeaveApplicationFromStreamAdPlacer:(id)arg0 ;
-(void)mopubAdPlacer:(id)arg0 didTrackImpressionForAd:(id)arg1 withImpressionData:(id)arg2 ;
-(NSInteger)numberOfSectionsInTableView:(id)arg0 ;
-(NSInteger)tableView:(id)arg0 numberOfRowsInSection:(NSInteger)arg1 ;
-(id)tableView:(id)arg0 cellForRowAtIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 canEditRowAtIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 canMoveRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 commitEditingStyle:(NSInteger)arg1 forRowAtIndexPath:(id)arg2 ;
-(void)tableView:(id)arg0 moveRowAtIndexPath:(id)arg1 toIndexPath:(id)arg2 ;
-(CGFloat)tableView:(id)arg0 heightForRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 willDisplayCell:(id)arg1 forRowAtIndexPath:(id)arg2 ;
-(void)tableView:(id)arg0 didEndDisplayingCell:(id)arg1 forRowAtIndexPath:(id)arg2 ;
-(void)tableView:(id)arg0 accessoryButtonTappedForRowWithIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 shouldHighlightRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 didHighlightRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 didUnhighlightRowAtIndexPath:(id)arg1 ;
-(id)tableView:(id)arg0 willSelectRowAtIndexPath:(id)arg1 ;
-(id)tableView:(id)arg0 willDeselectRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 didSelectRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 didDeselectRowAtIndexPath:(id)arg1 ;
-(NSInteger)tableView:(id)arg0 editingStyleForRowAtIndexPath:(id)arg1 ;
-(id)tableView:(id)arg0 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 shouldIndentWhileEditingRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 willBeginEditingRowAtIndexPath:(id)arg1 ;
-(void)tableView:(id)arg0 didEndEditingRowAtIndexPath:(id)arg1 ;
-(NSInteger)tableView:(id)arg0 indentationLevelForRowAtIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 shouldShowMenuForRowAtIndexPath:(id)arg1 ;
-(BOOL)tableView:(id)arg0 canPerformAction:(SEL)arg1 forRowAtIndexPath:(id)arg2 withSender:(id)arg3 ;
-(void)tableView:(id)arg0 performAction:(SEL)arg1 forRowAtIndexPath:(id)arg2 withSender:(id)arg3 ;
-(id)tableView:(id)arg0 viewForHeaderInSection:(NSInteger)arg1 ;
-(id)tableView:(id)arg0 viewForFooterInSection:(NSInteger)arg1 ;
-(CGFloat)tableView:(id)arg0 heightForHeaderInSection:(NSInteger)arg1 ;
-(CGFloat)tableView:(id)arg0 estimatedHeightForHeaderInSection:(NSInteger)arg1 ;
-(CGFloat)tableView:(id)arg0 heightForFooterInSection:(NSInteger)arg1 ;
-(CGFloat)tableView:(id)arg0 estimatedHeightForFooterInSection:(NSInteger)arg1 ;
-(BOOL)isKindOfClass:(Class)arg0 ;
-(BOOL)conformsToProtocol:(id)arg0 ;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(id)forwardingTargetForSelector:(SEL)arg0 ;
+(id)placerWithTableView:(id)arg0 viewController:(id)arg1 rendererConfigurations:(id)arg2 ;
+(id)placerWithTableView:(id)arg0 viewController:(id)arg1 adPositioning:(id)arg2 rendererConfigurations:(id)arg3 ;


@end


#endif