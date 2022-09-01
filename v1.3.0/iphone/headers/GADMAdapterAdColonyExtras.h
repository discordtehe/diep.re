// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERADCOLONYEXTRAS_H
#define GADMADAPTERADCOLONYEXTRAS_H


#import <Foundation/Foundation.h>

@protocol GADAdNetworkExtras;

@interface GADMAdapterAdColonyExtras : NSObject <GADAdNetworkExtras>



@property (retain) NSString *userId; // ivar: _userId
@property BOOL showPrePopup; // ivar: _showPrePopup
@property BOOL showPostPopup; // ivar: _showPostPopup
@property BOOL testMode; // ivar: _testMode
@property (nonatomic) BOOL gdprRequired; // ivar: _gdprRequired
@property (retain, nonatomic) NSString *gdprConsentString; // ivar: _gdprConsentString
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;




@end


#endif