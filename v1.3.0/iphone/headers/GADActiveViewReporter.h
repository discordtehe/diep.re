// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADACTIVEVIEWREPORTER_H
#define GADACTIVEVIEWREPORTER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADActiveViewContext;
@class GADWebAdView;

@interface GADActiveViewReporter : NSObject {
    GADActiveViewContext *_activeViewContext;
    BOOL _activeViewContextLoadInProgress;
    BOOL _adViewNeedsActiveViewUpdates;
    BOOL _adDidMakeImpression;
    BOOL _analyticsLoggingEnabled;
    GADWebAdView *_reportingAdView;
    BOOL _activeViewContextUntracked;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSString *_adFormat;
    NSString *_adEventContextID;
    NSDictionary *_configuration;
    NSDictionary *_visibilityInformation;
    NSDictionary *_mainThreadParameters;
    atomic_flag _finishActiveViewStatusExecuted;
}




-(id)initWithAdFormat:(id)arg0 activeViewConfiguration:(id)arg1 reportingAdView:(id)arg2 adEventContextIdentifier:(id)arg3 analyticsLoggingEnabled:(BOOL)arg4 ;
-(void)setAdViewNeedsActiveViewUpdates:(BOOL)arg0 ;
-(void)setAdDidMakeImpression:(BOOL)arg0 ;
-(void)setVisibilityInformation:(id)arg0 ;
-(void)updateActiveViewStatusWithUnloaded:(BOOL)arg0 ;
-(void)updateActiveViewStatus:(id)arg0 ;
-(void)finishActiveViewStatusUpdate:(id)arg0 ;
-(void)endActiveViewStatusForActiveViewContext:(id)arg0 ;
-(void)updateActiveViewStatus:(id)arg0 completionHandler:(id)arg1 ;
-(void)updateActiveViewStatusForAdView:(id)arg0 ;
-(void)asynchronouslyLoadActiveViewContext;
-(void)loadActiveViewContext:(id)arg0 ;
-(void)convertScrollableContainerInfo:(id)arg0 toParameters:(id)arg1 ;
-(id)activeViewStateWithUnloaded:(BOOL)arg0 userInfo:(id)arg1 ;
-(void)updateMainThreadParameters;
-(void)updateScrollStatusForAdView:(id)arg0 ;
-(void)updateActiveViewScrollStatus:(id)arg0 ;


@end


#endif