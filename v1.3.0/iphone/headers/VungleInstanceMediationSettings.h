// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEINSTANCEMEDIATIONSETTINGS_H
#define VUNGLEINSTANCEMEDIATIONSETTINGS_H


#import <Foundation/Foundation.h>

@protocol MPMediationSettingsProtocol;

@interface VungleInstanceMediationSettings : NSObject <MPMediationSettingsProtocol>



@property (copy, nonatomic) NSString *userIdentifier; // ivar: _userIdentifier
@property (nonatomic) NSUInteger ordinal; // ivar: _ordinal
@property (nonatomic) CGFloat flexViewAutoDismissSeconds; // ivar: _flexViewAutoDismissSeconds
@property (nonatomic) BOOL startMuted; // ivar: _startMuted
@property (nonatomic) NSNumber *orientations; // ivar: _orientations
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;




@end


#endif