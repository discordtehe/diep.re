// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONPROMOADPLACEMENTCONTENT_H
#define UMONPROMOADPLACEMENTCONTENT_H



@class UMONShowAdPlacementContent;
@class UMONPromoMetaData;

@interface UMONPromoAdPlacementContent : UMONShowAdPlacementContent

@property (retain, nonatomic) UMONPromoMetaData *metadata; // ivar: _metadata


-(id)initWithPlacementId:(id)arg0 withParams:(id)arg1 ;
-(id)defaultEventCategory;


@end


#endif