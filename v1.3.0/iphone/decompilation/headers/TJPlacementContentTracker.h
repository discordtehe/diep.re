// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJPLACEMENTCONTENTTRACKER_H
#define TJPLACEMENTCONTENTTRACKER_H


#import <Foundation/Foundation.h>

@class TJUsageTracker;
@class TJContentTracker;

@interface TJPlacementContentTracker : NSObject {
    unsigned int state;
    TJUsageTracker *funnelTracker;
    TJUsageTracker *showContentTracker;
    TJUsageTracker *contentReadyTracker;
}


@property (retain, nonatomic) TJContentTracker *contentTracker; // ivar: _contentTracker


-(id)init;
-(void)didReceiveRequestForPlacement:(id)arg0 withPlacementType:(id)arg1 withContentType:(id)arg2 ;
-(void)contentIsReady;
-(void)didCallIsContentAvailable;
-(void)didCallIsContentReady:(BOOL)arg0 ;
-(void)didCallShow;
-(void)setShowContentTracker:(id)arg0 ;
-(void)didShowContent;
-(void)contentDidRender;
-(void)didDismissContent;
-(void)trackWithStep:(unsigned int)arg0 ;
-(void)reset;
-(void)addDimension:(id)arg0 withValue:(id)arg1 ;


@end


#endif