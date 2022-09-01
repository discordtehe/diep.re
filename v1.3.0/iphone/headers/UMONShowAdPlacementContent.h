// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONSHOWADPLACEMENTCONTENT_H
#define UMONSHOWADPLACEMENTCONTENT_H

@protocol UMONShowAdDelegate;


@class UMONRewardablePlacementContent;

@interface UMONShowAdPlacementContent : UMONRewardablePlacementContent

@property (retain, nonatomic) NSObject<UMONShowAdDelegate> *delegate; // ivar: _delegate


-(void)show:(id)arg0 ;
-(void)show:(id)arg0 withDelegate:(id)arg1 ;


@end


#endif