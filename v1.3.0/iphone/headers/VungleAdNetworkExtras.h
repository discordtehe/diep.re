// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADNETWORKEXTRAS_H
#define VUNGLEADNETWORKEXTRAS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADAdNetworkExtras;

@interface VungleAdNetworkExtras : NSObject <GADAdNetworkExtras>



@property (copy, nonatomic) NSString *userId; // ivar: _userId
@property (nonatomic) BOOL muted; // ivar: _muted
@property (nonatomic) NSUInteger ordinal; // ivar: _ordinal
@property (nonatomic) CGFloat flexViewAutoDismissSeconds; // ivar: _flexViewAutoDismissSeconds
@property (copy, nonatomic) NSArray *allPlacements; // ivar: _allPlacements
@property (copy, nonatomic) NSString *playingPlacement; // ivar: _playingPlacement
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;




@end


#endif