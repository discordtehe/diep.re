// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYAPPOPTIONS_H
#define ADCOLONYAPPOPTIONS_H


#import <Foundation/Foundation.h>

@class AdColonyOptions;

@interface AdColonyAppOptions : AdColonyOptions

@property (nonatomic) BOOL disableLogging; // ivar: _disableLogging
@property (retain, nonatomic) NSString *userID; // ivar: _userID
@property (nonatomic) NSInteger adOrientation; // ivar: _adOrientation
@property (nonatomic) BOOL testMode; // ivar: _testMode
@property (retain, nonatomic) NSString *mediationNetwork; // ivar: _mediationNetwork
@property (retain, nonatomic) NSString *mediationNetworkVersion; // ivar: _mediationNetworkVersion
@property (retain, nonatomic) NSString *plugin; // ivar: _plugin
@property (retain, nonatomic) NSString *pluginVersion; // ivar: _pluginVersion
@property (nonatomic) BOOL gdprRequired; // ivar: _gdprRequired
@property (retain, nonatomic) NSString *gdprConsentString; // ivar: _gdprConsentString


-(void)applyGlobally;
-(id)init;


@end


#endif